package com.transsion.mimedia.activity;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.LogUtils;
import com.hunantv.imgo.net.entity.AuthInfo;
import com.transsion.mimedia.R;
import com.transsion.mimedia.activity.MediaBottomShareActivity;
import com.transsion.playercommon.activities.RxPermissionOSBottomSheetDialog;
import com.transsion.playercommon.share.ShareManager;
import com.transsion.playercommon.share.model.ShareContent;
import com.transsion.playercommon.share.model.SharePlatformInfo;
import com.transsion.playercommon.share.view.SocialPlatformAdapter;
import defpackage.dy0;
import defpackage.e74;
import defpackage.el0;
import defpackage.mc2;
import defpackage.nk1;
import defpackage.oz5;
import defpackage.v6a;
import defpackage.y45;
import defpackage.zfb;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.d;

@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 02\u00020\u0001:\u00011B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\u0003J\u000f\u0010\n\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\n\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000b\u0010\u0003J\u000f\u0010\f\u001a\u00020\u0006H\u0017¢\u0006\u0004\b\f\u0010\u0003J\u000f\u0010\r\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\r\u0010\u0003J\u000f\u0010\u000e\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u000e\u0010\u0003J\u000f\u0010\u000f\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u000f\u0010\u0003R\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0017\u001a\u00020\u00148\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0016\u0010\u001b\u001a\u00020\u00188\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001f\u001a\u00020\u001c8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0018\u0010#\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0018\u0010%\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010\"R\u0018\u0010'\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010\"R\u0018\u0010)\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010\"R\u0016\u0010+\u001a\u00020 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010\"R\u0018\u0010/\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.¨\u00062"}, d2 = {"Lcom/transsion/mimedia/activity/MediaBottomShareActivity;", "Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;", MethodDecl.initName, "()V", "Landroid/view/View;", "view", "Lzfb;", "n0", "(Landroid/view/View;)V", "q0", "o0", "m0", "initView", "onBackgroundLayoutInit", "onResume", "onDestroy", "Lnk1;", "N", "Lnk1;", "activityScope", "Landroid/widget/TextView;", "O", "Landroid/widget/TextView;", "tvShareLink", "Landroid/widget/ImageView;", "P", "Landroid/widget/ImageView;", "ivCopyLink", "Landroidx/recyclerview/widget/RecyclerView;", "Q", "Landroidx/recyclerview/widget/RecyclerView;", "rvSharePlatforms", "", "R", "Ljava/lang/String;", "mediaLibraryId", ExifInterface.LATITUDE_SOUTH, "mediaLibraryName", "T", "userName", "U", "userAvatar", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "shareUrl", "Lcom/transsion/playercommon/share/model/ShareContent;", ExifInterface.LONGITUDE_WEST, "Lcom/transsion/playercommon/share/model/ShareContent;", "shareContent", "X", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "mimedia_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MediaBottomShareActivity extends RxPermissionOSBottomSheetDialog {

    public static final Companion INSTANCE = new Companion(null);

    public TextView tvShareLink;

    public ImageView ivCopyLink;

    public RecyclerView rvSharePlatforms;

    public String mediaLibraryId;

    public String mediaLibraryName;

    public String userName;

    public String userAvatar;

    public ShareContent shareContent;

    public final nk1 activityScope = d.a(v6a.b(null, 1, null).plus(mc2.c()));

    public String shareUrl = "";

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(Context context, String str, String str2, String str3, String str4) {
            y45.j(context, "context");
            Intent intent = new Intent(context, (Class<?>) MediaBottomShareActivity.class);
            intent.putExtra("mediaLibraryId", str);
            intent.putExtra("mediaLibraryName", str2);
            intent.putExtra("user_name", str3);
            intent.putExtra("user_avatar", str4);
            context.startActivity(intent);
        }

        public Companion() {
        }
    }

    private final void m0() {
        String str = this.mediaLibraryId;
        if (str == null || el0.d(this.activityScope, null, null, new MediaBottomShareActivity$generateShareLink$1$1(str, this, null), 3, null) == null) {
            LogUtils.m("MediaBottomShareActivity", "mediaLibraryId is null, cannot generate share link");
            zfb zfbVar = zfb.a;
        }
    }

    private final void n0(View view) {
        try {
            this.tvShareLink = (TextView) view.findViewById(R.id.tv_share_link);
            this.ivCopyLink = (ImageView) view.findViewById(R.id.iv_copy_link);
            this.rvSharePlatforms = (RecyclerView) view.findViewById(R.id.rv_share_platforms);
            q0();
            Log.d("MediaBottomShareActivity", "initViews completed successfully");
        } catch (Exception e) {
            Log.e("MediaBottomShareActivity", "initViews error: " + e.getMessage());
        }
    }

    private final void o0() {
        try {
            ImageView imageView = this.ivCopyLink;
            if (imageView == null) {
                y45.B("ivCopyLink");
                imageView = null;
            }
            imageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    MediaBottomShareActivity.p0(this.b, view);
                }
            });
            LogUtils.j("MediaBottomShareActivity", "setupClickListeners completed");
        } catch (Exception e) {
            LogUtils.m("MediaBottomShareActivity", "setupClickListeners error: " + e.getMessage());
        }
    }

    public static final void p0(MediaBottomShareActivity mediaBottomShareActivity, View view) {
        if (mediaBottomShareActivity.shareUrl.length() > 0) {
            dy0.a(mediaBottomShareActivity.shareUrl);
            LogUtils.j("MediaBottomShareActivity", "share link copied to clipboard");
        } else {
            LogUtils.j("MediaBottomShareActivity", "share link not ready yet");
        }
        oz5.a.d(AuthInfo.Component.CODE_LINK, mediaBottomShareActivity.shareUrl, mediaBottomShareActivity.mediaLibraryId, mediaBottomShareActivity.mediaLibraryName, mediaBottomShareActivity.userName, mediaBottomShareActivity.userAvatar);
    }

    private final void q0() {
        try {
            List listB = ShareManager.a.b(this);
            SocialPlatformAdapter socialPlatformAdapter = new SocialPlatformAdapter(listB, new e74() {
                @Override
                public final Object invoke(Object obj) {
                    return MediaBottomShareActivity.r0(this.b, (SharePlatformInfo) obj);
                }
            });
            RecyclerView recyclerView = this.rvSharePlatforms;
            RecyclerView recyclerView2 = null;
            if (recyclerView == null) {
                y45.B("rvSharePlatforms");
                recyclerView = null;
            }
            recyclerView.setLayoutManager(new LinearLayoutManager(this, 0, false));
            RecyclerView recyclerView3 = this.rvSharePlatforms;
            if (recyclerView3 == null) {
                y45.B("rvSharePlatforms");
            } else {
                recyclerView2 = recyclerView3;
            }
            recyclerView2.setAdapter(socialPlatformAdapter);
            LogUtils.j("MediaBottomShareActivity", "setupRecyclerView completed, platforms count: " + listB.size());
        } catch (Exception e) {
            LogUtils.m("MediaBottomShareActivity", "setupRecyclerView error: " + e.getMessage());
        }
    }

    public static final zfb r0(MediaBottomShareActivity mediaBottomShareActivity, SharePlatformInfo sharePlatformInfo) {
        y45.j(sharePlatformInfo, "platform");
        ShareContent shareContent = mediaBottomShareActivity.shareContent;
        if (shareContent != null) {
            ShareManager.a.e(mediaBottomShareActivity, shareContent, sharePlatformInfo.getOption());
            LogUtils.j("MediaBottomShareActivity", "share to platform: " + sharePlatformInfo.getOption());
            oz5.a.d(sharePlatformInfo.getName(), null, mediaBottomShareActivity.mediaLibraryId, mediaBottomShareActivity.mediaLibraryName, mediaBottomShareActivity.userName, mediaBottomShareActivity.userAvatar);
        }
        return zfb.a;
    }

    @Override
    public void initView() {
        super.initView();
        Log.d("MediaBottomShareActivity", "initView start");
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.dialog_mi_media_share, (ViewGroup) null);
        y45.g(viewInflate);
        addPage(viewInflate).setTitleLayoutVisible(false).setCloseIconVisibility(false);
        this.mediaLibraryId = getIntent().getStringExtra("mediaLibraryId");
        this.mediaLibraryName = getIntent().getStringExtra("mediaLibraryName");
        this.userName = getIntent().getStringExtra("user_name");
        String stringExtra = getIntent().getStringExtra("user_avatar");
        this.userAvatar = stringExtra;
        Log.d("MediaBottomShareActivity", "initView share: " + this.mediaLibraryId + StringUtils.COMMA + this.mediaLibraryName + StringUtils.COMMA + this.userName + StringUtils.COMMA + stringExtra);
        n0(viewInflate);
        o0();
        m0();
    }

    @Override
    public void onBackgroundLayoutInit() {
        super.onBackgroundLayoutInit();
        try {
            getRealContainerView().setBackgroundTintList(ColorStateList.valueOf(getColor(R.color.os_altitude_primary_color)));
        } catch (Exception e) {
            LogUtils.m("MediaBottomShareActivity", "onBackgroundLayoutInit error: " + e.getMessage());
        }
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        d.f(this.activityScope, null, 1, null);
        LogUtils.j("MediaBottomShareActivity", "onDestroy completed");
    }

    @Override
    public void onResume() {
        super.onResume();
        oz5.a.e(this.mediaLibraryId, this.mediaLibraryName, this.userName, this.userAvatar);
    }
}
