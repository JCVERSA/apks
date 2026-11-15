package com.transsion.mimedia.fragment;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.Button;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.p004lifecycle.Observer;
import androidx.p004lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.arouter.launcher.ARouter;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.dbdata.beans.VishaPalmUserInfo;
import com.transsion.dbdata.beans.mimedia.MIMediaDataUtils;
import com.transsion.dbdata.beans.mimedia.MIMediaLibraryCollectAdd;
import com.transsion.dbdata.beans.mimedia.MIMediaLibraryCollectCancel;
import com.transsion.dbdata.beans.mimedia.MIMediaLibraryData;
import com.transsion.dbdata.beans.mimedia.MIMediaVideoData;
import com.transsion.eventbus.LiveEventBus;
import com.transsion.magicvideo.activities.VideoPlayerActivityInner;
import com.transsion.mimedia.R;
import com.transsion.mimedia.activity.CloudLoginActivity;
import com.transsion.mimedia.activity.MediaVideoMoreActivity;
import com.transsion.mimedia.adapter.MediaLibraryVideoAdapter;
import com.transsion.mimedia.databinding.FragementMediaLibraryVideoBinding;
import com.transsion.mimedia.fragment.MediaLibraryVideoFragment;
import com.transsion.mimedia.viewmodel.MediaLibraryVideoViewModel;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.arouter.VishaRouterTable;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.utils.ToastUtils;
import com.transsion.widgets.CustomSwipeRefreshLayout;
import com.transsion.widgetslib.dialog.d;
import defpackage.az5;
import defpackage.e74;
import defpackage.e84;
import defpackage.el0;
import defpackage.f5;
import defpackage.ha1;
import defpackage.if7;
import defpackage.mc2;
import defpackage.mo1;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s21;
import defpackage.s74;
import defpackage.v6a;
import defpackage.vz5;
import defpackage.wh1;
import defpackage.x74;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import java.io.Serializable;
import java.util.Collection;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.DelayKt;

