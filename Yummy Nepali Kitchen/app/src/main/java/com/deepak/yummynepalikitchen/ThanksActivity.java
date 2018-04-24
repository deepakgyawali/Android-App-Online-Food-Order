package com.deepak.yummynepalikitchen;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.View;
import android.widget.Button;

/*
 * Created by www.deepakgyawali.com.np on 28/11/2017.
 */

public class ThanksActivity extends AppCompatActivity {
    final String LOG = "ThanksActivity";

    Button home;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_thanks);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);

        getSupportActionBar().setDisplayHomeAsUpEnabled(true);

        home = (Button)findViewById(R.id.btnHome);

        home.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                Intent intent = new Intent(ThanksActivity.this, MainActivity.class);
                startActivity(intent);

            }
        });

    }

}
