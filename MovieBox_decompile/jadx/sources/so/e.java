package so;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.publish.R$layout;
import com.transsion.publish.view.operation.OperationBean;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

public final class e extends RecyclerView.Adapter {

    private List f72367a = new ArrayList();

    private a f72368b;

    public static final void j(e eVar, OperationBean operationBean, int i10, View view) {
        a aVar = eVar.f72368b;
        if (aVar != null) {
            aVar.a(operationBean, i10);
        }
    }

    public final void addData(List data) {
        Intrinsics.h(data, "data");
        int size = this.f72367a.size();
        this.f72367a.addAll(data);
        notifyItemRangeInserted(size, data.size());
    }

    @Override
    public int getItemCount() {
        return this.f72367a.size();
    }

    public final List h() {
        return this.f72367a;
    }

    @Override
    public void onBindViewHolder(f holder, final int i10) {
        Intrinsics.h(holder, "holder");
        final OperationBean operationBean = (OperationBean) this.f72367a.get(i10);
        if (operationBean.getStatus()) {
            holder.f().setImageResource(operationBean.getEnable());
        } else {
            holder.f().setImageResource(operationBean.getDisable());
        }
        holder.g().setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                e.j(this.f72364a, operationBean, i10, view);
            }
        });
    }

    @Override
    public f onCreateViewHolder(ViewGroup parent, int i10) {
        Intrinsics.h(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R$layout.item_operation_layout, parent, false);
        Intrinsics.e(viewInflate);
        return new f(viewInflate);
    }

    public final void l(a itemClick) {
        Intrinsics.h(itemClick, "itemClick");
        this.f72368b = itemClick;
    }
}