@Metadata(d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 a2\u00020\u0001:\u0001bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\u0003J\u0017\u0010\n\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\n\u0010\bJ\u000f\u0010\u000b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000b\u0010\u0003J\u0017\u0010\u000e\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0014\u0010\u0003J\u000f\u0010\u0015\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0015\u0010\u0003J\u000f\u0010\u0016\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0016\u0010\u0003J\u000f\u0010\u0017\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0017\u0010\u0003J\u000f\u0010\u0018\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0018\u0010\u0003J\u0019\u0010\u001b\u001a\u00020\u00062\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ-\u0010!\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u001e\u001a\u00020\u001d2\b\u0010 \u001a\u0004\u0018\u00010\u001f2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016¢\u0006\u0004\b!\u0010\"J!\u0010#\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016¢\u0006\u0004\b#\u0010$J\u0019\u0010'\u001a\u00020\u00062\b\u0010&\u001a\u0004\u0018\u00010%H\u0014¢\u0006\u0004\b'\u0010(J\u0019\u0010)\u001a\u00020\u00062\b\u0010&\u001a\u0004\u0018\u00010%H\u0014¢\u0006\u0004\b)\u0010(J\r\u0010*\u001a\u00020\u0006¢\u0006\u0004\b*\u0010\u0003J\u0017\u0010,\u001a\u00020\u00062\u0006\u0010+\u001a\u00020\u0019H\u0016¢\u0006\u0004\b,\u0010\u001cJ\u000f\u0010-\u001a\u00020\u0006H\u0016¢\u0006\u0004\b-\u0010\u0003R\u0016\u00101\u001a\u00020.8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b/\u00100R\u0016\u00105\u001a\u0002028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R\u0016\u00107\u001a\u0002028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00104R\u0016\u0010:\u001a\u00020\u00048\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b8\u00109R\u0016\u0010>\u001a\u00020;8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b<\u0010=R\u0018\u0010B\u001a\u0004\u0018\u00010?8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u0010AR\u0016\u0010E\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010DR\u0016\u0010G\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010DR\u0016\u0010J\u001a\u00020\f8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bH\u0010IR\u0016\u0010N\u001a\u00020K8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bL\u0010MR\u0016\u0010P\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u0010DR\u0018\u0010R\u001a\u0004\u0018\u00010?8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bQ\u0010AR\u0018\u0010T\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bS\u00109R\u0016\u0010V\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bU\u0010DR\u0016\u0010X\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bW\u0010DR\u0016\u0010\\\u001a\u00020Y8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bZ\u0010[R\u0014\u0010`\u001a\u00020]8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b^\u0010_¨\u0006c"}, d2 = {"Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment;", "Lcom/transsion/playercommon/fragments/BaseFragment;", MethodDecl.initName, "()V", "Landroid/view/View;", "view", "Lzfb;", "initTitleBar", "(Landroid/view/View;)V", "B0", "initView", "w0", "Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;", "pageData", "p0", "(Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;)V", "", "isNoNet", "G0", "(Z)V", "D0", "m0", "I0", "n0", "o0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", TtmlNode.RUBY_CONTAINER, "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Lcom/transsion/dbdata/beans/VishaPalmUserInfo;", "vishaPalmUserInfo", "onUserLogin", "(Lcom/transsion/dbdata/beans/VishaPalmUserInfo;)V", "onUserReLogin", "C0", "outState", "onSaveInstanceState", "onDestroy", "Lcom/transsion/mimedia/databinding/FragementMediaLibraryVideoBinding;", CmcdData.STREAM_TYPE_LIVE, "Lcom/transsion/mimedia/databinding/FragementMediaLibraryVideoBinding;", "mBinding", "", CmcdData.OBJECT_TYPE_MANIFEST, "Ljava/lang/String;", "mMediaLibraryId", "n", "mMediaLibraryName", "o", "Landroid/view/View;", "mMenuMore", "Lcom/transsion/mimedia/adapter/MediaLibraryVideoAdapter;", TtmlNode.TAG_P, "Lcom/transsion/mimedia/adapter/MediaLibraryVideoAdapter;", "mAdapter", "Lcom/transsion/widgetslib/dialog/d;", "q", "Lcom/transsion/widgetslib/dialog/d;", "mNumMaxTipDlg", "r", "Z", "mIsFromCollectListPage", "s", "mIsMediaLibrayCollect", "t", "Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;", "mMIMediaLibraryData", "Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel;", "u", "Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel;", "mViewModelList", "v", "mIsOperateCollectCancel", "w", "mViolationDialog", "x", "mNetErrorView", "y", "mIsMarkShow", "z", "mIsLoginChanged", "", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "I", "mEntryPageFrom", "Lnk1;", "B", "Lnk1;", "activityScope", "C", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "mimedia_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MediaLibraryVideoFragment extends BaseFragment {

    public static final Companion INSTANCE = new Companion(null);

    public int mEntryPageFrom;

    public FragementMediaLibraryVideoBinding mBinding;

    public View mMenuMore;

    public MediaLibraryVideoAdapter mAdapter;

    public d mNumMaxTipDlg;

    public boolean mIsFromCollectListPage;

    public boolean mIsMediaLibrayCollect;

    public MIMediaLibraryData mMIMediaLibraryData;

    public MediaLibraryVideoViewModel mViewModelList;

    public boolean mIsOperateCollectCancel;

    public d mViolationDialog;

    public View mNetErrorView;

    public boolean mIsMarkShow;

    public boolean mIsLoginChanged;

    public String mMediaLibraryId = "";

    public String mMediaLibraryName = "";

    public final nk1 activityScope = kotlinx.coroutines.d.a(v6a.b(null, 1, null).plus(mc2.c()));

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final MediaLibraryVideoFragment a(Bundle bundle) {
            MediaLibraryVideoFragment mediaLibraryVideoFragment = new MediaLibraryVideoFragment();
            mediaLibraryVideoFragment.setArguments(bundle);
            return mediaLibraryVideoFragment;
        }

        public Companion() {
        }
    }

    public static final class b extends if7 {
        public b() {
        }

        @Override
        public void OnNoDoubleItemClickListener(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            MIMediaLibraryData mIMediaLibraryData;
            MIMediaDataUtils.Companion companion = MIMediaDataUtils.INSTANCE;
            MIMediaLibraryData mIMediaLibraryData2 = MediaLibraryVideoFragment.this.mMIMediaLibraryData;
            MIMediaLibraryData mIMediaLibraryData3 = null;
            if (mIMediaLibraryData2 == null) {
                y45.B("mMIMediaLibraryData");
                mIMediaLibraryData2 = null;
            }
            if (companion.isMediaLibraryHadRemoved(mIMediaLibraryData2)) {
                MediaLibraryVideoFragment.this.I0();
                return;
            }
            MediaLibraryVideoAdapter mediaLibraryVideoAdapter = MediaLibraryVideoFragment.this.mAdapter;
            if (mediaLibraryVideoAdapter == null) {
                y45.B("mAdapter");
                mediaLibraryVideoAdapter = null;
            }
            List<MIMediaVideoData> data = mediaLibraryVideoAdapter.getData();
            y45.i(data, "getData(...)");
            s21.a aVar = s21.b;
            MIMediaLibraryData mIMediaLibraryData4 = MediaLibraryVideoFragment.this.mMIMediaLibraryData;
            if (mIMediaLibraryData4 == null) {
                y45.B("mMIMediaLibraryData");
                mIMediaLibraryData = null;
            } else {
                mIMediaLibraryData = mIMediaLibraryData4;
            }
            aVar.c(MIMediaLibraryData.copy$default(mIMediaLibraryData, null, null, false, null, null, 0, null, 127, null));
            aVar.d(data);
            MIMediaVideoData mIMediaVideoData = data.get(i);
            Log.d("MediaLibraryVideoFragment", "video item click: " + mIMediaVideoData);
            MIMediaLibraryData mIMediaLibraryData5 = MediaLibraryVideoFragment.this.mMIMediaLibraryData;
            if (mIMediaLibraryData5 == null) {
                y45.B("mMIMediaLibraryData");
            } else {
                mIMediaLibraryData3 = mIMediaLibraryData5;
            }
            VideoPlayerActivityInner.F2(((BaseFragment) MediaLibraryVideoFragment.this).mContext, companion.mediaVideoToPlayVideoData(mIMediaLibraryData3, mIMediaVideoData, 1005));
            az5.a.K(MediaLibraryVideoFragment.this.mMediaLibraryId, MediaLibraryVideoFragment.this.mMediaLibraryName, mIMediaVideoData.getSourceId(), mIMediaVideoData.getTitle(), mIMediaVideoData.getSourceId(), mIMediaVideoData.getTitle());
        }
    }

    public static final class c implements Observer, e84 {
        public final e74 a;

        public c(e74 e74Var) {
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

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
    @nt1(c = "com.transsion.mimedia.fragment.MediaLibraryVideoFragment$onUserLogin$1", f = "MediaLibraryVideoFragment.kt", l = {500}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends SuspendLambda implements s74 {
        int label;

        public AnonymousClass1(wh1<? super AnonymousClass1> wh1Var) {
            super(2, wh1Var);
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return MediaLibraryVideoFragment.this.new AnonymousClass1(wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((AnonymousClass1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.label;
            if (i == 0) {
                kotlin.c.b(obj);
                FragementMediaLibraryVideoBinding fragementMediaLibraryVideoBinding = MediaLibraryVideoFragment.this.mBinding;
                if (fragementMediaLibraryVideoBinding == null) {
                    y45.B("mBinding");
                    fragementMediaLibraryVideoBinding = null;
                }
                Button button = fragementMediaLibraryVideoBinding.c;
                if (button != null) {
                    button.setEnabled(false);
                }
                this.label = 1;
                if (DelayKt.b(500L, this) == objF) {
                    return objF;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.c.b(obj);
            }
            MediaLibraryVideoFragment.this.C0();
            return zfb.a;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
    @nt1(c = "com.transsion.mimedia.fragment.MediaLibraryVideoFragment$onUserReLogin$1", f = "MediaLibraryVideoFragment.kt", l = {512}, m = "invokeSuspend")
    public static final class C23761 extends SuspendLambda implements s74 {
        int label;

        public C23761(wh1<? super C23761> wh1Var) {
            super(2, wh1Var);
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return MediaLibraryVideoFragment.this.new C23761(wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((C23761) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.label;
            if (i == 0) {
                kotlin.c.b(obj);
                FragementMediaLibraryVideoBinding fragementMediaLibraryVideoBinding = MediaLibraryVideoFragment.this.mBinding;
                if (fragementMediaLibraryVideoBinding == null) {
                    y45.B("mBinding");
                    fragementMediaLibraryVideoBinding = null;
                }
                Button button = fragementMediaLibraryVideoBinding.c;
                if (button != null) {
                    button.setEnabled(false);
                }
                this.label = 1;
                if (DelayKt.b(500L, this) == objF) {
                    return objF;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.c.b(obj);
            }
            MediaLibraryVideoFragment.this.C0();
            return zfb.a;
        }
    }

    public static final zfb A0(MediaLibraryVideoFragment mediaLibraryVideoFragment, MIMediaLibraryCollectCancel mIMediaLibraryCollectCancel) {
        if (mIMediaLibraryCollectCancel != null && mIMediaLibraryCollectCancel.getRet()) {
            mediaLibraryVideoFragment.mIsOperateCollectCancel = true;
            ToastUtils.s(R.string.visha_removed_from_cloud);
            mediaLibraryVideoFragment.mIsMediaLibrayCollect = false;
            MIMediaLibraryData mIMediaLibraryData = mediaLibraryVideoFragment.mMIMediaLibraryData;
            FragementMediaLibraryVideoBinding fragementMediaLibraryVideoBinding = null;
            if (mIMediaLibraryData == null) {
                y45.B("mMIMediaLibraryData");
                mIMediaLibraryData = null;
            }
            mIMediaLibraryData.setMediaLibraryCollectFlag(false);
            FragementMediaLibraryVideoBinding fragementMediaLibraryVideoBinding2 = mediaLibraryVideoFragment.mBinding;
            if (fragementMediaLibraryVideoBinding2 == null) {
                y45.B("mBinding");
            } else {
                fragementMediaLibraryVideoBinding = fragementMediaLibraryVideoBinding2;
            }
            fragementMediaLibraryVideoBinding.c.setText(R.string.visha_save_to_cloud);
        } else if (MainApp.w == 0) {
            ToastUtils.s(R.string.net_not_connect);
        } else {
            ToastUtils.s(R.string.operation_fail);
        }
        return zfb.a;
    }

    private final void B0() {
        if (MainApp.w == 0) {
            G0(true);
            return;
        }
        MediaLibraryVideoViewModel mediaLibraryVideoViewModel = this.mViewModelList;
        if (mediaLibraryVideoViewModel == null) {
            y45.B("mViewModelList");
            mediaLibraryVideoViewModel = null;
        }
        MediaLibraryVideoViewModel.k(mediaLibraryVideoViewModel, this.mMediaLibraryId, 0, 2, null);
    }

    public static final void E0(MediaLibraryVideoFragment mediaLibraryVideoFragment, DialogInterface dialogInterface, int i) {
        mediaLibraryVideoFragment.mNumMaxTipDlg = null;
        if (mediaLibraryVideoFragment.mIsFromCollectListPage) {
            BaseActivity baseActivity = mediaLibraryVideoFragment.mActivity;
            if (baseActivity != null) {
                baseActivity.finish();
                return;
            }
            return;
        }
        ARouter.getInstance().build(VishaRouterTable.PATH_PAGE_ACTIVITY_MEDIA_LIBRARY_LIST).navigation();
        BaseActivity baseActivity2 = mediaLibraryVideoFragment.mActivity;
        if (baseActivity2 != null) {
            baseActivity2.finish();
        }
    }

    public static final void F0(MediaLibraryVideoFragment mediaLibraryVideoFragment, DialogInterface dialogInterface, int i) {
        mediaLibraryVideoFragment.mNumMaxTipDlg = null;
    }

    public static final void H0(MediaLibraryVideoFragment mediaLibraryVideoFragment, View view) {
        if (MainApp.w == 0) {
            ToastUtils.s(R.string.no_network_connect);
            f5.c(new Intent("android.settings.SETTINGS"), mediaLibraryVideoFragment.mContext);
            return;
        }
        MediaLibraryVideoViewModel mediaLibraryVideoViewModel = mediaLibraryVideoFragment.mViewModelList;
        if (mediaLibraryVideoViewModel == null) {
            y45.B("mViewModelList");
            mediaLibraryVideoViewModel = null;
        }
        mediaLibraryVideoViewModel.m(1);
        MediaLibraryVideoViewModel mediaLibraryVideoViewModel2 = mediaLibraryVideoFragment.mViewModelList;
        if (mediaLibraryVideoViewModel2 == null) {
            y45.B("mViewModelList");
            mediaLibraryVideoViewModel2 = null;
        }
        MediaLibraryVideoViewModel.k(mediaLibraryVideoViewModel2, mediaLibraryVideoFragment.mMediaLibraryId, 0, 2, null);
    }

    public final void I0() {
        try {
            d dVar = this.mViolationDialog;
            if (dVar != null && dVar.isShowing()) {
                Log.d("MediaLibraryVideoFragment", "Violation dialog is already showing");
                return;
            }
            if (this.mIsMediaLibrayCollect) {
                this.mViolationDialog = new d.a(this.mContext).A(R.string.visha_violation_notification).j(R.string.visha_illegal_removal_propmts01).m(R.string.visha_quit, new DialogInterface.OnClickListener() {
                    @Override
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        MediaLibraryVideoFragment.J0(this.b, dialogInterface, i);
                    }
                }).u(R.string.visha_remove_from_cloud, new DialogInterface.OnClickListener() {
                    @Override
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        MediaLibraryVideoFragment.K0(this.b, dialogInterface, i);
                    }
                }).e(false).a();
            } else {
                this.mViolationDialog = new d.a(this.mContext).A(R.string.visha_violation_notification).j(R.string.visha_illegal_removal_propmts01).m(R.string.visha_quit, new DialogInterface.OnClickListener() {
                    @Override
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        MediaLibraryVideoFragment.L0(this.b, dialogInterface, i);
                    }
                }).e(false).a();
            }
            d dVar2 = this.mViolationDialog;
            if (dVar2 != null) {
                dVar2.show();
            }
            Log.i("MediaLibraryVideoFragment", "Violation notice dialog shown successfully");
        } catch (Exception e) {
            Log.e("MediaLibraryVideoFragment", "Failed to show violation notice dialog: " + e.getMessage());
        }
    }

    public static final void J0(MediaLibraryVideoFragment mediaLibraryVideoFragment, DialogInterface dialogInterface, int i) {
        Log.i("MediaLibraryVideoFragment", "User clicked exit button in violation dialog");
        mediaLibraryVideoFragment.n0();
        BaseActivity baseActivity = mediaLibraryVideoFragment.mActivity;
        if (baseActivity != null) {
            baseActivity.finish();
        }
    }

    public static final void K0(MediaLibraryVideoFragment mediaLibraryVideoFragment, DialogInterface dialogInterface, int i) {
        Log.i("MediaLibraryVideoFragment", "User clicked remove from cloud button in violation dialog");
        mediaLibraryVideoFragment.n0();
        mediaLibraryVideoFragment.o0();
    }

    public static final void L0(MediaLibraryVideoFragment mediaLibraryVideoFragment, DialogInterface dialogInterface, int i) {
        Log.i("MediaLibraryVideoFragment", "User clicked exit button in violation dialog");
        mediaLibraryVideoFragment.n0();
        BaseActivity baseActivity = mediaLibraryVideoFragment.mActivity;
        if (baseActivity != null) {
            baseActivity.finish();
        }
    }

    private final void initTitleBar(View view) {
        view.findViewById(R.id.title_bar_back).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                MediaLibraryVideoFragment.s0(this.b, view2);
            }
        });
        this.mMenuMore = view.findViewById(R.id.menu_more);
    }

    private final void initView(View view) {
        initTitleBar(view);
        FragementMediaLibraryVideoBinding fragementMediaLibraryVideoBinding = this.mBinding;
        MediaLibraryVideoAdapter mediaLibraryVideoAdapter = null;
        if (fragementMediaLibraryVideoBinding == null) {
            y45.B("mBinding");
            fragementMediaLibraryVideoBinding = null;
        }
        fragementMediaLibraryVideoBinding.h.setOnRefreshListener(new CustomSwipeRefreshLayout.OnRefreshListener() {
            @Override
            public final void onRefresh() {
                MediaLibraryVideoFragment.t0(this.a);
            }
        });
        this.mAdapter = new MediaLibraryVideoAdapter();
        FragementMediaLibraryVideoBinding fragementMediaLibraryVideoBinding2 = this.mBinding;
        if (fragementMediaLibraryVideoBinding2 == null) {
            y45.B("mBinding");
            fragementMediaLibraryVideoBinding2 = null;
        }
        RecyclerView recyclerView = fragementMediaLibraryVideoBinding2.i;
        MediaLibraryVideoAdapter mediaLibraryVideoAdapter2 = this.mAdapter;
        if (mediaLibraryVideoAdapter2 == null) {
            y45.B("mAdapter");
            mediaLibraryVideoAdapter2 = null;
        }
        recyclerView.setAdapter(mediaLibraryVideoAdapter2);
        MediaLibraryVideoAdapter mediaLibraryVideoAdapter3 = this.mAdapter;
        if (mediaLibraryVideoAdapter3 == null) {
            y45.B("mAdapter");
            mediaLibraryVideoAdapter3 = null;
        }
        mediaLibraryVideoAdapter3.setPreLoadNumber(1);
        if (getActivity() != null) {
            MediaLibraryVideoAdapter mediaLibraryVideoAdapter4 = this.mAdapter;
            if (mediaLibraryVideoAdapter4 == null) {
                y45.B("mAdapter");
                mediaLibraryVideoAdapter4 = null;
            }
            mediaLibraryVideoAdapter4.setLoadMoreView(new mo1(getActivity()).a(Boolean.FALSE));
        }
        MediaLibraryVideoAdapter mediaLibraryVideoAdapter5 = this.mAdapter;
        if (mediaLibraryVideoAdapter5 == null) {
            y45.B("mAdapter");
            mediaLibraryVideoAdapter5 = null;
        }
        FragementMediaLibraryVideoBinding fragementMediaLibraryVideoBinding3 = this.mBinding;
        if (fragementMediaLibraryVideoBinding3 == null) {
            y45.B("mBinding");
            fragementMediaLibraryVideoBinding3 = null;
        }
        mediaLibraryVideoAdapter5.disableLoadMoreIfNotFullPage(fragementMediaLibraryVideoBinding3.i);
        MediaLibraryVideoAdapter mediaLibraryVideoAdapter6 = this.mAdapter;
        if (mediaLibraryVideoAdapter6 == null) {
            y45.B("mAdapter");
            mediaLibraryVideoAdapter6 = null;
        }
        BaseQuickAdapter.RequestLoadMoreListener requestLoadMoreListener = new BaseQuickAdapter.RequestLoadMoreListener() {
            @Override
            public final void onLoadMoreRequested() {
                MediaLibraryVideoFragment.v0(this.a);
            }
        };
        FragementMediaLibraryVideoBinding fragementMediaLibraryVideoBinding4 = this.mBinding;
        if (fragementMediaLibraryVideoBinding4 == null) {
            y45.B("mBinding");
            fragementMediaLibraryVideoBinding4 = null;
        }
        mediaLibraryVideoAdapter6.setOnLoadMoreListener(requestLoadMoreListener, fragementMediaLibraryVideoBinding4.i);
        MediaLibraryVideoAdapter mediaLibraryVideoAdapter7 = this.mAdapter;
        if (mediaLibraryVideoAdapter7 == null) {
            y45.B("mAdapter");
        } else {
            mediaLibraryVideoAdapter = mediaLibraryVideoAdapter7;
        }
        mediaLibraryVideoAdapter.setOnItemClickListener(new b());
    }

    private final void n0() {
        try {
            d dVar = this.mViolationDialog;
            if (dVar != null && dVar.isShowing()) {
                d dVar2 = this.mViolationDialog;
                if (dVar2 != null) {
                    dVar2.dismiss();
                }
                Log.d("MediaLibraryVideoFragment", "Violation dialog dismissed");
            }
            this.mViolationDialog = null;
        } catch (Exception e) {
            Log.e("MediaLibraryVideoFragment", "Failed to dismiss violation dialog: " + e.getMessage());
        }
    }

    public static final void q0(MIMediaLibraryData mIMediaLibraryData, MediaLibraryVideoFragment mediaLibraryVideoFragment, View view) {
        Log.i("MediaLibraryVideoFragment", "点击收藏: " + mIMediaLibraryData.getMediaLibraryCollectFlag() + " ");
        if (!MainApp.p()) {
            ToastUtils.s(R.string.no_network);
            return;
        }
        if (!com.transsion.palmsdk.b.s()) {
            CloudLoginActivity.INSTANCE.a(mediaLibraryVideoFragment.mContext);
            return;
        }
        MIMediaLibraryData mIMediaLibraryData2 = null;
        if (mediaLibraryVideoFragment.mIsMediaLibrayCollect) {
            MediaLibraryVideoViewModel mediaLibraryVideoViewModel = mediaLibraryVideoFragment.mViewModelList;
            if (mediaLibraryVideoViewModel == null) {
                y45.B("mViewModelList");
                mediaLibraryVideoViewModel = null;
            }
            mediaLibraryVideoViewModel.b(mediaLibraryVideoFragment.mMediaLibraryId);
            az5.a aVar = az5.a;
            String str = mediaLibraryVideoFragment.mMediaLibraryId;
            String str2 = mediaLibraryVideoFragment.mMediaLibraryName;
            MIMediaLibraryData mIMediaLibraryData3 = mediaLibraryVideoFragment.mMIMediaLibraryData;
            if (mIMediaLibraryData3 == null) {
                y45.B("mMIMediaLibraryData");
                mIMediaLibraryData3 = null;
            }
            String virtualPersonName = mIMediaLibraryData3.getVirtualPersonName();
            MIMediaLibraryData mIMediaLibraryData4 = mediaLibraryVideoFragment.mMIMediaLibraryData;
            if (mIMediaLibraryData4 == null) {
                y45.B("mMIMediaLibraryData");
            } else {
                mIMediaLibraryData2 = mIMediaLibraryData4;
            }
            aVar.G(str, str2, virtualPersonName, mIMediaLibraryData2.getVirtualPersonPhoto());
            return;
        }
        MediaLibraryVideoViewModel mediaLibraryVideoViewModel2 = mediaLibraryVideoFragment.mViewModelList;
        if (mediaLibraryVideoViewModel2 == null) {
            y45.B("mViewModelList");
            mediaLibraryVideoViewModel2 = null;
        }
        mediaLibraryVideoViewModel2.a(mIMediaLibraryData);
        az5.a aVar2 = az5.a;
        String str3 = mediaLibraryVideoFragment.mMediaLibraryId;
        String str4 = mediaLibraryVideoFragment.mMediaLibraryName;
        MIMediaLibraryData mIMediaLibraryData5 = mediaLibraryVideoFragment.mMIMediaLibraryData;
        if (mIMediaLibraryData5 == null) {
            y45.B("mMIMediaLibraryData");
            mIMediaLibraryData5 = null;
        }
        String virtualPersonName2 = mIMediaLibraryData5.getVirtualPersonName();
        MIMediaLibraryData mIMediaLibraryData6 = mediaLibraryVideoFragment.mMIMediaLibraryData;
        if (mIMediaLibraryData6 == null) {
            y45.B("mMIMediaLibraryData");
        } else {
            mIMediaLibraryData2 = mIMediaLibraryData6;
        }
        aVar2.F(str3, str4, virtualPersonName2, mIMediaLibraryData2.getVirtualPersonPhoto());
    }

    public static final void r0(MediaLibraryVideoFragment mediaLibraryVideoFragment, View view) {
        MediaVideoMoreActivity.Companion companion = MediaVideoMoreActivity.INSTANCE;
        Context context = mediaLibraryVideoFragment.mContext;
        y45.i(context, "mContext");
        String str = mediaLibraryVideoFragment.mMediaLibraryId;
        String str2 = mediaLibraryVideoFragment.mMediaLibraryName;
        MIMediaLibraryData mIMediaLibraryData = mediaLibraryVideoFragment.mMIMediaLibraryData;
        MIMediaLibraryData mIMediaLibraryData2 = null;
        if (mIMediaLibraryData == null) {
            y45.B("mMIMediaLibraryData");
            mIMediaLibraryData = null;
        }
        String virtualPersonName = mIMediaLibraryData.getVirtualPersonName();
        MIMediaLibraryData mIMediaLibraryData3 = mediaLibraryVideoFragment.mMIMediaLibraryData;
        if (mIMediaLibraryData3 == null) {
            y45.B("mMIMediaLibraryData");
            mIMediaLibraryData3 = null;
        }
        companion.a(context, str, str2, virtualPersonName, mIMediaLibraryData3.getVirtualPersonPhoto());
        az5.a aVar = az5.a;
        String str3 = mediaLibraryVideoFragment.mMediaLibraryId;
        String str4 = mediaLibraryVideoFragment.mMediaLibraryName;
        MIMediaLibraryData mIMediaLibraryData4 = mediaLibraryVideoFragment.mMIMediaLibraryData;
        if (mIMediaLibraryData4 == null) {
            y45.B("mMIMediaLibraryData");
            mIMediaLibraryData4 = null;
        }
        String virtualPersonName2 = mIMediaLibraryData4.getVirtualPersonName();
        MIMediaLibraryData mIMediaLibraryData5 = mediaLibraryVideoFragment.mMIMediaLibraryData;
        if (mIMediaLibraryData5 == null) {
            y45.B("mMIMediaLibraryData");
        } else {
            mIMediaLibraryData2 = mIMediaLibraryData5;
        }
        aVar.H(str3, str4, virtualPersonName2, mIMediaLibraryData2.getVirtualPersonPhoto());
    }

    public static final void s0(MediaLibraryVideoFragment mediaLibraryVideoFragment, View view) {
        BaseActivity baseActivity = mediaLibraryVideoFragment.mActivity;
        if (baseActivity != null) {
            baseActivity.finish();
        }
    }

    public static final void t0(final MediaLibraryVideoFragment mediaLibraryVideoFragment) {
        MediaLibraryVideoViewModel mediaLibraryVideoViewModel = mediaLibraryVideoFragment.mViewModelList;
        FragementMediaLibraryVideoBinding fragementMediaLibraryVideoBinding = null;
        if (mediaLibraryVideoViewModel == null) {
            y45.B("mViewModelList");
            mediaLibraryVideoViewModel = null;
        }
        mediaLibraryVideoViewModel.m(1);
        MediaLibraryVideoViewModel mediaLibraryVideoViewModel2 = mediaLibraryVideoFragment.mViewModelList;
        if (mediaLibraryVideoViewModel2 == null) {
            y45.B("mViewModelList");
            mediaLibraryVideoViewModel2 = null;
        }
        MediaLibraryVideoViewModel.k(mediaLibraryVideoViewModel2, mediaLibraryVideoFragment.mMediaLibraryId, 0, 2, null);
        FragementMediaLibraryVideoBinding fragementMediaLibraryVideoBinding2 = mediaLibraryVideoFragment.mBinding;
        if (fragementMediaLibraryVideoBinding2 == null) {
            y45.B("mBinding");
        } else {
            fragementMediaLibraryVideoBinding = fragementMediaLibraryVideoBinding2;
        }
        fragementMediaLibraryVideoBinding.h.postDelayed(new Runnable() {
            @Override
            public final void run() {
                MediaLibraryVideoFragment.u0(this.b);
            }
        }, 1000L);
    }

    public static final void u0(MediaLibraryVideoFragment mediaLibraryVideoFragment) {
        FragementMediaLibraryVideoBinding fragementMediaLibraryVideoBinding = mediaLibraryVideoFragment.mBinding;
        if (fragementMediaLibraryVideoBinding == null) {
            y45.B("mBinding");
            fragementMediaLibraryVideoBinding = null;
        }
        fragementMediaLibraryVideoBinding.h.setRefreshing(false);
    }

    public static final void v0(MediaLibraryVideoFragment mediaLibraryVideoFragment) {
        MediaLibraryVideoViewModel mediaLibraryVideoViewModel = mediaLibraryVideoFragment.mViewModelList;
        if (mediaLibraryVideoViewModel == null) {
            y45.B("mViewModelList");
            mediaLibraryVideoViewModel = null;
        }
        mediaLibraryVideoViewModel.l();
        MediaLibraryVideoViewModel mediaLibraryVideoViewModel2 = mediaLibraryVideoFragment.mViewModelList;
        if (mediaLibraryVideoViewModel2 == null) {
            y45.B("mViewModelList");
            mediaLibraryVideoViewModel2 = null;
        }
        MediaLibraryVideoViewModel.k(mediaLibraryVideoViewModel2, mediaLibraryVideoFragment.mMediaLibraryId, 0, 2, null);
    }

    private final void w0() {
        MediaLibraryVideoViewModel mediaLibraryVideoViewModel = this.mViewModelList;
        MediaLibraryVideoViewModel mediaLibraryVideoViewModel2 = null;
        if (mediaLibraryVideoViewModel == null) {
            y45.B("mViewModelList");
            mediaLibraryVideoViewModel = null;
        }
        mediaLibraryVideoViewModel.getMAllMediaLibraryList().observe(getViewLifecycleOwner(), new c(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return MediaLibraryVideoFragment.x0(this.b, (MIMediaLibraryData) obj);
            }
        }));
        MediaLibraryVideoViewModel mediaLibraryVideoViewModel3 = this.mViewModelList;
        if (mediaLibraryVideoViewModel3 == null) {
            y45.B("mViewModelList");
            mediaLibraryVideoViewModel3 = null;
        }
        mediaLibraryVideoViewModel3.getMLoadStatus().observe(getViewLifecycleOwner(), new c(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return MediaLibraryVideoFragment.y0(this.b, (Integer) obj);
            }
        }));
        MediaLibraryVideoViewModel mediaLibraryVideoViewModel4 = this.mViewModelList;
        if (mediaLibraryVideoViewModel4 == null) {
            y45.B("mViewModelList");
            mediaLibraryVideoViewModel4 = null;
        }
        mediaLibraryVideoViewModel4.getMAddCollectResult().observe(getViewLifecycleOwner(), new c(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return MediaLibraryVideoFragment.z0(this.b, (MIMediaLibraryCollectAdd) obj);
            }
        }));
        MediaLibraryVideoViewModel mediaLibraryVideoViewModel5 = this.mViewModelList;
        if (mediaLibraryVideoViewModel5 == null) {
            y45.B("mViewModelList");
        } else {
            mediaLibraryVideoViewModel2 = mediaLibraryVideoViewModel5;
        }
        mediaLibraryVideoViewModel2.getMCancleCollectResult().observe(getViewLifecycleOwner(), new c(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return MediaLibraryVideoFragment.A0(this.b, (MIMediaLibraryCollectCancel) obj);
            }
        }));
    }

    /* JADX WARN: Code duplicated, block: B:21:0x003a  */
    public static final zfb x0(MediaLibraryVideoFragment mediaLibraryVideoFragment, MIMediaLibraryData mIMediaLibraryData) {
        List<MIMediaVideoData> videoList;
        if (mIMediaLibraryData != null) {
            View view = mediaLibraryVideoFragment.mNetErrorView;
            if (view != null && view != null && view.getVisibility() == 0) {
                mediaLibraryVideoFragment.G0(false);
            }
            MediaLibraryVideoAdapter mediaLibraryVideoAdapter = null;
            if (mediaLibraryVideoFragment.mIsLoginChanged) {
                mediaLibraryVideoFragment.p0(mIMediaLibraryData);
            } else {
                MediaLibraryVideoViewModel mediaLibraryVideoViewModel = mediaLibraryVideoFragment.mViewModelList;
                if (mediaLibraryVideoViewModel == null) {
                    y45.B("mViewModelList");
                    mediaLibraryVideoViewModel = null;
                }
                if (mediaLibraryVideoViewModel.getMCurrentPage() == 1) {
                    FragementMediaLibraryVideoBinding fragementMediaLibraryVideoBinding = mediaLibraryVideoFragment.mBinding;
                    if (fragementMediaLibraryVideoBinding == null) {
                        y45.B("mBinding");
                        fragementMediaLibraryVideoBinding = null;
                    }
                    if (fragementMediaLibraryVideoBinding.g.getVisibility() != 0) {
                        mediaLibraryVideoFragment.p0(mIMediaLibraryData);
                    }
                }
            }
            if (mIMediaLibraryData.getVideoList() != null && (videoList = mIMediaLibraryData.getVideoList()) != null && !videoList.isEmpty()) {
                MediaLibraryVideoViewModel mediaLibraryVideoViewModel2 = mediaLibraryVideoFragment.mViewModelList;
                if (mediaLibraryVideoViewModel2 == null) {
                    y45.B("mViewModelList");
                    mediaLibraryVideoViewModel2 = null;
                }
                if (mediaLibraryVideoViewModel2.getMCurrentPage() == 1) {
                    MediaLibraryVideoAdapter mediaLibraryVideoAdapter2 = mediaLibraryVideoFragment.mAdapter;
                    if (mediaLibraryVideoAdapter2 == null) {
                        y45.B("mAdapter");
                    } else {
                        mediaLibraryVideoAdapter = mediaLibraryVideoAdapter2;
                    }
                    mediaLibraryVideoAdapter.setNewData(mIMediaLibraryData.getVideoList());
                } else {
                    MediaLibraryVideoAdapter mediaLibraryVideoAdapter3 = mediaLibraryVideoFragment.mAdapter;
                    if (mediaLibraryVideoAdapter3 == null) {
                        y45.B("mAdapter");
                    } else {
                        mediaLibraryVideoAdapter = mediaLibraryVideoAdapter3;
                    }
                    List<MIMediaVideoData> videoList2 = mIMediaLibraryData.getVideoList();
                    y45.g(videoList2);
                    mediaLibraryVideoAdapter.addData((Collection) videoList2);
                }
            }
        }
        return zfb.a;
    }

    public static final zfb y0(MediaLibraryVideoFragment mediaLibraryVideoFragment, Integer num) {
        MediaLibraryVideoAdapter mediaLibraryVideoAdapter = null;
        if (num != null && num.intValue() == 0) {
            MediaLibraryVideoAdapter mediaLibraryVideoAdapter2 = mediaLibraryVideoFragment.mAdapter;
            if (mediaLibraryVideoAdapter2 == null) {
                y45.B("mAdapter");
            } else {
                mediaLibraryVideoAdapter = mediaLibraryVideoAdapter2;
            }
            mediaLibraryVideoAdapter.loadMoreComplete();
        } else if (num != null && num.intValue() == 1) {
            MediaLibraryVideoAdapter mediaLibraryVideoAdapter3 = mediaLibraryVideoFragment.mAdapter;
            if (mediaLibraryVideoAdapter3 == null) {
                y45.B("mAdapter");
            } else {
                mediaLibraryVideoAdapter = mediaLibraryVideoAdapter3;
            }
            mediaLibraryVideoAdapter.loadMoreEnd();
        } else if (num != null && num.intValue() == 2) {
            MediaLibraryVideoAdapter mediaLibraryVideoAdapter4 = mediaLibraryVideoFragment.mAdapter;
            if (mediaLibraryVideoAdapter4 == null) {
                y45.B("mAdapter");
                mediaLibraryVideoAdapter4 = null;
            }
            List<MIMediaVideoData> data = mediaLibraryVideoAdapter4.getData();
            y45.i(data, "getData(...)");
            if (!data.isEmpty()) {
                MediaLibraryVideoAdapter mediaLibraryVideoAdapter5 = mediaLibraryVideoFragment.mAdapter;
                if (mediaLibraryVideoAdapter5 == null) {
                    y45.B("mAdapter");
                } else {
                    mediaLibraryVideoAdapter = mediaLibraryVideoAdapter5;
                }
                mediaLibraryVideoAdapter.loadMoreFail();
            }
            if (MainApp.w == 0) {
                ToastUtils.s(R.string.net_not_connect);
                vz5.b();
            } else {
                ToastUtils.s(R.string.loading_error);
            }
        }
        return zfb.a;
    }

    public static final zfb z0(MediaLibraryVideoFragment mediaLibraryVideoFragment, MIMediaLibraryCollectAdd mIMediaLibraryCollectAdd) {
        MediaLibraryVideoViewModel mediaLibraryVideoViewModel = null;
        MIMediaLibraryData mIMediaLibraryData = null;
        if (mIMediaLibraryCollectAdd != null && mIMediaLibraryCollectAdd.getRet()) {
            mediaLibraryVideoFragment.mIsOperateCollectCancel = false;
            ToastUtils.s(R.string.visha_successfully_saved_to_cloud);
            mediaLibraryVideoFragment.mIsMediaLibrayCollect = true;
            FragementMediaLibraryVideoBinding fragementMediaLibraryVideoBinding = mediaLibraryVideoFragment.mBinding;
            if (fragementMediaLibraryVideoBinding == null) {
                y45.B("mBinding");
                fragementMediaLibraryVideoBinding = null;
            }
            fragementMediaLibraryVideoBinding.c.setText(R.string.visha_remove_from_cloud);
            MIMediaLibraryData mIMediaLibraryData2 = mediaLibraryVideoFragment.mMIMediaLibraryData;
            if (mIMediaLibraryData2 == null) {
                y45.B("mMIMediaLibraryData");
            } else {
                mIMediaLibraryData = mIMediaLibraryData2;
            }
            mIMediaLibraryData.setMediaLibraryCollectFlag(true);
        } else if (MainApp.w == 0) {
            ToastUtils.s(R.string.net_not_connect);
        } else {
            MediaLibraryVideoViewModel mediaLibraryVideoViewModel2 = mediaLibraryVideoFragment.mViewModelList;
            if (mediaLibraryVideoViewModel2 == null) {
                y45.B("mViewModelList");
            } else {
                mediaLibraryVideoViewModel = mediaLibraryVideoViewModel2;
            }
            if (y45.e(mediaLibraryVideoViewModel.getMIsLimitMaxed().getValue(), Boolean.TRUE)) {
                mediaLibraryVideoFragment.D0();
            } else {
                ToastUtils.s(R.string.operation_fail);
            }
        }
        return zfb.a;
    }

    public final void C0() {
        if (this.mViewModelList == null) {
            y45.B("mViewModelList");
        }
        w0();
        MediaLibraryVideoViewModel mediaLibraryVideoViewModel = this.mViewModelList;
        if (mediaLibraryVideoViewModel == null) {
            y45.B("mViewModelList");
            mediaLibraryVideoViewModel = null;
        }
        mediaLibraryVideoViewModel.m(1);
        MediaLibraryVideoViewModel mediaLibraryVideoViewModel2 = this.mViewModelList;
        if (mediaLibraryVideoViewModel2 == null) {
            y45.B("mViewModelList");
            mediaLibraryVideoViewModel2 = null;
        }
        MediaLibraryVideoViewModel.k(mediaLibraryVideoViewModel2, this.mMediaLibraryId, 0, 2, null);
    }

    public final void D0() {
        String string = getString(R.string.visha_save_to_cloud_reached_limit, "50");
        y45.i(string, "getString(...)");
        d dVarA = new d.a(this.mContext).A(R.string.visha_kind_tips).k(string).u(R.string.visha_clean, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                MediaLibraryVideoFragment.E0(this.b, dialogInterface, i);
            }
        }).m(R.string.cancel, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                MediaLibraryVideoFragment.F0(this.b, dialogInterface, i);
            }
        }).a();
        this.mNumMaxTipDlg = dVarA;
        if (dVarA != null) {
            dVarA.show();
        }
    }

    public final void G0(boolean isNoNet) {
        FragementMediaLibraryVideoBinding fragementMediaLibraryVideoBinding = null;
        if (!isNoNet) {
            FragementMediaLibraryVideoBinding fragementMediaLibraryVideoBinding2 = this.mBinding;
            if (fragementMediaLibraryVideoBinding2 == null) {
                y45.B("mBinding");
            } else {
                fragementMediaLibraryVideoBinding = fragementMediaLibraryVideoBinding2;
            }
            fragementMediaLibraryVideoBinding.h.setVisibility(0);
            View view = this.mNetErrorView;
            if (view != null) {
                view.setVisibility(8);
                return;
            }
            return;
        }
        if (this.mNetErrorView == null) {
            FragementMediaLibraryVideoBinding fragementMediaLibraryVideoBinding3 = this.mBinding;
            if (fragementMediaLibraryVideoBinding3 == null) {
                y45.B("mBinding");
                fragementMediaLibraryVideoBinding3 = null;
            }
            this.mNetErrorView = ((ViewStub) fragementMediaLibraryVideoBinding3.getRoot().findViewById(R.id.error_layout)).inflate();
        }
        View view2 = this.mNetErrorView;
        if (view2 != null) {
            view2.setVisibility(0);
        }
        FragementMediaLibraryVideoBinding fragementMediaLibraryVideoBinding4 = this.mBinding;
        if (fragementMediaLibraryVideoBinding4 == null) {
            y45.B("mBinding");
        } else {
            fragementMediaLibraryVideoBinding = fragementMediaLibraryVideoBinding4;
        }
        fragementMediaLibraryVideoBinding.h.setVisibility(4);
        View view3 = this.mNetErrorView;
        if (view3 != null) {
            view3.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view4) {
                    MediaLibraryVideoFragment.H0(this.b, view4);
                }
            });
        }
    }

    public final void m0() {
        d dVar = this.mNumMaxTipDlg;
        if (dVar == null || !dVar.isShowing()) {
            return;
        }
        d dVar2 = this.mNumMaxTipDlg;
        if (dVar2 != null) {
            dVar2.dismiss();
        }
        this.mNumMaxTipDlg = null;
    }

    public final void o0() {
        try {
            MediaLibraryVideoViewModel mediaLibraryVideoViewModel = this.mViewModelList;
            MediaLibraryVideoViewModel mediaLibraryVideoViewModel2 = null;
            if (mediaLibraryVideoViewModel == null) {
                y45.B("mViewModelList");
                mediaLibraryVideoViewModel = null;
            }
            mediaLibraryVideoViewModel.b(this.mMediaLibraryId);
            if (MainApp.w == 0) {
                ToastUtils.s(R.string.net_not_connect);
                Log.w("MediaLibraryVideoFragment", "Network not available when trying to remove from cloud");
                return;
            }
            if (!com.transsion.palmsdk.b.s()) {
                CloudLoginActivity.INSTANCE.a(this.mContext);
                Log.w("MediaLibraryVideoFragment", "User not logged in when trying to remove from cloud");
                return;
            }
            if (!this.mIsMediaLibrayCollect) {
                Log.w("MediaLibraryVideoFragment", "Media library is not collected, no need to remove");
                return;
            }
            MediaLibraryVideoViewModel mediaLibraryVideoViewModel3 = this.mViewModelList;
            if (mediaLibraryVideoViewModel3 == null) {
                y45.B("mViewModelList");
            } else {
                mediaLibraryVideoViewModel2 = mediaLibraryVideoViewModel3;
            }
            mediaLibraryVideoViewModel2.b(this.mMediaLibraryId);
            Log.i("MediaLibraryVideoFragment", "Started removing media library from cloud: " + this.mMediaLibraryId);
        } catch (Exception e) {
            Log.e("MediaLibraryVideoFragment", "Failed to handle remove from cloud: " + e.getMessage());
            ToastUtils.s(R.string.operation_fail);
        }
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.mMediaLibraryId = arguments.getString("mediaLibraryId", "");
            this.mMediaLibraryName = arguments.getString("mediaLibraryName", "");
            this.mIsFromCollectListPage = arguments.getBoolean("is_from_library_collect_list", false);
            this.mEntryPageFrom = arguments.getInt("from", 0);
            Log.i("MediaLibraryVideoFragment", "mediaLibraryId: " + this.mMediaLibraryId + " mediaLibraryName: " + this.mMediaLibraryName + " mIsFromCollectListPage: " + this.mIsFromCollectListPage);
        }
        if (savedInstanceState != null && savedInstanceState.containsKey("video_play_fragment_bean")) {
            Serializable serializable = savedInstanceState.getSerializable("video_play_fragment_bean");
            y45.h(serializable, "null cannot be cast to non-null type com.transsion.dbdata.beans.mimedia.MIMediaLibraryData");
            MIMediaLibraryData mIMediaLibraryData = (MIMediaLibraryData) serializable;
            this.mMIMediaLibraryData = mIMediaLibraryData;
            MIMediaLibraryData mIMediaLibraryData2 = null;
            if (mIMediaLibraryData == null) {
                y45.B("mMIMediaLibraryData");
                mIMediaLibraryData = null;
            }
            this.mMediaLibraryId = mIMediaLibraryData.getMediaLibraryId();
            MIMediaLibraryData mIMediaLibraryData3 = this.mMIMediaLibraryData;
            if (mIMediaLibraryData3 == null) {
                y45.B("mMIMediaLibraryData");
                mIMediaLibraryData3 = null;
            }
            this.mIsFromCollectListPage = mIMediaLibraryData3.getMediaLibraryCollectFlag();
            MIMediaLibraryData mIMediaLibraryData4 = this.mMIMediaLibraryData;
            if (mIMediaLibraryData4 == null) {
                y45.B("mMIMediaLibraryData");
            } else {
                mIMediaLibraryData2 = mIMediaLibraryData4;
            }
            Log.d("MediaLibraryVideoFragment", "oncreate savedInstanceState: " + mIMediaLibraryData2.toString());
        }
        this.mViewModelList = (MediaLibraryVideoViewModel) new ViewModelProvider(this).get(MediaLibraryVideoViewModel.class);
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        y45.j(inflater, "inflater");
        FragementMediaLibraryVideoBinding fragementMediaLibraryVideoBindingC = FragementMediaLibraryVideoBinding.c(inflater, container, false);
        this.mBinding = fragementMediaLibraryVideoBindingC;
        if (fragementMediaLibraryVideoBindingC == null) {
            y45.B("mBinding");
            fragementMediaLibraryVideoBindingC = null;
        }
        return fragementMediaLibraryVideoBindingC.getRoot();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        if (this.mIsOperateCollectCancel) {
            LiveEventBus.b().c("media_library_collect_cancle", Boolean.TRUE);
        }
        m0();
        n0();
        m0();
        if (this.mIsLoginChanged) {
            kotlinx.coroutines.d.f(this.activityScope, null, 1, null);
        }
    }

    @Override
    public void onSaveInstanceState(Bundle outState) {
        y45.j(outState, "outState");
        MIMediaLibraryData mIMediaLibraryData = this.mMIMediaLibraryData;
        if (mIMediaLibraryData != null) {
            if (mIMediaLibraryData == null) {
                y45.B("mMIMediaLibraryData");
                mIMediaLibraryData = null;
            }
            outState.putSerializable("video_play_fragment_bean", mIMediaLibraryData);
        }
        super.onSaveInstanceState(outState);
    }

    @Override
    public void onUserLogin(VishaPalmUserInfo vishaPalmUserInfo) {
        Log.d("MediaLibraryVideoFragment", "onUserLogin: " + (vishaPalmUserInfo != null ? vishaPalmUserInfo.toString() : null));
        if (this.mIsLoginChanged) {
            return;
        }
        this.mIsLoginChanged = true;
        el0.d(this.activityScope, null, null, new AnonymousClass1(null), 3, null);
    }

    @Override
    public void onUserReLogin(VishaPalmUserInfo vishaPalmUserInfo) {
        Log.d("MediaLibraryVideoFragment", "onUserReLogin: " + (vishaPalmUserInfo != null ? vishaPalmUserInfo.toString() : null));
        if (this.mIsLoginChanged) {
            return;
        }
        this.mIsLoginChanged = true;
        el0.d(this.activityScope, null, null, new C23761(null), 3, null);
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        y45.j(view, "view");
        super.onViewCreated(view, savedInstanceState);
        initView(view);
        w0();
        B0();
    }

    public final void p0(final MIMediaLibraryData pageData) {
        String str;
        FragementMediaLibraryVideoBinding fragementMediaLibraryVideoBinding = this.mBinding;
        View view = null;
        if (fragementMediaLibraryVideoBinding == null) {
            y45.B("mBinding");
            fragementMediaLibraryVideoBinding = null;
        }
        fragementMediaLibraryVideoBinding.g.setVisibility(0);
        if (!TextUtils.isEmpty(pageData.getMediaLibraryName())) {
            this.mMediaLibraryName = pageData.getMediaLibraryName();
        }
        RequestBuilder<Drawable> requestBuilderLoad2 = Glide.with(this.mContext).load2(pageData.getVirtualPersonPhoto());
        int i = R.drawable.ic_avator_default;
        RequestBuilder requestBuilderError = requestBuilderLoad2.placeholder(i).error(i);
        FragementMediaLibraryVideoBinding fragementMediaLibraryVideoBinding2 = this.mBinding;
        if (fragementMediaLibraryVideoBinding2 == null) {
            y45.B("mBinding");
            fragementMediaLibraryVideoBinding2 = null;
        }
        requestBuilderError.into(fragementMediaLibraryVideoBinding2.f);
        FragementMediaLibraryVideoBinding fragementMediaLibraryVideoBinding3 = this.mBinding;
        if (fragementMediaLibraryVideoBinding3 == null) {
            y45.B("mBinding");
            fragementMediaLibraryVideoBinding3 = null;
        }
        fragementMediaLibraryVideoBinding3.l.setText(this.mMediaLibraryName);
        FragementMediaLibraryVideoBinding fragementMediaLibraryVideoBinding4 = this.mBinding;
        if (fragementMediaLibraryVideoBinding4 == null) {
            y45.B("mBinding");
            fragementMediaLibraryVideoBinding4 = null;
        }
        fragementMediaLibraryVideoBinding4.k.setText(pageData.getVirtualPersonName());
        FragementMediaLibraryVideoBinding fragementMediaLibraryVideoBinding5 = this.mBinding;
        if (fragementMediaLibraryVideoBinding5 == null) {
            y45.B("mBinding");
            fragementMediaLibraryVideoBinding5 = null;
        }
        fragementMediaLibraryVideoBinding5.e.setVisibility(0);
        FragementMediaLibraryVideoBinding fragementMediaLibraryVideoBinding6 = this.mBinding;
        if (fragementMediaLibraryVideoBinding6 == null) {
            y45.B("mBinding");
            fragementMediaLibraryVideoBinding6 = null;
        }
        fragementMediaLibraryVideoBinding6.c.setEnabled(true);
        this.mMIMediaLibraryData = pageData;
        boolean mediaLibraryCollectFlag = pageData.getMediaLibraryCollectFlag();
        this.mIsMediaLibrayCollect = mediaLibraryCollectFlag;
        if (mediaLibraryCollectFlag) {
            FragementMediaLibraryVideoBinding fragementMediaLibraryVideoBinding7 = this.mBinding;
            if (fragementMediaLibraryVideoBinding7 == null) {
                y45.B("mBinding");
                fragementMediaLibraryVideoBinding7 = null;
            }
            fragementMediaLibraryVideoBinding7.c.setText(R.string.visha_remove_from_cloud);
        } else {
            FragementMediaLibraryVideoBinding fragementMediaLibraryVideoBinding8 = this.mBinding;
            if (fragementMediaLibraryVideoBinding8 == null) {
                y45.B("mBinding");
                fragementMediaLibraryVideoBinding8 = null;
            }
            fragementMediaLibraryVideoBinding8.c.setText(R.string.visha_save_to_cloud);
        }
        FragementMediaLibraryVideoBinding fragementMediaLibraryVideoBinding9 = this.mBinding;
        if (fragementMediaLibraryVideoBinding9 == null) {
            y45.B("mBinding");
            fragementMediaLibraryVideoBinding9 = null;
        }
        fragementMediaLibraryVideoBinding9.c.setOnClickListener(new ha1(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                MediaLibraryVideoFragment.q0(pageData, this, view2);
            }
        }));
        View view2 = this.mMenuMore;
        if (view2 == null) {
            y45.B("mMenuMore");
            view2 = null;
        }
        view2.setVisibility(0);
        View view3 = this.mMenuMore;
        if (view3 == null) {
            y45.B("mMenuMore");
        } else {
            view = view3;
        }
        view.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view4) {
                MediaLibraryVideoFragment.r0(this.b, view4);
            }
        });
        if (this.mIsMarkShow) {
            return;
        }
        this.mIsMarkShow = true;
        int i2 = this.mEntryPageFrom;
        if (i2 == 1) {
            str = "collect";
        } else if (i2 == 2) {
            str = "search";
        } else {
            str = i2 == 3 ? "sharepage" : "download";
        }
        az5.a.L(pageData.getMediaLibraryId(), pageData.getMediaLibraryName(), pageData.getVirtualPersonName(), pageData.getVirtualPersonPhoto(), str);
    }
}
