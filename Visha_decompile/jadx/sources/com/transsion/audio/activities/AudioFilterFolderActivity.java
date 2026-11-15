package com.transsion.audio.activities;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.audio.activities.AudioFilterFolderActivity;
import com.transsion.audio.adapter.FilterBucketAdapter;
import com.transsion.audio.databinding.DialogFilterBucketBinding;
import com.transsion.dbdata.beans.media.MediaBucket;
import com.transsion.dbdata.utils.AudioFilterUtils;
import com.transsion.playercommon.activities.BasePermissionActivity;
import defpackage.ao;
import defpackage.ed7;
import defpackage.f5;
import defpackage.h27;
import defpackage.hb0;
import defpackage.k29;
import defpackage.mc7;
import defpackage.rc7;
import defpackage.uy5;
import defpackage.vb;
import defpackage.zf1;
import java.util.List;

public class AudioFilterFolderActivity extends BasePermissionActivity {
    public FilterBucketAdapter N;
    public DialogFilterBucketBinding O;

    public static void H0(rc7 rc7Var) {
        rc7Var.onNext(ao.U().T());
        rc7Var.onComplete();
    }

    public static void J0(Throwable th) {
        Log.w("AudioFilterFolderActivity", "loadData error: " + th);
    }

    private void initData() {
        mc7.h(new ed7() {
            @Override
            public final void subscribe(rc7 rc7Var) {
                AudioFilterFolderActivity.H0(rc7Var);
            }
        }).g(bindToLifecycle()).d0(k29.c()).M(vb.a()).a0(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.I0((List) obj);
            }
        }, new zf1() {
            @Override
            public final void accept(Object obj) {
                AudioFilterFolderActivity.J0((Throwable) obj);
            }
        });
    }

    private void initView() {
        this.O.c.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.K0(view);
            }
        });
        this.N = new FilterBucketAdapter(this);
        this.O.f.setLayoutManager(new LinearLayoutManager(this));
        this.O.f.setAdapter(this.N);
        this.O.f.setItemAnimator(null);
        this.N.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.b.L0(baseQuickAdapter, view, i);
            }
        });
        this.N.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() {
            @Override
            public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.a.M0(baseQuickAdapter, view, i);
            }
        });
        hb0.markDirect("vd_audio_filt_fd_show");
    }

    public final void I0(List list) {
        FilterBucketAdapter filterBucketAdapter = this.N;
        if (filterBucketAdapter != null) {
            filterBucketAdapter.setNewData(list);
        }
    }

    public final void K0(View view) {
        finish();
    }

    public final void L0(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        MediaBucket mediaBucket = (MediaBucket) view.getTag();
        hb0.markDirect("vd_audio_filt_fd_cover_cl");
        N0(mediaBucket);
    }

    public final void M0(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        MediaBucket mediaBucket = (MediaBucket) baseQuickAdapter.getItem(i);
        if (mediaBucket == null) {
            return;
        }
        if (AudioFilterUtils.p(mediaBucket.parentPath)) {
            AudioFilterUtils.C(mediaBucket.parentPath);
            uy5.i(0);
        } else {
            AudioFilterUtils.e(mediaBucket.parentPath);
            uy5.i(1);
        }
        this.N.notifyItemChanged(i);
        h27.c().e(1109, new Object[0]);
    }

    public final void N0(MediaBucket mediaBucket) {
        Bundle bundle = new Bundle();
        bundle.putLong("bucket_fragment_buicket_id", mediaBucket.bucketId);
        bundle.putString("bucket_fragment_buicket_name", mediaBucket.getParentName());
        bundle.putString("bucket_fragment_buicket_path", mediaBucket.getParentPath());
        bundle.putBoolean("audio_drop_animation_by_itself", true);
        Intent intent = new Intent(this, (Class<?>) AudioFolderListDialogActivity.class);
        intent.putExtras(bundle);
        f5.c(intent, this);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        DialogFilterBucketBinding dialogFilterBucketBindingC = DialogFilterBucketBinding.c(getLayoutInflater());
        this.O = dialogFilterBucketBindingC;
        setContentView(dialogFilterBucketBindingC.getRoot());
        initView();
        initData();
    }
}
