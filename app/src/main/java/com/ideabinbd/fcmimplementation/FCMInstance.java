package com.ideabinbd.fcmimplementation;

import com.google.firebase.iid.FirebaseInstanceId;
import com.google.firebase.iid.FirebaseInstanceIdService;

/**
 * Created by Ramim on 3/16/2018.
 */

public class FCMInstance extends FirebaseInstanceIdService {
    public static String currentToken;

    @Override
    public void onTokenRefresh() {
        String recentToken= FirebaseInstanceId.getInstance().getToken();
        currentToken=recentToken;
    }

    public static String getCurrentToken(){
        return currentToken;
    }
}
