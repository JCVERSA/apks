package com.mgtv.ssp.playdetail;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.mgtv.ssp.R;
import com.mgtv.ssp.adapter.BaseHolder;
import com.mgtv.ssp.bean.VideoDetailInfoBean;
import java.util.List;

public class SspPlayDetailDesAdapter extends RecyclerView.Adapter<BaseHolder> {
    List<VideoDetailInfoBean.InfoBean> a;
    private LayoutInflater b;

    public class a extends BaseHolder {
        public TextView a;

        public a(@NonNull View view) {
            super(view);
            View view2 = this.f;
            if (view2 != null) {
                this.a = (TextView) view2.findViewById(R.id.tv_info);
            }
        }
    }

    public SspPlayDetailDesAdapter(LayoutInflater layoutInflater) {
        this.b = layoutInflater;
    }

    public void a(List<VideoDetailInfoBean.InfoBean> list) {
        this.a = list;
        notifyDataSetChanged();
    }

    @Override
    public int getItemCount() {
        List<VideoDetailInfoBean.InfoBean> list = this.a;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override
    @NonNull
    public BaseHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        return new a(this.b.inflate(R.layout.item_video_info_desc, viewGroup, false));
    }

    @Override
    public void onBindViewHolder(@NonNull BaseHolder baseHolder, int i) {
        VideoDetailInfoBean.InfoBean infoBean;
        TextView textView;
        if (baseHolder == null || i >= getItemCount() || (infoBean = this.a.get(i)) == null || (textView = ((a) baseHolder).a) == null) {
            return;
        }
        textView.setText(infoBean.name + "：" + infoBean.val);
    }
}
