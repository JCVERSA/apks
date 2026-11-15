package com.transsion.usercenter.setting.labelsfeedback;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.jvm.internal.Intrinsics;
import xu.f0;

public final class j extends RecyclerView.Adapter {

    public final class a extends RecyclerView.a0 {

        final j f55309a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(j jVar, f0 binding) {
            super(binding.getRoot());
            Intrinsics.h(binding, "binding");
            this.f55309a = jVar;
        }
    }

    @Override
    public void onBindViewHolder(a holder, int i10) {
        Intrinsics.h(holder, "holder");
    }

    @Override
    public int getItemCount() {
        return 1;
    }

    @Override
    public a onCreateViewHolder(ViewGroup parent, int i10) {
        Intrinsics.h(parent, "parent");
        f0 f0VarC = f0.c(LayoutInflater.from(parent.getContext()), parent, false);
        Intrinsics.g(f0VarC, "inflate(...)");
        return new a(this, f0VarC);
    }
}
