package com.transsion.sniffer_load.whatsapp;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.provider.MediaStore;
import android.text.SpannableString;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.p003activity.result.ActivityResult;
import androidx.p003activity.result.ActivityResultCallback;
import androidx.p003activity.result.ActivityResultLauncher;
import androidx.p003activity.result.contract.ActivityResultContracts;
import androidx.p004lifecycle.LiveData;
import androidx.p004lifecycle.MutableLiveData;
import androidx.p004lifecycle.Observer;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.arouter.launcher.ARouter;
import com.blankj.utilcode.util.LogUtils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.audio.R;
import com.transsion.audio.player.MusicPlayManager;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayAudioListData;
import com.transsion.dbdata.beans.media.PlayVideoData;
import com.transsion.dbdata.datamanager.RecentAddDataManager;
import com.transsion.effectengine.bounceeffect.OverScrollDecorHelper;
import com.transsion.eventbus.LiveEventBus;
import com.transsion.magicvideo.activities.VideoPlayerActivityInner;
import com.transsion.magicvideo.activities.VideoSheetDialogActivity;
import com.transsion.magicvideo.adapter.BucketDateAdapter;
import com.transsion.magicvideo.fragments.VideoDragBaseFragment;
import com.transsion.magicvideo.player.VideoPlayManager;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.arouter.VishaRouterTable;
import com.transsion.playercommon.data.FileOperateItem;
import com.transsion.playercommon.data.SheetDialogParamsConstant;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.playercommon.fragments.PlayBaseFragment;
import com.transsion.playercommon.utils.storage.FileOperateUtils;
import com.transsion.playercommon.videomodel.VideoPlayListModel;
import com.transsion.playercommon.widgets.AppFootActionBar;
import com.transsion.playercommon.widgets.VideoMainRecyclerView;
import com.transsion.push.PushConstants;
import com.transsion.sniffer_load.WebActivity;
import com.transsion.sniffer_load.data.DownloadHistory;
import com.transsion.sniffer_load.data.WhatsBookmark;
import com.transsion.sniffer_load.database.BookmarkDatabase;
import com.transsion.sniffer_load.whatsapp.WhatsAppDownloadFragment;
import com.transsion.utils.BaseConstant;
import com.transsion.utils.CustomGridLayoutManager;
import com.transsion.utils.ToastUtils;
import com.transsion.vishaplayersdk.vkPlayer.VkConstant;
import com.transsion.widgets.fastscroller.RecyclerViewFastScroller;
import defpackage.a64;
import defpackage.b23;
import defpackage.c81;
import defpackage.e74;
import defpackage.e84;
import defpackage.f5;
import defpackage.h27;
import defpackage.hb0;
import defpackage.hf7;
import defpackage.if7;
import defpackage.k29;
import defpackage.ls1;
import defpackage.mc7;
import defpackage.nz2;
import defpackage.oa1;
import defpackage.p06;
import defpackage.pz2;
import defpackage.r06;
import defpackage.raa;
import defpackage.ry5;
import defpackage.s44;
import defpackage.s74;
import defpackage.t74;
import defpackage.tpb;
import defpackage.vb;
import defpackage.vg9;
import defpackage.x74;
import defpackage.y45;
import defpackage.y71;
import defpackage.yx2;
import defpackage.z71;
import defpackage.zf1;
import defpackage.zfb;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000°\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\b\u0007*\u0002\u0080\u0001\b\u0016\u0018\u0000 \u0084\u00012\u00020\u0001:\u0002\u0085\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\u0003J\u000f\u0010\b\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\b\u0010\u0003J\u000f\u0010\t\u001a\u00020\u0004H\u0003¢\u0006\u0004\b\t\u0010\u0003J\u0017\u0010\f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\f\u0010\rJ'\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0014H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u001b\u0010\u0003J\u0019\u0010\u001e\u001a\u00020\u00042\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ-\u0010%\u001a\u0004\u0018\u00010$2\u0006\u0010!\u001a\u00020 2\b\u0010#\u001a\u0004\u0018\u00010\"2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0016¢\u0006\u0004\b%\u0010&J!\u0010(\u001a\u00020\u00042\u0006\u0010'\u001a\u00020$2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0016¢\u0006\u0004\b(\u0010)J\u0017\u0010*\u001a\u00020\u00042\u0006\u0010'\u001a\u00020$H\u0014¢\u0006\u0004\b*\u0010+J\u000f\u0010,\u001a\u00020\u0004H\u0016¢\u0006\u0004\b,\u0010\u0003J\u000f\u0010-\u001a\u00020\u0004H\u0016¢\u0006\u0004\b-\u0010\u0003J\u0017\u00100\u001a\u00020\u00042\u0006\u0010/\u001a\u00020.H\u0016¢\u0006\u0004\b0\u00101J\u000f\u00102\u001a\u00020\u0014H\u0014¢\u0006\u0004\b2\u00103J\u0017\u00105\u001a\u00020\u00042\u0006\u00104\u001a\u00020\u0014H\u0016¢\u0006\u0004\b5\u0010\u0017J\u0017\u00107\u001a\u00020\u00042\u0006\u00106\u001a\u00020\u0014H\u0017¢\u0006\u0004\b7\u0010\u0017J\u0017\u00108\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u000eH\u0016¢\u0006\u0004\b8\u0010\u001aJ\u001f\u0010;\u001a\u00020\u00042\u0006\u00109\u001a\u00020\u00142\u0006\u0010:\u001a\u00020\u0014H\u0015¢\u0006\u0004\b;\u0010<J)\u0010A\u001a\u0012\u0012\u0004\u0012\u00020\n0?j\b\u0012\u0004\u0012\u00020\n`@2\b\u0010>\u001a\u0004\u0018\u00010=H\u0007¢\u0006\u0004\bA\u0010BJ\u000f\u0010C\u001a\u00020\u0004H\u0016¢\u0006\u0004\bC\u0010\u0003J\u0017\u0010E\u001a\u00020\u00042\u0006\u0010D\u001a\u00020\u0014H\u0016¢\u0006\u0004\bE\u0010\u0017J\u0017\u0010F\u001a\u00020\u00042\u0006\u0010/\u001a\u00020.H\u0016¢\u0006\u0004\bF\u00101J\u0017\u0010G\u001a\u00020\u00042\u0006\u0010D\u001a\u00020\u0014H\u0016¢\u0006\u0004\bG\u0010\u0017J+\u0010J\u001a\u00020\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010H\u001a\u0004\u0018\u00010\u00102\u0006\u0010I\u001a\u00020\u0014H\u0014¢\u0006\u0004\bJ\u0010KJ\u000f\u0010L\u001a\u00020\u0004H\u0016¢\u0006\u0004\bL\u0010\u0003J/\u0010Q\u001a\u00020\u00042\u0006\u0010M\u001a\u00020\u000e2\u0016\u0010P\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010O0N\"\u0004\u0018\u00010OH\u0016¢\u0006\u0004\bQ\u0010RJ\u0017\u0010T\u001a\u00020\u00042\u0006\u0010S\u001a\u00020\u000eH\u0004¢\u0006\u0004\bT\u0010\u001aJ\u000f\u0010U\u001a\u00020\u0004H\u0016¢\u0006\u0004\bU\u0010\u0003J\u000f\u0010V\u001a\u00020\u0004H\u0016¢\u0006\u0004\bV\u0010\u0003R\u0018\u0010Z\u001a\u0004\u0018\u00010W8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bX\u0010YR\u0018\u0010^\u001a\u0004\u0018\u00010[8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\\\u0010]R\u0018\u0010a\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b_\u0010`R\u0018\u0010e\u001a\u0004\u0018\u00010b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bc\u0010dR\u0018\u0010h\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bf\u0010gR\u0018\u0010l\u001a\u0004\u0018\u00010i8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bj\u0010kR\u0018\u0010p\u001a\u0004\u0018\u00010m8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bn\u0010oR\u0018\u0010r\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bq\u0010`R\u0016\u0010u\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bs\u0010tR\u0016\u0010w\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bv\u0010tR\"\u0010}\u001a\u0010\u0012\f\u0012\n z*\u0004\u0018\u00010y0y0x8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b{\u0010|R\u001a\u0010\u007f\u001a\b\u0012\u0004\u0012\u00020y0x8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b~\u0010|R\u0018\u0010\u0083\u0001\u001a\u00030\u0080\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0081\u0001\u0010\u0082\u0001¨\u0006\u0086\u0001"}, d2 = {"Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;", "Lcom/transsion/magicvideo/fragments/VideoDragBaseFragment;", MethodDecl.initName, "()V", "Lzfb;", "q3", "Y2", "p3", "J2", "P2", "Lcom/transsion/dbdata/beans/media/MediaItem;", "mediaItem", "o3", "(Lcom/transsion/dbdata/beans/media/MediaItem;)V", "", "position", "", "action", "n3", "(Lcom/transsion/dbdata/beans/media/MediaItem;ILjava/lang/String;)V", "", PushConstants.PUSH_SERVICE_TYPE_SHOW, "W2", "(Z)V", "index", "I2", "(I)V", "k3", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", TtmlNode.RUBY_CONTAINER, "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "view", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "initTitleBar", "(Landroid/view/View;)V", "onResume", "onPause", "Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;", "screenType", "onFragmentScreenTypeChange", "(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V", "q1", "()Z", "isChecked", "d", "enter", "editMode", "onItemClick", "preload", "mediaChange", "loadData", "(ZZ)V", "Lcom/transsion/playercommon/activities/BaseActivity;", "baseActivity", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "M2", "(Lcom/transsion/playercommon/activities/BaseActivity;)Ljava/util/ArrayList;", "inflateOperationBar", "isVisibleToUser", "markPointVisiable", "markPointScreenTypeChange", "setUserVisibleHint", "newPath", "retry", "r1", "(Lcom/transsion/dbdata/beans/media/MediaItem;Ljava/lang/String;Z)V", "initEvents", "eventId", "", "", "args", "didReceivedNotification", "(I[Ljava/lang/Object;)V", TtmlNode.ATTR_ID, "r3", "onDestroyView", "onDestroy", "Landroidx/constraintlayout/widget/ConstraintLayout;", "q0", "Landroidx/constraintlayout/widget/ConstraintLayout;", "mLlEmptyView", "Landroid/widget/TextView;", "r0", "Landroid/widget/TextView;", "mTvSizeInfo", "s0", "Landroid/view/View;", "mSettingIv", "Lcom/transsion/utils/CustomGridLayoutManager;", "t0", "Lcom/transsion/utils/CustomGridLayoutManager;", "mGridLayoutManager", "u0", "Lcom/transsion/dbdata/beans/media/MediaItem;", "mCurrentOperateItem", "Lnz2;", "v0", "Lnz2;", "downloadHistoryDao", "Lcom/transsion/playercommon/videomodel/VideoPlayListModel;", "w0", "Lcom/transsion/playercommon/videomodel/VideoPlayListModel;", "videoPlayListModel", "x0", "mBackView", "y0", "Z", "isAllVideo", "z0", "mIsSupportThemeBg", "Landroidx/activity/result/ActivityResultLauncher;", "Landroid/content/Intent;", "kotlin.jvm.PlatformType", "A0", "Landroidx/activity/result/ActivityResultLauncher;", "mActivityResultLauncher", "B0", "activityResultLauncher", "com/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment$d", "C0", "Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment$d;", "mContentObserver", "D0", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "sniffer_load_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class WhatsAppDownloadFragment extends VideoDragBaseFragment {

    public static final Companion INSTANCE = new Companion(null);

    public final ActivityResultLauncher mActivityResultLauncher;

    public final ActivityResultLauncher activityResultLauncher;

    public final d mContentObserver;

    public ConstraintLayout mLlEmptyView;

    public TextView mTvSizeInfo;

    public View mSettingIv;

    public CustomGridLayoutManager mGridLayoutManager;

    public MediaItem mCurrentOperateItem;

    public nz2 downloadHistoryDao;

    public VideoPlayListModel videoPlayListModel;

    public View mBackView;

    public boolean isAllVideo = true;

    public boolean mIsSupportThemeBg;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final WhatsAppDownloadFragment a(boolean z) {
            WhatsAppDownloadFragment whatsAppDownloadFragment = new WhatsAppDownloadFragment();
            Bundle bundle = new Bundle();
            bundle.putBoolean("support_theme_background", z);
            whatsAppDownloadFragment.setArguments(bundle);
            return whatsAppDownloadFragment;
        }

        public Companion() {
        }
    }

    public static final class b extends hf7 {
        public b() {
            super("visha_WhatsAppDownloadFragment");
        }

        @Override
        public void a(int i) {
            AppFootActionBar appFootActionBar = WhatsAppDownloadFragment.this.v;
            if (appFootActionBar != null) {
                WhatsAppDownloadFragment whatsAppDownloadFragment = WhatsAppDownloadFragment.this;
                int iCheckItemIndex = appFootActionBar.checkItemIndex(i);
                b(iCheckItemIndex == 0 ? 1000 : 500);
                whatsAppDownloadFragment.I2(iCheckItemIndex);
            }
        }
    }

    public static final class c extends if7 {

        public class a {
            public static final int[] a;

            static {
                int[] iArr = new int[MediaItem.MediaType.values().length];
                try {
                    iArr[MediaItem.MediaType.IMAGE.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                a = iArr;
            }
        }

        public c() {
        }

        @Override
        public void OnNoDoubleItemClickListener(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            y45.j(baseQuickAdapter, "adapter");
            y45.j(view, "view1");
            super.OnNoDoubleItemClickListener(baseQuickAdapter, WhatsAppDownloadFragment.this.getView(), i);
            Object obj = baseQuickAdapter.getData().get(i);
            y45.h(obj, "null cannot be cast to non-null type com.transsion.dbdata.beans.media.MediaItem");
            MediaItem mediaItem = (MediaItem) obj;
            if (((PlayBaseFragment) WhatsAppDownloadFragment.this).isInEditMode) {
                WhatsAppDownloadFragment.this.u1(baseQuickAdapter, view, i, false);
                WhatsAppDownloadFragment.this.J2();
                WhatsAppDownloadFragment.this.M1(mediaItem, view);
                return;
            }
            mediaItem.selectedPos = i;
            MediaItem.MediaType mediaType = mediaItem.type;
            if ((mediaType == null ? -1 : a.a[mediaType.ordinal()]) == 1) {
                p06.d0("dl_manager_downloaded_image_cl");
                Context context = WhatsAppDownloadFragment.this.getContext();
                if (context != null) {
                    raa.k(context, mediaItem.uri);
                }
                RecentAddDataManager.a().k(mediaItem.id);
            } else {
                RecentAddDataManager.a().i(mediaItem.id, true);
                p06.y(WhatsAppDownloadFragment.this.s, RecentAddDataManager.a().e(mediaItem, true));
                WhatsAppDownloadFragment.this.o3(mediaItem);
            }
            BucketDateAdapter bucketDateAdapter = WhatsAppDownloadFragment.this.t;
            if (bucketDateAdapter != null) {
                bucketDateAdapter.notifyItemChanged(i);
            }
        }
    }

    public static final class d extends ContentObserver {
        public d(Handler handler) {
            super(handler);
        }

        @Override
        public void onChange(boolean z, Uri uri, int i) {
            WhatsAppDownloadFragment.this.postDelayLoadData();
        }

        @Override
        public void onChange(boolean z) {
            WhatsAppDownloadFragment.this.postDelayLoadData();
        }

        @Override
        public void onChange(boolean z, Uri uri) {
            WhatsAppDownloadFragment.this.postDelayLoadData();
        }

        @Override
        public void onChange(boolean z, Collection collection, int i) {
            y45.j(collection, "uris");
            WhatsAppDownloadFragment.this.postDelayLoadData();
        }
    }

    public static final class e implements Observer, e84 {
        public final e74 a;

        public e(e74 e74Var) {
            y45.j(e74Var, "function");
            this.a = e74Var;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof Observer) && (obj instanceof e84)) {
                return y45.e(getFunctionDelegate(), ((e84) obj).getFunctionDelegate());
            }
            return false;
        }

        @Override
        public final x74 getFunctionDelegate() {
            return this.a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override
        public final void onChanged(Object obj) {
            this.a.invoke(obj);
        }
    }

    public static final class f implements FileOperateUtils.k {
        public final MediaItem b;
        public final int c;

        public f(MediaItem mediaItem, int i) {
            this.b = mediaItem;
            this.c = i;
        }

        @Override
        public void d() {
            WhatsAppDownloadFragment.this.r.remove(this.c);
            BucketDateAdapter bucketDateAdapter = WhatsAppDownloadFragment.this.t;
            if (bucketDateAdapter != null) {
                bucketDateAdapter.notifyDataSetChanged();
            }
            WhatsAppDownloadFragment.this.x1();
        }

        @Override
        public void e() {
        }

        @Override
        public void g(String str, String str2) {
            y45.j(str, "name");
            y45.j(str2, "path");
            WhatsAppDownloadFragment.this.postDelayLoadDataChange();
            WhatsAppDownloadFragment.this.r1(this.b, str2, false);
        }
    }

    public WhatsAppDownloadFragment() {
        ActivityResultLauncher activityResultLauncherRegisterForActivityResult = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new ActivityResultCallback() {
            @Override
            public final void onActivityResult(Object obj) {
                WhatsAppDownloadFragment.j3(this.a, (ActivityResult) obj);
            }
        });
        y45.i(activityResultLauncherRegisterForActivityResult, "registerForActivityResult(...)");
        this.mActivityResultLauncher = activityResultLauncherRegisterForActivityResult;
        ActivityResultLauncher activityResultLauncherRegisterForActivityResult2 = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new ActivityResultCallback() {
            @Override
            public final void onActivityResult(Object obj) {
                WhatsAppDownloadFragment.H2(this.a, (ActivityResult) obj);
            }
        });
        y45.i(activityResultLauncherRegisterForActivityResult2, "registerForActivityResult(...)");
        this.activityResultLauncher = activityResultLauncherRegisterForActivityResult2;
        this.mContentObserver = new d(new Handler(Looper.getMainLooper()));
    }

    public static final void H2(WhatsAppDownloadFragment whatsAppDownloadFragment, ActivityResult activityResult) {
        Intent data;
        String stringExtra;
        FileOperateUtils fileOperateUtils;
        y45.j(activityResult, "result");
        if (activityResult.getResultCode() != -1 || (data = activityResult.getData()) == null) {
            return;
        }
        int intExtra = data.getIntExtra(SheetDialogParamsConstant.OUT_PARAM_ITEM_CLICK_DATA, 0);
        boolean zE = y45.e(data.getStringExtra(SheetDialogParamsConstant.MEDIA_TYPE), MediaItem.MediaType.AUDIO.toString());
        if (intExtra == 2) {
            if (!zE || (stringExtra = data.getStringExtra(SheetDialogParamsConstant.OUT_PARAM_RENAME_DATA)) == null || (fileOperateUtils = whatsAppDownloadFragment.mFileOperateUtils) == null) {
                return;
            }
            fileOperateUtils.b0(stringExtra);
            return;
        }
        if (intExtra == 5) {
            FileOperateUtils fileOperateUtils2 = whatsAppDownloadFragment.mFileOperateUtils;
            if (fileOperateUtils2 != null) {
                fileOperateUtils2.j0(true, false);
            }
            p06.c0("video", "vd_vmore_del_cl", 9324L);
            return;
        }
        if (intExtra != 8) {
            if (intExtra == 11) {
                MediaItem mediaItem = (MediaItem) data.getParcelableExtra(SheetDialogParamsConstant.OUT_PARAM_DATA);
                if (mediaItem != null) {
                    whatsAppDownloadFragment.r3(mediaItem.id);
                    return;
                }
                return;
            }
            FileOperateItem fileOperateItem = new FileOperateItem(R.drawable.ic_delete, R.string.delete, intExtra);
            FileOperateUtils fileOperateUtils3 = whatsAppDownloadFragment.mFileOperateUtils;
            if (fileOperateUtils3 != null) {
                fileOperateUtils3.X(fileOperateItem, "video", true);
                return;
            }
            return;
        }
        AudioItem audioItem = (AudioItem) data.getParcelableExtra(SheetDialogParamsConstant.OUT_PARAM_DATA);
        ry5.f(whatsAppDownloadFragment.s, "vd_vmore_playnext_cl");
        if (audioItem != null) {
            if (MusicPlayManager.S().a0() == null || !audioItem.data.equals(MusicPlayManager.S().a0().data)) {
                ToastUtils.s(R.string.audio_added_to_next);
            } else {
                ToastUtils.s(R.string.audio_song_playing);
            }
            if (PlayAudioListData.getInstance().getPlayList() == null || PlayAudioListData.getInstance().getPlayList().size() == 0) {
                MusicPlayManager.S().Y().setPlayMediaItem(audioItem).selectedPlayMediaItem();
                MusicPlayManager.S().P0(audioItem, false);
                h27.c().e(1083, new Object[0]);
            }
            PlayAudioListData.getInstance().next(audioItem);
        }
    }

    public final void I2(int index) {
        Collection collectionK;
        MutableLiveData mutableLiveDataH;
        if (this.y) {
            return;
        }
        AppFootActionBar appFootActionBar = this.v;
        if (appFootActionBar != null) {
            BucketDateAdapter bucketDateAdapter = this.t;
            appFootActionBar.setSelectItems(bucketDateAdapter != null ? bucketDateAdapter.D() : null);
        }
        if (index != 2) {
            if (index != 3) {
                AppFootActionBar appFootActionBar2 = this.v;
                if (appFootActionBar2 != null) {
                    appFootActionBar2.onItemClick(index, true);
                    return;
                }
                return;
            }
            Context context = this.mContext;
            BucketDateAdapter bucketDateAdapter2 = this.t;
            FileOperateUtils fileOperateUtils = new FileOperateUtils(context, bucketDateAdapter2 != null ? bucketDateAdapter2.D() : null, this.s, true);
            this.mFileOperateUtils = fileOperateUtils;
            AppFootActionBar appFootActionBar3 = this.v;
            if (appFootActionBar3 != null) {
                appFootActionBar3.setFileOperateUtils(fileOperateUtils);
            }
            AppFootActionBar appFootActionBar4 = this.v;
            if (appFootActionBar4 != null) {
                BucketDateAdapter bucketDateAdapter3 = this.t;
                appFootActionBar4.preDelete(0, bucketDateAdapter3 != null ? bucketDateAdapter3.D() : null, true);
                return;
            }
            return;
        }
        BucketDateAdapter bucketDateAdapter4 = this.t;
        if (bucketDateAdapter4 == null || (collectionK = bucketDateAdapter4.D()) == null) {
            collectionK = y71.k();
        }
        Intent intent = new Intent();
        if (this.isAllVideo) {
            Collection collection = collectionK;
            ArrayList arrayList = new ArrayList(z71.v(collection, 10));
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                arrayList.add(Integer.valueOf(((MediaItem) it.next()).id));
            }
            intent.putExtra(SheetDialogParamsConstant.IN_PARAM_DATA_LIST_IDS, arrayList);
            intent.putExtra(SheetDialogParamsConstant.MEDIA_TYPE, MediaItem.MediaType.VIDEO);
            intent.putExtra(SheetDialogParamsConstant.IN_PARAM_LIST_FLAG, this.s);
            VideoPlayListModel videoPlayListModel = this.G;
            List list = (videoPlayListModel == null || (mutableLiveDataH = videoPlayListModel.h()) == null) ? null : (List) mutableLiveDataH.getValue();
            ArrayList arrayList2 = list instanceof ArrayList ? (ArrayList) list : null;
            intent.putExtra(SheetDialogParamsConstant.IN_PARAM_FROM_LIST_MORE_ICON, false);
            vg9.g(arrayList2);
            vg9.h(new ArrayList(collectionK));
            BaseActivity baseActivity = this.mActivity;
            y45.g(baseActivity);
            intent.setClass(baseActivity, VideoSheetDialogActivity.class);
            this.mActivityResultLauncher.launch(intent);
        }
    }

    public final void J2() {
        List listK;
        this.isAllVideo = true;
        BucketDateAdapter bucketDateAdapter = this.t;
        if (bucketDateAdapter == null || (listK = bucketDateAdapter.D()) == null) {
            listK = y71.k();
        }
        Iterator it = listK.iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (((MediaItem) it.next()).type != MediaItem.MediaType.VIDEO) {
                this.isAllVideo = false;
                z = true;
            }
        }
        List list = listK;
        boolean z2 = (list.isEmpty() || z) ? false : true;
        AppFootActionBar appFootActionBar = this.v;
        if (appFootActionBar != null) {
            appFootActionBar.changeItemEnable(1, z2);
        }
        AppFootActionBar appFootActionBar2 = this.v;
        if (appFootActionBar2 != null) {
            appFootActionBar2.changeItemEnable(2, this.isAllVideo && !list.isEmpty());
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0029  */
    public static final void K2(final WhatsAppDownloadFragment whatsAppDownloadFragment, boolean z) {
        boolean z2;
        whatsAppDownloadFragment.inflateOperationBar();
        AppFootActionBar appFootActionBar = whatsAppDownloadFragment.v;
        if (appFootActionBar != null) {
            appFootActionBar.setVisibility(z ? 0 : 8);
        }
        if (z) {
            whatsAppDownloadFragment.applyEditFootBarBottomInset(whatsAppDownloadFragment.v);
        }
        AppFootActionBar appFootActionBar2 = whatsAppDownloadFragment.v;
        if (appFootActionBar2 != null) {
            ArrayList arrayList = whatsAppDownloadFragment.E;
            if (arrayList != null) {
                z2 = arrayList.isEmpty() ^ true;
            }
            appFootActionBar2.setAllEnable(z2);
        }
        AppFootActionBar appFootActionBar3 = whatsAppDownloadFragment.v;
        if (appFootActionBar3 != null) {
            appFootActionBar3.post(new Runnable() {
                @Override
                public final void run() {
                    WhatsAppDownloadFragment.L2(this.b);
                }
            });
        }
        TextView textView = whatsAppDownloadFragment.mTvSizeInfo;
        if (textView != null) {
            textView.setVisibility(z ? 4 : 0);
        }
        h27.c().e(1125, Boolean.valueOf(z), 0);
    }

    public static final void L2(WhatsAppDownloadFragment whatsAppDownloadFragment) {
        whatsAppDownloadFragment.applyEditFootBarBottomInset(whatsAppDownloadFragment.v);
        whatsAppDownloadFragment.J2();
    }

    public static final int N2(MediaItem mediaItem, MediaItem mediaItem2) {
        int i;
        long j = mediaItem.dateModified;
        long j2 = mediaItem2.dateModified;
        if (j < j2) {
            i = -1;
        } else {
            i = j == j2 ? 0 : 1;
        }
        return -i;
    }

    public static final int O2(s74 s74Var, Object obj, Object obj2) {
        return ((Number) s74Var.invoke(obj, obj2)).intValue();
    }

    private final void P2() {
        mc7 mc7VarK = mc7.K(this);
        Context context = this.mContext;
        y45.h(context, "null cannot be cast to non-null type com.transsion.playercommon.activities.BaseActivity");
        mc7 mc7VarG = mc7VarK.g(((BaseActivity) context).bindToLifecycle());
        final e74 e74Var = new e74() {
            @Override
            public final Object invoke(Object obj) {
                return WhatsAppDownloadFragment.V2((WhatsAppDownloadFragment) obj);
            }
        };
        mc7 mc7VarM = mc7VarG.L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return WhatsAppDownloadFragment.Q2(e74Var, obj);
            }
        }).d0(k29.c()).M(vb.a());
        final e74 e74Var2 = new e74() {
            @Override
            public final Object invoke(Object obj) {
                return WhatsAppDownloadFragment.R2(this.b, (Long) obj);
            }
        };
        zf1 zf1Var = new zf1() {
            @Override
            public final void accept(Object obj) {
                WhatsAppDownloadFragment.S2(e74Var2, obj);
            }
        };
        final e74 e74Var3 = new e74() {
            @Override
            public final Object invoke(Object obj) {
                return WhatsAppDownloadFragment.T2((Throwable) obj);
            }
        };
        mc7VarM.a0(zf1Var, new zf1() {
            @Override
            public final void accept(Object obj) {
                WhatsAppDownloadFragment.U2(e74Var3, obj);
            }
        });
    }

    public static final Long Q2(e74 e74Var, Object obj) {
        y45.j(obj, "p0");
        return (Long) e74Var.invoke(obj);
    }

    public static final zfb R2(WhatsAppDownloadFragment whatsAppDownloadFragment, Long l) {
        Context context = whatsAppDownloadFragment.mContext;
        y45.g(l);
        SpannableString spannableStringB = s44.b(context, l.longValue());
        TextView textView = whatsAppDownloadFragment.mTvSizeInfo;
        if (textView != null) {
            textView.setText(spannableStringB);
        }
        return zfb.a;
    }

    public static final void S2(e74 e74Var, Object obj) {
        e74Var.invoke(obj);
    }

    public static final zfb T2(Throwable th) {
        Log.e("visha_WhatsAppDownloadFragment", "Failed to flush size", th);
        return zfb.a;
    }

    public static final void U2(e74 e74Var, Object obj) {
        e74Var.invoke(obj);
    }

    public static final Long V2(WhatsAppDownloadFragment whatsAppDownloadFragment) {
        y45.j(whatsAppDownloadFragment, "it");
        return Long.valueOf(b23.l(yx2.f));
    }

    private final void W2(boolean show) {
        View view;
        ImageView imageView;
        ViewStub viewStub;
        if (this.q == null && (view = this.l) != null) {
            View viewInflate = (view == null || (viewStub = (ViewStub) view.findViewById(com.transsion.sniffer_load.R.id.main_empty_view)) == null) ? null : viewStub.inflate();
            this.q = viewInflate;
            this.mLlEmptyView = viewInflate != null ? (ConstraintLayout) viewInflate.findViewById(com.transsion.sniffer_load.R.id.ll_empty_view) : null;
            View view2 = this.q;
            if (view2 != null && (imageView = (ImageView) view2.findViewById(com.transsion.sniffer_load.R.id.lottie_no_videos_view)) != null) {
                imageView.setImageResource(com.transsion.common.R.drawable.ic_file_empty_illustration);
            }
            ConstraintLayout constraintLayout = this.mLlEmptyView;
            if (constraintLayout != null) {
                constraintLayout.setContentDescription(getString(com.transsion.sniffer_load.R.string.file_empty));
            }
            View view3 = this.q;
            if (view3 != null) {
                BaseActivity baseActivity = this.mActivity;
                view3.setPadding(0, 0, 0, (baseActivity == null || !baseActivity.isInMultiWindowMode()) ? this.mEmptyPaddingBottom : this.mEmptyPaddingBottomInMulti);
            }
            View view4 = this.q;
            TextView textView = view4 != null ? (TextView) view4.findViewById(com.transsion.sniffer_load.R.id.text_no_videos) : null;
            if (textView != null) {
                textView.setText(com.transsion.sniffer_load.R.string.file_empty);
            }
        }
        View view5 = this.q;
        if (view5 != null) {
            view5.setVisibility(show ? 0 : 8);
        }
    }

    public static final void X2(WhatsAppDownloadFragment whatsAppDownloadFragment) {
        whatsAppDownloadFragment.editMode(false);
        whatsAppDownloadFragment.postDelayLoadData();
        PlayBaseFragment.d dVar = whatsAppDownloadFragment.mEditModeListener;
        if (dVar != null) {
            dVar.d(false, whatsAppDownloadFragment.s, true);
        }
    }

    public static final boolean Z2(WhatsAppDownloadFragment whatsAppDownloadFragment, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        RecyclerView.LayoutManager layoutManager;
        Object obj = baseQuickAdapter.getData().get(i);
        y45.h(obj, "null cannot be cast to non-null type com.transsion.dbdata.beans.media.MediaItem");
        MediaItem mediaItem = (MediaItem) obj;
        if (whatsAppDownloadFragment.isInEditMode) {
            whatsAppDownloadFragment.u1(baseQuickAdapter, view, i, false);
            whatsAppDownloadFragment.J2();
            VideoMainRecyclerView videoMainRecyclerView = whatsAppDownloadFragment.M;
            whatsAppDownloadFragment.M1(mediaItem, (videoMainRecyclerView == null || (layoutManager = videoMainRecyclerView.getLayoutManager()) == null) ? null : layoutManager.findViewByPosition(i));
        } else {
            whatsAppDownloadFragment.editMode(true);
            BucketDateAdapter bucketDateAdapter = whatsAppDownloadFragment.t;
            if (bucketDateAdapter != null) {
                bucketDateAdapter.T(mediaItem, true, i);
            }
            whatsAppDownloadFragment.J2();
        }
        return true;
    }

    public static final void a3(WhatsAppDownloadFragment whatsAppDownloadFragment, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        if (!whatsAppDownloadFragment.ingoreClickEvent() || whatsAppDownloadFragment.isInEditMode) {
            whatsAppDownloadFragment.mFirstClickTime = System.currentTimeMillis();
            Object obj = baseQuickAdapter.getData().get(i);
            y45.h(obj, "null cannot be cast to non-null type com.transsion.dbdata.beans.media.MediaItem");
            MediaItem mediaItem = (MediaItem) obj;
            if (whatsAppDownloadFragment.isInEditMode) {
                whatsAppDownloadFragment.u1(baseQuickAdapter, view, i, true);
                whatsAppDownloadFragment.J2();
            } else if (view.getId() == com.transsion.magicvideo.R.id.iv_bucket_fragment_item_more) {
                whatsAppDownloadFragment.mCurrentOperateItem = mediaItem;
                String strA = p06.A(whatsAppDownloadFragment.s);
                y45.i(strA, "markPointClickMore(...)");
                whatsAppDownloadFragment.n3(mediaItem, i, strA);
            }
        }
    }

    public static final void b3(WhatsAppDownloadFragment whatsAppDownloadFragment, View view) {
        if (!whatsAppDownloadFragment.isInEditMode) {
            BaseActivity baseActivity = whatsAppDownloadFragment.mActivity;
            if (baseActivity != null) {
                baseActivity.onBackPressed();
                return;
            }
            return;
        }
        whatsAppDownloadFragment.editMode(false);
        PlayBaseFragment.d dVar = whatsAppDownloadFragment.mEditModeListener;
        if (dVar != null) {
            dVar.a(false);
        }
    }

    public static final void c3(WhatsAppDownloadFragment whatsAppDownloadFragment, View view) {
        Object objNavigation = ARouter.getInstance().build(VishaRouterTable.PATH_SERVICE_TOOLS_SETTINGFRAGEMENT).navigation();
        y45.h(objNavigation, "null cannot be cast to non-null type com.transsion.playercommon.fragments.BaseFragment");
        BaseFragment baseFragment = (BaseFragment) objNavigation;
        baseFragment.setBaseActivity(whatsAppDownloadFragment.mActivity);
        a64.n(baseFragment, true, true);
    }

    public static final ArrayList d3(WhatsAppDownloadFragment whatsAppDownloadFragment, BaseActivity baseActivity, WhatsAppDownloadFragment whatsAppDownloadFragment2) {
        y45.j(whatsAppDownloadFragment2, "it");
        return whatsAppDownloadFragment.M2(baseActivity);
    }

    public static final ArrayList e3(e74 e74Var, Object obj) {
        y45.j(obj, "p0");
        return (ArrayList) e74Var.invoke(obj);
    }

    public static final zfb f3(WhatsAppDownloadFragment whatsAppDownloadFragment, ArrayList arrayList) {
        Log.d("visha_WhatsAppDownloadFragment", "loadWhatsAppData: loaded " + arrayList.size() + " items");
        whatsAppDownloadFragment.r.clear();
        whatsAppDownloadFragment.r.addAll(arrayList);
        whatsAppDownloadFragment.q3();
        return zfb.a;
    }

    public static final void g3(e74 e74Var, Object obj) {
        e74Var.invoke(obj);
    }

    public static final zfb h3(Throwable th) {
        Log.e("visha_WhatsAppDownloadFragment", "loadWhatsAppData error: " + th.getMessage(), th);
        return zfb.a;
    }

    public static final void i3(e74 e74Var, Object obj) {
        e74Var.invoke(obj);
    }

    public static final void j3(WhatsAppDownloadFragment whatsAppDownloadFragment, ActivityResult activityResult) {
        Intent data;
        y45.j(activityResult, "it");
        if (activityResult.getResultCode() != -1 || (data = activityResult.getData()) == null) {
            return;
        }
        int intExtra = data.getIntExtra(SheetDialogParamsConstant.OUT_PARAM_ITEM_CLICK_DATA, 0);
        if (intExtra == 5) {
            FileOperateUtils fileOperateUtils = whatsAppDownloadFragment.mFileOperateUtils;
            if (fileOperateUtils != null) {
                fileOperateUtils.j0(true, false);
            }
            p06.c0("video", "vd_vmore_del_cl", 9324L);
            return;
        }
        FileOperateItem fileOperateItem = new FileOperateItem(R.drawable.ic_delete, R.string.delete, intExtra);
        FileOperateUtils fileOperateUtils2 = whatsAppDownloadFragment.mFileOperateUtils;
        if (fileOperateUtils2 != null) {
            fileOperateUtils2.X(fileOperateItem, "video", true);
        }
    }

    public static final zfb l3(WhatsAppDownloadFragment whatsAppDownloadFragment, List list) {
        BucketDateAdapter bucketDateAdapter = whatsAppDownloadFragment.t;
        if (bucketDateAdapter != null) {
            bucketDateAdapter.notifyDataSetChanged();
        }
        return zfb.a;
    }

    public static final void m3(WhatsAppDownloadFragment whatsAppDownloadFragment, boolean z) {
        whatsAppDownloadFragment.R1(false);
    }

    public final void o3(MediaItem mediaItem) {
        BaseActivity baseActivity;
        int iD0;
        p06.d0("dl_manager_downloaded_video_cl");
        PlayVideoData playVideoDataConvertToPlayVideoData = PlayVideoData.convertToPlayVideoData(mediaItem);
        if (playVideoDataConvertToPlayVideoData != null) {
            playVideoDataConvertToPlayVideoData.setShowPicInPic(true);
            playVideoDataConvertToPlayVideoData.setNeedRecordVideoStates(true);
            playVideoDataConvertToPlayVideoData.folderName = this.B;
            playVideoDataConvertToPlayVideoData.listFlag = this.s;
            if (y45.e(mediaItem, VideoPlayManager.X().c0()) && (iD0 = VideoPlayManager.X().d0()) != 0) {
                playVideoDataConvertToPlayVideoData.playPosition = iD0;
            }
            if (VideoPlayManager.X().x0() && (baseActivity = this.mActivity) != null && baseActivity.isAlertWindowPermissionGranted()) {
                VideoPlayManager.X().o2(playVideoDataConvertToPlayVideoData);
            } else {
                VideoPlayerActivityInner.F2(this.mContext, playVideoDataConvertToPlayVideoData);
            }
        }
    }

    private final void p3() {
        Q1();
    }

    private final void q3() {
        try {
            BucketDateAdapter bucketDateAdapter = this.t;
            if (bucketDateAdapter != null) {
                if (this.r != null) {
                    ArrayList arrayList = this.r;
                    y45.h(arrayList, "null cannot be cast to non-null type kotlin.collections.List<com.transsion.dbdata.beans.media.MediaItem>");
                    bucketDateAdapter.setNewData(arrayList);
                } else {
                    LogUtils.O("visha_WhatsAppDownloadFragment", "mDataList type mismatch, expected List<MediaItem>");
                    bucketDateAdapter.setNewData(y71.k());
                }
            }
        } catch (Exception e2) {
            LogUtils.l("visha_WhatsAppDownloadFragment", "updateUI: ", e2);
        }
        P2();
        W2(this.r.isEmpty());
        VideoMainRecyclerView videoMainRecyclerView = this.M;
        if (videoMainRecyclerView != null) {
            videoMainRecyclerView.setVisibility(this.r.isEmpty() ? 8 : 0);
        }
    }

    public final ArrayList M2(BaseActivity baseActivity) {
        if (baseActivity == null || baseActivity.isDestroyed()) {
            Log.w("visha_WhatsAppDownloadFragment", "flushLoadedItems: baseActivity is null or destroyed");
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        try {
            String str = yx2.e + WhatsBookmark.URL_WHATSAPP + File.separator;
            Log.d("visha_WhatsAppDownloadFragment", "flushLoadedItems: scanning WhatsApp directory - " + str);
            tpb.a aVar = tpb.b;
            List listF0 = aVar.a().f0(str);
            if (!listF0.isEmpty()) {
                ls1.a(listF0);
                arrayList.addAll(listF0);
                Log.d("visha_WhatsAppDownloadFragment", "flushLoadedItems: found " + listF0.size() + " video files in WhatsApp directory");
            }
            ArrayList arrayListC = pz2.c(baseActivity, str, false);
            if (arrayListC != null && !arrayListC.isEmpty()) {
                arrayList.addAll(arrayListC);
                Log.d("visha_WhatsAppDownloadFragment", "flushLoadedItems: found " + arrayListC.size() + " image files in WhatsApp directory");
            }
            if (!arrayList.isEmpty()) {
                final s74 s74Var = new s74() {
                    @Override
                    public final Object invoke(Object obj, Object obj2) {
                        return Integer.valueOf(WhatsAppDownloadFragment.N2((MediaItem) obj, (MediaItem) obj2));
                    }
                };
                c81.B(arrayList, new Comparator() {
                    @Override
                    public final int compare(Object obj, Object obj2) {
                        return WhatsAppDownloadFragment.O2(s74Var, obj, obj2);
                    }
                });
            }
            aVar.a().U(oa1.e());
            Log.i("visha_WhatsAppDownloadFragment", "flushLoadedItems: total found " + arrayList.size() + " media files in WhatsApp directory");
        } catch (Exception e2) {
            Log.e("visha_WhatsAppDownloadFragment", "flushLoadedItems error: " + e2.getMessage());
        }
        return arrayList;
    }

    public final void Y2() {
        BucketDateAdapter bucketDateAdapter = this.t;
        if (bucketDateAdapter != null) {
            bucketDateAdapter.setOnItemClickListener(new c());
        }
        BucketDateAdapter bucketDateAdapter2 = this.t;
        if (bucketDateAdapter2 != null) {
            bucketDateAdapter2.setOnItemLongClickListener(new BaseQuickAdapter.OnItemLongClickListener() {
                @Override
                public final boolean onItemLongClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                    return WhatsAppDownloadFragment.Z2(this.a, baseQuickAdapter, view, i);
                }
            });
        }
        BucketDateAdapter bucketDateAdapter3 = this.t;
        if (bucketDateAdapter3 != null) {
            bucketDateAdapter3.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() {
                @Override
                public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                    WhatsAppDownloadFragment.a3(this.a, baseQuickAdapter, view, i);
                }
            });
        }
        BucketDateAdapter bucketDateAdapter4 = this.t;
        if (bucketDateAdapter4 != null) {
            bucketDateAdapter4.setOnSelectListener(this);
        }
    }

    @Override
    public void d(boolean isChecked) {
        super.d(isChecked);
        if (isChecked) {
            J2();
        }
    }

    @Override
    public void didReceivedNotification(int eventId, Object... args) {
        BucketDateAdapter bucketDateAdapter;
        y45.j(args, "args");
        super.didReceivedNotification(eventId, Arrays.copyOf(args, args.length));
        if (getActivity() == null) {
            return;
        }
        if (eventId == 1028) {
            BucketDateAdapter bucketDateAdapter2 = this.t;
            if (bucketDateAdapter2 != null) {
                bucketDateAdapter2.notifyItemRangeChanged(0, bucketDateAdapter2 != null ? bucketDateAdapter2.getItemCount() : 0);
                return;
            }
            return;
        }
        if (eventId != 1052) {
            if (eventId == 1055 && (bucketDateAdapter = this.t) != null) {
                bucketDateAdapter.notifyDataSetChanged();
                return;
            }
            return;
        }
        BucketDateAdapter bucketDateAdapter3 = this.t;
        if (bucketDateAdapter3 != null) {
            Object obj = args[0];
            y45.h(obj, "null cannot be cast to non-null type kotlin.Int");
            bucketDateAdapter3.notifyItemChanged(((Integer) obj).intValue());
        }
        HashMap map = new HashMap();
        map.put("from", Integer.valueOf(this.s));
        map.put("type", "video");
        Object obj2 = args[1];
        y45.h(obj2, "null cannot be cast to non-null type kotlin.Boolean");
        map.put("status", Integer.valueOf(1 ^ (((Boolean) obj2).booleanValue() ? 1 : 0)));
        p06.b0("vd_vmore_favorite_cl", map);
    }

    @Override
    public void editMode(final boolean enter) {
        BucketDateAdapter bucketDateAdapter;
        this.isInEditMode = enter;
        if (enter && (bucketDateAdapter = this.t) != null) {
            bucketDateAdapter.R(false);
        }
        BucketDateAdapter bucketDateAdapter2 = this.t;
        if (bucketDateAdapter2 != null) {
            bucketDateAdapter2.X(!enter ? this.s : 4);
        }
        BucketDateAdapter bucketDateAdapter3 = this.t;
        if (bucketDateAdapter3 != null) {
            bucketDateAdapter3.notifyDataSetChanged();
        }
        CheckBox checkBox = this.mAllCheckBox;
        if (checkBox != null) {
            checkBox.setVisibility(enter ? 0 : 8);
        }
        CheckBox checkBox2 = this.mAllCheckBox;
        if (checkBox2 != null) {
            checkBox2.setChecked(false);
        }
        View view = this.mSettingIv;
        if (view != null) {
            view.setVisibility(enter ? 8 : 0);
        }
        updateBackIcon(enter);
        TextView textView = this.mTitleTv;
        if (textView != null) {
            if (enter) {
                textView.setText(getString(com.transsion.sniffer_load.R.string.none_select));
            } else {
                textView.setText(getString(com.transsion.sniffer_load.R.string.visha_whats_app_download_manager));
            }
        }
        if (enter) {
            View view2 = this.l;
            if (view2 != null) {
                y45.g(view2);
                L1(view2);
            }
        } else {
            O1();
        }
        FragmentActivity activity = getActivity();
        if (activity != null) {
            activity.runOnUiThread(new Runnable() {
                @Override
                public final void run() {
                    WhatsAppDownloadFragment.K2(this.b, enter);
                }
            });
        }
    }

    @Override
    public void inflateOperationBar() {
        View view;
        ViewStub viewStub;
        if (this.v != null || (view = this.l) == null) {
            return;
        }
        View viewInflate = (view == null || (viewStub = (ViewStub) view.findViewById(com.transsion.magicvideo.R.id.bottom_action_bar)) == null) ? null : viewStub.inflate();
        AppFootActionBar appFootActionBar = viewInflate instanceof AppFootActionBar ? (AppFootActionBar) viewInflate : null;
        this.v = appFootActionBar;
        if (appFootActionBar != null) {
            appFootActionBar.setListFlag(this.s);
        }
        AppFootActionBar appFootActionBar2 = this.v;
        if (appFootActionBar2 != null) {
            appFootActionBar2.setOnFootOptBarClickListener(new b());
        }
        AppFootActionBar appFootActionBar3 = this.v;
        if (appFootActionBar3 != null) {
            appFootActionBar3.setOperateFinishListener(new AppFootActionBar.c() {
                @Override
                public final void finish() {
                    WhatsAppDownloadFragment.X2(this.a);
                }
            });
        }
        applyEditFootBarBottomInset(this.v);
    }

    @Override
    public void initEvents() {
        super.initEvents();
        this.mEvents.add(Integer.valueOf(AnalyticsListener.EVENT_PLAYER_RELEASED));
        this.mEvents.add(1052);
        this.mEvents.add(1055);
    }

    @Override
    public void initTitleBar(View view) {
        y45.j(view, "view");
        this.mBackView = view.findViewById(com.transsion.sniffer_load.R.id.title_bar_back);
        TextView textView = (TextView) view.findViewById(com.transsion.sniffer_load.R.id.title_bar_title);
        this.mTitleTv = textView;
        textView.setText(getString(com.transsion.sniffer_load.R.string.visha_whats_app_download_manager));
        this.mAllCheckBox = (CheckBox) view.findViewById(com.transsion.sniffer_load.R.id.title_bar_checkBox);
        View view2 = this.mBackView;
        if (view2 != null) {
            view2.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view3) {
                    WhatsAppDownloadFragment.b3(this.b, view3);
                }
            });
        }
        View viewFindViewById = view.findViewById(com.transsion.sniffer_load.R.id.iv_setting);
        this.mSettingIv = viewFindViewById;
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view3) {
                    WhatsAppDownloadFragment.c3(this.b, view3);
                }
            });
        }
        View view3 = this.mSettingIv;
        if (view3 != null) {
            view3.setContentDescription(getString(com.transsion.sniffer_load.R.string.talkback_settings));
        }
    }

    public final void k3() {
        Intent intent;
        Bundle extras;
        String string;
        FragmentActivity activity = getActivity();
        String str = "";
        if (activity != null && (intent = activity.getIntent()) != null && (extras = intent.getExtras()) != null && (string = extras.getString("from")) != null) {
            str = string;
        }
        p06.o0("dl_manager_downloaded_show", "from", str);
    }

    @Override
    public void loadData(boolean preload, boolean mediaChange) {
        final BaseActivity baseActivity = this.mActivity;
        if (baseActivity == null) {
            baseActivity = null;
        }
        if (baseActivity == null || baseActivity.isDestroyed()) {
            Log.w("visha_WhatsAppDownloadFragment", "loadWhatsAppData: baseActivity is null or destroyed");
            return;
        }
        mc7 mc7VarG = mc7.K(this).g(baseActivity.bindToLifecycle());
        final e74 e74Var = new e74() {
            @Override
            public final Object invoke(Object obj) {
                return WhatsAppDownloadFragment.d3(this.b, baseActivity, (WhatsAppDownloadFragment) obj);
            }
        };
        mc7 mc7VarM = mc7VarG.L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return WhatsAppDownloadFragment.e3(e74Var, obj);
            }
        }).d0(k29.c()).M(vb.a());
        final e74 e74Var2 = new e74() {
            @Override
            public final Object invoke(Object obj) {
                return WhatsAppDownloadFragment.f3(this.b, (ArrayList) obj);
            }
        };
        zf1 zf1Var = new zf1() {
            @Override
            public final void accept(Object obj) {
                WhatsAppDownloadFragment.g3(e74Var2, obj);
            }
        };
        final e74 e74Var3 = new e74() {
            @Override
            public final Object invoke(Object obj) {
                return WhatsAppDownloadFragment.h3((Throwable) obj);
            }
        };
        mc7VarM.a0(zf1Var, new zf1() {
            @Override
            public final void accept(Object obj) {
                WhatsAppDownloadFragment.i3(e74Var3, obj);
            }
        });
    }

    @Override
    public void markPointScreenTypeChange(BaseConstant.SCREEN_TYPE screenType) {
        y45.j(screenType, "screenType");
        super.markPointScreenTypeChange(screenType);
        if (this.mAttach && this.mIsVisibleToUser && this.mIsParentVisibleToUser) {
            r06.c(screenType, "dl_manager_show");
        }
    }

    @Override
    public void markPointVisiable(boolean isVisibleToUser) {
        super.markPointVisiable(isVisibleToUser);
        if (this.mAttach && this.mIsVisibleToUser && this.mIsParentVisibleToUser) {
            r06.d(this.mScreenType, "dl_manager_downloaded_show");
        }
    }

    public final void n3(MediaItem mediaItem, int position, String action) {
        MutableLiveData mutableLiveDataH;
        Intent intent = new Intent();
        intent.putExtra("data", mediaItem);
        intent.putExtra(SheetDialogParamsConstant.MEDIA_TYPE, mediaItem.type.toString());
        intent.putExtra(SheetDialogParamsConstant.IN_PARAM_LIST_FLAG, this.s);
        VideoPlayListModel videoPlayListModel = this.G;
        List list = (videoPlayListModel == null || (mutableLiveDataH = videoPlayListModel.h()) == null) ? null : (List) mutableLiveDataH.getValue();
        ArrayList arrayList = list instanceof ArrayList ? (ArrayList) list : null;
        intent.putExtra(SheetDialogParamsConstant.IN_PARAM_FROM_LIST_MORE_ICON, true);
        vg9.g(arrayList);
        BaseActivity baseActivity = this.mActivity;
        y45.g(baseActivity);
        intent.setClass(baseActivity, VideoSheetDialogActivity.class);
        this.mActivityResultLauncher.launch(intent);
        FileOperateUtils fileOperateUtils = new FileOperateUtils(getContext(), mediaItem, this.s);
        this.mFileOperateUtils = fileOperateUtils;
        fileOperateUtils.f0(new f(mediaItem, position));
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.s = 35;
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.mIsSupportThemeBg = arguments.getBoolean("support_theme_background", true);
        }
        k3();
        Context context = getContext();
        this.downloadHistoryDao = context != null ? BookmarkDatabase.c(context).b() : null;
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        y45.j(inflater, "inflater");
        View viewInflate = inflater.inflate(com.transsion.sniffer_load.R.layout.fragment_whatsapp_downloaded, container, false);
        this.l = viewInflate;
        return viewInflate;
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        this.l = null;
    }

    @Override
    public void onFragmentScreenTypeChange(BaseConstant.SCREEN_TYPE screenType) {
        y45.j(screenType, "screenType");
        super.onFragmentScreenTypeChange(screenType);
        p3();
    }

    @Override
    public void onItemClick(int index) {
        I2(index);
    }

    @Override
    public void onPause() {
        ContentResolver contentResolver;
        super.onPause();
        Context context = getContext();
        if (context == null || (contentResolver = context.getContentResolver()) == null) {
            return;
        }
        contentResolver.unregisterContentObserver(this.mContentObserver);
    }

    @Override
    public void onResume() {
        ContentResolver contentResolver;
        ContentResolver contentResolver2;
        super.onResume();
        postDelayLoadData();
        Context context = getContext();
        if (context != null && (contentResolver2 = context.getContentResolver()) != null) {
            contentResolver2.registerContentObserver(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, true, this.mContentObserver);
        }
        Context context2 = getContext();
        if (context2 == null || (contentResolver = context2.getContentResolver()) == null) {
            return;
        }
        contentResolver.registerContentObserver(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, true, this.mContentObserver);
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        LiveData liveDataE;
        Resources.Theme theme;
        y45.j(view, "view");
        super.onViewCreated(view, savedInstanceState);
        this.M = (VideoMainRecyclerView) view.findViewById(com.transsion.sniffer_load.R.id.rv_main_fragment);
        this.N = (RecyclerViewFastScroller) view.findViewById(com.transsion.magicvideo.R.id.rv_fast_scroller);
        VideoMainRecyclerView videoMainRecyclerView = this.M;
        if (videoMainRecyclerView != null) {
            videoMainRecyclerView.setType("download");
        }
        this.mTvSizeInfo = (TextView) view.findViewById(com.transsion.sniffer_load.R.id.tv_size_info);
        TypedValue typedValue = new TypedValue();
        BaseActivity baseActivity = this.mActivity;
        if (baseActivity != null && (theme = baseActivity.getTheme()) != null) {
            theme.resolveAttribute(com.transsion.sniffer_load.R.attr.OsBgPrimary, typedValue, true);
        }
        this.mGridLayoutManager = new CustomGridLayoutManager(getContext()) {
            @Override
            public boolean canScrollVertically() {
                return super.canScrollVertically();
            }
        };
        BucketDateAdapter bucketDateAdapter = new BucketDateAdapter(getContext());
        this.t = bucketDateAdapter;
        bucketDateAdapter.X(2);
        VideoMainRecyclerView videoMainRecyclerView2 = this.M;
        if (videoMainRecyclerView2 != null) {
            videoMainRecyclerView2.setAdapter(this.t);
        }
        VideoMainRecyclerView videoMainRecyclerView3 = this.M;
        if (videoMainRecyclerView3 != null) {
            videoMainRecyclerView3.setLayoutManager(this.mGridLayoutManager);
        }
        initTitleBar(view);
        Y2();
        VideoMainRecyclerView videoMainRecyclerView4 = this.M;
        if (videoMainRecyclerView4 != null) {
            OverScrollDecorHelper.setUpOverScroll(videoMainRecyclerView4, 0);
        }
        VideoPlayListModel videoPlayListModel = (VideoPlayListModel) getViewModelByFragment(VideoPlayListModel.class);
        this.videoPlayListModel = videoPlayListModel;
        if (videoPlayListModel != null && (liveDataE = videoPlayListModel.e()) != null) {
            liveDataE.observe(getViewLifecycleOwner(), new e(new e74() {
                @Override
                public final Object invoke(Object obj) {
                    return WhatsAppDownloadFragment.l3(this.b, (List) obj);
                }
            }));
        }
        I1();
        LiveEventBus.b().d("video_sheet_dialog_destroy").observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                WhatsAppDownloadFragment.m3(this.a, ((Boolean) obj).booleanValue());
            }
        });
    }

    @Override
    public boolean q1() {
        return false;
    }

    @Override
    public void r1(MediaItem mediaItem, String newPath, boolean retry) {
        postDelayLoadData();
    }

    public final void r3(int id) {
        nz2 nz2Var = this.downloadHistoryDao;
        DownloadHistory downloadHistory = nz2Var != null ? nz2Var.getDownloadHistory(String.valueOf(id)) : null;
        if (downloadHistory == null) {
            ToastUtils.s(com.transsion.sniffer_load.R.string.empty_site);
            Log.e("visha_WhatsAppDownloadFragment", "visitOriginSite but downloadHistory is null");
            return;
        }
        Intent intent = new Intent(this.mContext, (Class<?>) WebActivity.class);
        intent.putExtra(VkConstant.URL, downloadHistory.originSite);
        intent.putExtra("need_new_web", false);
        intent.putExtra("web_url_from", "originsite");
        f5.c(intent, this.mContext);
        hb0.markTrackTwo("dl_manager_downloaded_vmore_ogsite_cl", hb0.KEY_NAME_MAINURL, downloadHistory.originSite, "video_url", downloadHistory.videoSite);
    }

    @Override
    public void setUserVisibleHint(boolean isVisibleToUser) {
        super.setUserVisibleHint(isVisibleToUser);
        if (!isVisibleToUser || getActivity() == null) {
            return;
        }
        k3();
    }
}
