package com.mbridge.msdk.dycreator.utils;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import java.io.File;

public class f {

    private static volatile f f34064b;

    private com.mbridge.msdk.dycreator.engine.b f34065a;

    private f(Context context) {
        this.f34065a = null;
        com.mbridge.msdk.dycreator.engine.b bVarA = com.mbridge.msdk.dycreator.engine.b.a();
        this.f34065a = bVarA;
        bVarA.a(context, "");
    }

    public static f a(Context context) {
        if (f34064b == null) {
            synchronized (f.class) {
                try {
                    if (f34064b == null) {
                        f34064b = new f(context.getApplicationContext());
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f34064b;
    }

    public View a(String str) {
        if (new File(str).exists()) {
            return this.f34065a.e(str);
        }
        return null;
    }

    public View a(ViewGroup viewGroup, String str) {
        if (viewGroup != null && !TextUtils.isEmpty(str)) {
            if (viewGroup.getId() == str.hashCode()) {
                return viewGroup;
            }
            int childCount = viewGroup.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = viewGroup.getChildAt(i10);
                if (childAt.getId() == str.hashCode()) {
                    return childAt;
                }
                if (childAt instanceof ViewGroup) {
                    a((ViewGroup) childAt, str);
                }
            }
        }
        return null;
    }
}
