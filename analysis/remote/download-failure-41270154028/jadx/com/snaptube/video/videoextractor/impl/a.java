package com.snaptube.video.videoextractor.impl;

import com.snaptube.extractor.pluginlib.common.SiteExtractLog;
import com.snaptube.video.videoextractor.model.PageContext;
import com.snaptube.video.videoextractor.model.SiteSupportRules;
import java.net.URI;
import java.util.Arrays;
import java.util.Random;
import o.kl6;
import o.qg7;
import o.va8;
import o.wq8;
import o.yq8;

public abstract class a implements wq8 {
    public static final Random e;
    public static int f;
    public String a;
    public String[] b;
    public String c;
    public SiteSupportRules d;

    static {
        Random random = new Random();
        e = random;
        f = random.nextInt(10);
    }

    public a(String str, String... strArr) {
        this.a = str.toLowerCase();
        this.b = strArr;
    }

    public static void j(String str, String str2, PageContext pageContext, long j, boolean z) {
        if (yq8.j().d().m() || f >= 1) {
            return;
        }
        va8.b().c().setEventName("ExtractVideoInfo").setAction("extract_duration").setProperty("event_url", pageContext.j()).setProperty("extract_from", pageContext.e()).setProperty(SiteExtractLog.INFO_HOST, str).setProperty("position_source", pageContext.b("EXTRACT_POS")).setProperty("extractor_type", str2).setProperty("elapsed", Long.valueOf(j)).setProperty("error_no", Integer.valueOf(!z ? 1 : 0)).a();
    }

    @Override
    public final boolean e(URI uri) {
        return qg7.c(uri, h());
    }

    public String f() {
        return null;
    }

    public String g() {
        return this.c;
    }

    public SiteSupportRules h() {
        if (this.d == null) {
            this.d = new SiteSupportRules(this.a, Arrays.asList(i()), f());
        }
        return this.d;
    }

    public String[] i() {
        return (String[]) this.b.clone();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void init() {
        yq8.j().e().h("all");
        if (this instanceof kl6) {
            yq8.j().e().f((kl6) this);
        }
    }

    public void k(String str) {
        this.c = str;
    }
}
