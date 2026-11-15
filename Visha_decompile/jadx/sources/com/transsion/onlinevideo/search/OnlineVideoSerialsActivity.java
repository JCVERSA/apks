package com.transsion.onlinevideo.search;

import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.dbdata.beans.onlinevideo.RouterBean;
import com.transsion.dbdata.beans.onlinevideo.VideoInfo;
import com.transsion.onlinevideo.OnlineBaseActivity;
import com.transsion.onlinevideo.R;
import com.transsion.onlinevideo.adapter.VideoSerialAdapter;
import com.transsion.playercommon.router.RouterUtils;
import java.util.ArrayList;
import java.util.List;

public class OnlineVideoSerialsActivity extends OnlineBaseActivity implements View.OnClickListener {
    public String N;
    public List O = new ArrayList();
    public int P;
    public View Q;
    public TextView R;

    public class a implements BaseQuickAdapter.OnItemClickListener {
        public a() {
        }

        @Override
        public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            VideoInfo.SerialListBean serialListBean = (VideoInfo.SerialListBean) OnlineVideoSerialsActivity.this.O.get(i);
            RouterUtils.route(new RouterBean.RouterBeanBuilder().withType(1).withParam(new RouterBean.RouterData(serialListBean.getVideoId().intValue(), serialListBean.getSourceId(), serialListBean.getSerialId().intValue(), serialListBean.getTitle(), true)).build(), OnlineVideoSerialsActivity.this);
        }
    }

    @Override
    public void onClick(View view) {
        if (view.getId() == R.id.title_bar_back) {
            onBackPressed();
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_online_video_serials);
        q0();
        s0();
        r0();
    }

    public void q0() {
        if (getIntent() != null) {
            Bundle bundleExtra = getIntent().getBundleExtra("bundle");
            this.N = bundleExtra.getString("serial_title");
            this.O = bundleExtra.getParcelableArrayList("serial_list");
            this.P = bundleExtra.getInt("serial_type");
        }
    }

    public void r0() {
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.rv_serials);
        VideoSerialAdapter videoSerialAdapter = new VideoSerialAdapter();
        videoSerialAdapter.r(this.P);
        recyclerView.setLayoutManager(videoSerialAdapter.g() ? new LinearLayoutManager(this) : new GridLayoutManager(this, 6));
        recyclerView.setAdapter(videoSerialAdapter);
        videoSerialAdapter.setOnItemClickListener(new a());
        videoSerialAdapter.setNewData(this.O);
    }

    public void s0() {
        View viewFindViewById = findViewById(R.id.title_bar_back);
        this.Q = viewFindViewById;
        viewFindViewById.setOnClickListener(this);
        TextView textView = (TextView) findViewById(R.id.title_bar_title);
        this.R = textView;
        textView.setText(this.N);
        this.R.setTextColor(getResources().getColor(R.color.os_text_primary_color));
    }
}
