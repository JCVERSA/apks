package com.cloud.hisavana.net.disklrucache;

import android.net.Uri;
import android.text.TextUtils;
import defpackage.fw5;
import defpackage.ja1;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

public class ImageCacheURL {
    public static final Charset d = StandardCharsets.UTF_8;
    public volatile byte[] a;
    public final String b;
    public final String c;

    public ImageCacheURL(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.c = str;
            this.b = Uri.encode(str, "@#&=*+-_.,:!?()/~'%");
        } else {
            this.c = "";
            this.b = "";
            ja1.netLog("url must be can not null or empty");
        }
    }

    public byte[] a() {
        if (this.a == null) {
            this.a = this.b.getBytes(d);
        }
        return this.a;
    }

    public String b() {
        return d();
    }

    public String c() {
        return this.c;
    }

    public String d() {
        return fw5.a(this.b);
    }

    public boolean equals(Object obj) {
        if (obj instanceof ImageCacheURL) {
            return b().equals(((ImageCacheURL) obj).b());
        }
        return false;
    }

    public int hashCode() {
        return this.b.hashCode() * 31;
    }
}
