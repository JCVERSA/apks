package com.transsion.lib_web.zip.loader;

import android.content.Context;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

public final class d {

    private final Context f44839a;

    private final List f44840b;

    private String f44841c;

    private String f44842d;

    private String f44843e;

    public d(Context context, List loaders) {
        Intrinsics.h(context, "context");
        Intrinsics.h(loaders, "loaders");
        this.f44839a = context;
        this.f44840b = loaders;
        this.f44841c = "";
        this.f44842d = "";
        this.f44843e = "";
    }

    public final WebResourceResponse a(WebResourceRequest webResourceRequest) {
        if (webResourceRequest == null) {
            return null;
        }
        Iterator it = this.f44840b.iterator();
        while (it.hasNext()) {
            WebResourceResponse webResourceResponseA = ((c) it.next()).a(webResourceRequest);
            if (webResourceResponseA != null) {
                return webResourceResponseA;
            }
        }
        return null;
    }

    public final boolean b() {
        for (c cVar : this.f44840b) {
        }
        return false;
    }
}
