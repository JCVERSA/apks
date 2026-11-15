package com.transsion.player.longvideo.helper;

import android.util.Log;
import android.view.ViewGroup;
import com.transsion.player.longvideo.ui.LongVodUiType;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class j {

    public static final a f46117e = new a(null);

    private final mn.j f46118a;

    private int f46119b;

    private int f46120c;

    private int f46121d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public j(mn.j viewBinding) {
        Intrinsics.h(viewBinding, "viewBinding");
        this.f46118a = viewBinding;
        this.f46119b = com.blankj.utilcode.util.y.c();
        int iE = com.blankj.utilcode.util.y.e();
        this.f46120c = iE;
        int i10 = this.f46119b;
        if (iE < i10) {
            this.f46120c = i10;
            this.f46119b = iE;
        }
        int iA = com.blankj.utilcode.util.d.a();
        if (iA > 10) {
            this.f46120c -= iA;
        }
    }

    public final int a() {
        return this.f46121d;
    }

    public final void b(int i10, int i11) {
        com.blankj.utilcode.util.d.c();
    }

    public final void c() {
        this.f46121d = 0;
    }

    public final void d(LongVodUiType uiType, int i10) {
        Intrinsics.h(uiType, "uiType");
        if (this.f46121d == 0) {
            this.f46121d = com.blankj.utilcode.util.d.c();
        }
        LongVodUiType longVodUiType = LongVodUiType.LAND;
        int i11 = 0;
        int i12 = (uiType == longVodUiType && i10 == 1) ? this.f46121d : 0;
        if (uiType == longVodUiType && i10 == 3) {
            i11 = this.f46121d;
        }
        Log.e("LongVodLandSpace", "setSpace  uiType:" + uiType + "  rotation:" + i10 + "  spaceLeft:" + i12 + "  spaceRight:" + i11);
        ViewGroup.LayoutParams layoutParams = this.f46118a.f66587q.f66569h.getLayoutParams();
        ViewGroup.LayoutParams layoutParams2 = this.f46118a.f66585o.C.getLayoutParams();
        layoutParams.width = i12;
        layoutParams2.width = i12;
        this.f46118a.f66587q.f66569h.setLayoutParams(layoutParams);
        this.f46118a.f66585o.C.setLayoutParams(layoutParams2);
        ViewGroup.LayoutParams layoutParams3 = this.f46118a.f66587q.f66568g.getLayoutParams();
        ViewGroup.LayoutParams layoutParams4 = this.f46118a.f66585o.B.getLayoutParams();
        layoutParams3.width = i11;
        layoutParams4.width = i11;
        this.f46118a.f66587q.f66568g.setLayoutParams(layoutParams3);
        this.f46118a.f66585o.B.setLayoutParams(layoutParams4);
    }
}
