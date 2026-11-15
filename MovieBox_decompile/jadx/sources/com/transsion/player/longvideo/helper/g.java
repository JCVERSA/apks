package com.transsion.player.longvideo.helper;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import com.transsion.player.longvideo.ui.LongVodUiType;
import kotlin.jvm.internal.Intrinsics;

public final class g extends d {

    private boolean f46112d;

    public static final void g(g gVar, mn.j jVar, View view) {
        gVar.f46112d = true;
        FrameLayout gameContainer = jVar.f66585o.f66603g;
        Intrinsics.g(gameContainer, "gameContainer");
        uf.c.g(gameContainer);
        AppCompatImageView ivGameClose = jVar.f66585o.f66606j;
        Intrinsics.g(ivGameClose, "ivGameClose");
        uf.c.g(ivGameClose);
    }

    public static final void i(g gVar) {
        mn.k kVar;
        AppCompatImageView appCompatImageView;
        mn.j jVarB = gVar.b();
        if (jVarB == null || (kVar = jVarB.f66585o) == null || (appCompatImageView = kVar.f66606j) == null) {
            return;
        }
        uf.c.k(appCompatImageView);
    }

    @Override
    public void c(String str, final mn.j viewBinding) {
        Intrinsics.h(viewBinding, "viewBinding");
        super.c(str, viewBinding);
        viewBinding.f66585o.f66606j.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                g.g(this.f46109a, viewBinding, view);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void h(LongVodUiType uiType) {
        kn.a.b bVarA;
        View viewE;
        ViewGroup viewGroup;
        mn.k kVar;
        FrameLayout frameLayout;
        mn.k kVar2;
        FrameLayout frameLayout2;
        mn.k kVar3;
        FrameLayout frameLayout3;
        mn.k kVar4;
        AppCompatImageView appCompatImageView;
        mn.k kVar5;
        FrameLayout frameLayout4;
        ViewGroup viewGroup2;
        Intrinsics.h(uiType, "uiType");
        kn.a.b bVarA2 = a();
        if (bVarA2 != null) {
            bVarA2.d(uiType);
        }
        if (uiType == LongVodUiType.MIDDLE || this.f46112d || (bVarA = a()) == null || (viewE = bVarA.e()) == 0) {
            return;
        }
        ViewParent parent = viewE.getParent();
        if (parent instanceof ViewGroup) {
            viewGroup2 = (ViewGroup) parent;
        } else {
            viewGroup = null;
        }
        if (viewGroup != null) {
            viewGroup = viewGroup2;
            viewGroup.removeView(viewE);
        }
        viewGroup = viewGroup2;
        wj.c cVar = viewE instanceof wj.c ? (wj.c) viewE : null;
        if (cVar != null) {
            cVar.setPageStyle("fullscreen");
        }
        mn.j jVarB = b();
        if (jVarB != null && (kVar5 = jVarB.f66585o) != null && (frameLayout4 = kVar5.f66603g) != null) {
            uf.c.k(frameLayout4);
        }
        mn.j jVarB2 = b();
        if (jVarB2 != null && (kVar4 = jVarB2.f66585o) != null && (appCompatImageView = kVar4.f66606j) != null) {
            uf.c.g(appCompatImageView);
        }
        mn.j jVarB3 = b();
        if (jVarB3 != null && (kVar3 = jVarB3.f66585o) != null && (frameLayout3 = kVar3.f66603g) != null) {
            frameLayout3.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    g.i(this.f46107a);
                }
            }, 3000L);
        }
        mn.j jVarB4 = b();
        if (jVarB4 != null && (kVar2 = jVarB4.f66585o) != null && (frameLayout2 = kVar2.f66603g) != null) {
            frameLayout2.removeAllViews();
        }
        ViewGroup.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        mn.j jVarB5 = b();
        if (jVarB5 == null || (kVar = jVarB5.f66585o) == null || (frameLayout = kVar.f66603g) == null) {
            return;
        }
        frameLayout.addView(viewE, layoutParams);
    }
}
