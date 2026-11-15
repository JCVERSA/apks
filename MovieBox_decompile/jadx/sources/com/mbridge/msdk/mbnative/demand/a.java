package com.mbridge.msdk.mbnative.demand;

import android.content.Context;
import com.mbridge.msdk.out.MBBidCommonHandler;
import java.util.Map;

public abstract class a extends MBBidCommonHandler {
    public static String TAG = "DemandMBBidNativeHandler";

    public a() {
    }

    public a(Map<String, Object> map, Context context) {
        super(map, context);
    }
}
