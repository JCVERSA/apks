package com.transsion.transfer.androidasync.http;

import android.text.TextUtils;
import com.cloud.tmc.kernel.utils.UrlUtils;

public class u implements w, Cloneable {

    private final String f53446a;

    private final String f53447b;

    public u(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Name may not be null");
        }
        this.f53446a = str;
        this.f53447b = str2;
    }

    public Object clone() {
        return super.clone();
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof w)) {
            return false;
        }
        u uVar = (u) obj;
        return this.f53446a.equals(uVar.f53446a) && TextUtils.equals(this.f53447b, uVar.f53447b);
    }

    @Override
    public String getName() {
        return this.f53446a;
    }

    @Override
    public String getValue() {
        return this.f53447b;
    }

    public int hashCode() {
        return this.f53446a.hashCode() ^ this.f53447b.hashCode();
    }

    public String toString() {
        return this.f53446a + UrlUtils.EQUAL_MARK + this.f53447b;
    }
}
