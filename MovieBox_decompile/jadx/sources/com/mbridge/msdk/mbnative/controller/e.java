package com.mbridge.msdk.mbnative.controller;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.db.n;
import com.mbridge.msdk.foundation.entity.m;
import com.mbridge.msdk.foundation.same.report.o;
import com.mbridge.msdk.foundation.tools.o0;
import java.util.List;

public class e {

    private static final String f35566a = "com.mbridge.msdk.mbnative.controller.e";

    public static void a(Context context, String str) {
        if (context != null) {
            try {
                n nVarA = n.a(g.a(context));
                if (TextUtils.isEmpty(str) || nVarA == null || nVarA.a() <= 0) {
                    return;
                }
                List<m> listA = nVarA.a("m_download_end");
                List<m> listA2 = nVarA.a("2000021");
                List<m> listA3 = nVarA.a("m_download_end");
                o.e(listA2);
                o.a(listA);
                o.b(listA3);
            } catch (Exception e10) {
                o0.b(f35566a, e10.getMessage());
            }
        }
    }
}
