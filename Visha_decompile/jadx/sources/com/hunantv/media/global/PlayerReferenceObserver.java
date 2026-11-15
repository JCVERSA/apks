package com.hunantv.media.global;

import com.hunantv.media.player.pragma.DebugLog;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class PlayerReferenceObserver {
    private static final String TAG = "PlayerReferenceObserver";
    private static Map<String, String> sSyncReferenceMap = Collections.synchronizedMap(new HashMap());

    public static synchronized void add(String str, String str2, String str3) {
        try {
            DebugLog.i(TAG, "add new player:" + str + " ,detail:" + str3 + " ,already exist " + sSyncReferenceMap.size() + " player");
            sSyncReferenceMap.put(str, str2);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static synchronized void remove(String str) {
        try {
            if (sSyncReferenceMap.containsKey(str)) {
                DebugLog.i(TAG, "remove player :" + str);
                sSyncReferenceMap.remove(str);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static int size() {
        try {
            return sSyncReferenceMap.size();
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }
}
