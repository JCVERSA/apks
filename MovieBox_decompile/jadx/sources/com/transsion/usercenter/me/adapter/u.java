package com.transsion.usercenter.me.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$mipmap;
import com.tn.lib.widget.TnTextView;
import com.transsion.baseui.R$string;
import com.transsion.baseui.adapter.BaseItemBindingProvider;
import com.transsion.usercenter.profile.bean.MeItemInfo;
import com.transsion.usercenter.profile.bean.MineNovel;
import com.transsion.usercenter.profile.bean.MineNovelItem;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import xu.o0;

public final class u extends BaseItemBindingProvider {

    private final o f54854g;

    /* JADX WARN: Multi-variable type inference failed */
    public u() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    private final void C(o0 o0Var, final MineNovelItem mineNovelItem, final int i10) {
        int i11;
        int i12;
        Context context = o0Var.getRoot().getContext();
        ImageView imageView = new ImageView(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(lj.a.b(20), lj.a.b(20));
        if (i10 != 1) {
            i11 = i10 != 2 ? R$mipmap.ic_mine_novel_library : R$mipmap.ic_mine_novel_download;
        } else {
            i11 = R$mipmap.ic_mine_novel_history;
        }
        String icUrl = mineNovelItem.getIcUrl();
        if (icUrl == null || icUrl.length() == 0) {
            imageView.setImageResource(i11);
        } else {
            ni.f.a aVar = ni.f.f67269a;
            Intrinsics.e(context);
            ni.f.b bVarM = aVar.m(context);
            String icUrl2 = mineNovelItem.getIcUrl();
            Intrinsics.e(icUrl2);
            bVarM.g(icUrl2).m(lj.a.b(20)).c(lj.a.b(20)).d(imageView);
        }
        Intrinsics.e(context);
        TnTextView tnTextView = new TnTextView(context);
        tnTextView.setTypeface(uf.a.d(context));
        tnTextView.setTextSize(12.0f);
        tnTextView.setTextColor(androidx.core.content.b.getColor(context, R$color.white_80));
        if (i10 != 1) {
            i12 = i10 != 2 ? R$string.Library : R$string.Downloads;
        } else {
            i12 = R$string.History;
        }
        String title = mineNovelItem.getTitle();
        if (title == null || title.length() == 0) {
            tnTextView.setText(context.getResources().getString(i12));
        } else {
            tnTextView.setText(mineNovelItem.getTitle());
        }
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.topMargin = lj.a.b(4);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.addView(imageView, layoutParams);
        linearLayout.addView(tnTextView, layoutParams2);
        linearLayout.setGravity(17);
        linearLayout.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                u.D(mineNovelItem, i10, view);
            }
        });
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(0, -1);
        layoutParams3.weight = 1.0f;
        o0Var.f75711e.addView(linearLayout, layoutParams3);
    }

    public static final void D(MineNovelItem mineNovelItem, int i10, View view) {
        com.transsion.usercenter.me.k.f54876a.c("novel_" + mineNovelItem.getTitle(), i10);
        String deeplink = mineNovelItem.getDeeplink();
        if (deeplink != null) {
            ij.k.h(deeplink, null, 1, null);
        }
    }

    private final void E(o0 o0Var, MineNovel mineNovel) {
        ArrayList arrayList;
        List<MineNovelItem> subItems = mineNovel.getSubItems();
        if (subItems == null || subItems.isEmpty()) {
            LinearLayout llBottom = o0Var.f75711e;
            Intrinsics.g(llBottom, "llBottom");
            uf.c.g(llBottom);
            return;
        }
        o0Var.f75711e.removeAllViews();
        LinearLayout llBottom2 = o0Var.f75711e;
        Intrinsics.g(llBottom2, "llBottom");
        uf.c.k(llBottom2);
        List<MineNovelItem> subItems2 = mineNovel.getSubItems();
        if (subItems2 != null) {
            arrayList = new ArrayList();
            for (Object obj : subItems2) {
                String deeplink = ((MineNovelItem) obj).getDeeplink();
                if (!(deeplink == null || deeplink.length() == 0)) {
                    arrayList.add(obj);
                }
            }
        } else {
            arrayList = null;
        }
        if (arrayList == null || arrayList.isEmpty()) {
            LinearLayout llBottom3 = o0Var.f75711e;
            Intrinsics.g(llBottom3, "llBottom");
            uf.c.g(llBottom3);
        } else {
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                C(o0Var, (MineNovelItem) arrayList.get(i10), i10);
                if (i10 < arrayList.size() - 1) {
                    o0Var.f75711e.addView(new View(k()), new LinearLayout.LayoutParams(lj.a.b(8), -1));
                }
            }
        }
    }

    public static final Unit G(MineNovel mineNovel, u uVar, MeItemInfo meItemInfo, View it) {
        Function1<MeItemInfo, Unit> function1Q1;
        Intrinsics.h(it, "it");
        com.transsion.usercenter.me.k.f54876a.b("novel");
        String deeplink = mineNovel.getDeeplink();
        if (deeplink != null) {
            ij.k.h(deeplink, null, 1, null);
        }
        o oVar = uVar.f54854g;
        if (oVar != null && (function1Q1 = oVar.Q1()) != null) {
            function1Q1.invoke(meItemInfo);
        }
        return Unit.f64096a;
    }

    @Override
    public void y(o0 binding, BaseViewHolder helper, final MeItemInfo item) {
        Intrinsics.h(binding, "binding");
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        Object data = item.getData();
        final MineNovel mineNovel = data instanceof MineNovel ? (MineNovel) data : null;
        if (mineNovel == null) {
            return;
        }
        com.transsion.usercenter.me.k.f54876a.a("novel");
        View itemView = helper.itemView;
        Intrinsics.g(itemView, "itemView");
        uf.c.c(itemView, 0L, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return u.G(mineNovel, this, item, (View) obj);
            }
        }, 1, null);
        binding.f75712f.setText(mineNovel.getTitle());
        AppCompatTextView desTv = binding.f75709c;
        Intrinsics.g(desTv, "desTv");
        String des = mineNovel.getDes();
        desTv.setVisibility(des == null || des.length() == 0 ? 8 : 0);
        binding.f75709c.setText(mineNovel.getDes());
        String buttonText = mineNovel.getButtonText();
        if (buttonText != null && buttonText.length() != 0) {
            binding.f75708b.setText(mineNovel.getButtonText());
        }
        String icUrl = mineNovel.getIcUrl();
        if (icUrl == null || icUrl.length() == 0) {
            binding.f75710d.setImageResource(R$mipmap.ic_mine_novel);
        } else {
            ni.f.b bVarM = ni.f.f67269a.m(k());
            String icUrl2 = mineNovel.getIcUrl();
            Intrinsics.e(icUrl2);
            ni.f.b bVarC = bVarM.g(icUrl2).m(lj.a.b(20)).c(lj.a.b(20));
            ImageView icIV = binding.f75710d;
            Intrinsics.g(icIV, "icIV");
            bVarC.d(icIV);
        }
        E(binding, mineNovel);
    }

    @Override
    public o0 z(LayoutInflater inflater, ViewGroup parent) {
        Intrinsics.h(inflater, "inflater");
        Intrinsics.h(parent, "parent");
        o0 o0VarC = o0.c(LayoutInflater.from(k()), parent, false);
        Intrinsics.g(o0VarC, "inflate(...)");
        return o0VarC;
    }

    @Override
    public int l() {
        return 7;
    }

    public u(o oVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : oVar);
    }

    public u(o oVar) {
        this.f54854g = oVar;
    }
}
