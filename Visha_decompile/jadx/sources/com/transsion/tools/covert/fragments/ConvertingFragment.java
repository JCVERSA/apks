package com.transsion.tools.covert.fragments;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.p004lifecycle.Observer;
import androidx.p004lifecycle.ViewModelProvider;
import androidx.p004lifecycle.ViewModelStoreOwner;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.athena.data.TrackData;
import com.transsion.playercommon.convert.ConvertingTask;
import com.transsion.playercommon.convert.ConvertingTaskManager;
import com.transsion.playercommon.fragments.PlayBaseFragment;
import com.transsion.playercommon.widgets.VideoMainRecyclerView;
import com.transsion.tools.R;
import com.transsion.tools.covert.adapter.ConvertingAdapter;
import com.transsion.tools.covert.fragments.ConvertingFragment;
import com.transsion.tools.model.ConvertDaoModel;
import com.transsion.utils.CustomGridLayoutManager;
import defpackage.h27;
import defpackage.hb0;
import defpackage.k29;
import defpackage.mc7;
import defpackage.p06;
import defpackage.t74;
import defpackage.tpb;
import defpackage.vb;
import defpackage.zf1;
import java.util.ArrayList;
import java.util.List;

public class ConvertingFragment extends PlayBaseFragment implements ConvertingTaskManager.c {
    public ConvertingAdapter l;
    public View m;
    public VideoMainRecyclerView n;
    public View o;
    public ConvertDaoModel p;

    public class a extends CustomGridLayoutManager {
        public a(Context context, int i) {
            super(context, i);
        }

        @Override
        public boolean canScrollVertically() {
            if (ConvertingFragment.this.l.getData().size() == 0) {
                return false;
            }
            return super.canScrollVertically();
        }
    }

    public class b implements Observer {
        public b() {
        }

        @Override
        public void onChanged(List list) {
            ConvertingFragment.this.loadData(false);
        }
    }

    private void j0() {
        View view;
        if (this.o != null || (view = this.m) == null) {
            return;
        }
        View viewInflate = ((ViewStub) view.findViewById(R.id.main_empty_view)).inflate();
        this.o = viewInflate;
        ((ImageView) viewInflate.findViewById(R.id.lottie_no_audios_view)).setImageResource(com.transsion.common.R.drawable.ic_file_empty_illustration);
        ((TextView) this.o.findViewById(com.transsion.sniffer_load.R.id.text_no_audios)).setText(com.transsion.sniffer_load.R.string.file_empty);
    }

    private void k0() {
        this.l.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() {
            @Override
            public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.a.l0(baseQuickAdapter, view, i);
            }
        });
    }

    public void l0(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        if (view.getId() == R.id.iv_converting_remove) {
            ConvertingTask convertingTask = (ConvertingTask) baseQuickAdapter.getData().get(i);
            ConvertingTaskManager.j().H(convertingTask);
            r0(convertingTask);
            p06.d0("moretab_tomp3_converting_cancelcl");
        }
    }

    public void m0(List list) {
        this.l.setNewData(list);
        q0();
    }

    public static Integer n0(Integer num) {
        return Integer.valueOf(tpb.j0().o(num.intValue()));
    }

    public static void o0(Integer num) {
    }

    @Override
    public void a(int i) {
        loadData(false);
    }

    @Override
    public void loadData(boolean z) {
        super.loadData(z);
        final ArrayList arrayList = new ArrayList(ConvertingTaskManager.j().l().values());
        this.n.post(new Runnable() {
            @Override
            public final void run() {
                this.b.m0(arrayList);
            }
        });
    }

    @Override
    public void markPointVisiable(boolean z) {
        super.markPointVisiable(z);
        if (this.mIsVisibleToUser && this.mIsParentVisibleToUser) {
            Bundle bundle = new Bundle();
            TrackData trackData = new TrackData();
            int size = ConvertingTaskManager.j().l().size();
            bundle.putInt(hb0.KEY_NAME_NUM, size);
            trackData.add(hb0.KEY_NAME_NUM, size);
            bundle.putInt("failnum", ConvertingTaskManager.j().i());
            trackData.add("failnum", ConvertingTaskManager.j().i());
            p06.q0(trackData, bundle, "moretab_tomp3_converting_show", 9324L);
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.p = (ConvertDaoModel) new ViewModelProvider((ViewModelStoreOwner) getContext(), new ViewModelProvider.AndroidViewModelFactory(Utils.a())).get(ConvertDaoModel.class);
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.l = new ConvertingAdapter(this.mContext);
        ConvertingTaskManager.j().L("ConvertingFragment", new ConvertingTaskManager.c() {
            @Override
            public final void a(int i) {
                this.b.a(i);
            }
        });
        View viewOnCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.m = viewOnCreateView;
        return viewOnCreateView;
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        this.o = null;
        this.m = null;
        ConvertingAdapter convertingAdapter = this.l;
        if (convertingAdapter != null) {
            convertingAdapter.setOnItemChildClickListener(null);
            this.l.t();
        }
        ConvertingTaskManager.j().f();
        ConvertingTaskManager.j().G("ConvertingFragment");
    }

    @Override
    public int onLayoutId() {
        return R.layout.converting_fragment;
    }

    @Override
    public void onResume() {
        super.onResume();
        loadData(false);
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        VideoMainRecyclerView videoMainRecyclerView = (VideoMainRecyclerView) view.findViewById(com.transsion.magicvideo.R.id.rv_main_fragment);
        this.n = videoMainRecyclerView;
        videoMainRecyclerView.setAdapter(this.l);
        this.n.setType("tomp3");
        a aVar = new a(getContext(), 1);
        aVar.setSpanCount(1);
        this.n.setLayoutManager(aVar);
        k0();
        p0();
    }

    public final void p0() {
        this.p.getConvertingVideoData().observe(getViewLifecycleOwner(), new b());
    }

    public void q0() {
        boolean z = this.l.getData().size() == 0;
        h27.c().e(1086, Boolean.valueOf(z));
        if (z) {
            j0();
        }
        View view = this.o;
        if (view != null) {
            ((ImageView) view.findViewById(R.id.lottie_no_audios_view)).setImageResource(com.transsion.common.R.drawable.ic_file_empty_illustration);
            this.o.setVisibility(z ? 0 : 8);
        }
    }

    public final void r0(ConvertingTask convertingTask) {
        mc7.K(Integer.valueOf(convertingTask.mediaItem.id)).g(this.mActivity.bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return ConvertingFragment.n0((Integer) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                ConvertingFragment.o0((Integer) obj);
            }
        });
    }
}
