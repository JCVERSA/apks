package com.mgmi.ads.api.a;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.mgadplus.viewgroup.dynamicview.ContainerLayout;
import com.mgmi.ads.api.render.AdWidgetInfo;
import com.mgmi.model.VASTChannelAd;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

public class h extends g {
    List<VASTChannelAd> k;

    public h(Context context, List<VASTChannelAd> list, VASTChannelAd vASTChannelAd, String str) {
        super(context, vASTChannelAd, str);
        this.k = list;
    }

    @Override
    public void a(int i, Object obj) {
    }

    @Override
    public void b() {
        com.mgtv.a.b.a aVar = this.e;
        if (aVar != null) {
            aVar.d_();
        }
    }

    @Override
    public void c() {
        com.mgtv.a.b.a aVar = this.e;
        if (aVar != null) {
            aVar.d();
        }
    }

    @Override
    public void k() {
        super.k();
        VASTChannelAd vASTChannelAd = this.a;
        if (vASTChannelAd == null || vASTChannelAd.getCurrentStaticResource() == null) {
            return;
        }
        a(com.mgmi.b.c.a().a(this.a.getCurrentStaticResource().getUrl()));
    }

    @Override
    public void o() {
        com.mgmi.ads.api.a aVarJ = j();
        if (aVarJ != null) {
            aVarJ.onAdListener(com.mgmi.ads.api.a.EnumC0161a.AD_RENDER_SUCCESS, new AdWidgetInfo(""));
        }
    }

    @Override
    public void p() {
        com.mgmi.ads.api.a aVarJ;
        com.mgtv.a.b.a aVar = this.e;
        if (aVar == null || aVar.b() || (aVarJ = j()) == null) {
            return;
        }
        aVarJ.onAdListener(com.mgmi.ads.api.a.EnumC0161a.IMAGE_AD_START, new AdWidgetInfo(""));
    }

    @Override
    public void q() {
    }

    @Override
    public void r() {
        com.mgmi.ads.api.a aVarJ = j();
        if (aVarJ != null) {
            aVarJ.onAdListener(com.mgmi.ads.api.a.EnumC0161a.AD_FINISH, new AdWidgetInfo(""));
        }
    }

    @Override
    public void a(ViewGroup viewGroup) {
        com.mgtv.a.b.a aVar = this.e;
        if (aVar != null) {
            aVar.a(this.c.get(), viewGroup);
            this.e.g_();
        }
    }

    @Override
    public int b(ViewGroup viewGroup) {
        super.b(viewGroup);
        if (h() == null) {
            return 4;
        }
        com.mgtv.a.b.a aVar = this.e;
        if (aVar != null) {
            if (!aVar.c() || this.i) {
                return 3;
            }
            if (viewGroup == null) {
                return 2;
            }
            viewGroup.removeAllViews();
            a();
            return 1;
        }
        a(this.c.get(), this.a);
        if (a(this.k)) {
            b(this.a.getRoolTime());
            return 2;
        }
        if (b(this.a)) {
            b(this.a.getRoolTime());
            return 2;
        }
        try {
            a(this.a);
            return 2;
        } catch (Exception e) {
            e.printStackTrace();
            return 2;
        }
    }

    @Override
    public void a(boolean z, com.mgmi.e.a aVar) {
        com.mgtv.a.b.a aVar2 = this.e;
        if (aVar2 != null) {
            aVar2.a(z, aVar);
        }
    }

    private void a(Context context, VASTChannelAd vASTChannelAd) {
        WeakReference<Context> weakReference;
        d dVarM = m();
        if (dVarM != null && vASTChannelAd != null) {
            vASTChannelAd.setDisplayWdith(dVarM.b());
            vASTChannelAd.setDisplayHeight(dVarM.c());
        }
        if (this.e == null && (weakReference = this.c) != null && weakReference.get() != null) {
            com.mgtv.a.b.a aVar = new com.mgtv.a.b.a();
            this.e = aVar;
            aVar.a((com.mgtv.a.b.a.b) this);
            if (j() != null) {
                this.e.a(j());
            }
            final ContainerLayout containerLayout = new ContainerLayout(this.c.get());
            System.out.println("BANNER containerLayout " + containerLayout);
            this.e.a(this.c.get(), containerLayout);
            if (dVarM != null && dVarM.t()) {
                com.mgtv.a.b.a aVar2 = this.e;
                if (aVar2 != null) {
                    aVar2.b(this.a);
                }
            } else {
                containerLayout.setAttachedToWindowListener(new ContainerLayout.a() {
                    @Override
                    public void onAttachedToWindow() {
                        System.out.println("BANNER containerLayout onAttachedToWindow " + containerLayout);
                        h hVar = h.this;
                        com.mgtv.a.b.a aVar3 = hVar.e;
                        if (aVar3 == null || !aVar3.b(hVar.a)) {
                            return;
                        }
                        h.this.e.d();
                    }

                    @Override
                    public void onDetachedFromWindow() {
                        System.out.println("BANNER containerLayout onDetachedFromWindow " + containerLayout);
                    }
                });
            }
        }
        if (this.j == null) {
            this.j = new ArrayList();
        }
        this.j.add(this.e);
    }

    private static boolean b(VASTChannelAd vASTChannelAd) {
        return com.mgmi.ads.api.e.a.a(vASTChannelAd);
    }

    private void a(VASTChannelAd vASTChannelAd) {
        if (vASTChannelAd == null || vASTChannelAd.getStaticResources() == null || vASTChannelAd.getStaticResources().size() <= 0 || TextUtils.isEmpty(vASTChannelAd.getCurrentStaticResource().getUrl())) {
            return;
        }
        String url = vASTChannelAd.getCurrentStaticResource().getUrl();
        String strA = null;
        if (vASTChannelAd.getCurrentStaticResource().isZipResource()) {
            try {
                strA = com.mgmi.b.c.a().a(url);
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (!TextUtils.isEmpty(strA) && new File(strA).exists()) {
                b(this.a.getRoolTime());
                return;
            } else {
                a(false, 301010);
                return;
            }
        }
        try {
            strA = com.mgmi.b.c.a().a(vASTChannelAd.getCurrentStaticResource().getUrl());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (a(strA)) {
            return;
        }
        a(vASTChannelAd, com.mgmi.ads.api.c.a(), vASTChannelAd.getCurrentStaticResource().getUrl());
    }

    public boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            File file = new File(str);
            if (!file.exists()) {
                return false;
            }
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(file.getAbsolutePath(), options);
            VASTChannelAd vASTChannelAd = this.a;
            if (vASTChannelAd != null) {
                b(vASTChannelAd.getRoolTime());
            }
            return true;
        } catch (Throwable th) {
            System.out.println("ccc  e " + th.getMessage());
            return false;
        }
    }

    public static boolean a(@NonNull List<VASTChannelAd> list) {
        return com.mgmi.ads.api.e.a.a(list);
    }

    @Override
    public void a(String str, int i, String str2) {
        if (j() != null) {
            j().onAdListener(com.mgmi.ads.api.a.EnumC0161a.AD_RENDER_FAIL, new AdWidgetInfo("").setErrorCode(i));
        }
    }
}
