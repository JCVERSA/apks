package com.snaptube.premium.ads;

import android.content.Context;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.BaseViewHolder;
import com.snaptube.ads.AdFlavor;
import com.snaptube.ads.base.AdsPos;
import com.snaptube.ads.nativead.AdView;
import com.snaptube.premium.R;
import com.snaptube.premium.app.PhoenixApplication;
import com.snaptube.util.ProductionEnv;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import o.do3;
import o.eo3;
import o.i7;

public class AdOldListDelegate {
    public ListType a;
    public String b;
    public int c;
    public List e;
    public SparseArray f;
    public SparseArray g;
    public Set h;
    public boolean i;
    public boolean d = true;
    public boolean j = true;

    public class AdViewHolder extends BaseViewHolder {
        public AdViewHolder(View view) {
            super(view);
        }

        public void O(do3 do3Var) {
            View view = this.itemView;
            if (view instanceof AdView) {
                AdView adView = (AdView) view;
                AdFlavor adFlavorFindByFlavor = AdFlavor.findByFlavor(do3Var.d());
                adView.setLayoutId(adFlavorFindByFlavor != null ? adFlavorFindByFlavor.resId : AdFlavor.MEDIUM_SMALL_COVER_OLD.resId);
                ProductionEnv.debugLog("AdOldListDelegate", "adFlavor = " + adFlavorFindByFlavor + ", insertAdPosInfo adPos = " + do3Var.a());
                adView.setAdMargins(16, 8, 16, 8);
                adView.setPlacementAlias(do3Var.a());
                adView.o0();
            }
        }
    }

    public enum ListType {
        DOWNLOAD,
        MUSIC,
        VIDEO,
        PLAYLIST
    }

    public static class a {
        public static final int[] a;

        static {
            int[] iArr = new int[ListType.values().length];
            a = iArr;
            try {
                iArr[ListType.DOWNLOAD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    public AdOldListDelegate(ListType listType, boolean z) {
        this.a = listType;
        g();
        this.i = z;
    }

    public AdViewHolder a(Context context) {
        AdView adView = new AdView(context);
        adView.setBackgroundResource(R.color.background_block_normal_color);
        adView.setShowCtaAction(this.j);
        adView.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        return new AdViewHolder(adView);
    }

    public final AdsPos b(ListType listType) {
        if (a.a[listType.ordinal()] != 1) {
            return null;
        }
        return AdsPos.NATIVE_MYFILE_ALL_PLAY_LIST;
    }

    public List c() {
        return this.e;
    }

    public String d() {
        return this.b;
    }

    public SparseArray e() {
        return this.f;
    }

    public void f(int i) {
        this.c = i;
        g();
    }

    public void g() {
        int iIndexOf;
        if (this.f == null) {
            this.f = new SparseArray();
        }
        if (this.e == null) {
            this.e = new ArrayList();
        }
        if (this.g == null) {
            this.g = new SparseArray();
        }
        if (this.h == null) {
            this.h = new HashSet();
        }
        ListType listType = this.a;
        AdsPos adsPosB = listType == null ? null : b(listType);
        String strPos = adsPosB != null ? adsPosB.pos() : null;
        this.b = strPos;
        if (!this.i || this.a == null || TextUtils.isEmpty(strPos) || !PhoenixApplication.C().n()) {
            return;
        }
        com.snaptube.premium.ads.a.d dVarZ = PhoenixApplication.C().y().Z(this.b);
        this.j = PhoenixApplication.C().y().s0(this.b);
        eo3 eo3VarC = i7.c(this.b, this.c, dVarZ);
        this.e = eo3VarC.a();
        this.f = eo3VarC.c();
        for (int i = 0; i < this.e.size(); i++) {
            this.g.put(((Integer) this.e.get(i)).intValue(), (Integer) dVarZ.i.get(i));
        }
        if (this.d || (iIndexOf = this.e.indexOf(0)) < 0) {
            return;
        }
        this.e.remove(iIndexOf);
    }
}
