package com.mgtv.thirdsdk.a.b;

import android.content.Context;
import android.text.TextUtils;
import com.hunantv.imgo.log.e;
import com.hunantv.imgo.net.DlnaRenderSource;
import com.hunantv.imgo.net.ImgoHttpCallBack;
import com.hunantv.imgo.net.entity.PlayerAuthRouterEntity;
import com.hunantv.imgo.util.l;
import com.mgtv.task.http.HttpParams;
import com.mgtv.task.m;
import com.transsion.videodownloader.model.Video;

public class b {
    private static String a = "com.mgtv.thirdsdk.a.b.b";
    private com.mgtv.thirdsdk.a.a.b b;
    private com.mgtv.thirdsdk.a.b c;
    private m d;
    private int e = 0;
    private int f;

    public b(com.mgtv.thirdsdk.a.b bVar, Context context) {
        this.c = bVar;
        this.d = new m(context);
    }

    public static int c(b bVar) {
        int i = bVar.e;
        bVar.e = i + 1;
        return i;
    }

    public void a(com.mgtv.thirdsdk.a.a.b bVar) {
        this.b = bVar;
    }

    public void b() {
        String str;
        if (this.d == null) {
            return;
        }
        if (this.e >= this.f || l.a(this.c.g)) {
            com.mgtv.thirdsdk.a.a.b bVar = this.b;
            if (bVar != null) {
                bVar.a("070703");
                return;
            }
            return;
        }
        if (TextUtils.isEmpty(this.c.e.type) || !this.c.e.type.equals(Video.SUFFIX.SUFFIX_M3U8)) {
            str = this.c.e.url;
        } else {
            str = this.c.g.get(this.e) + this.c.e.url;
        }
        e.a(a, "type==" + this.c.e.type, true);
        e.a(a, "URL==" + str, true);
        this.d.a(true).a(com.mgtv.thirdsdk.playcore.c.a.b(str), new HttpParams(), new ImgoHttpCallBack<DlnaRenderSource>() {
            @Override
            public void b(DlnaRenderSource dlnaRenderSource) {
            }

            @Override
            public void a(DlnaRenderSource dlnaRenderSource) {
                if (dlnaRenderSource == null) {
                    if (b.this.b != null) {
                        b.this.b.a("070703");
                        return;
                    }
                    return;
                }
                String info = dlnaRenderSource.getInfo();
                if (TextUtils.isEmpty(info)) {
                    if (b.this.b != null) {
                        b.this.b.a("070703");
                        return;
                    }
                    return;
                }
                String strC = com.mgtv.thirdsdk.playcore.c.a.c(info);
                if (b.this.c.b != null) {
                    for (int i = 0; i < b.this.c.b.size(); i++) {
                        if (b.this.c.b.get(i) != null && b.this.c.d == b.this.c.b.get(i).resolution) {
                            b.this.c.b.get(i).playUrl = strC;
                            b.this.c.a(strC);
                            break;
                        }
                    }
                }
                if (b.this.b != null) {
                    b.this.b.a(2);
                }
            }

            @Override
            public void a(DlnaRenderSource dlnaRenderSource, int i, int i2, String str2, Throwable th) {
                super.a(dlnaRenderSource, i, i2, str2, th);
                b.c(b.this);
                b.this.b();
            }
        });
    }

    public void a() {
        String str;
        PlayerAuthRouterEntity playerAuthRouterEntity = this.c.e;
        if (playerAuthRouterEntity != null && (str = playerAuthRouterEntity.url) != null && !str.trim().equals("")) {
            this.e = 0;
            if (!l.a(this.c.g)) {
                this.f = this.c.g.size();
            }
            b();
            return;
        }
        if (!this.c.a() && !this.c.b()) {
            this.b.a("070705");
        } else {
            a();
        }
    }
}
