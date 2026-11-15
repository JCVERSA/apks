package com.transsion.audio.activities;

import android.util.Log;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.transsion.audio.R;
import com.transsion.audio.activities.AudioFolderListDialogActivity;
import com.transsion.audio.adapter.AudioItemAdapter;
import com.transsion.audio.databinding.DialogFilterFolderAudioListBinding;
import com.transsion.dbdata.beans.media.MediaBucket;
import com.transsion.playercommon.activities.RxPermissionOSBottomSheetDialog;
import defpackage.ao;
import defpackage.hb0;
import defpackage.k29;
import defpackage.mc7;
import defpackage.vb;
import defpackage.zf1;
import java.util.ArrayList;
import java.util.concurrent.Callable;

public class AudioFolderListDialogActivity extends RxPermissionOSBottomSheetDialog {
    public MediaBucket N;
    public DialogFilterFolderAudioListBinding O;
    public ArrayList P = new ArrayList();
    public AudioItemAdapter Q;
    public View R;

    private void initData() {
        String stringExtra = getIntent().getStringExtra("bucket_fragment_buicket_name");
        this.N = new MediaBucket();
        this.O.f.setText(stringExtra);
        this.N.setBucketId(getIntent().getLongExtra("bucket_fragment_buicket_id", 0L));
        this.N.setParentPath(getIntent().getStringExtra("bucket_fragment_buicket_path"));
        AudioItemAdapter audioItemAdapter = new AudioItemAdapter(getBaseContext());
        this.Q = audioItemAdapter;
        audioItemAdapter.X(false);
        this.O.e.setLayoutManager(new LinearLayoutManager(getBaseContext()));
        this.O.e.setAdapter(this.Q);
        this.Q.bindToRecyclerView(this.O.e);
        i0();
    }

    public static ArrayList j0(long j, String str) {
        return new ArrayList(ao.U().S(j, str));
    }

    private void l0() {
        this.O.e.setVisibility(0);
        View view = this.R;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    private void m0() {
        this.O.e.setVisibility(8);
        if (this.R == null) {
            View viewInflate = this.O.c.inflate();
            this.R = viewInflate;
            ((TextView) viewInflate.findViewById(R.id.text_no_audios)).setText(R.string.visha_not_file_hide_by_filter);
        }
        this.R.setVisibility(0);
    }

    @Override
    public boolean getDragHandlerVisibility() {
        return true;
    }

    @Override
    public boolean getSupportGesture() {
        return true;
    }

    public final void i0() {
        final long longExtra = getIntent().getLongExtra("bucket_fragment_buicket_id", 0L);
        final String stringExtra = getIntent().getStringExtra("bucket_fragment_buicket_path");
        mc7.D(new Callable() {
            @Override
            public final Object call() {
                return AudioFolderListDialogActivity.j0(longExtra, stringExtra);
            }
        }).g(bindToLifecycle()).d0(k29.c()).M(vb.a()).a0(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.n0((ArrayList) obj);
            }
        }, new zf1() {
            @Override
            public final void accept(Object obj) {
                Log.e("AudioFolderListDialogActivity", "Error in fetchAudioItems", (Throwable) obj);
            }
        });
    }

    @Override
    public void initView() {
        super.initView();
        DialogFilterFolderAudioListBinding dialogFilterFolderAudioListBindingC = DialogFilterFolderAudioListBinding.c(getLayoutInflater());
        this.O = dialogFilterFolderAudioListBindingC;
        addPage(dialogFilterFolderAudioListBindingC.getRoot()).setTitleLayoutVisible(false).setCloseIconVisibility(false);
        initData();
        hb0.markDirect("vd_audio_filt_fd_cover_show");
    }

    public final void n0(ArrayList arrayList) {
        if (arrayList == null || arrayList.isEmpty()) {
            m0();
        } else if (this.Q != null) {
            this.P.clear();
            this.P.addAll(arrayList);
            this.Q.setNewData(this.P);
            l0();
        }
    }
}
