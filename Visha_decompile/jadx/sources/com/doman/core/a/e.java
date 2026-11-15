package com.doman.core.a;

import android.text.TextUtils;
import java.util.HashMap;

public final class e {
    public int a;
    public String b;
    public String c;
    public HashMap<String, String> d;
    public String e;
    public String f;
    public long g;

    public final boolean a() {
        return (TextUtils.isEmpty(this.c) && TextUtils.isEmpty(this.f) && TextUtils.isEmpty(this.e) && this.d == null) ? false : true;
    }
}
