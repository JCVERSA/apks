package com.transsion.playercommon.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.playercommon.R;
import com.transsion.playercommon.data.Speed;
import java.util.List;

public class SpeedAdapter extends RecyclerView.Adapter<SelectViewHolder> {
    public int o = -1;
    public List p;
    public int q;
    public int r;
    public a s;

    public final class SelectViewHolder extends RecyclerView.ViewHolder {
        public TextView p;
        public View q;

        public SelectViewHolder(View view) {
            super(view);
            TextView textView = (TextView) view.findViewById(R.id.tv_speed);
            this.p = textView;
            textView.setTextColor(ContextCompat.getColorStateList(view.getContext(), SpeedAdapter.this.r));
            View viewFindViewById = view.findViewById(R.id.fl_bg);
            this.q = viewFindViewById;
            viewFindViewById.setBackgroundResource(SpeedAdapter.this.q);
            view.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    this.b.lambda$new$0(view2);
                }
            });
        }

        public void b(Speed speed, boolean z) {
            this.p.setSelected(z);
            this.p.setText(speed.getSpS());
            this.p.setTextAppearance(z ? R.style.text_medium_back_font : R.style.text_regular_font);
            this.q.setSelected(z);
        }

        public final void lambda$new$0(View view) {
            a aVar = SpeedAdapter.this.s;
            if (aVar != null) {
                aVar.onItemClick(getAdapterPosition());
            }
        }
    }

    public interface a {
        void onItemClick(int i);
    }

    public SpeedAdapter(List list, int i, int i2) {
        this.p = list;
        this.q = i;
        this.r = i2;
    }

    @Override
    public void onBindViewHolder(SelectViewHolder selectViewHolder, int i) {
        selectViewHolder.b((Speed) this.p.get(i), this.o == i);
    }

    @Override
    public SelectViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new SelectViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.speed_item_view, viewGroup, false));
    }

    @Override
    public int getItemCount() {
        List list = this.p;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public void h(a aVar) {
        this.s = aVar;
    }

    public void r(int i) {
        this.o = i;
        notifyDataSetChanged();
    }

    public void s(float f) {
        if (this.p != null) {
            for (int i = 0; i < this.p.size(); i++) {
                if (Float.compare(((Speed) this.p.get(i)).getSpV(), f) == 0) {
                    r(i);
                    return;
                }
            }
            r(-1);
        }
    }
}
