package com.transsion.cloud.fragment;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.p003activity.result.ActivityResult;
import androidx.p003activity.result.ActivityResultCallback;
import androidx.p003activity.result.ActivityResultLauncher;
import androidx.p003activity.result.contract.ActivityResultContracts;
import androidx.p004lifecycle.LifecycleOwnerKt;
import androidx.p004lifecycle.ViewModelProvider;
import com.alibaba.android.arouter.utils.Consts;
import com.blankj.utilcode.util.LogUtils;
import com.google.android.material.appbar.AppBarLayout;
import com.transsion.cloud.fileoperate.CloudFileOperate;
import com.transsion.cloud.fragment.CloudBaseFragment;
import com.transsion.cloud.share.CloudDriveBottomShareActivity;
import com.transsion.cloud.viewmodel.CloudViewModel;
import com.transsion.cloudcore.cache.CloudTaskFinishCacheManager;
import com.transsion.dbdata.beans.FileHandlerData;
import com.transsion.dbdata.beans.VideoCloudData;
import com.transsion.dbdata.beans.cloud.SearchResponseData;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayVideoData;
import com.transsion.magicvideo.activities.VideoPlayerActivityInner;
import com.transsion.magicvideo.activities.VideoSheetDialogActivity;
import com.transsion.magicvideo.player.VideoPlayManager;
import com.transsion.netdisk.R;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.data.SheetDialogParamsConstant;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.playercommon.fragments.PlayBaseFragment;
import com.transsion.tranplayer.MediaPlayer;
import com.transsion.utils.ToastUtils;
import com.transsion.widgetslib.dialog.InputDialog;
import com.transsion.widgetslib.dialog.d;
import defpackage.az5;
import defpackage.bz5;
import defpackage.cl0;
import defpackage.e07;
import defpackage.e6b;
import defpackage.el0;
import defpackage.g1a;
import defpackage.h27;
import defpackage.j1a;
import defpackage.m21;
import defpackage.mc2;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.pp3;
import defpackage.rx5;
import defpackage.s74;
import defpackage.srb;
import defpackage.tpb;
import defpackage.wh1;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\n\n\u0002\u0010 \n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0016\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u001f\u0010\t\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\r\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000f2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0013\u0010\u0003J!\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000f2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\u0014\u0010\u0012J\u0017\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0015H\u0004¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0019\u0010\u0003J\u0017\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ/\u0010\"\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u00062\u0016\u0010!\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010 0\u001f\"\u0004\u0018\u00010 H\u0016¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020\u0004H\u0014¢\u0006\u0004\b$\u0010\u0003J\u000f\u0010%\u001a\u00020\u0004H\u0014¢\u0006\u0004\b%\u0010\u0003J\u000f\u0010&\u001a\u00020\u0004H\u0014¢\u0006\u0004\b&\u0010\u0003J\u0015\u0010(\u001a\u00020\u00042\u0006\u0010'\u001a\u00020\u001a¢\u0006\u0004\b(\u0010\u001dJ\u000f\u0010)\u001a\u00020\u0004H\u0014¢\u0006\u0004\b)\u0010\u0003J-\u0010-\u001a\u00020\u00042\u0006\u0010*\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u00152\f\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00150+H\u0014¢\u0006\u0004\b-\u0010.J\u001d\u00100\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010/\u001a\u00020\u0006¢\u0006\u0004\b0\u00101J\u001d\u00103\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u00102\u001a\u00020\u0006¢\u0006\u0004\b3\u00101J\u001d\u00100\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u0002042\u0006\u0010/\u001a\u00020\u0006¢\u0006\u0004\b0\u00105J\u000f\u00106\u001a\u00020\u0006H\u0004¢\u0006\u0004\b6\u00107J\u000f\u00108\u001a\u00020\u0004H\u0016¢\u0006\u0004\b8\u0010\u0003R\"\u0010:\u001a\u0002098\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b:\u0010;\u001a\u0004\b<\u0010=\"\u0004\b>\u0010?R$\u0010A\u001a\u0004\u0018\u00010@8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bA\u0010B\u001a\u0004\bC\u0010D\"\u0004\bE\u0010FR$\u0010H\u001a\u0004\u0018\u00010G8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bH\u0010I\u001a\u0004\bJ\u0010K\"\u0004\bL\u0010MR\"\u0010N\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bN\u0010O\u001a\u0004\bP\u0010Q\"\u0004\bR\u0010\u001dR\"\u0010S\u001a\u00020\u001a8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\bS\u0010O\u001a\u0004\bT\u0010Q\"\u0004\bU\u0010\u001dR$\u0010W\u001a\u0004\u0018\u00010V8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bW\u0010X\u001a\u0004\bY\u0010Z\"\u0004\b[\u0010\\R\u0014\u0010^\u001a\u00020]8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b^\u0010_R\"\u0010`\u001a\u00020\u001a8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b`\u0010O\u001a\u0004\ba\u0010Q\"\u0004\bb\u0010\u001dR%\u0010f\u001a\u0010\u0012\f\u0012\n e*\u0004\u0018\u00010d0d0c8\u0006¢\u0006\f\n\u0004\bf\u0010g\u001a\u0004\bh\u0010i¨\u0006j"}, d2 = {"Lcom/transsion/cloud/fragment/CloudBaseFragment;", "Lcom/transsion/playercommon/fragments/PlayBaseFragment;", MethodDecl.initName, "()V", "Lzfb;", "initViewModel", "", TypedValues.CycleType.S_WAVE_OFFSET, "scrollRange", "isAppBarLayoutExpand", "(II)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/View;", "view", "onViewCreatedEnd", "(Landroid/view/View;Landroid/os/Bundle;)V", "onResume", "onViewCreated", "Lcom/transsion/dbdata/beans/VideoCloudData;", "videoCloudData", "showMenuDialog", "(Lcom/transsion/dbdata/beans/VideoCloudData;)V", "showDeleteDialog", "", "enter", "updateViewWhenEditMode", "(Z)V", "eventId", "", "", "args", "didReceivedNotification", "(I[Ljava/lang/Object;)V", "doShare", "downloadFile", "showRenameDialog", "enable", "setButtonEnable", "deleteFile", "type", "", "videoCloudDataList", "refreshCloudListData", "(ILcom/transsion/dbdata/beans/VideoCloudData;Ljava/util/List;)V", "listFlag1", "jumpToPlayerPage", "(Lcom/transsion/dbdata/beans/VideoCloudData;I)V", "listFlag", "jumpToPlayForRecent", "Lcom/transsion/dbdata/beans/cloud/SearchResponseData;", "(Lcom/transsion/dbdata/beans/cloud/SearchResponseData;I)V", "getRecyclerBottomPadding", "()I", "onPause", "Lcom/transsion/cloud/viewmodel/CloudViewModel;", "mViewModel", "Lcom/transsion/cloud/viewmodel/CloudViewModel;", "getMViewModel", "()Lcom/transsion/cloud/viewmodel/CloudViewModel;", "setMViewModel", "(Lcom/transsion/cloud/viewmodel/CloudViewModel;)V", "Lcom/transsion/widgetslib/dialog/InputDialog;", "mInputDialog", "Lcom/transsion/widgetslib/dialog/InputDialog;", "getMInputDialog", "()Lcom/transsion/widgetslib/dialog/InputDialog;", "setMInputDialog", "(Lcom/transsion/widgetslib/dialog/InputDialog;)V", "Lcom/transsion/widgetslib/dialog/d;", "mPromptDialog", "Lcom/transsion/widgetslib/dialog/d;", "getMPromptDialog", "()Lcom/transsion/widgetslib/dialog/d;", "setMPromptDialog", "(Lcom/transsion/widgetslib/dialog/d;)V", "mIsCloudContentShow", "Z", "getMIsCloudContentShow", "()Z", "setMIsCloudContentShow", "mIsGestureNavigationEnabled", "getMIsGestureNavigationEnabled", "setMIsGestureNavigationEnabled", "Landroid/widget/CheckBox;", "mCheckBoxAll", "Landroid/widget/CheckBox;", "getMCheckBoxAll", "()Landroid/widget/CheckBox;", "setMCheckBoxAll", "(Landroid/widget/CheckBox;)V", "Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;", "listener", "Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;", "mIsAppbarExpanded", "getMIsAppbarExpanded", "setMIsAppbarExpanded", "Landroidx/activity/result/ActivityResultLauncher;", "Landroid/content/Intent;", "kotlin.jvm.PlatformType", "mActivityResultLauncher", "Landroidx/activity/result/ActivityResultLauncher;", "getMActivityResultLauncher", "()Landroidx/activity/result/ActivityResultLauncher;", "clouddrive_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class CloudBaseFragment extends PlayBaseFragment {
    private final AppBarLayout.OnOffsetChangedListener listener = new AppBarLayout.OnOffsetChangedListener() {
        @Override
        public final void onOffsetChanged(AppBarLayout appBarLayout, int i) {
            CloudBaseFragment.n0(this.b, appBarLayout, i);
        }
    };
    private final ActivityResultLauncher<Intent> mActivityResultLauncher;
    private CheckBox mCheckBoxAll;
    private InputDialog mInputDialog;
    private boolean mIsAppbarExpanded;
    private boolean mIsCloudContentShow;
    private boolean mIsGestureNavigationEnabled;
    private d mPromptDialog;
    public CloudViewModel mViewModel;

    public static final class a implements TextWatcher {
        public final String b;
        public final CloudBaseFragment c;

        public a(String str, CloudBaseFragment cloudBaseFragment) {
            this.b = str;
            this.c = cloudBaseFragment;
        }

        @Override
        public void afterTextChanged(Editable editable) {
            y45.j(editable, "editable");
            String string = j1a.i1(editable.toString()).toString();
            if (g1a.F(this.b, string, false, 2, null)) {
                this.c.setButtonEnable(false);
            } else {
                this.c.setButtonEnable(string.length() > 0);
            }
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            y45.j(charSequence, "s");
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            y45.j(charSequence, "charSequence");
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
    @nt1(c = "com.transsion.cloud.fragment.CloudBaseFragment$jumpToPlayerPage$1", f = "CloudBaseFragment.kt", l = {MediaPlayer.Event.DisableVideo, MediaPlayer.Event.VideoCodecInfo, 309}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends SuspendLambda implements s74 {
        final int $listFlag1;
        final String $localPath;
        final VideoCloudData $videoCloudData;
        int label;
        final CloudBaseFragment this$0;

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
        @nt1(c = "com.transsion.cloud.fragment.CloudBaseFragment$jumpToPlayerPage$1$1", f = "CloudBaseFragment.kt", l = {}, m = "invokeSuspend")
        public static final class C02061 extends SuspendLambda implements s74 {
            final PlayVideoData $playVideoData;
            int label;
            final CloudBaseFragment this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C02061(CloudBaseFragment cloudBaseFragment, PlayVideoData playVideoData, wh1<? super C02061> wh1Var) {
                super(2, wh1Var);
                this.this$0 = cloudBaseFragment;
                this.$playVideoData = playVideoData;
            }

            @Override
            public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
                return new C02061(this.this$0, this.$playVideoData, wh1Var);
            }

            @Override
            public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
                return ((C02061) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
            }

            @Override
            public final Object invokeSuspend(Object obj) {
                z45.f();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
                VideoPlayerActivityInner.F2(((BaseFragment) this.this$0).mContext, this.$playVideoData);
                ToastUtils.s(R.string.visha_playing_local_file);
                return zfb.a;
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
        @nt1(c = "com.transsion.cloud.fragment.CloudBaseFragment$jumpToPlayerPage$1$2", f = "CloudBaseFragment.kt", l = {}, m = "invokeSuspend")
        public static final class AnonymousClass2 extends SuspendLambda implements s74 {
            final VideoCloudData $videoCloudData;
            int label;
            final CloudBaseFragment this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass2(CloudBaseFragment cloudBaseFragment, VideoCloudData videoCloudData, wh1<? super AnonymousClass2> wh1Var) {
                super(2, wh1Var);
                this.this$0 = cloudBaseFragment;
                this.$videoCloudData = videoCloudData;
            }

            @Override
            public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
                return new AnonymousClass2(this.this$0, this.$videoCloudData, wh1Var);
            }

            @Override
            public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
                return ((AnonymousClass2) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
            }

            @Override
            public final Object invokeSuspend(Object obj) {
                z45.f();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
                VideoPlayerActivityInner.F2(((BaseFragment) this.this$0).mContext, this.$videoCloudData.toPlayVideoData());
                srb srbVar = srb.a;
                String string = ((BaseFragment) this.this$0).mContext.getString(R.string.visha_playing_cloud_file);
                y45.i(string, "getString(...)");
                srbVar.b(string);
                return zfb.a;
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
        @nt1(c = "com.transsion.cloud.fragment.CloudBaseFragment$jumpToPlayerPage$1$3", f = "CloudBaseFragment.kt", l = {}, m = "invokeSuspend")
        public static final class AnonymousClass3 extends SuspendLambda implements s74 {
            final VideoCloudData $videoCloudData;
            int label;
            final CloudBaseFragment this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass3(CloudBaseFragment cloudBaseFragment, VideoCloudData videoCloudData, wh1<? super AnonymousClass3> wh1Var) {
                super(2, wh1Var);
                this.this$0 = cloudBaseFragment;
                this.$videoCloudData = videoCloudData;
            }

            @Override
            public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
                return new AnonymousClass3(this.this$0, this.$videoCloudData, wh1Var);
            }

            @Override
            public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
                return ((AnonymousClass3) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
            }

            @Override
            public final Object invokeSuspend(Object obj) {
                z45.f();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
                if (!e07.e(this.this$0.getApplicationContext())) {
                    ToastUtils.s(R.string.net_not_connect);
                    return zfb.a;
                }
                VideoPlayerActivityInner.F2(((BaseFragment) this.this$0).mContext, this.$videoCloudData.toPlayVideoData());
                srb srbVar = srb.a;
                String string = ((BaseFragment) this.this$0).mContext.getString(R.string.visha_playing_cloud_file);
                y45.i(string, "getString(...)");
                srbVar.b(string);
                return zfb.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(String str, int i, VideoCloudData videoCloudData, CloudBaseFragment cloudBaseFragment, wh1<? super AnonymousClass1> wh1Var) {
            super(2, wh1Var);
            this.$localPath = str;
            this.$listFlag1 = i;
            this.$videoCloudData = videoCloudData;
            this.this$0 = cloudBaseFragment;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return new AnonymousClass1(this.$localPath, this.$listFlag1, this.$videoCloudData, this.this$0, wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((AnonymousClass1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            int iD0;
            Object objF = z45.f();
            int i = this.label;
            try {
                if (i == 0) {
                    c.b(obj);
                    MediaItem mediaItemM = tpb.b.a().m(this.$localPath);
                    if (mediaItemM != null) {
                        PlayVideoData playVideoData = new PlayVideoData();
                        int i2 = this.$listFlag1;
                        VideoCloudData videoCloudData = this.$videoCloudData;
                        playVideoData.listFlag = i2;
                        playVideoData.mediaId = mediaItemM.id;
                        playVideoData.path = mediaItemM.data;
                        playVideoData.playTitle = mediaItemM.title;
                        playVideoData.duration = mediaItemM.duration;
                        playVideoData.mKtFileId = videoCloudData.getFileId();
                        String str = mediaItemM.data;
                        y45.i(str, "data");
                        playVideoData.setData(Uri.parse(str));
                        playVideoData.setNeedRecordVideoStates(true);
                        if (y45.e(mediaItemM, VideoPlayManager.X().c0()) && (iD0 = VideoPlayManager.X().d0()) != 0) {
                            playVideoData.playPosition = iD0;
                        }
                        rx5 rx5VarC = mc2.c();
                        C02061 c02061 = new C02061(this.this$0, playVideoData, null);
                        this.label = 1;
                        if (cl0.g(rx5VarC, c02061, this) == objF) {
                            return objF;
                        }
                    } else {
                        rx5 rx5VarC2 = mc2.c();
                        AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.this$0, this.$videoCloudData, null);
                        this.label = 2;
                        if (cl0.g(rx5VarC2, anonymousClass2, this) == objF) {
                            return objF;
                        }
                    }
                } else {
                    if (i != 1 && i != 2 && i != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    c.b(obj);
                }
            } catch (Throwable th) {
                LogUtils.l("queryVideoItem error: " + th);
                rx5 rx5VarC3 = mc2.c();
                AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.this$0, this.$videoCloudData, null);
                this.label = 3;
                if (cl0.g(rx5VarC3, anonymousClass3, this) == objF) {
                    return objF;
                }
            }
            return zfb.a;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
    @nt1(c = "com.transsion.cloud.fragment.CloudBaseFragment$jumpToPlayerPage$2", f = "CloudBaseFragment.kt", l = {367, 372, 382}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends SuspendLambda implements s74 {
        final int $listFlag1;
        final String $localPath;
        final SearchResponseData $videoCloudData;
        int label;
        final CloudBaseFragment this$0;

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
        @nt1(c = "com.transsion.cloud.fragment.CloudBaseFragment$jumpToPlayerPage$2$1", f = "CloudBaseFragment.kt", l = {}, m = "invokeSuspend")
        public static final class AnonymousClass1 extends SuspendLambda implements s74 {
            final PlayVideoData $playVideoData;
            int label;
            final CloudBaseFragment this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass1(CloudBaseFragment cloudBaseFragment, PlayVideoData playVideoData, wh1<? super AnonymousClass1> wh1Var) {
                super(2, wh1Var);
                this.this$0 = cloudBaseFragment;
                this.$playVideoData = playVideoData;
            }

            @Override
            public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
                return new AnonymousClass1(this.this$0, this.$playVideoData, wh1Var);
            }

            @Override
            public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
                return ((AnonymousClass1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
            }

            @Override
            public final Object invokeSuspend(Object obj) {
                z45.f();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
                VideoPlayerActivityInner.F2(((BaseFragment) this.this$0).mContext, this.$playVideoData);
                ToastUtils.s(R.string.visha_playing_local_file);
                return zfb.a;
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
        @nt1(c = "com.transsion.cloud.fragment.CloudBaseFragment$jumpToPlayerPage$2$2", f = "CloudBaseFragment.kt", l = {}, m = "invokeSuspend")
        public static final class C02072 extends SuspendLambda implements s74 {
            final int $listFlag1;
            final SearchResponseData $videoCloudData;
            int label;
            final CloudBaseFragment this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C02072(CloudBaseFragment cloudBaseFragment, SearchResponseData searchResponseData, int i, wh1<? super C02072> wh1Var) {
                super(2, wh1Var);
                this.this$0 = cloudBaseFragment;
                this.$videoCloudData = searchResponseData;
                this.$listFlag1 = i;
            }

            @Override
            public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
                return new C02072(this.this$0, this.$videoCloudData, this.$listFlag1, wh1Var);
            }

            @Override
            public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
                return ((C02072) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
            }

            @Override
            public final Object invokeSuspend(Object obj) {
                z45.f();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
                VideoPlayerActivityInner.F2(((BaseFragment) this.this$0).mContext, this.$videoCloudData.toPlayVideoData(this.$listFlag1));
                srb srbVar = srb.a;
                String string = ((BaseFragment) this.this$0).mContext.getString(R.string.visha_playing_cloud_file);
                y45.i(string, "getString(...)");
                srbVar.b(string);
                return zfb.a;
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
        @nt1(c = "com.transsion.cloud.fragment.CloudBaseFragment$jumpToPlayerPage$2$3", f = "CloudBaseFragment.kt", l = {}, m = "invokeSuspend")
        public static final class AnonymousClass3 extends SuspendLambda implements s74 {
            final int $listFlag1;
            final SearchResponseData $videoCloudData;
            int label;
            final CloudBaseFragment this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass3(CloudBaseFragment cloudBaseFragment, SearchResponseData searchResponseData, int i, wh1<? super AnonymousClass3> wh1Var) {
                super(2, wh1Var);
                this.this$0 = cloudBaseFragment;
                this.$videoCloudData = searchResponseData;
                this.$listFlag1 = i;
            }

            @Override
            public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
                return new AnonymousClass3(this.this$0, this.$videoCloudData, this.$listFlag1, wh1Var);
            }

            @Override
            public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
                return ((AnonymousClass3) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
            }

            @Override
            public final Object invokeSuspend(Object obj) {
                z45.f();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
                VideoPlayerActivityInner.F2(((BaseFragment) this.this$0).mContext, this.$videoCloudData.toPlayVideoData(this.$listFlag1));
                srb srbVar = srb.a;
                String string = ((BaseFragment) this.this$0).mContext.getString(R.string.visha_playing_cloud_file);
                y45.i(string, "getString(...)");
                srbVar.b(string);
                return zfb.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(String str, int i, SearchResponseData searchResponseData, CloudBaseFragment cloudBaseFragment, wh1<? super AnonymousClass2> wh1Var) {
            super(2, wh1Var);
            this.$localPath = str;
            this.$listFlag1 = i;
            this.$videoCloudData = searchResponseData;
            this.this$0 = cloudBaseFragment;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return new AnonymousClass2(this.$localPath, this.$listFlag1, this.$videoCloudData, this.this$0, wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((AnonymousClass2) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            int iD0;
            Object objF = z45.f();
            int i = this.label;
            try {
                if (i == 0) {
                    c.b(obj);
                    MediaItem mediaItemM = tpb.b.a().m(this.$localPath);
                    if (mediaItemM != null) {
                        PlayVideoData playVideoData = new PlayVideoData();
                        int i2 = this.$listFlag1;
                        SearchResponseData searchResponseData = this.$videoCloudData;
                        playVideoData.listFlag = i2;
                        playVideoData.mediaId = mediaItemM.id;
                        playVideoData.path = mediaItemM.data;
                        playVideoData.playTitle = mediaItemM.title;
                        playVideoData.duration = mediaItemM.duration;
                        playVideoData.mKtFileId = searchResponseData.getSourceId();
                        String str = mediaItemM.data;
                        y45.i(str, "data");
                        playVideoData.setData(Uri.parse(str));
                        playVideoData.setNeedRecordVideoStates(true);
                        if (y45.e(mediaItemM, VideoPlayManager.X().c0()) && (iD0 = VideoPlayManager.X().d0()) != 0) {
                            playVideoData.playPosition = iD0;
                        }
                        rx5 rx5VarC = mc2.c();
                        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, playVideoData, null);
                        this.label = 1;
                        if (cl0.g(rx5VarC, anonymousClass1, this) == objF) {
                            return objF;
                        }
                    } else {
                        rx5 rx5VarC2 = mc2.c();
                        C02072 c02072 = new C02072(this.this$0, this.$videoCloudData, this.$listFlag1, null);
                        this.label = 2;
                        if (cl0.g(rx5VarC2, c02072, this) == objF) {
                            return objF;
                        }
                    }
                } else {
                    if (i != 1 && i != 2 && i != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    c.b(obj);
                }
            } catch (Throwable th) {
                LogUtils.l("queryVideoItem error: " + th);
                rx5 rx5VarC3 = mc2.c();
                AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.this$0, this.$videoCloudData, this.$listFlag1, null);
                this.label = 3;
                if (cl0.g(rx5VarC3, anonymousClass3, this) == objF) {
                    return objF;
                }
            }
            return zfb.a;
        }
    }

    public CloudBaseFragment() {
        ActivityResultLauncher<Intent> activityResultLauncherRegisterForActivityResult = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new ActivityResultCallback() {
            @Override
            public final void onActivityResult(Object obj) {
                CloudBaseFragment.o0(this.a, (ActivityResult) obj);
            }
        });
        y45.i(activityResultLauncherRegisterForActivityResult, "registerForActivityResult(...)");
        this.mActivityResultLauncher = activityResultLauncherRegisterForActivityResult;
    }

    private final void initViewModel() {
    }

    public static final void m0(CloudBaseFragment cloudBaseFragment, boolean z) {
        if (z) {
            CloudFileOperate.getInstance().startDownload(cloudBaseFragment.mContext, cloudBaseFragment.getMViewModel().getMSelectedItemData());
        }
    }

    public static final void n0(CloudBaseFragment cloudBaseFragment, AppBarLayout appBarLayout, int i) {
        y45.j(appBarLayout, "appBarLayout");
        cloudBaseFragment.isAppBarLayoutExpand(i, appBarLayout.getTotalScrollRange());
    }

    public static final void o0(CloudBaseFragment cloudBaseFragment, ActivityResult activityResult) {
        Intent data;
        String fileName;
        y45.j(activityResult, "it");
        if (activityResult.getResultCode() != -1 || (data = activityResult.getData()) == null) {
            return;
        }
        int intExtra = data.getIntExtra(SheetDialogParamsConstant.OUT_PARAM_ITEM_CLICK_DATA, 0);
        if (intExtra == 2) {
            VideoCloudData mSelectedItemData = cloudBaseFragment.getMViewModel().getMSelectedItemData();
            if (mSelectedItemData != null && (fileName = mSelectedItemData.getFileName()) != null) {
                az5.a.C(fileName);
            }
            cloudBaseFragment.showRenameDialog();
            return;
        }
        if (intExtra == 4) {
            cloudBaseFragment.doShare();
            return;
        }
        if (intExtra == 12) {
            az5.a.A(1);
            cloudBaseFragment.showDeleteDialog();
        } else {
            if (intExtra != 14) {
                return;
            }
            cloudBaseFragment.downloadFile();
        }
    }

    public static final void p0(CloudBaseFragment cloudBaseFragment, DialogInterface dialogInterface, int i) {
        az5.a.B(1);
        cloudBaseFragment.deleteFile();
    }

    public static final void q0(DialogInterface dialogInterface, int i) {
    }

    public static final void r0(CloudBaseFragment cloudBaseFragment, String str, String str2) {
        String string;
        try {
            if (!TextUtils.isEmpty(str2)) {
                y45.g(str2);
                if (!TextUtils.isEmpty(j1a.i1(str2).toString())) {
                    d dVar = cloudBaseFragment.mPromptDialog;
                    if (dVar != null) {
                        y45.g(dVar);
                        dVar.dismiss();
                    }
                    if (str == null || str.length() <= 0) {
                        string = j1a.i1(str2).toString();
                    } else {
                        string = j1a.i1(str2).toString() + Consts.DOT + str;
                    }
                    cloudBaseFragment.getMViewModel().h0(cloudBaseFragment.getMViewModel().getMSelectedItemData(), string);
                    return;
                }
            }
            ToastUtils.s(R.string.empty_text);
        } catch (Exception unused) {
        }
    }

    public static final void s0(CloudBaseFragment cloudBaseFragment, DialogInterface dialogInterface, int i) {
        d dVar = cloudBaseFragment.mPromptDialog;
        if (dVar != null) {
            y45.g(dVar);
            dVar.dismiss();
        }
    }

    public void deleteFile() {
        getMViewModel().p(getMViewModel().getMSelectedItemData());
    }

    @Override
    public void didReceivedNotification(int eventId, Object... args) {
        List<VideoCloudData> list;
        y45.j(args, "args");
        if (eventId == 1133) {
            if (args.length == 0) {
                return;
            }
            Object obj = args[0];
            if (obj instanceof FileHandlerData) {
                y45.h(obj, "null cannot be cast to non-null type com.transsion.dbdata.beans.FileHandlerData");
                FileHandlerData fileHandlerData = (FileHandlerData) obj;
                VideoCloudData data = fileHandlerData.getData();
                if (data == null || (list = fileHandlerData.getList()) == null) {
                    return;
                }
                refreshCloudListData(fileHandlerData.getHandleType(), data, list);
            }
        }
    }

    public void doShare() {
        String fileId;
        String fileName;
        String fileName2;
        CloudDriveBottomShareActivity.Companion companion = CloudDriveBottomShareActivity.INSTANCE;
        BaseActivity baseActivity = this.mActivity;
        y45.i(baseActivity, "mActivity");
        VideoCloudData mSelectedItemData = getMViewModel().getMSelectedItemData();
        String str = "";
        if (mSelectedItemData == null || (fileId = mSelectedItemData.getFileId()) == null) {
            fileId = "";
        }
        VideoCloudData mSelectedItemData2 = getMViewModel().getMSelectedItemData();
        if (mSelectedItemData2 == null || (fileName = mSelectedItemData2.getFileName()) == null) {
            fileName = "";
        }
        companion.a(baseActivity, fileId, fileName);
        bz5.a aVar = bz5.a;
        VideoCloudData mSelectedItemData3 = getMViewModel().getMSelectedItemData();
        if (mSelectedItemData3 != null && (fileName2 = mSelectedItemData3.getFileName()) != null) {
            str = fileName2;
        }
        bz5.a.b(aVar, null, str, 1, null);
    }

    public void downloadFile() {
        new e6b(this.mContext, new e6b.c() {
            @Override
            public final void a(boolean z) {
                CloudBaseFragment.m0(this.a, z);
            }
        }).b(false);
    }

    public final ActivityResultLauncher<Intent> getMActivityResultLauncher() {
        return this.mActivityResultLauncher;
    }

    public final CheckBox getMCheckBoxAll() {
        return this.mCheckBoxAll;
    }

    public final InputDialog getMInputDialog() {
        return this.mInputDialog;
    }

    public final boolean getMIsAppbarExpanded() {
        return this.mIsAppbarExpanded;
    }

    public final boolean getMIsCloudContentShow() {
        return this.mIsCloudContentShow;
    }

    public final boolean getMIsGestureNavigationEnabled() {
        return this.mIsGestureNavigationEnabled;
    }

    public final d getMPromptDialog() {
        return this.mPromptDialog;
    }

    public final CloudViewModel getMViewModel() {
        CloudViewModel cloudViewModel = this.mViewModel;
        if (cloudViewModel != null) {
            return cloudViewModel;
        }
        y45.B("mViewModel");
        return null;
    }

    public final int getRecyclerBottomPadding() {
        return this.mIsGestureNavigationEnabled ? 15 : 0;
    }

    public void isAppBarLayoutExpand(int offset, int scrollRange) {
    }

    public final void jumpToPlayForRecent(VideoCloudData videoCloudData, int listFlag) {
        y45.j(videoCloudData, "videoCloudData");
        if (videoCloudData.getDataType() != 2) {
            jumpToPlayerPage(videoCloudData, listFlag);
        } else {
            VideoPlayerActivityInner.F2(this.mContext, videoCloudData.toPlayViewDataForMediaVideo(listFlag));
        }
    }

    public final void jumpToPlayerPage(VideoCloudData videoCloudData, int listFlag1) {
        y45.j(videoCloudData, "videoCloudData");
        String strJ = CloudTaskFinishCacheManager.a.j(videoCloudData.getFileId());
        if (strJ != null) {
            el0.d(LifecycleOwnerKt.getLifecycleScope(this), mc2.b(), null, new AnonymousClass1(strJ, listFlag1, videoCloudData, this, null), 2, null);
            return;
        }
        if (!e07.e(getApplicationContext())) {
            ToastUtils.s(R.string.net_not_connect);
            return;
        }
        PlayVideoData playVideoData = videoCloudData.toPlayVideoData();
        playVideoData.listFlag = listFlag1;
        VideoPlayerActivityInner.F2(this.mContext, playVideoData);
        srb srbVar = srb.a;
        String string = this.mContext.getString(R.string.visha_playing_cloud_file);
        y45.i(string, "getString(...)");
        srbVar.b(string);
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        boolean z = !pp3.H && com.transsion.utils.a.t(getContext());
        this.mIsGestureNavigationEnabled = z;
        Log.d("CloudBaseFragment", "mIsGestureNavigationEnabled " + z);
        setMViewModel((CloudViewModel) new ViewModelProvider(this).get(CloudViewModel.class));
    }

    @Override
    public void onPause() {
        super.onPause();
        h27.c().f(this, 1133);
    }

    @Override
    public void onResume() {
        super.onResume();
        h27.c().b(this, 1133);
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        y45.j(view, "view");
        super.onViewCreated(view, savedInstanceState);
        initViewModel();
    }

    @Override
    public void onViewCreatedEnd(View view, Bundle savedInstanceState) {
        y45.j(view, "view");
        super.onViewCreatedEnd(view, savedInstanceState);
        AppBarLayout appBarLayout = this.mAppBarLayout;
        if (appBarLayout != null) {
            appBarLayout.addOnOffsetChangedListener(this.listener);
        }
    }

    public void refreshCloudListData(int type, VideoCloudData videoCloudData, List videoCloudDataList) {
        y45.j(videoCloudData, "videoCloudData");
        y45.j(videoCloudDataList, "videoCloudDataList");
    }

    public final void setButtonEnable(boolean enable) {
        d dVar = this.mPromptDialog;
        Button buttonE = dVar != null ? dVar.e(-1) : null;
        if (buttonE != null) {
            buttonE.setEnabled(enable);
        }
    }

    public final void setMCheckBoxAll(CheckBox checkBox) {
        this.mCheckBoxAll = checkBox;
    }

    public final void setMInputDialog(InputDialog inputDialog) {
        this.mInputDialog = inputDialog;
    }

    public final void setMIsAppbarExpanded(boolean z) {
        this.mIsAppbarExpanded = z;
    }

    public final void setMIsCloudContentShow(boolean z) {
        this.mIsCloudContentShow = z;
    }

    public final void setMIsGestureNavigationEnabled(boolean z) {
        this.mIsGestureNavigationEnabled = z;
    }

    public final void setMPromptDialog(d dVar) {
        this.mPromptDialog = dVar;
    }

    public final void setMViewModel(CloudViewModel cloudViewModel) {
        y45.j(cloudViewModel, "<set-?>");
        this.mViewModel = cloudViewModel;
    }

    public void showDeleteDialog() {
        String string = this.mContext.getString(R.string.visha_delete_cloud_file_confirm);
        y45.i(string, "getString(...)");
        new d.a(this.mContext).k(string).u(R.string.delete, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                CloudBaseFragment.p0(this.b, dialogInterface, i);
            }
        }).m(com.transsion.playercommon.R.string.cancel, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                CloudBaseFragment.q0(dialogInterface, i);
            }
        }).a().show();
    }

    public final void showMenuDialog(VideoCloudData videoCloudData) {
        y45.j(videoCloudData, "videoCloudData");
        Intent intent = new Intent();
        MediaItem mediaItem = new MediaItem();
        mediaItem.displayName = videoCloudData.getFileName();
        intent.putExtra(SheetDialogParamsConstant.IS_KT_CLOUD_MAIN_PAGE, true);
        intent.putExtra("data", mediaItem);
        intent.putExtra(SheetDialogParamsConstant.IN_PARAM_FROM_LIST_MORE_ICON, true);
        intent.setClass(this.mActivity, VideoSheetDialogActivity.class);
        this.mActivityResultLauncher.launch(intent);
    }

    public void showRenameDialog() {
        VideoCloudData mSelectedItemData = getMViewModel().getMSelectedItemData();
        if (mSelectedItemData != null) {
            String fileName = mSelectedItemData.getFileName();
            final String strZ0 = fileName != null ? j1a.Z0(fileName, Consts.DOT, "") : null;
            if (strZ0 != null && strZ0.length() > 0) {
                fileName = j1a.g1(fileName, Consts.DOT, null, 2, null);
            }
            InputDialog inputDialogR = new InputDialog(this.mContext).A(R.string.rename).s(R.string.Save, new InputDialog.g() {
                @Override
                public final void a(String str) {
                    CloudBaseFragment.r0(this.a, strZ0, str);
                }
            }).x(R.string.cancel, new DialogInterface.OnClickListener() {
                @Override
                public final void onClick(DialogInterface dialogInterface, int i) {
                    CloudBaseFragment.s0(this.b, dialogInterface, i);
                }
            }).z(true).r(false);
            this.mInputDialog = inputDialogR;
            if (inputDialogR != null) {
                inputDialogR.v(fileName == null ? "" : fileName, "", 61, null);
            }
            InputDialog inputDialog = this.mInputDialog;
            if (inputDialog != null) {
                inputDialog.setTextWatcher(new a(fileName, this));
            }
            try {
                InputDialog inputDialog2 = this.mInputDialog;
                d dVarM = inputDialog2 != null ? inputDialog2.m() : null;
                this.mPromptDialog = dVarM;
                if (dVarM != null) {
                    dVarM.show();
                }
                InputDialog inputDialog3 = this.mInputDialog;
                if (inputDialog3 != null) {
                    inputDialog3.w(false);
                }
                setButtonEnable(false);
                zfb zfbVar = zfb.a;
            } catch (Exception e) {
                Log.e("CloudFragment", "error:" + e.getMessage());
            }
        }
    }

    public void updateViewWhenEditMode(boolean enter) {
        this.isInEditMode = enter;
    }

    public final void jumpToPlayerPage(SearchResponseData videoCloudData, int listFlag1) {
        y45.j(videoCloudData, "videoCloudData");
        CloudTaskFinishCacheManager cloudTaskFinishCacheManager = CloudTaskFinishCacheManager.a;
        String sourceId = videoCloudData.getSourceId();
        if (sourceId == null) {
            sourceId = "";
        }
        String strJ = cloudTaskFinishCacheManager.j(sourceId);
        if (strJ != null) {
            el0.d(LifecycleOwnerKt.getLifecycleScope(this), mc2.b(), null, new AnonymousClass2(strJ, listFlag1, videoCloudData, this, null), 2, null);
            return;
        }
        if (y45.e(cloudTaskFinishCacheManager.n().getValue(), Boolean.TRUE)) {
            m21.a.d();
            return;
        }
        VideoPlayerActivityInner.F2(this.mContext, videoCloudData.toPlayVideoData(listFlag1));
        srb srbVar = srb.a;
        String string = this.mContext.getString(R.string.visha_playing_cloud_file);
        y45.i(string, "getString(...)");
        srbVar.b(string);
    }
}
