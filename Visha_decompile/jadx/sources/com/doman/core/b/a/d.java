package com.doman.core.b.a;

import android.content.Context;
import android.text.TextUtils;
import com.android.net.k;
import com.android.net.m;
import com.android.net.n;
import com.android.net.p;
import com.hunantv.imgo.net.entity.PlayerRealUrlEntity;
import java.io.UnsupportedEncodingException;
import org.json.JSONObject;

public abstract class d<T> extends n<T> {
    private static String l;
    protected Context m;

    public d(String str, p.a aVar) {
        super(1, str, aVar);
        l = str;
        this.j = new com.android.net.e(25000, 1, 1.0f);
    }

    private static String b(k kVar) {
        byte[] bArr;
        if (kVar == null || (bArr = kVar.b) == null) {
            return "";
        }
        try {
            return new String(bArr, com.android.net.toolbox.g.a(kVar.c));
        } catch (UnsupportedEncodingException unused) {
            return new String(kVar.b);
        }
    }

    private static boolean d(String str) {
        try {
            return str.equals(PlayerRealUrlEntity.OK) || new JSONObject(str).getBoolean("success");
        } catch (Exception e) {
            com.doman.core.d.g.a("BaseRequest", "validateResponseSuccess" + e.toString());
            return false;
        }
    }

    @Override
    public final p<T> a(k kVar) {
        String strB = b(kVar);
        T tC = null;
        if (!TextUtils.isEmpty(strB) && d(strB)) {
            tC = c(strB);
        }
        return tC == null ? p.a(new m(kVar)) : p.a(tC, com.android.net.toolbox.g.a(kVar));
    }

    public abstract T c(String str);

    public abstract p.b<T> n();

    @Override
    public final void a(T t) {
        p.b<T> bVarN = n();
        if (bVarN != null) {
            bVarN.a(t);
        }
    }
}
