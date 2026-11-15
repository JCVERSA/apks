package com.transsion.sniffer_load.okdownload;

import android.text.TextUtils;
import com.alibaba.android.arouter.utils.Consts;
import com.lzy.okgo.model.Progress;
import com.transsion.videodownloader.model.Video;
import defpackage.av3;
import defpackage.b23;
import defpackage.ba0;
import defpackage.hk3;
import defpackage.r0a;
import defpackage.r13;
import defpackage.zu3;
import java.util.Iterator;
import java.util.Locale;
import java.util.Objects;
import java.util.regex.Pattern;

public class a extends ba0 {
    public String b;
    public String c;
    public String d;
    public long e;
    public String f;
    public int g;
    public String h;
    public String i;
    public boolean j;
    public String k;
    public int l = 0;
    public String m = "HD";
    public String n;
    public String o;
    public String p;
    public String q;
    public String r;
    public String s;
    public String t;

    public a(String str, String str2, String str3, long j, String str4) {
        this.b = str;
        this.c = str2;
        this.f = str4;
        this.e = j;
        this.d = c(str4, str3);
    }

    public static String c(String str, String str2) {
        String strN = zu3.n(str2);
        if (!TextUtils.isEmpty(strN) && h(strN)) {
            return str2;
        }
        if (TextUtils.isEmpty(str)) {
            return str2 + Video.SUFFIX.SUFFIX_MP4;
        }
        return str2 + Consts.DOT + str.toLowerCase(Locale.ROOT);
    }

    public static Progress d(a aVar) {
        String str;
        String strC;
        Progress progress = new Progress();
        if (TextUtils.isEmpty(aVar.t)) {
            str = TextUtils.isEmpty(aVar.b) ? aVar.h : aVar.b;
        } else {
            str = aVar.t;
        }
        progress.tag = str;
        progress.folder = r13.e().d();
        progress.status = 0;
        progress.uaAgent = aVar.n;
        progress.cookie = aVar.o;
        progress.totalSize = aVar.e;
        progress.url = aVar.b;
        progress.imgUrl = aVar.c;
        progress.source = aVar.g;
        progress.sniffId = aVar.h;
        if (!r0a.g(aVar.i)) {
            NewDownloadTask.DownloadTaskExtra downloadTaskExtra = new NewDownloadTask.DownloadTaskExtra();
            downloadTaskExtra.sniffRequestBody = aVar.i;
            progress.extra1 = downloadTaskExtra;
        }
        String lowerCase = aVar.d.toLowerCase(Locale.ROOT);
        Iterator it = hk3.g.iterator();
        while (it.hasNext()) {
            if (lowerCase.endsWith((String) it.next())) {
                strC = aVar.d;
                progress.fileName = av3.a(b23.g(strC, aVar.b));
                progress.fileName += ".xdl";
                progress.mimeType = aVar.f;
                progress.isClient = aVar.j;
                progress.acceptLanguage = aVar.p;
                progress.acceptType = aVar.q;
                progress.origin = aVar.r;
                progress.referer = aVar.s;
                progress.setOriginSite(aVar.k);
                progress.downloadSource = aVar.a();
                return progress;
            }
        }
        strC = c(aVar.f, aVar.d);
        progress.fileName = av3.a(b23.g(strC, aVar.b));
        progress.fileName += ".xdl";
        progress.mimeType = aVar.f;
        progress.isClient = aVar.j;
        progress.acceptLanguage = aVar.p;
        progress.acceptType = aVar.q;
        progress.origin = aVar.r;
        progress.referer = aVar.s;
        progress.setOriginSite(aVar.k);
        progress.downloadSource = aVar.a();
        return progress;
    }

    public static boolean h(String str) {
        return Pattern.compile("^[a-zA-Z0-9]{2,8}$").matcher(str).matches();
    }

    public int e() {
        return this.l;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return Objects.equals(this.b, ((a) obj).b);
    }

    public String f() {
        return this.m;
    }

    public String g() {
        return this.b;
    }

    public int hashCode() {
        String str = this.b;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public void i(int i) {
        this.l = i;
    }

    public void j(String str) {
        this.c = str;
    }

    public void k(String str) {
        this.m = str;
    }

    public String toString() {
        return "DowningItem{videoUrl='" + this.b + "', imgUrl='" + this.c + "', title='" + this.d + "', size=" + this.e + ", mimeType='" + this.f + "', source=" + this.g + ", uaAgent='" + this.n + "', cookie='" + this.o + "', sniffId='" + this.h + "', isClient=" + this.j + '}';
    }

    public a(String str, String str2, String str3, long j, String str4, boolean z) {
        this.b = str;
        this.c = str2;
        this.f = str4;
        this.e = j;
        if (z) {
            this.d = str3;
        } else {
            this.d = c(str4, str3);
        }
    }

    public a() {
    }
}
