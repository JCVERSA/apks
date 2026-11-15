package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.media3.datasource.RawResourceDataSource;
import com.transsion.livecaption.constant.ICode;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public final class oz implements tv {
    private final Context a;
    private final ArrayList b = new ArrayList();
    private final tv c;

    @Nullable
    private hb0 d;

    @Nullable
    private sg e;

    @Nullable
    private ds f;

    @Nullable
    private tv g;

    @Nullable
    private z72 h;

    @Nullable
    private rv i;

    @Nullable
    private sn1 j;

    @Nullable
    private tv k;

    public static final class a implements tv.a {
        private final Context a;
        private final tv.a b;

        public a(Context context, tv.a aVar) {
            this.a = context.getApplicationContext();
            this.b = aVar;
        }

        @Override
        public final tv a() {
            return new oz(this.a, this.b.a());
        }
    }

    public oz(Context context, tv tvVar) {
        this.a = context.getApplicationContext();
        this.c = (tv) hg.a(tvVar);
    }

    private void a(tv tvVar) {
        for (int i = 0; i < this.b.size(); i++) {
            tvVar.a((d72) this.b.get(i));
        }
    }

    @Override
    public final void close() throws IOException {
        tv tvVar = this.k;
        if (tvVar != null) {
            try {
                tvVar.close();
            } finally {
                this.k = null;
            }
        }
    }

    @Override
    public final Map<String, List<String>> getResponseHeaders() {
        tv tvVar = this.k;
        return tvVar == null ? Collections.emptyMap() : tvVar.getResponseHeaders();
    }

    @Override
    @Nullable
    public final Uri getUri() {
        tv tvVar = this.k;
        if (tvVar == null) {
            return null;
        }
        return tvVar.getUri();
    }

    @Override
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        tv tvVar = this.k;
        tvVar.getClass();
        return tvVar.read(bArr, i, i2);
    }

    @Override
    public final void a(d72 d72Var) {
        d72Var.getClass();
        this.c.a(d72Var);
        this.b.add(d72Var);
        hb0 hb0Var = this.d;
        if (hb0Var != null) {
            hb0Var.a(d72Var);
        }
        sg sgVar = this.e;
        if (sgVar != null) {
            sgVar.a(d72Var);
        }
        ds dsVar = this.f;
        if (dsVar != null) {
            dsVar.a(d72Var);
        }
        tv tvVar = this.g;
        if (tvVar != null) {
            tvVar.a(d72Var);
        }
        z72 z72Var = this.h;
        if (z72Var != null) {
            z72Var.a(d72Var);
        }
        rv rvVar = this.i;
        if (rvVar != null) {
            rvVar.a(d72Var);
        }
        sn1 sn1Var = this.j;
        if (sn1Var != null) {
            sn1Var.a(d72Var);
        }
    }

    @Override
    public final long a(xv xvVar) throws IOException {
        if (this.k == null) {
            String scheme = xvVar.a.getScheme();
            Uri uri = xvVar.a;
            int i = f92.a;
            String scheme2 = uri.getScheme();
            if (!TextUtils.isEmpty(scheme2) && !"file".equals(scheme2)) {
                if ("asset".equals(scheme)) {
                    if (this.e == null) {
                        sg sgVar = new sg(this.a);
                        this.e = sgVar;
                        a(sgVar);
                    }
                    this.k = this.e;
                } else if (ICode.CALL.CALL_KEY_CONTENT.equals(scheme)) {
                    if (this.f == null) {
                        ds dsVar = new ds(this.a);
                        this.f = dsVar;
                        a(dsVar);
                    }
                    this.k = this.f;
                } else if ("rtmp".equals(scheme)) {
                    if (this.g == null) {
                        try {
                            tv tvVar = (tv) Class.forName("com.monetization.ads.exo.ext.rtmp.RtmpDataSource").getConstructor(null).newInstance(null);
                            this.g = tvVar;
                            a(tvVar);
                        } catch (ClassNotFoundException unused) {
                            et0.d("DefaultDataSource", "Attempting to play RTMP stream without depending on the RTMP extension");
                        } catch (Exception e) {
                            throw new RuntimeException("Error instantiating RTMP extension", e);
                        }
                        if (this.g == null) {
                            this.g = this.c;
                        }
                    }
                    this.k = this.g;
                } else if ("udp".equals(scheme)) {
                    if (this.h == null) {
                        z72 z72Var = new z72(0);
                        this.h = z72Var;
                        a(z72Var);
                    }
                    this.k = this.h;
                } else if ("data".equals(scheme)) {
                    if (this.i == null) {
                        rv rvVar = new rv();
                        this.i = rvVar;
                        a(rvVar);
                    }
                    this.k = this.i;
                } else if (!RawResourceDataSource.RAW_RESOURCE_SCHEME.equals(scheme) && !"android.resource".equals(scheme)) {
                    this.k = this.c;
                } else {
                    if (this.j == null) {
                        sn1 sn1Var = new sn1(this.a);
                        this.j = sn1Var;
                        a(sn1Var);
                    }
                    this.k = this.j;
                }
            } else {
                String path = xvVar.a.getPath();
                if (path != null && path.startsWith("/android_asset/")) {
                    if (this.e == null) {
                        sg sgVar2 = new sg(this.a);
                        this.e = sgVar2;
                        a(sgVar2);
                    }
                    this.k = this.e;
                } else {
                    if (this.d == null) {
                        hb0 hb0Var = new hb0();
                        this.d = hb0Var;
                        a(hb0Var);
                    }
                    this.k = this.d;
                }
            }
            return this.k.a(xvVar);
        }
        throw new IllegalStateException();
    }
}
