package com.transsion.usercenter.setting.labelsfeedback;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.R$drawable;
import com.transsion.usercenter.setting.labelsfeedback.model.FbDataModel;
import com.transsion.usercenter.setting.labelsfeedback.model.FbOption;
import java.util.Iterator;
import java.util.Set;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.Intrinsics;
import xu.d0;

public final class c extends RecyclerView.Adapter {

    private final FbDataModel f55284a;

    private d f55285b;

    private nv.a f55286c;

    public final class a extends RecyclerView.a0 {

        private final ConstraintLayout f55287a;

        private final AppCompatTextView f55288b;

        private final AppCompatCheckBox f55289c;

        private final View f55290d;

        private final View f55291e;

        final c f55292f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(c cVar, d0 binding) {
            super(binding.getRoot());
            Intrinsics.h(binding, "binding");
            this.f55292f = cVar;
            ConstraintLayout root = binding.getRoot();
            Intrinsics.g(root, "getRoot(...)");
            this.f55287a = root;
            AppCompatTextView textView = binding.f75534e;
            Intrinsics.g(textView, "textView");
            this.f55288b = textView;
            AppCompatCheckBox radioButton = binding.f75533d;
            Intrinsics.g(radioButton, "radioButton");
            this.f55289c = radioButton;
            View bgView = binding.f75531b;
            Intrinsics.g(bgView, "bgView");
            this.f55290d = bgView;
            View divider = binding.f75532c;
            Intrinsics.g(divider, "divider");
            this.f55291e = divider;
        }

        public final View f() {
            return this.f55290d;
        }

        public final View g() {
            return this.f55291e;
        }

        public final AppCompatCheckBox h() {
            return this.f55289c;
        }

        public final AppCompatTextView i() {
            return this.f55288b;
        }
    }

    public c(FbDataModel model) {
        Intrinsics.h(model, "model");
        this.f55284a = model;
    }

    public static final void i(int i10, c cVar, View view) {
        Set setH = SetsKt.h(Integer.valueOf(i10));
        Integer selectedIndex = cVar.f55284a.getSelectedIndex();
        if (selectedIndex != null) {
            setH.add(Integer.valueOf(selectedIndex.intValue()));
        }
        FbDataModel fbDataModel = cVar.f55284a;
        Integer selectedIndex2 = fbDataModel.getSelectedIndex();
        fbDataModel.setSelectedIndex((selectedIndex2 != null && selectedIndex2.intValue() == i10) ? null : Integer.valueOf(i10));
        Iterator it = setH.iterator();
        while (it.hasNext()) {
            cVar.notifyItemChanged(((Number) it.next()).intValue());
        }
        cVar.f55284a.setSelectedId(null);
        Integer selectedIndex3 = cVar.f55284a.getSelectedIndex();
        if (selectedIndex3 != null) {
            int iIntValue = selectedIndex3.intValue();
            FbDataModel fbDataModel2 = cVar.f55284a;
            fbDataModel2.setSelectedId(Integer.valueOf(fbDataModel2.getOptions().get(iIntValue).getId()));
        }
        d dVar = cVar.f55285b;
        if (dVar != null) {
            dVar.k(cVar);
        }
    }

    @Override
    public int getItemCount() {
        return this.f55284a.getOptions().size();
    }

    @Override
    public int getItemViewType(int i10) {
        return super.getItemViewType(i10);
    }

    @Override
    public void onBindViewHolder(a holder, final int i10) {
        int i11;
        Intrinsics.h(holder, "holder");
        FbOption fbOption = this.f55284a.getOptions().get(i10);
        Integer selectedIndex = this.f55284a.getSelectedIndex();
        boolean z10 = selectedIndex != null && selectedIndex.intValue() == i10;
        holder.i().setText(fbOption.getName());
        holder.h().setChecked(z10);
        View viewF = holder.f();
        if (i10 == 0) {
            uf.c.g(holder.g());
            i11 = R$drawable.bg_radius_top_6_color_white_6p;
        } else {
            i11 = i10 == this.f55284a.getOptions().size() - 1 ? R$drawable.bg_radius_bottom_6_color_white_6p : R$color.white_6;
        }
        viewF.setBackgroundResource(i11);
        holder.i().setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                c.i(i10, this, view);
            }
        });
    }

    @Override
    public a onCreateViewHolder(ViewGroup parent, int i10) {
        Intrinsics.h(parent, "parent");
        d0 d0VarC = d0.c(LayoutInflater.from(parent.getContext()), parent, false);
        Intrinsics.g(d0VarC, "inflate(...)");
        return new a(this, d0VarC);
    }

    public final void k(nv.a aVar) {
        this.f55286c = aVar;
    }

    public final void l(d dVar) {
        this.f55285b = dVar;
    }
}
