package so;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.tn.lib.widget.TnTextView;
import com.transsion.publish.R$color;
import com.transsion.publish.R$drawable;
import com.transsion.publish.R$layout;
import com.transsion.publish.R$string;
import com.transsion.publish.view.operation.OperationBean;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

public final class i extends RecyclerView.Adapter {

    private List f72377a = new ArrayList();

    private b f72378b;

    private Map f72379c;

    public i() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.f72379c = linkedHashMap;
        linkedHashMap.put(String.valueOf(R$drawable.ic_film_photos), Integer.valueOf(R$string.photo));
        this.f72379c.put(String.valueOf(R$drawable.ic_film_videos), Integer.valueOf(R$string.video));
        this.f72379c.put(String.valueOf(R$drawable.ic_film_audio), Integer.valueOf(R$string.audio));
        this.f72379c.put(String.valueOf(R$drawable.ic_film_work), Integer.valueOf(R$string.mention_a_specific_movie_audio));
        this.f72379c.put(String.valueOf(R$drawable.ic_film_link), Integer.valueOf(R$string.add_a_link));
    }

    public static final void j(i iVar, OperationBean operationBean, int i10, View view) {
        b bVar = iVar.f72378b;
        if (bVar != null) {
            bVar.a(operationBean, i10);
        }
    }

    @Override
    public int getItemCount() {
        return this.f72377a.size();
    }

    public final List h() {
        return this.f72377a;
    }

    @Override
    public void onBindViewHolder(g holder, final int i10) {
        Intrinsics.h(holder, "holder");
        final OperationBean operationBean = (OperationBean) this.f72377a.get(i10);
        if (operationBean.getStatus()) {
            holder.g().setImageResource(operationBean.getEnable());
            holder.f().setTextColor(com.blankj.utilcode.util.h.a(R$color.color_ff333333));
        } else {
            holder.g().setImageResource(operationBean.getDisable());
            holder.f().setTextColor(com.blankj.utilcode.util.h.a(R$color.color_ff999999));
        }
        TnTextView tnTextViewF = holder.f();
        Integer num = (Integer) this.f72379c.get(String.valueOf(operationBean.getEnable()));
        tnTextViewF.setTextById(num != null ? num.intValue() : 0);
        holder.h().setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                i.j(this.f72374a, operationBean, i10, view);
            }
        });
    }

    @Override
    public g onCreateViewHolder(ViewGroup parent, int i10) {
        Intrinsics.h(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R$layout.item_operation_vertical_layout, parent, false);
        Intrinsics.e(viewInflate);
        return new g(viewInflate);
    }

    public final void l(b itemClick) {
        Intrinsics.h(itemClick, "itemClick");
        this.f72378b = itemClick;
    }

    public final void setData(List data) {
        Intrinsics.h(data, "data");
        this.f72377a.clear();
        this.f72377a.addAll(data);
        notifyDataSetChanged();
    }
}
