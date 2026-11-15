package com.transsion.onlinevideo.widgets.view;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.onlinevideo.R;
import com.transsion.onlinevideo.adapter.EpisodesAdapter;
import java.util.List;

public class EpisodesPageAdapter extends RecyclerView.Adapter<b> {
    public Context o;
    public List p;
    public a q;

    public interface a {
        void a(List list, int i);
    }

    public class b extends RecyclerView.ViewHolder {
        public RecyclerView p;
        public EpisodesAdapter q;

        public b(View view) {
            super(view);
            RecyclerView recyclerView = (RecyclerView) view.findViewById(R.id.rv_episodes_page);
            this.p = recyclerView;
            recyclerView.setLayoutManager(new GridLayoutManager(EpisodesPageAdapter.this.o, 6));
            EpisodesAdapter episodesAdapter = new EpisodesAdapter(EpisodesPageAdapter.this.o, true, true);
            this.q = episodesAdapter;
            this.p.setAdapter(episodesAdapter);
            this.q.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
                @Override
                public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view2, int i) {
                    this.b.c(baseQuickAdapter, view2, i);
                }
            });
        }

        public void b(List list) {
            this.q.setNewData(list);
        }

        public final void c(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            if (EpisodesPageAdapter.this.q != null) {
                EpisodesPageAdapter.this.q.a(this.q.getData(), i);
            }
        }
    }

    public EpisodesPageAdapter(Context context, List list) {
        this.o = context;
        this.p = list;
    }

    @Override
    public void onBindViewHolder(b bVar, int i) {
        bVar.b((List) this.p.get(i));
    }

    @Override
    public b onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new b(LayoutInflater.from(this.o).inflate(R.layout.item_episodes_page, viewGroup, false));
    }

    @Override
    public int getItemCount() {
        return this.p.size();
    }

    public void setOnEpisodeClickListener(a aVar) {
        this.q = aVar;
    }
}
