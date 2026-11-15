package com.cloud.hisavana.net.disklrucache;

import android.net.Uri;
import android.text.TextUtils;
import com.cloud.sdk.commonutil.util.c;
import com.cloud.sdk.commonutil.util.n;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

public class ImageCacheURL {

    private static final Charset f20772d = StandardCharsets.UTF_8;

    private volatile byte[] f20773a;

    private final String f20774b;

    private final String f20775c;

    public ImageCacheURL(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.f20775c = str;
            this.f20774b = Uri.encode(str, "@#&=*+-_.,:!?()/~'%");
        } else {
            this.f20775c = "";
            this.f20774b = "";
            c.netLog("url must be can not null or empty");
        }
    }

    public byte[] a() {
        if (this.f20773a == null) {
            this.f20773a = this.f20774b.getBytes(f20772d);
        }
        return this.f20773a;
    }

    public String b() {
        return d();
    }

    public String c() {
        return this.f20775c;
    }

    public String d() {
        return n.a(this.f20774b);
    }

    public boolean equals(Object obj) {
        if (obj instanceof ImageCacheURL) {
            return b().equals(((ImageCacheURL) obj).b());
        }
        return false;
    }

    public int hashCode() {
        return this.f20774b.hashCode() * 31;
    }
}
