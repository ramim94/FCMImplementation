package com.ideabinbd.fcmimplementation;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import com.android.volley.AuthFailureError;
import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;
import com.google.firebase.iid.FirebaseInstanceId;
import com.google.firebase.messaging.FirebaseMessaging;

import java.util.HashMap;
import java.util.Map;

public class MainActivity extends AppCompatActivity {
    Button invokeServer;
    String url="http://10.0.3.2/fcm/fcmInsert.php";
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        invokeServer= findViewById(R.id.invokeServer);
        invokeServer.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                stimulateNotification();
            }
        });
    }

    private void stimulateNotification() {
        RequestQueue rq= Volley.newRequestQueue(MainActivity.this);

        StringRequest stringRequest= new StringRequest(Request.Method.POST, url, new Response.Listener<String>() {
            @Override
            public void onResponse(String response) {

            }
        }, new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {

            }
        }){
            @Override
            protected Map<String, String> getParams() throws AuthFailureError {
                Map<String,String> maps= new HashMap<>();
                maps.put("fcm_token", FirebaseInstanceId.getInstance().getToken());
                return maps;
            }
        };

        rq.add(stringRequest);
    }
}