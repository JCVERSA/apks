package com.transsion.mimedia.activity;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.mimedia.R;
import com.transsion.mimedia.activity.MediaVideoMoreActivity;
import com.transsion.playercommon.activities.RxPermissionOSBottomSheetDialog;
import com.transsion.playercommon.vishaweb.pages.VishaFeedbackPage;
import defpackage.az5;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\f\u0018\u0000 \u00152\u00020\u0001:\u0001\u0016B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0006\u0010\u0003R\u0018\u0010\n\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\rR\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\rR\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\r¨\u0006\u0017"}, d2 = {"Lcom/transsion/mimedia/activity/MediaVideoMoreActivity;", "Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;", MethodDecl.initName, "()V", "Lzfb;", "initView", "onBackgroundLayoutInit", "Landroid/widget/TextView;", "N", "Landroid/widget/TextView;", "tv_media_library_title", "", "O", "Ljava/lang/String;", "mediaLibraryId", "P", "mediaLibraryName", "Q", "virtualPersonName", "R", "virtualPersonPhoto", ExifInterface.LATITUDE_SOUTH, CmcdData.OBJECT_TYPE_AUDIO_ONLY, "mimedia_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MediaVideoMoreActivity extends RxPermissionOSBottomSheetDialog {

    public static final Companion INSTANCE = new Companion(null);

    public TextView tv_media_library_title;

    public String mediaLibraryId;

    public String mediaLibraryName;

    public String virtualPersonName;

    public String virtualPersonPhoto;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(Context context, String str, String str2, String str3, String str4) {
            y45.j(context, "context");
            Intent intent = new Intent(context, (Class<?>) MediaVideoMoreActivity.class);
            intent.putExtra("mediaLibraryId", str);
            intent.putExtra("mediaLibraryName", str2);
            intent.putExtra("user_name", str3);
            intent.putExtra("user_avatar", str4);
            context.startActivity(intent);
        }

        public Companion() {
        }
    }

    public static final void h0(MediaVideoMoreActivity mediaVideoMoreActivity, View view) {
        MediaBottomShareActivity.INSTANCE.a(mediaVideoMoreActivity, mediaVideoMoreActivity.mediaLibraryId, mediaVideoMoreActivity.mediaLibraryName, mediaVideoMoreActivity.virtualPersonName, mediaVideoMoreActivity.virtualPersonPhoto);
        mediaVideoMoreActivity.finish();
        az5.a.J(mediaVideoMoreActivity.mediaLibraryId, mediaVideoMoreActivity.mediaLibraryName, mediaVideoMoreActivity.virtualPersonName, mediaVideoMoreActivity.virtualPersonPhoto);
    }

    public static final void i0(MediaVideoMoreActivity mediaVideoMoreActivity, View view) {
        VishaFeedbackPage.d(mediaVideoMoreActivity, mediaVideoMoreActivity.mediaLibraryId, mediaVideoMoreActivity.mediaLibraryName, "", "");
        mediaVideoMoreActivity.finish();
        az5.a.I(mediaVideoMoreActivity.mediaLibraryId, mediaVideoMoreActivity.mediaLibraryName, mediaVideoMoreActivity.virtualPersonName, mediaVideoMoreActivity.virtualPersonPhoto);
    }

    @Override
    public void initView() {
        super.initView();
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.dialog_media_video_more, (ViewGroup) null);
        y45.i(viewInflate, "inflate(...)");
        this.tv_media_library_title = (TextView) viewInflate.findViewById(R.id.tv_media_library_title);
        this.mediaLibraryId = getIntent().getStringExtra("mediaLibraryId");
        this.mediaLibraryName = getIntent().getStringExtra("mediaLibraryName");
        this.virtualPersonName = getIntent().getStringExtra("user_name");
        this.virtualPersonPhoto = getIntent().getStringExtra("user_avatar");
        TextView textView = this.tv_media_library_title;
        if (textView != null) {
            textView.setText(this.mediaLibraryName);
        }
        addPage(viewInflate).setTitleLayoutVisible(false).setCloseIconVisibility(false);
        ((LinearLayout) viewInflate.findViewById(R.id.ll_media_library_share)).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                MediaVideoMoreActivity.h0(this.b, view);
            }
        });
        ((LinearLayout) viewInflate.findViewById(R.id.ll_media_library_feedback)).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                MediaVideoMoreActivity.i0(this.b, view);
            }
        });
    }

    @Override
    public void onBackgroundLayoutInit() {
        super.onBackgroundLayoutInit();
        try {
            getRealContainerView().setBackgroundTintList(ColorStateList.valueOf(getColor(R.color.os_altitude_primary_color)));
        } catch (Exception e) {
            LogUtils.m("MediaVideoMoreActivity", "onBackgroundLayoutInit error: " + e.getMessage());
        }
    }
}
