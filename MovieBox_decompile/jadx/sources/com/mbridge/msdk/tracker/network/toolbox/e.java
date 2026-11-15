package com.mbridge.msdk.tracker.network.toolbox;

import com.mbridge.msdk.tracker.network.t;

public class e implements com.mbridge.msdk.tracker.network.c {
    @Override
    public String a(t<?> tVar) {
        String strT = tVar.t();
        int iG = tVar.g();
        if (iG == 0) {
            return strT;
        }
        return Integer.toString(iG) + '-' + strT;
    }
}
