package com.deepak.yummynepalikitchen.Fragments;


import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.ListView;

import com.amigold.fundapter.BindDictionary;
import com.amigold.fundapter.FunDapter;
import com.amigold.fundapter.extractors.StringExtractor;
import com.amigold.fundapter.interfaces.DynamicImageLoader;
import com.kosalgeek.android.json.JsonConverter;
import com.kosalgeek.genasync12.AsyncResponse;
import com.kosalgeek.genasync12.PostResponseAsyncTask;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.deepak.yummynepalikitchen.Interfaces.Products;
import com.deepak.yummynepalikitchen.Interfaces.UILConfig;
import com.deepak.yummynepalikitchen.R;

import java.util.ArrayList;

/**
 * A simple {@link Fragment} subclass.
 */
/*
 * Created by www.deepakgyawali.com.np on 28/11/2017.
 */
public class AppetizersFragment extends Fragment implements AsyncResponse, AdapterView.OnItemClickListener {

    final static String url = "http://www.deepakgyawali.com.np/db_con/appetizers.php";

    private ArrayList<Products> productList;
    private ListView lv;
    FunDapter<Products> adapter;

    View view;

    /*
 * Created by www.deepakgyawali.com.np on 28/11/2017.
 */

    public AppetizersFragment() {
        // Required empty public constructor
    }


    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        view = inflater.inflate(R.layout.fragment_home, container, false);

        ImageLoader.getInstance().init(UILConfig.config(AppetizersFragment.this.getActivity()));

        PostResponseAsyncTask taskRead = new PostResponseAsyncTask(AppetizersFragment.this.getActivity(), this);
        taskRead.execute(url);

        return view;
    }


    @Override
    public void processFinish(String s) {

        productList = new JsonConverter<Products>().toArrayList(s, Products.class);

        BindDictionary dic = new BindDictionary();

        dic.addStringField(R.id.tvName, new StringExtractor<Products>() {
            @Override
            public String getStringValue(Products item, int position) {
                return item.name;
            }
        });

        dic.addStringField(R.id.tvDesc, new StringExtractor<Products>() {
            @Override
            public String getStringValue(Products item, int position) {
                return item.description;
            }
        }).visibilityIfNull(View.GONE);

        dic.addDynamicImageField(R.id.ivImage, new StringExtractor<Products>() {
            @Override
            public String getStringValue(Products item, int position) {
                return item.img_url;
            }
        }, new DynamicImageLoader() {
            @Override
            public void loadImage(String url, ImageView img) {
                //Set image
                ImageLoader.getInstance().displayImage(url, img);
            }
        });

        adapter = new FunDapter<>(AppetizersFragment.this.getActivity(), productList, R.layout.fragment_home_row, dic);
        lv = (ListView)view.findViewById(R.id.lvProduct);
        lv.setAdapter(adapter);

        lv.setOnItemClickListener(this);


    }

    @Override
    public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
        Products selectedProduct = productList.get(position);

        Fragment detailFragment = new HomeDetailFragment();
        Bundle bundle = new Bundle();
        bundle.putSerializable("productList", selectedProduct);
        detailFragment.setArguments(bundle);
        FragmentManager manager = getFragmentManager();
        manager.beginTransaction().replace(R.id.content_main, detailFragment)
                .addToBackStack("HomeDetail").commit();
    }
}
