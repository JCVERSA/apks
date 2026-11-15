package oq;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.a0;
import com.blankj.utilcode.util.y;
import com.transsion.share.R$id;
import com.transsion.share.R$layout;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

public final class c extends RecyclerView.Adapter {

    private List f67931a;

    private oq.a f67932b;

    public static final class a extends RecyclerView.a0 {

        private TextView f67933a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(View view) {
            super(view);
            Intrinsics.h(view, "view");
            View viewFindViewById = this.itemView.findViewById(R$id.tv_share);
            Intrinsics.g(viewFindViewById, "findViewById(...)");
            this.f67933a = (TextView) viewFindViewById;
        }

        public final TextView f() {
            return this.f67933a;
        }
    }

    public c(List mDatas) {
        Intrinsics.h(mDatas, "mDatas");
        this.f67931a = mDatas;
    }

    public static final void i(c cVar, nq.a aVar, View view) {
        oq.a aVar2;
        if (o.e(o.f67944a, view.hashCode(), 0L, 2, null) || (aVar2 = cVar.f67932b) == null) {
            return;
        }
        aVar2.a(aVar);
    }

    @Override
    public int getItemCount() {
        return this.f67931a.size();
    }

    @Override
    public void onBindViewHolder(a holder, int i10) {
        Intrinsics.h(holder, "holder");
        ViewGroup.LayoutParams layoutParams = holder.itemView.getLayoutParams();
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutParams");
        RecyclerView.n nVar = (RecyclerView.n) layoutParams;
        int iE = (y.e() - a0.a(286.0f)) / 4;
        if (i10 == 0) {
            nVar.setMarginStart(a0.a(16.0f));
            nVar.setMarginEnd(iE);
        } else if (i10 == getItemCount() - 1) {
            nVar.setMarginStart(0);
            nVar.setMarginEnd(a0.a(16.0f));
        } else {
            nVar.setMarginStart(0);
            nVar.setMarginEnd(iE);
        }
        final nq.a aVar = (nq.a) this.f67931a.get(i10);
        holder.f().setText(aVar.b());
        holder.f().setCompoundDrawablesRelativeWithIntrinsicBounds(0, aVar.a(), 0, 0);
        holder.itemView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                c.i(this.f67929a, aVar, view);
            }
        });
    }

    @Override
    public a onCreateViewHolder(ViewGroup parent, int i10) {
        Intrinsics.h(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R$layout.adapter_share, parent, false);
        Intrinsics.e(viewInflate);
        return new a(viewInflate);
    }

    public final void k(oq.a onItemClickListener) {
        Intrinsics.h(onItemClickListener, "onItemClickListener");
        this.f67932b = onItemClickListener;
    }
}
