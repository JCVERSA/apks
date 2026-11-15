package com.transsion.cloud.updownload.fragment;

import android.annotation.SuppressLint;
import android.content.DialogInterface;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.CheckBox;
import androidx.p004lifecycle.Observer;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.athena.data.TrackData;
import com.transsion.cloud.updownload.adapter.DownloadingAdapter;
import com.transsion.cloud.updownload.viewmodel.TransferDataViewModel;
import com.transsion.cloud.updownload.widgets.TransferOperationBar;
import com.transsion.eventbus.LiveEventBus;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.playercommon.fragments.PlayBaseFragment;
import com.transsion.sniffer_load.GlobalDownloadManger;
import com.transsion.sniffer_load.R;
import com.transsion.sniffer_load.okdownload.NewDownloadTask;
import com.transsion.sniffer_load.viewmodel.DownloadViewModel;
import com.transsion.utils.ToastUtils;
import defpackage.cz5;
import defpackage.p06;
import defpackage.pz6;
import defpackage.ty2;
import defpackage.vz6;
import defpackage.w6c;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class DownloadingFragment extends TransmittingBaseFragment {
    public DownloadingAdapter H;

    public class AnonymousClass1 implements vz6 {
        public AnonymousClass1() {
        }

        public final void b() {
            if (DownloadingFragment.this.H != null) {
                DownloadingFragment.this.H.notifyDataSetChanged();
            }
        }

        @Override
        public void onConnect(int i) {
            if (((BaseFragment) DownloadingFragment.this).mActivity != null) {
                ((BaseFragment) DownloadingFragment.this).mActivity.runOnUiThread(new Runnable() {
                    @Override
                    @SuppressLint({"NotifyDataSetChanged"})
                    public void run() {
                        if (DownloadingFragment.this.H != null) {
                            DownloadingFragment.this.H.notifyDataSetChanged();
                        }
                    }
                });
            }
        }

        @Override
        public void onDisconnect() {
            ((BaseFragment) DownloadingFragment.this).mActivity.runOnUiThread(new Runnable() {
                @Override
                public final void run() {
                    this.b.b();
                }
            });
        }
    }

    public class a implements BaseQuickAdapter.OnItemLongClickListener {
        public a() {
        }

        @Override
        public boolean onItemLongClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            if (baseQuickAdapter.getData().isEmpty()) {
                return false;
            }
            NewDownloadTask newDownloadTask = (NewDownloadTask) baseQuickAdapter.getData().get(i);
            if (newDownloadTask.isHeaderTask()) {
                return true;
            }
            if (((PlayBaseFragment) DownloadingFragment.this).isInEditMode) {
                DownloadingFragment.this.i1(baseQuickAdapter, view, i, false);
            } else {
                DownloadingFragment.this.editMode(true);
                DownloadingFragment.this.H.u().clear();
                DownloadingFragment.this.H.B(newDownloadTask, true, i);
            }
            return true;
        }
    }

    public class b implements BaseQuickAdapter.OnItemChildClickListener {
        public b() {
        }

        @Override
        public void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            int iG;
            if (!DownloadingFragment.this.ingoreClickEvent() || ((PlayBaseFragment) DownloadingFragment.this).isInEditMode) {
                ((PlayBaseFragment) DownloadingFragment.this).mFirstClickTime = System.currentTimeMillis();
                if (((PlayBaseFragment) DownloadingFragment.this).isInEditMode) {
                    DownloadingFragment.this.i1(baseQuickAdapter, view, i, true);
                    return;
                }
                NewDownloadTask newDownloadTask = (NewDownloadTask) baseQuickAdapter.getData().get(i);
                if (view.getId() == R.id.iv_close_button) {
                    DownloadingFragment.this.O0(Collections.singletonList(newDownloadTask));
                    return;
                }
                if (view.getId() == R.id.iv_retry) {
                    if (MainApp.w == 0) {
                        ToastUtils.s(R.string.net_media_play_network_error);
                        return;
                    }
                    if (newDownloadTask != null && newDownloadTask.progress != null && ((iG = ty2.g(newDownloadTask.progress.exception)) == 5002 || iG == 5200)) {
                        ToastUtils.s(R.string.file_invalid_cannot_download);
                    } else {
                        GlobalDownloadManger.B().A(newDownloadTask, true);
                        cz5.j(newDownloadTask.progress.totalSize, "cloud_download_retry");
                    }
                }
            }
        }
    }

    public class c implements DialogInterface.OnClickListener {
        public final NewDownloadTask b;

        public c(NewDownloadTask newDownloadTask) {
            this.b = newDownloadTask;
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            GlobalDownloadManger.B().A(this.b, true);
        }
    }

    public class d implements DialogInterface.OnClickListener {
        public d() {
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.dismiss();
        }
    }

    public void d1(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        int i2;
        if (this.isInEditMode) {
            i1(baseQuickAdapter, view, i, false);
            return;
        }
        if (baseQuickAdapter.getData().isEmpty()) {
            return;
        }
        NewDownloadTask newDownloadTask = (NewDownloadTask) baseQuickAdapter.getData().get(i);
        if (newDownloadTask.isHeaderTask() || (i2 = newDownloadTask.progress.status) == 4) {
            return;
        }
        if (MainApp.w == 0) {
            ToastUtils.s(R.string.net_media_play_network_error);
            return;
        }
        int iL0 = L0(i2);
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("status", iL0);
        trackData.add("status", iL0);
        if (i2 == 2 || i2 == 0) {
            GlobalDownloadManger.B().s(newDownloadTask);
        } else if (i2 == 6 || i2 == 7 || i2 == 3 || i2 == 1) {
            if (!MainApp.h && pz6.c(MainApp.w)) {
                j1(newDownloadTask);
                return;
            }
            GlobalDownloadManger.B().A(newDownloadTask, true);
        }
        int iL1 = L0(newDownloadTask.progress.status);
        bundle.putInt("status_0", iL1);
        trackData.add("status_0", iL1);
        p06.q0(trackData, bundle, "dl_manager_downloading_video_cl", 9324L);
    }

    public void e1(View view) {
        DownloadingAdapter downloadingAdapter = this.H;
        if (downloadingAdapter != null) {
            downloadingAdapter.A(this.D.isChecked());
        }
    }

    public void f1(List list) {
        Log.i("visha_cloud_DownloadingFragment", "addObserverDownloadingGroupTasks: taskList = " + list.size());
        P0(list);
    }

    public static DownloadingFragment h1(boolean z) {
        DownloadingFragment downloadingFragment = new DownloadingFragment();
        Bundle bundle = new Bundle();
        bundle.putBoolean("support_theme_background", z);
        bundle.putBoolean("transmit_upload_type", false);
        downloadingFragment.setArguments(bundle);
        return downloadingFragment;
    }

    @Override
    public void N0(int i) {
        super.N0(i);
        CheckBox checkBox = this.D;
        if (checkBox != null) {
            checkBox.setChecked(i != 0 && i == this.H.t().size());
        }
        PlayBaseFragment.d dVar = this.mEditModeListener;
        if (dVar != null) {
            dVar.b(this.H.u(), i != 0 && i == this.H.t().size(), false);
        }
    }

    @Override
    public void c(boolean z) {
        super.c(z);
        N0(z ? this.H.u().size() : 0);
        CheckBox checkBox = this.D;
        if (checkBox != null) {
            checkBox.setChecked(z);
        }
    }

    @Override
    public void editMode(boolean z) {
        this.isInEditMode = z;
        DownloadingAdapter downloadingAdapter = this.H;
        if (downloadingAdapter != null) {
            if (z) {
                downloadingAdapter.A(false);
            }
            this.H.C(z);
            if (z) {
                this.H.A(false);
            }
            this.H.notifyDataSetChanged();
        }
        super.editMode(z);
    }

    public final void g1(Boolean bool) {
        TransferDataViewModel transferDataViewModel;
        if (!bool.booleanValue() || (transferDataViewModel = this.n) == null) {
            return;
        }
        transferDataViewModel.j();
    }

    public void i1(BaseQuickAdapter baseQuickAdapter, View view, int i, boolean z) {
        if (baseQuickAdapter.getData().isEmpty()) {
            return;
        }
        ((DownloadingAdapter) baseQuickAdapter).B((NewDownloadTask) baseQuickAdapter.getData().get(i), z == ((CheckBox) view.findViewById(com.transsion.magicvideo.R.id.iv_bucket_fragment_checkBox)).isChecked(), i);
    }

    @Override
    public void initTitleBar(View view) {
        super.initTitleBar(view);
        this.D.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.e1(view2);
            }
        });
    }

    @Override
    public void initView(View view) {
        super.initView(view);
        this.l.setAdapter(this.H);
    }

    public final void j1(NewDownloadTask newDownloadTask) {
        new com.transsion.widgetslib.dialog.d.a(getActivity()).j(com.transsion.utils.a.A() ? com.transsion.playercommon.R.string.tablet_visha_non_wifi_download_warning : com.transsion.playercommon.R.string.visha_non_wifi_download_warning).m(com.transsion.playercommon.R.string.cancel, new d()).u(com.transsion.playercommon.R.string.ok, new c(newDownloadTask)).F();
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.H = new DownloadingAdapter(getActivity(), this.n);
        this.n.f(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.f1((List) obj);
            }
        });
        LiveEventBus.b().d("download_task_restore").observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.g1((Boolean) obj);
            }
        });
    }

    @Override
    public void onDestroy() {
        w6c.H(getContext(), this.z);
        DownloadViewModel.d();
        TransferDataViewModel transferDataViewModel = this.n;
        if (transferDataViewModel != null) {
            transferDataViewModel.y(this.mActivity);
        }
        super.onDestroy();
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        MainApp.s("visha_cloud_DownloadingFragment");
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        backgroundFollowBaseWindowByPx(view, (int) getResources().getDimension(R.dimen.video_main_activity_fragment_top_padding));
        this.n.k();
        MainApp.d("visha_cloud_DownloadingFragment", new AnonymousClass1());
    }

    @Override
    public void r0(int i) {
        super.r0(i);
        if (i == 0) {
            O0(this.H.u());
        }
    }

    @Override
    public void s0() {
        super.s0();
        TransferOperationBar transferOperationBar = this.E;
        if (transferOperationBar != null) {
            transferOperationBar.changeItemEnable(0, !this.H.u().isEmpty());
        }
    }

    @Override
    public void selectAll(boolean z) {
        this.H.A(z);
    }

    @Override
    public void t0(List list) {
        super.t0(list);
        ArrayList arrayListU = this.H.u();
        if (list == null || this.B == list.size() || arrayListU.size() == list.size() || arrayListU.size() == 0) {
            return;
        }
        this.B = this.q.size();
        this.A = 0;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (arrayListU.contains(obj)) {
                this.A++;
                arrayList.add((NewDownloadTask) obj);
            }
        }
        this.H.E(arrayList);
    }

    @Override
    public void updateShowUI() {
        super.updateShowUI();
        DownloadingAdapter downloadingAdapter = this.H;
        if (downloadingAdapter != null) {
            downloadingAdapter.setNewData(this.q);
        }
        w0(this.q.isEmpty());
        this.l.setVisibility(this.q.isEmpty() ? 8 : 0);
    }

    @Override
    public void x0() {
        super.x0();
        this.H.D(this);
        this.H.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.b.d1(baseQuickAdapter, view, i);
            }
        });
        this.H.setOnItemLongClickListener(new a());
        this.H.setOnItemChildClickListener(new b());
    }
}
