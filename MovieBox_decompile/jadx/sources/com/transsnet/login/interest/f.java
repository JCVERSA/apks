package com.transsnet.login.interest;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsnet.login.R$id;
import com.transsnet.login.R$layout;
import com.transsnet.login.R$mipmap;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public final class f extends RecyclerView.Adapter {

    private final List f58150a;

    private final Function1 f58151b;

    private final ArrayList f58152c;

    private final ArrayList f58153d;

    public static final class a extends RecyclerView.a0 {

        private final AppCompatTextView f58154a;

        private final AppCompatImageView f58155b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(View view) {
            super(view);
            Intrinsics.h(view, "view");
            View viewFindViewById = view.findViewById(R$id.tv_interest);
            Intrinsics.g(viewFindViewById, "findViewById(...)");
            this.f58154a = (AppCompatTextView) viewFindViewById;
            View viewFindViewById2 = view.findViewById(R$id.iv_interest);
            Intrinsics.g(viewFindViewById2, "findViewById(...)");
            this.f58155b = (AppCompatImageView) viewFindViewById2;
        }

        public final AppCompatImageView f() {
            return this.f58155b;
        }

        public final AppCompatTextView g() {
            return this.f58154a;
        }
    }

    public f(List dataList, Function1 listener) {
        Intrinsics.h(dataList, "dataList");
        Intrinsics.h(listener, "listener");
        this.f58150a = dataList;
        this.f58151b = listener;
        this.f58152c = new ArrayList();
        this.f58153d = CollectionsKt.h(Integer.valueOf(R$mipmap.login_interest_animal_plant), Integer.valueOf(R$mipmap.login_interest_sport), Integer.valueOf(R$mipmap.login_interest_food), Integer.valueOf(R$mipmap.login_interest_game), Integer.valueOf(R$mipmap.login_interest_transportation), Integer.valueOf(R$mipmap.login_interest_fitness), Integer.valueOf(R$mipmap.login_interest_music), Integer.valueOf(R$mipmap.login_interest_animation), Integer.valueOf(R$mipmap.login_interest_art), Integer.valueOf(R$mipmap.login_interest_travel), Integer.valueOf(R$mipmap.login_interest_comedy), Integer.valueOf(R$mipmap.login_interest_fashion));
    }

    public static final void j(f fVar, int i10, View view) {
        boolean zIsSelected = view.isSelected();
        boolean z10 = !zIsSelected;
        if (zIsSelected) {
            fVar.f58152c.remove(Integer.valueOf(i10));
        } else {
            fVar.f58152c.add(Integer.valueOf(i10));
        }
        view.setSelected(z10);
        fVar.f58151b.invoke(fVar.f58152c);
    }

    @Override
    public int getItemCount() {
        return this.f58150a.size();
    }

    public final List h() {
        return this.f58152c;
    }

    @Override
    public void onBindViewHolder(a holder, final int i10) {
        Intrinsics.h(holder, "holder");
        holder.g().setText((String) this.f58150a.get(i10));
        AppCompatImageView appCompatImageViewF = holder.f();
        Object obj = this.f58153d.get(i10);
        Intrinsics.g(obj, "get(...)");
        appCompatImageViewF.setImageResource(((Number) obj).intValue());
        holder.itemView.setSelected(this.f58152c.contains(Integer.valueOf(i10)));
        holder.itemView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                f.j(this.f58148a, i10, view);
            }
        });
    }

    @Override
    public a onCreateViewHolder(ViewGroup parent, int i10) {
        Intrinsics.h(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R$layout.login_item_interest, parent, false);
        Intrinsics.g(viewInflate, "inflate(...)");
        return new a(viewInflate);
    }
}
