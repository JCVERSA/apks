package com.mbridge.msdk.video.dynview.util.draw;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.y;
import com.mbridge.msdk.video.dynview.c;
import java.util.List;
import java.util.Map;

public class a {

    private static volatile a f38272d;

    private View f38273a;

    private Bitmap f38274b;

    private Bitmap f38275c;

    class RunnableC0538a implements Runnable {

        final Bitmap f38276a;

        final int f38277b;

        final float f38278c;

        final float f38279d;

        class RunnableC0539a implements Runnable {

            final com.mbridge.msdk.video.dynview.shape.a.b f38281a;

            RunnableC0539a(com.mbridge.msdk.video.dynview.shape.a.b bVar) {
                this.f38281a = bVar;
            }

            @Override
            public void run() {
                if (a.this.f38273a == null || this.f38281a.a() == null) {
                    return;
                }
                a.this.f38273a.setBackground(this.f38281a.a());
            }
        }

        RunnableC0538a(Bitmap bitmap, int i10, float f10, float f11) {
            this.f38276a = bitmap;
            this.f38277b = i10;
            this.f38278c = f10;
            this.f38279d = f11;
        }

        @Override
        public void run() {
            try {
                Bitmap bitmapA = y.a(this.f38276a, 10);
                Bitmap bitmapA2 = y.a(this.f38276a, 10);
                com.mbridge.msdk.video.dynview.shape.a.b bVarA = com.mbridge.msdk.video.dynview.shape.a.a();
                bVarA.a(this.f38277b).b(bitmapA).a(bitmapA2);
                if (this.f38277b == 2) {
                    float f10 = this.f38278c;
                    float f11 = this.f38279d;
                    if (f10 > f11) {
                        bVarA.b(f10).a(this.f38279d);
                    } else {
                        bVarA.b(f11).a(this.f38278c);
                    }
                } else {
                    bVarA.b(this.f38278c).a(this.f38279d);
                }
                if (a.this.f38273a != null) {
                    a.this.f38273a.post(new RunnableC0539a(bVarA));
                }
            } catch (Exception e10) {
                o0.b("ChoiceOneDrawBitBg", e10.getMessage());
            }
        }
    }

    private a() {
    }

    public void b() {
        if (this.f38273a != null) {
            this.f38273a = null;
        }
        Bitmap bitmap = this.f38274b;
        if (bitmap != null && !bitmap.isRecycled()) {
            this.f38274b.recycle();
            this.f38274b = null;
        }
        Bitmap bitmap2 = this.f38275c;
        if (bitmap2 == null || bitmap2.isRecycled()) {
            return;
        }
        this.f38275c.recycle();
        this.f38275c = null;
    }

    public static a a() {
        a aVar;
        if (f38272d != null) {
            return f38272d;
        }
        synchronized (a.class) {
            try {
                if (f38272d == null) {
                    f38272d = new a();
                }
                aVar = f38272d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return aVar;
    }

    public void a(Map<String, Bitmap> map, c cVar, View view) {
        if (view == null || cVar == null || map == null || map.size() == 0 || map.size() < 2 || cVar.b() == null || cVar.b().size() < 2) {
            return;
        }
        this.f38273a = view;
        int iH = cVar.h();
        float fM = cVar.m();
        float fK = cVar.k();
        try {
            List<CampaignEx> listB = cVar.b();
            String md5 = listB.get(0) != null ? SameMD5.getMD5(listB.get(0).getImageUrl()) : "";
            String md6 = listB.get(1) != null ? SameMD5.getMD5(listB.get(1).getImageUrl()) : "";
            Bitmap bitmap = (TextUtils.isEmpty(md5) || !map.containsKey(md5)) ? null : map.get(md5);
            Bitmap bitmap2 = (TextUtils.isEmpty(md6) || !map.containsKey(md6)) ? null : map.get(md6);
            if (bitmap == null || bitmap.isRecycled() || bitmap2 == null || bitmap2.isRecycled()) {
                return;
            }
            a(iH, fM, fK, bitmap, bitmap2);
        } catch (Exception e10) {
            o0.b("ChoiceOneDrawBitBg", e10.getMessage());
        }
    }

    private synchronized void a(int i10, float f10, float f11, Bitmap bitmap, Bitmap bitmap2) {
        try {
            com.mbridge.msdk.foundation.same.threadpool.a.a().execute(new RunnableC0538a(bitmap, i10, f10, f11));
        } catch (Exception e10) {
            o0.a("ChoiceOneDrawBitBg", e10.getMessage());
        }
    }
}
