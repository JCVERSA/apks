package com.transsion.playercommon.activities;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.text.format.Formatter;
import android.util.Log;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.playercommon.R;
import com.transsion.utils.a;
import com.transsion.widgetsbottomsheet.bottomsheet.OSPageView;
import defpackage.wna;

public class MediaInfoSheetDialogActivity extends RxPermissionOSBottomSheetDialog {
    public boolean N = false;
    public MediaItem O;
    public AudioItem P;
    public LinearLayout Q;
    public TextView R;
    public TextView S;
    public TextView T;
    public TextView U;
    public TextView V;
    public LinearLayout W;
    public TextView X;
    public TextView Y;
    public LinearLayout Z;
    public TextView a0;

    public static Intent o0(Context context, MediaItem mediaItem, int i) {
        Intent intent = new Intent();
        intent.putExtra("media_data", mediaItem);
        intent.putExtra("media_info_type", i);
        intent.setClass(context, MediaInfoSheetDialogActivity.class);
        return intent;
    }

    public final void i0(int i) {
        Intent intent = new Intent();
        intent.putExtra("click_flag", i);
        if (i != 1) {
            intent.putExtra("result_name", i == 2 ? this.P.albumName : this.P.artistName);
        }
        setResult(-2, intent);
        animateDismiss();
    }

    @Override
    public void initView() {
        View viewInflate = View.inflate(this, R.layout.media_info_sheet_dialog, null);
        Intent intent = getIntent();
        this.N = intent.getIntExtra("media_info_type", 0) == 1;
        MediaItem mediaItem = (MediaItem) intent.getParcelableExtra("media_data");
        this.O = mediaItem;
        if (mediaItem == null) {
            Log.e("MediaInfoSheetDialogActivity", "initInfo failed,mediaItem is null");
            finish();
            return;
        }
        OSPageView oSPageViewShowTitle = addPage(viewInflate).showTitle(false);
        oSPageViewShowTitle.setCloseIconVisibility(false);
        oSPageViewShowTitle.setAlpha(0.88f);
        ((TextView) viewInflate.findViewById(R.id.tv_title)).setText(this.O.getDisplayName());
        if (this.N) {
            this.P = (AudioItem) this.O;
        }
        j0(viewInflate);
        k0();
    }

    public final void j0(View view) {
        this.Q = (LinearLayout) view.findViewById(R.id.ll_media_info);
        this.S = (TextView) view.findViewById(R.id.tv_media_info_artist);
        if (this.N && !TextUtils.isEmpty(this.P.artistName)) {
            this.S.setText(this.P.artistName);
        }
        TextView textView = (TextView) view.findViewById(R.id.tv_media_info_type);
        this.R = textView;
        try {
            textView.setText(this.N ? R.string.audio_info_title : R.string.video_info_title);
        } catch (Exception e) {
            Log.e("MediaInfoSheetDialogActivity", "initInfo: ", e);
        }
        this.T = (TextView) view.findViewById(R.id.tv_media_format);
        if (!TextUtils.isEmpty(this.O.mineType)) {
            this.T.setText(this.O.mineType);
        }
        TextView textView2 = (TextView) view.findViewById(R.id.tv_media_time);
        this.U = textView2;
        textView2.setText(wna.c(this.O.duration));
        TextView textView3 = (TextView) view.findViewById(R.id.tv_media_size);
        this.V = textView3;
        textView3.setText(Formatter.formatFileSize(this, this.O.size));
        this.Q.setVisibility(0);
        if (!this.N) {
            view.setMinimumHeight(a.d(this, 280.0f));
            return;
        }
        this.W = (LinearLayout) view.findViewById(R.id.ll_media_album);
        this.X = (TextView) view.findViewById(R.id.tv_media_album);
        if (!TextUtils.isEmpty(this.P.albumName)) {
            this.X.setText(this.P.albumName);
        }
        this.Y = (TextView) view.findViewById(R.id.tv_media_album_year);
        if (!TextUtils.isEmpty(this.P.mAlbumYear)) {
            this.Y.setText(this.P.mAlbumYear);
        }
        this.W.setVisibility(0);
        this.Z = (LinearLayout) view.findViewById(R.id.ll_media_artist);
        this.a0 = (TextView) view.findViewById(R.id.tv_media_artist);
        if (!TextUtils.isEmpty(this.P.artistName)) {
            this.a0.setText(this.P.artistName);
        }
        this.Z.setVisibility(0);
    }

    public final void k0() {
        this.Q.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.l0(view);
            }
        });
        if (this.N) {
            this.W.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.b.m0(view);
                }
            });
            this.Z.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.b.n0(view);
                }
            });
        }
    }

    public final void l0(View view) {
        i0(1);
    }

    public final void m0(View view) {
        i0(2);
    }

    public final void n0(View view) {
        i0(3);
    }
}
