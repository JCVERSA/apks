package com.transsion.cloud.updownload.fragment;

import android.annotation.SuppressLint;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.widget.CheckBox;
import androidx.p004lifecycle.Observer;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.cloud.updownload.adapter.UploadingAdapter;
import com.transsion.cloud.updownload.viewmodel.TransferDataViewModel;
import com.transsion.cloud.updownload.widgets.TransferOperationBar;
import com.transsion.cloud.upload.task.NewUploadTask;
import com.transsion.eventbus.LiveEventBus;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.playercommon.fragments.PlayBaseFragment;
import com.transsion.sniffer_load.R;
import com.transsion.utils.ToastUtils;
import defpackage.cz5;
import defpackage.pz6;
import defpackage.ri4;
import defpackage.vz6;
import defpackage.w6c;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class UploadingFragment extends TransmittingBaseFragment {
    public UploadingAdapter H;

    public class AnonymousClass1 implements vz6 {
        public AnonymousClass1() {
        }

        public void b() {
            if (UploadingFragment.this.H != null) {
                UploadingFragment.this.H.notifyDataSetChanged();
            }
        }

        @Override
        public void onConnect(int i) {
            if (((BaseFragment) UploadingFragment.this).mActivity != null) {
                ((BaseFragment) UploadingFragment.this).mActivity.runOnUiThread(new Runnable() {
                    @Override
                    @SuppressLint({"NotifyDataSetChanged"})
                    public void run() {
                        if (UploadingFragment.this.H != null) {
                            UploadingFragment.this.H.notifyDataSetChanged();
                        }
                    }
                });
            }
        }

        @Override
        public void onDisconnect() {
            ((BaseFragment) UploadingFragment.this).mActivity.runOnUiThread(new Runnable() {
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
            NewUploadTask newUploadTask = (NewUploadTask) baseQuickAdapter.getData().get(i);
            if (newUploadTask.isHeaderTask()) {
                return true;
            }
            if (((PlayBaseFragment) UploadingFragment.this).isInEditMode) {
                UploadingFragment.this.i1(baseQuickAdapter, view, i, false);
            } else {
                UploadingFragment.this.editMode(true);
                UploadingFragment.this.H.v().clear();
                UploadingFragment.this.H.B(newUploadTask, true, i);
            }
            return true;
        }
    }

    public class b implements BaseQuickAdapter.OnItemChildClickListener {
        public b() {
        }

        @Override
        public void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            if (!UploadingFragment.this.ingoreClickEvent() || ((PlayBaseFragment) UploadingFragment.this).isInEditMode) {
                ((PlayBaseFragment) UploadingFragment.this).mFirstClickTime = System.currentTimeMillis();
                if (((PlayBaseFragment) UploadingFragment.this).isInEditMode) {
                    UploadingFragment.this.i1(baseQuickAdapter, view, i, true);
                    return;
                }
                NewUploadTask newUploadTask = (NewUploadTask) baseQuickAdapter.getData().get(i);
                if (view.getId() == R.id.iv_close_button) {
                    UploadingFragment.this.O0(Collections.singletonList(newUploadTask));
                    return;
                }
                if (view.getId() == R.id.iv_retry) {
                    if (MainApp.w == 0) {
                        ToastUtils.s(R.string.net_media_play_network_error);
                    } else {
                        ri4.e().r(newUploadTask, true);
                        cz5.j(newUploadTask.mProgressInfo.totalSize, "cloud_upload_retry");
                    }
                }
            }
        }
    }

    public class c implements DialogInterface.OnClickListener {
        public final NewUploadTask b;

        public c(NewUploadTask newUploadTask) {
            this.b = newUploadTask;
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            ri4.e().r(this.b, true);
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
        NewUploadTask newUploadTask = (NewUploadTask) baseQuickAdapter.getData().get(i);
        if (newUploadTask.isHeaderTask() || (i2 = newUploadTask.mProgressInfo.status) == 4) {
            return;
        }
        if (MainApp.w == 0) {
            ToastUtils.s(R.string.net_media_play_network_error);
            return;
        }
        if (i2 == 8) {
            ToastUtils.s(R.string.visha_video_transcoding_unable_pause);
            return;
        }
        if (i2 == 2 || i2 == 0) {
            ri4.e().k(newUploadTask);
            return;
        }
        if (i2 == 6 || i2 == 7 || i2 == 3 || i2 == 1) {
            if (MainApp.h || !pz6.c(MainApp.w)) {
                ri4.e().r(newUploadTask, true);
            } else {
                j1(newUploadTask);
            }
        }
    }

    public void e1(View view) {
        UploadingAdapter uploadingAdapter = this.H;
        if (uploadingAdapter != null) {
            uploadingAdapter.A(this.D.isChecked());
        }
    }

    public void f1(List list) {
        P0(list);
    }

    public void g1(Boolean bool) {
        TransferDataViewModel transferDataViewModel;
        if (!bool.booleanValue() || (transferDataViewModel = this.n) == null) {
            return;
        }
        transferDataViewModel.m();
    }

    public static UploadingFragment h1(boolean z) {
        UploadingFragment uploadingFragment = new UploadingFragment();
        Bundle bundle = new Bundle();
        bundle.putBoolean("support_theme_background", z);
        bundle.putBoolean("transmit_upload_type", true);
        uploadingFragment.setArguments(bundle);
        return uploadingFragment;
    }

    @Override
    public void N0(int i) {
        super.N0(i);
        CheckBox checkBox = this.D;
        if (checkBox != null) {
            checkBox.setChecked(i != 0 && i == this.H.u().size());
        }
        PlayBaseFragment.d dVar = this.mEditModeListener;
        if (dVar != null) {
            dVar.b(this.H.v(), i != 0 && i == this.H.u().size(), false);
        }
    }

    @Override
    public void c(boolean z) {
        super.c(z);
        N0(z ? this.H.v().size() : 0);
        CheckBox checkBox = this.D;
        if (checkBox != null) {
            checkBox.setChecked(z);
        }
    }

    @Override
    public void editMode(boolean z) {
        this.isInEditMode = z;
        UploadingAdapter uploadingAdapter = this.H;
        if (uploadingAdapter != null) {
            if (z) {
                uploadingAdapter.A(false);
            }
            this.H.C(z);
            if (z) {
                this.H.A(false);
            }
            this.H.notifyDataSetChanged();
        }
        super.editMode(z);
    }

    public void i1(BaseQuickAdapter baseQuickAdapter, View view, int i, boolean z) {
        if (baseQuickAdapter.getData().isEmpty()) {
            return;
        }
        ((UploadingAdapter) baseQuickAdapter).B((NewUploadTask) baseQuickAdapter.getData().get(i), z == ((CheckBox) view.findViewById(com.transsion.magicvideo.R.id.iv_bucket_fragment_checkBox)).isChecked(), i);
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

    public final void j1(NewUploadTask newUploadTask) {
        new com.transsion.widgetslib.dialog.d.a(getActivity()).j(com.transsion.utils.a.A() ? com.transsion.playercommon.R.string.tablet_visha_non_wifi_upload_warning : com.transsion.playercommon.R.string.visha_non_wifi_upload_warning).m(com.transsion.playercommon.R.string.cancel, new d()).u(com.transsion.playercommon.R.string.ok, new c(newUploadTask)).F();
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.H = new UploadingAdapter(getActivity(), this.n);
        this.n.h(this, new Observer() {
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
        TransferDataViewModel transferDataViewModel = this.n;
        if (transferDataViewModel != null) {
            transferDataViewModel.C(this.mActivity);
        }
        super.onDestroy();
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        MainApp.s("visha_cloud_UploadingFragment");
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        backgroundFollowBaseWindowByPx(view, (int) getResources().getDimension(R.dimen.video_main_activity_fragment_top_padding));
        this.n.l();
        MainApp.d("visha_cloud_UploadingFragment", new AnonymousClass1());
    }

    @Override
    public void r0(int i) {
        super.r0(i);
        if (i == 0) {
            O0(this.H.v());
        }
    }

    @Override
    public void s0() {
        super.s0();
        TransferOperationBar transferOperationBar = this.E;
        if (transferOperationBar != null) {
            transferOperationBar.changeItemEnable(0, !this.H.v().isEmpty());
        }
    }

    @Override
    public void selectAll(boolean z) {
        this.H.A(z);
    }

    @Override
    public void t0(List list) {
        super.t0(list);
        ArrayList arrayListV = this.H.v();
        if (list == null || this.B == list.size() || arrayListV.size() == list.size() || arrayListV.size() == 0) {
            return;
        }
        this.B = this.q.size();
        this.A = 0;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (arrayListV.contains(obj)) {
                this.A++;
                arrayList.add((NewUploadTask) obj);
            }
        }
        this.H.E(arrayList);
    }

    @Override
    public void updateShowUI() {
        super.updateShowUI();
        UploadingAdapter uploadingAdapter = this.H;
        if (uploadingAdapter != null) {
            uploadingAdapter.setNewData(this.q);
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
