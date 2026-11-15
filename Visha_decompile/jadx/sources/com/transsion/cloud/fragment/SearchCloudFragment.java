package com.transsion.cloud.fragment;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.FragmentActivity;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.p004lifecycle.Observer;
import androidx.p004lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.arouter.launcher.ARouter;
import com.alibaba.android.arouter.utils.Consts;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.cloud.adapter.CloudHistoryAdapter;
import com.transsion.cloud.adapter.CloudItemDecoration;
import com.transsion.cloud.adapter.CloudSearchAdapter;
import com.transsion.cloud.adapter.CloudSearchItemDecoration;
import com.transsion.cloud.fileoperate.CloudFileOperate;
import com.transsion.cloud.fragment.SearchCloudFragment;
import com.transsion.cloud.share.CloudDriveBottomShareActivity;
import com.transsion.cloud.viewmodel.CloudSearchViewModel;
import com.transsion.cloudcore.cache.CloudTaskFinishCacheManager;
import com.transsion.dbdata.beans.FileHandlerCloudSearchData;
import com.transsion.dbdata.beans.cloud.SearchResponseData;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.mimedia.MIMediaDataUtils;
import com.transsion.dbdata.beans.sniff.Bookmark;
import com.transsion.dbdata.beans.sniff.DownloadMain;
import com.transsion.magicvideo.activities.VideoPlayerActivityInner;
import com.transsion.magicvideo.activities.VideoSheetDialogActivity;
import com.transsion.netdisk.R;
import com.transsion.netdisk.databinding.LayoutCloudSearchBinding;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.arouter.VishaRouterTable;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.data.SheetDialogParamsConstant;
import com.transsion.playercommon.vishaapis.appconfig.helper.CloudFeaturesConfigHelper;
import com.transsion.playercommon.widgets.CustomFlexboxLayoutManager;
import com.transsion.push.PushConstants;
import com.transsion.sniffer_load.WebActivity;
import com.transsion.sniffer_load.adapter.DownloadEmptyHolder;
import com.transsion.sniffer_load.adapter.DownloadMainItemAdapter;
import com.transsion.sniffer_load.viewmodel.BookmarksViewModelNew;
import com.transsion.sniffer_load.viewmodel.DownloadMainViewModel;
import com.transsion.utils.CustomLinearLayoutManager;
import com.transsion.utils.ToastUtils;
import com.transsion.vishaplayersdk.vkPlayer.VkConstant;
import com.transsion.widgetslib.dialog.InputDialog;
import com.transsion.widgetslib.widget.SearchBar;
import com.transsion.widgetthemes.util.Utils;
import defpackage.az5;
import defpackage.bz5;
import defpackage.cz5;
import defpackage.e6b;
import defpackage.e74;
import defpackage.e84;
import defpackage.ejb;
import defpackage.f5;
import defpackage.g1a;
import defpackage.h27;
import defpackage.i81;
import defpackage.j1a;
import defpackage.m21;
import defpackage.mo1;
import defpackage.w6c;
import defpackage.wx0;
import defpackage.x74;
import defpackage.y45;
import defpackage.y71;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.Pair;

@Metadata(d1 = {"\u0000È\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u0000 z2\u00020\u0001:\u0001{B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ-\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\n\u001a\u00020\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ!\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\r2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0013H\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u0017\u0010\u0003J\u000f\u0010\u0018\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u0018\u0010\u0003J\u000f\u0010\u0019\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u0019\u0010\u0003J\u000f\u0010\u001a\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u001a\u0010\u0003J\u000f\u0010\u001b\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001b\u0010\u0003J\u000f\u0010\u001c\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001c\u0010\u0003J/\u0010\"\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u001d2\u0016\u0010!\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010 0\u001f\"\u0004\u0018\u00010 H\u0016¢\u0006\u0004\b\"\u0010#J\u0017\u0010%\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u0013H\u0002¢\u0006\u0004\b%\u0010\u0016J\u0017\u0010(\u001a\u00020\u00062\u0006\u0010'\u001a\u00020&H\u0002¢\u0006\u0004\b(\u0010)J\u0017\u0010*\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\rH\u0002¢\u0006\u0004\b*\u0010+J\u0017\u0010.\u001a\u00020\u00062\u0006\u0010-\u001a\u00020,H\u0002¢\u0006\u0004\b.\u0010/J\u0017\u00100\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u0013H\u0002¢\u0006\u0004\b0\u0010\u0016J\u0017\u00103\u001a\u00020\u00062\u0006\u00102\u001a\u000201H\u0002¢\u0006\u0004\b3\u00104J\u000f\u00105\u001a\u00020\u0006H\u0002¢\u0006\u0004\b5\u0010\u0003J\u000f\u00106\u001a\u00020\u0006H\u0002¢\u0006\u0004\b6\u0010\u0003J\u000f\u00107\u001a\u00020\u0006H\u0002¢\u0006\u0004\b7\u0010\u0003J\u000f\u00108\u001a\u00020\u0006H\u0002¢\u0006\u0004\b8\u0010\u0003J-\u0010=\u001a\u00020\u00062\u0006\u00109\u001a\u00020\u001d2\u0006\u0010:\u001a\u0002012\f\u0010<\u001a\b\u0012\u0004\u0012\u0002010;H\u0002¢\u0006\u0004\b=\u0010>R\u0018\u0010B\u001a\u0004\u0018\u00010?8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u0010AR\u0018\u0010F\u001a\u0004\u0018\u00010C8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bD\u0010ER\u0016\u0010J\u001a\u00020G8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010IR\u0016\u0010N\u001a\u00020K8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bL\u0010MR\u0016\u0010R\u001a\u00020O8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bP\u0010QR\u0016\u0010V\u001a\u00020S8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bT\u0010UR\u0018\u0010Z\u001a\u0004\u0018\u00010W8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bX\u0010YR\u0018\u0010]\u001a\u0004\u0018\u00010[8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010\\R\u0018\u0010a\u001a\u0004\u0018\u00010^8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b_\u0010`R\u001e\u0010e\u001a\n\u0012\u0004\u0012\u00020b\u0018\u00010;8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bc\u0010dR\u0018\u0010h\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bf\u0010gR\u0018\u0010j\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bi\u0010gR\u0018\u0010n\u001a\u0004\u0018\u00010k8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bl\u0010mR\u0018\u0010r\u001a\u0004\u0018\u00010o8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bp\u0010qR\u0016\u0010u\u001a\u00020&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bs\u0010tR\u0014\u0010w\u001a\u00020o8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bv\u0010qR\u0014\u0010y\u001a\u00020o8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bx\u0010q¨\u0006|"}, d2 = {"Lcom/transsion/cloud/fragment/SearchCloudFragment;", "Lcom/transsion/cloud/fragment/CloudBaseFragment;", MethodDecl.initName, "()V", "Landroid/os/Bundle;", "savedInstanceState", "Lzfb;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", TtmlNode.RUBY_CONTAINER, "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "view", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "preload", "loadData", "(Z)V", "showRenameDialog", "downloadFile", "doShare", "deleteFile", "onPause", "onDestroyView", "", "eventId", "", "", "args", "didReceivedNotification", "(I[Ljava/lang/Object;)V", PushConstants.PUSH_SERVICE_TYPE_SHOW, "w1", "", "text", "W0", "(Ljava/lang/String;)V", "initView", "(Landroid/view/View;)V", "Landroid/text/Editable;", "s", "B1", "(Landroid/text/Editable;)V", "Z0", "Lcom/transsion/dbdata/beans/cloud/SearchResponseData;", "searchResponseData", "x1", "(Lcom/transsion/dbdata/beans/cloud/SearchResponseData;)V", "initViewModel", "v1", "u1", "y1", "type", "videoCloudData", "", "videoCloudDataList", "t1", "(ILcom/transsion/dbdata/beans/cloud/SearchResponseData;Ljava/util/List;)V", "Lcom/transsion/widgetslib/widget/SearchBar;", CmcdData.STREAM_TYPE_LIVE, "Lcom/transsion/widgetslib/widget/SearchBar;", "mSearchBar", "Lcom/transsion/netdisk/databinding/LayoutCloudSearchBinding;", CmcdData.OBJECT_TYPE_MANIFEST, "Lcom/transsion/netdisk/databinding/LayoutCloudSearchBinding;", "mBinding", "Landroid/os/Handler;", "n", "Landroid/os/Handler;", "mMainHandler", "Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;", "o", "Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;", "mDownloadMainViewModel", "Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;", TtmlNode.TAG_P, "Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;", "mBookmarksViewModelNew", "Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;", "q", "Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;", "mCloudSearchViewModel", "Lcom/transsion/cloud/adapter/CloudSearchAdapter;", "r", "Lcom/transsion/cloud/adapter/CloudSearchAdapter;", "mCloudDataAdapter", "Lcom/transsion/sniffer_load/adapter/DownloadMainItemAdapter;", "Lcom/transsion/sniffer_load/adapter/DownloadMainItemAdapter;", "mDownloadMainItemAdapter", "Lcom/transsion/cloud/adapter/CloudHistoryAdapter;", "t", "Lcom/transsion/cloud/adapter/CloudHistoryAdapter;", "mHistoryAdapter", "Lcom/transsion/dbdata/beans/sniff/Bookmark;", "u", "Ljava/util/List;", "mBookMarkList", "v", "Landroid/view/View;", "mEmptyView", "w", "mHistoryView", "Lcom/transsion/widgetslib/dialog/d;", "x", "Lcom/transsion/widgetslib/dialog/d;", "mLoadingDialog", "Ljava/lang/Runnable;", "y", "Ljava/lang/Runnable;", "mLoadingDialogRunnable", "z", "Ljava/lang/String;", "mSource", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "mShowOKeyboardRunnable", "B", "mHideOKeyboardRunnable", "C", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "clouddrive_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SearchCloudFragment extends CloudBaseFragment {

    public SearchBar mSearchBar;

    public LayoutCloudSearchBinding mBinding;

    public DownloadMainViewModel mDownloadMainViewModel;

    public BookmarksViewModelNew mBookmarksViewModelNew;

    public CloudSearchViewModel mCloudSearchViewModel;

    public CloudSearchAdapter mCloudDataAdapter;

    public DownloadMainItemAdapter mDownloadMainItemAdapter;

    public CloudHistoryAdapter mHistoryAdapter;

    public List mBookMarkList;

    public View mEmptyView;

    public View mHistoryView;

    public com.transsion.widgetslib.dialog.d mLoadingDialog;

    public Runnable mLoadingDialogRunnable;

    public Handler mMainHandler = new Handler(Looper.getMainLooper());

    public String mSource = "";

    public final Runnable mShowOKeyboardRunnable = new Runnable() {
        @Override
        public final void run() {
            SearchCloudFragment.r1(this.b);
        }
    };

    public final Runnable mHideOKeyboardRunnable = new Runnable() {
        @Override
        public final void run() {
            SearchCloudFragment.q1(this.b);
        }
    };

    public static final class b implements TextWatcher {
        public b() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
            EditText editText;
            Editable text;
            y45.j(editable, "s");
            SearchBar searchBar = SearchCloudFragment.this.mSearchBar;
            if (searchBar == null || (editText = searchBar.getEditText()) == null || (text = editText.getText()) == null) {
                return;
            }
            SearchCloudFragment.this.B1(text);
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            y45.j(charSequence, "s");
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            y45.j(charSequence, "s");
            az5.a.M(SearchCloudFragment.this.mSource);
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

    public static final class d implements TextWatcher {
        public final String b;
        public final SearchCloudFragment c;

        public d(String str, SearchCloudFragment searchCloudFragment) {
            this.b = str;
            this.c = searchCloudFragment;
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

    public static final void A1(SearchCloudFragment searchCloudFragment, DialogInterface dialogInterface, int i) {
        if (searchCloudFragment.getMPromptDialog() != null) {
            com.transsion.widgetslib.dialog.d mPromptDialog = searchCloudFragment.getMPromptDialog();
            y45.g(mPromptDialog);
            mPromptDialog.dismiss();
        }
    }

    public static final void X0(SearchCloudFragment searchCloudFragment) {
        if (searchCloudFragment.getActivity() != null) {
            com.transsion.widgetslib.dialog.d dVar = searchCloudFragment.mLoadingDialog;
            if (dVar == null || !dVar.isShowing()) {
                com.transsion.widgetslib.dialog.b bVarC = new com.transsion.widgetslib.dialog.b(searchCloudFragment.getActivity()).c(R.string.loading);
                searchCloudFragment.mLoadingDialog = bVarC != null ? bVarC.e() : null;
            }
        }
    }

    public static final void Y0(SearchCloudFragment searchCloudFragment, boolean z) {
        if (z) {
            CloudFileOperate cloudFileOperate = CloudFileOperate.getInstance();
            Context context = searchCloudFragment.mContext;
            CloudSearchViewModel cloudSearchViewModel = searchCloudFragment.mCloudSearchViewModel;
            if (cloudSearchViewModel == null) {
                y45.B("mCloudSearchViewModel");
                cloudSearchViewModel = null;
            }
            cloudFileOperate.startDownload(context, cloudSearchViewModel.getMSelectedItemData());
        }
    }

    public static final void a1(SearchCloudFragment searchCloudFragment, View view) {
        searchCloudFragment.w1(false);
    }

    public static final void b1(SearchCloudFragment searchCloudFragment, RecyclerView recyclerView) {
        searchCloudFragment.applyRecyclerViewBottomPaddingPx(recyclerView, searchCloudFragment.resolveNavigationBarInsetPx());
    }

    public static final void c1(SearchCloudFragment searchCloudFragment) {
        EditText editText;
        Editable text;
        CloudSearchViewModel cloudSearchViewModel;
        CloudSearchViewModel cloudSearchViewModel2 = searchCloudFragment.mCloudSearchViewModel;
        if (cloudSearchViewModel2 == null) {
            y45.B("mCloudSearchViewModel");
            cloudSearchViewModel2 = null;
        }
        cloudSearchViewModel2.u();
        SearchBar searchBar = searchCloudFragment.mSearchBar;
        if (searchBar == null || (editText = searchBar.getEditText()) == null || (text = editText.getText()) == null || text.toString().length() <= 0) {
            return;
        }
        CloudSearchViewModel cloudSearchViewModel3 = searchCloudFragment.mCloudSearchViewModel;
        if (cloudSearchViewModel3 == null) {
            y45.B("mCloudSearchViewModel");
            cloudSearchViewModel = null;
        } else {
            cloudSearchViewModel = cloudSearchViewModel3;
        }
        CloudSearchViewModel.s(cloudSearchViewModel, text.toString(), Boolean.valueOf(CloudFeaturesConfigHelper.INSTANCE.isSupportMIMediaLibrary()), 0, 0, 12, null);
    }

    public static final void d1(SearchCloudFragment searchCloudFragment, View view) {
        CloudSearchViewModel cloudSearchViewModel = searchCloudFragment.mCloudSearchViewModel;
        CloudSearchViewModel cloudSearchViewModel2 = null;
        if (cloudSearchViewModel == null) {
            y45.B("mCloudSearchViewModel");
            cloudSearchViewModel = null;
        }
        cloudSearchViewModel.h();
        CloudSearchViewModel cloudSearchViewModel3 = searchCloudFragment.mCloudSearchViewModel;
        if (cloudSearchViewModel3 == null) {
            y45.B("mCloudSearchViewModel");
        } else {
            cloudSearchViewModel2 = cloudSearchViewModel3;
        }
        searchCloudFragment.Z0(cloudSearchViewModel2.getMHistoryCache().isEmpty());
    }

    public static final void e1(SearchCloudFragment searchCloudFragment, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        EditText editText;
        CloudSearchViewModel cloudSearchViewModel = searchCloudFragment.mCloudSearchViewModel;
        if (cloudSearchViewModel == null) {
            y45.B("mCloudSearchViewModel");
            cloudSearchViewModel = null;
        }
        List mHistoryCache = cloudSearchViewModel.getMHistoryCache();
        if (mHistoryCache.isEmpty()) {
            return;
        }
        String str = (String) mHistoryCache.get(i);
        SearchBar searchBar = searchCloudFragment.mSearchBar;
        if (searchBar != null && (editText = searchBar.getEditText()) != null) {
            editText.setText(str);
            editText.setSelection(str.length());
        }
        az5.a.T(str, searchCloudFragment.mSource);
        searchCloudFragment.W0(str);
    }

    public static final void f1(SearchCloudFragment searchCloudFragment, View view) {
        EditText editText;
        Editable text;
        SearchBar searchBar = searchCloudFragment.mSearchBar;
        if (searchBar == null || (editText = searchBar.getEditText()) == null || (text = editText.getText()) == null) {
            return;
        }
        az5.a.E("result", text.toString(), searchCloudFragment.mSource);
        Intent intent = new Intent(searchCloudFragment.getContext(), (Class<?>) WebActivity.class);
        intent.putExtra(VkConstant.URL, text.toString());
        intent.putExtra("web_url_from", "dl_brower_cycle_search");
        f5.c(intent, searchCloudFragment.getContext());
        searchCloudFragment.w1(false);
    }

    public static final void g1(SearchCloudFragment searchCloudFragment, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        List data;
        if (wx0.a.a()) {
            return;
        }
        CloudSearchViewModel cloudSearchViewModel = null;
        Object obj = (baseQuickAdapter == null || (data = baseQuickAdapter.getData()) == null) ? null : data.get(i);
        y45.h(obj, "null cannot be cast to non-null type com.transsion.dbdata.beans.cloud.SearchResponseData");
        SearchResponseData searchResponseData = (SearchResponseData) obj;
        if (view.getId() != R.id.iv_bucket_fragment_item_more) {
            if (view.getId() == R.id.tv_desc) {
                ARouter.getInstance().build(VishaRouterTable.PATH_PAGE_ACTIVITY_MEDIA_LIBRARY_VIDEO).withString("mediaLibraryId", searchResponseData.getMediaLibraryId()).withString("mediaLibraryName", searchResponseData.getMediaLibraryName()).withInt("from", 2).navigation();
                az5.a.Q(searchResponseData.getSourceId(), searchResponseData.getTitle(), searchResponseData.getMediaLibraryId(), searchResponseData.getMediaLibraryName(), DownloadEmptyHolder.INSTANCE.a(), "medialibrary_title");
                return;
            }
            return;
        }
        Integer dataType = searchResponseData.getDataType();
        if (dataType != null && dataType.intValue() == 1 && y45.e(CloudTaskFinishCacheManager.a.n().getValue(), Boolean.TRUE)) {
            m21.a.d();
            return;
        }
        searchCloudFragment.x1(searchResponseData);
        CloudSearchViewModel cloudSearchViewModel2 = searchCloudFragment.mCloudSearchViewModel;
        if (cloudSearchViewModel2 == null) {
            y45.B("mCloudSearchViewModel");
        } else {
            cloudSearchViewModel = cloudSearchViewModel2;
        }
        cloudSearchViewModel.y(searchResponseData);
    }

    public static final void h1(SearchCloudFragment searchCloudFragment, View view) {
        TextView textView;
        if (MainApp.p) {
            MainApp.p = false;
            w6c.r(searchCloudFragment.getContext(), "private_browsing", false);
            ToastUtils.s(R.string.load_privacy_browsing_setting_hint);
            az5.a.N(2, 0, searchCloudFragment.mSource);
        } else {
            MainApp.p = true;
            w6c.r(searchCloudFragment.getContext(), "private_browsing", true);
            ToastUtils.s(R.string.visha_not_save_search_and_view_history);
            az5.a.N(2, 1, searchCloudFragment.mSource);
        }
        CloudSearchViewModel cloudSearchViewModel = searchCloudFragment.mCloudSearchViewModel;
        if (cloudSearchViewModel == null) {
            y45.B("mCloudSearchViewModel");
            cloudSearchViewModel = null;
        }
        searchCloudFragment.Z0(cloudSearchViewModel.getMHistoryCache().isEmpty());
        LayoutCloudSearchBinding layoutCloudSearchBinding = searchCloudFragment.mBinding;
        if (layoutCloudSearchBinding == null || (textView = layoutCloudSearchBinding.p) == null) {
            return;
        }
        textView.setText(MainApp.p ? R.string.download_privacy_browsing_turn_off : R.string.download_privacy_browsing_turn_on);
    }

    public static final void i1(SearchCloudFragment searchCloudFragment, View view) {
        searchCloudFragment.w1(false);
        FragmentActivity activity = searchCloudFragment.getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    private final void initView(View view) {
        RecyclerView recyclerView;
        TextView textView;
        TextView textView2;
        RelativeLayout relativeLayout;
        RecyclerView recyclerView2;
        RecyclerView recyclerView3;
        final RecyclerView recyclerView4;
        CloudSearchAdapter cloudSearchAdapter;
        LinearLayout linearLayout;
        EditText editText;
        EditText editText2;
        EditText editText3;
        EditText editText4;
        EditText editText5;
        View backView;
        SearchBar searchBar = (SearchBar) view.findViewById(R.id.search_bar_file);
        this.mSearchBar = searchBar;
        if (searchBar != null && (backView = searchBar.getBackView()) != null) {
            backView.setRotationY(Utils.isRtl() ? 180.0f : 0.0f);
        }
        SearchBar searchBar2 = this.mSearchBar;
        if (searchBar2 != null) {
            searchBar2.setBackClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    SearchCloudFragment.i1(this.b, view2);
                }
            });
        }
        SearchBar searchBar3 = this.mSearchBar;
        if (searchBar3 != null && (editText5 = searchBar3.getEditText()) != null) {
            editText5.setElegantTextHeight(false);
        }
        SearchBar searchBar4 = this.mSearchBar;
        if (searchBar4 != null && (editText4 = searchBar4.getEditText()) != null) {
            editText4.setOnEditorActionListener(new TextView.OnEditorActionListener() {
                @Override
                public final boolean onEditorAction(TextView textView3, int i, KeyEvent keyEvent) {
                    return SearchCloudFragment.j1(this.b, textView3, i, keyEvent);
                }
            });
        }
        SearchBar searchBar5 = this.mSearchBar;
        if (searchBar5 != null) {
            searchBar5.addTextWatcher(new b());
        }
        SearchBar searchBar6 = this.mSearchBar;
        if (searchBar6 != null && (editText3 = searchBar6.getEditText()) != null) {
            editText3.setTextDirection(5);
        }
        SearchBar searchBar7 = this.mSearchBar;
        if (searchBar7 != null && (editText2 = searchBar7.getEditText()) != null) {
            editText2.setImeOptions(1073741830);
        }
        SearchBar searchBar8 = this.mSearchBar;
        if (searchBar8 != null && (editText = searchBar8.getEditText()) != null) {
            editText.setImportantForAutofill(2);
        }
        SearchBar searchBar9 = this.mSearchBar;
        if (searchBar9 != null) {
            searchBar9.setImportantForAutofill(2);
        }
        LayoutCloudSearchBinding layoutCloudSearchBinding = this.mBinding;
        if (layoutCloudSearchBinding != null && (linearLayout = layoutCloudSearchBinding.n) != null) {
            linearLayout.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    SearchCloudFragment.a1(this.b, view2);
                }
            });
        }
        LayoutCloudSearchBinding layoutCloudSearchBinding2 = this.mBinding;
        if (layoutCloudSearchBinding2 != null && (recyclerView4 = layoutCloudSearchBinding2.l) != null) {
            recyclerView4.addItemDecoration(new CloudItemDecoration(com.transsion.utils.a.d(this.mActivity, 16.0f)));
            recyclerView4.setLayoutManager(new CustomLinearLayoutManager(getContext()));
            recyclerView4.setAdapter(this.mCloudDataAdapter);
            applyRecyclerViewBottomPaddingPx(recyclerView4, resolveNavigationBarInsetPx());
            recyclerView4.post(new Runnable() {
                @Override
                public final void run() {
                    SearchCloudFragment.b1(this.b, recyclerView4);
                }
            });
            CloudSearchAdapter cloudSearchAdapter2 = this.mCloudDataAdapter;
            if (cloudSearchAdapter2 != null) {
                cloudSearchAdapter2.setPreLoadNumber(1);
            }
            if (getActivity() != null && (cloudSearchAdapter = this.mCloudDataAdapter) != null) {
                cloudSearchAdapter.setLoadMoreView(new mo1(getActivity()).a(Boolean.FALSE));
            }
            CloudSearchAdapter cloudSearchAdapter3 = this.mCloudDataAdapter;
            if (cloudSearchAdapter3 != null) {
                cloudSearchAdapter3.disableLoadMoreIfNotFullPage(recyclerView4);
            }
            CloudSearchAdapter cloudSearchAdapter4 = this.mCloudDataAdapter;
            if (cloudSearchAdapter4 != null) {
                cloudSearchAdapter4.setOnLoadMoreListener(new BaseQuickAdapter.RequestLoadMoreListener() {
                    @Override
                    public final void onLoadMoreRequested() {
                        SearchCloudFragment.c1(this.a);
                    }
                }, recyclerView4);
            }
        }
        LayoutCloudSearchBinding layoutCloudSearchBinding3 = this.mBinding;
        if (layoutCloudSearchBinding3 != null && (recyclerView3 = layoutCloudSearchBinding3.j) != null) {
            recyclerView3.addItemDecoration(new CloudSearchItemDecoration(com.transsion.utils.a.d(this.mActivity, 8.0f)));
            recyclerView3.setLayoutManager(new CustomFlexboxLayoutManager(getContext()));
            recyclerView3.setAdapter(this.mHistoryAdapter);
            View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.rv_search_history_header, (ViewGroup) recyclerView3, false);
            this.mHistoryView = viewInflate;
            ((ImageView) viewInflate.findViewById(R.id.iv_clear_history)).setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    SearchCloudFragment.d1(this.b, view2);
                }
            });
            CloudHistoryAdapter cloudHistoryAdapter = this.mHistoryAdapter;
            if (cloudHistoryAdapter != null) {
                cloudHistoryAdapter.setHeaderView(viewInflate);
            }
            CloudHistoryAdapter cloudHistoryAdapter2 = this.mHistoryAdapter;
            if (cloudHistoryAdapter2 != null) {
                cloudHistoryAdapter2.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
                    @Override
                    public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view2, int i) {
                        SearchCloudFragment.e1(this.b, baseQuickAdapter, view2, i);
                    }
                });
            }
        }
        LayoutCloudSearchBinding layoutCloudSearchBinding4 = this.mBinding;
        if (layoutCloudSearchBinding4 != null && (recyclerView2 = layoutCloudSearchBinding4.k) != null) {
            recyclerView2.setLayoutManager(new LinearLayoutManager(getContext()));
            recyclerView2.setAdapter(this.mDownloadMainItemAdapter);
        }
        LayoutCloudSearchBinding layoutCloudSearchBinding5 = this.mBinding;
        if (layoutCloudSearchBinding5 != null && (relativeLayout = layoutCloudSearchBinding5.h) != null) {
            relativeLayout.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    SearchCloudFragment.f1(this.b, view2);
                }
            });
        }
        CloudSearchAdapter cloudSearchAdapter5 = this.mCloudDataAdapter;
        if (cloudSearchAdapter5 != null) {
            cloudSearchAdapter5.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() {
                @Override
                public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view2, int i) {
                    SearchCloudFragment.g1(this.a, baseQuickAdapter, view2, i);
                }
            });
        }
        LayoutCloudSearchBinding layoutCloudSearchBinding6 = this.mBinding;
        if (layoutCloudSearchBinding6 != null && (textView2 = layoutCloudSearchBinding6.p) != null) {
            textView2.setText(MainApp.p ? R.string.download_privacy_browsing_turn_off : R.string.download_privacy_browsing_turn_on);
        }
        LayoutCloudSearchBinding layoutCloudSearchBinding7 = this.mBinding;
        if (layoutCloudSearchBinding7 != null && (textView = layoutCloudSearchBinding7.p) != null) {
            textView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    SearchCloudFragment.h1(this.b, view2);
                }
            });
        }
        LayoutCloudSearchBinding layoutCloudSearchBinding8 = this.mBinding;
        applyBottomMarginNavInset(layoutCloudSearchBinding8 != null ? layoutCloudSearchBinding8.c : null, 0);
        LayoutCloudSearchBinding layoutCloudSearchBinding9 = this.mBinding;
        if (layoutCloudSearchBinding9 == null || (recyclerView = layoutCloudSearchBinding9.l) == null) {
            return;
        }
        recyclerView.addOnChildAttachStateChangeListener(new RecyclerView.OnChildAttachStateChangeListener() {
            @Override
            public void onChildViewAttachedToWindow(View view2) {
                RecyclerView recyclerView5;
                int childAdapterPosition;
                String sourceId;
                y45.j(view2, "view");
                LayoutCloudSearchBinding layoutCloudSearchBinding10 = SearchCloudFragment.this.mBinding;
                if (layoutCloudSearchBinding10 == null || (recyclerView5 = layoutCloudSearchBinding10.l) == null || (childAdapterPosition = recyclerView5.getChildAdapterPosition(view2)) == -1) {
                    return;
                }
                CloudSearchAdapter cloudSearchAdapter6 = SearchCloudFragment.this.mCloudDataAdapter;
                CloudSearchViewModel cloudSearchViewModel = null;
                SearchResponseData item = cloudSearchAdapter6 != null ? cloudSearchAdapter6.getItem(childAdapterPosition) : null;
                if (item == null || (sourceId = item.getSourceId()) == null) {
                    return;
                }
                SearchCloudFragment searchCloudFragment = SearchCloudFragment.this;
                CloudSearchViewModel cloudSearchViewModel2 = searchCloudFragment.mCloudSearchViewModel;
                if (cloudSearchViewModel2 == null) {
                    y45.B("mCloudSearchViewModel");
                    cloudSearchViewModel2 = null;
                }
                if (cloudSearchViewModel2.getMExposedItems().contains(sourceId)) {
                    return;
                }
                CloudSearchViewModel cloudSearchViewModel3 = searchCloudFragment.mCloudSearchViewModel;
                if (cloudSearchViewModel3 == null) {
                    y45.B("mCloudSearchViewModel");
                } else {
                    cloudSearchViewModel = cloudSearchViewModel3;
                }
                cloudSearchViewModel.getMExposedItems().add(sourceId);
                Integer dataType = item.getDataType();
                if (dataType == null || dataType.intValue() != 1) {
                    az5.a.S(item.getSourceId(), item.getTitle(), item.getMediaLibraryId(), item.getMediaLibraryName(), searchCloudFragment.mSource);
                    return;
                }
                Long size = item.getSize();
                if (size != null) {
                    az5.a.P(item.getTitle(), cz5.b(size.longValue(), true), searchCloudFragment.mSource);
                }
            }

            @Override
            public void onChildViewDetachedFromWindow(View view2) {
                y45.j(view2, "view");
            }
        });
    }

    private final void initViewModel() {
        BookmarksViewModelNew bookmarksViewModelNew = this.mBookmarksViewModelNew;
        CloudSearchViewModel cloudSearchViewModel = null;
        if (bookmarksViewModelNew == null) {
            y45.B("mBookmarksViewModelNew");
            bookmarksViewModelNew = null;
        }
        bookmarksViewModelNew.i().observe(getViewLifecycleOwner(), new c(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return SearchCloudFragment.k1(this.b, (List) obj);
            }
        }));
        DownloadMainViewModel downloadMainViewModel = this.mDownloadMainViewModel;
        if (downloadMainViewModel == null) {
            y45.B("mDownloadMainViewModel");
            downloadMainViewModel = null;
        }
        downloadMainViewModel.i().observe(getViewLifecycleOwner(), new c(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return SearchCloudFragment.l1(this.b, (DownloadMain) obj);
            }
        }));
        CloudSearchViewModel cloudSearchViewModel2 = this.mCloudSearchViewModel;
        if (cloudSearchViewModel2 == null) {
            y45.B("mCloudSearchViewModel");
            cloudSearchViewModel2 = null;
        }
        cloudSearchViewModel2.getMSearchHistory().observe(getViewLifecycleOwner(), new c(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return SearchCloudFragment.m1(this.b, (List) obj);
            }
        }));
        CloudSearchViewModel cloudSearchViewModel3 = this.mCloudSearchViewModel;
        if (cloudSearchViewModel3 == null) {
            y45.B("mCloudSearchViewModel");
            cloudSearchViewModel3 = null;
        }
        cloudSearchViewModel3.getMSearchCloudDataList().observe(getViewLifecycleOwner(), new c(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return SearchCloudFragment.n1(this.b, (Pair) obj);
            }
        }));
        CloudSearchViewModel cloudSearchViewModel4 = this.mCloudSearchViewModel;
        if (cloudSearchViewModel4 == null) {
            y45.B("mCloudSearchViewModel");
            cloudSearchViewModel4 = null;
        }
        cloudSearchViewModel4.getMCloudDataListClear().observe(getViewLifecycleOwner(), new c(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return SearchCloudFragment.o1(this.b, (List) obj);
            }
        }));
        CloudSearchViewModel cloudSearchViewModel5 = this.mCloudSearchViewModel;
        if (cloudSearchViewModel5 == null) {
            y45.B("mCloudSearchViewModel");
        } else {
            cloudSearchViewModel = cloudSearchViewModel5;
        }
        cloudSearchViewModel.getMSearchLoadingLiveData().observe(getViewLifecycleOwner(), new c(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return SearchCloudFragment.p1(this.b, (Boolean) obj);
            }
        }));
    }

    public static final boolean j1(SearchCloudFragment searchCloudFragment, TextView textView, int i, KeyEvent keyEvent) {
        EditText editText;
        if (i == 3) {
            searchCloudFragment.w1(false);
            SearchBar searchBar = searchCloudFragment.mSearchBar;
            String strValueOf = String.valueOf((searchBar == null || (editText = searchBar.getEditText()) == null) ? null : editText.getText());
            az5.a.R(strValueOf, searchCloudFragment.mSource);
            searchCloudFragment.W0(strValueOf);
        }
        return false;
    }

    public static final zfb k1(SearchCloudFragment searchCloudFragment, List list) {
        searchCloudFragment.mBookMarkList = list;
        return zfb.a;
    }

    public static final zfb l1(SearchCloudFragment searchCloudFragment, DownloadMain downloadMain) {
        RecyclerView recyclerView;
        String string;
        Resources resources;
        LayoutCloudSearchBinding layoutCloudSearchBinding = searchCloudFragment.mBinding;
        if (layoutCloudSearchBinding != null && (recyclerView = layoutCloudSearchBinding.k) != null && recyclerView.getVisibility() == 0 && downloadMain.getWebsite_category_list() != null) {
            List<DownloadMain.PageItem> website_category_list = downloadMain.getWebsite_category_list();
            y45.i(website_category_list, "getWebsite_category_list(...)");
            List listE1 = i81.e1(website_category_list);
            List<Bookmark> list = searchCloudFragment.mBookMarkList;
            if (list != null && !list.isEmpty()) {
                DownloadMain.PageItem pageItem = new DownloadMain.PageItem();
                Context context = searchCloudFragment.mContext;
                if (context == null || (resources = context.getResources()) == null || (string = resources.getString(R.string.download_main_tab_bookmark)) == null) {
                    string = "";
                }
                pageItem.setCategory_name(string);
                pageItem.setWebsite_type(1);
                pageItem.setData_remark_list(list);
                listE1.add(0, pageItem);
            }
            DownloadMain.PageItem pageItem2 = new DownloadMain.PageItem();
            pageItem2.setWebsite_type(1003);
            listE1.add(0, pageItem2);
            DownloadMainItemAdapter downloadMainItemAdapter = searchCloudFragment.mDownloadMainItemAdapter;
            if (downloadMainItemAdapter != null) {
                downloadMainItemAdapter.d(listE1);
            }
            DownloadMainItemAdapter downloadMainItemAdapter2 = searchCloudFragment.mDownloadMainItemAdapter;
            if (downloadMainItemAdapter2 != null) {
                downloadMainItemAdapter2.notifyDataSetChanged();
            }
        }
        return zfb.a;
    }

    public static final zfb m1(SearchCloudFragment searchCloudFragment, List list) {
        if (list != null) {
            if (list.isEmpty()) {
                View view = searchCloudFragment.mHistoryView;
                if (view != null) {
                    view.setVisibility(8);
                }
            } else {
                View view2 = searchCloudFragment.mHistoryView;
                if (view2 != null) {
                    view2.setVisibility(0);
                }
            }
            CloudHistoryAdapter cloudHistoryAdapter = searchCloudFragment.mHistoryAdapter;
            if (cloudHistoryAdapter != null) {
                cloudHistoryAdapter.setNewData(list);
            }
            CloudSearchViewModel cloudSearchViewModel = searchCloudFragment.mCloudSearchViewModel;
            if (cloudSearchViewModel == null) {
                y45.B("mCloudSearchViewModel");
                cloudSearchViewModel = null;
            }
            searchCloudFragment.Z0(cloudSearchViewModel.getMHistoryCache().isEmpty());
        }
        return zfb.a;
    }

    public static final zfb n1(SearchCloudFragment searchCloudFragment, Pair pair) {
        List list;
        RecyclerView recyclerView;
        CloudSearchAdapter cloudSearchAdapter;
        RelativeLayout relativeLayout;
        RelativeLayout relativeLayout2;
        RecyclerView recyclerView2;
        RecyclerView recyclerView3;
        List list2;
        EditText editText;
        CloudSearchViewModel cloudSearchViewModel = null;
        if (pair != null && (list2 = (List) pair.getFirst()) != null) {
            SearchBar searchBar = searchCloudFragment.mSearchBar;
            az5.a.r(list2.size(), String.valueOf((searchBar == null || (editText = searchBar.getEditText()) == null) ? null : editText.getText()), searchCloudFragment.mSource);
        }
        if (pair != null && ((Number) pair.getSecond()).intValue() == 1) {
            View view = searchCloudFragment.mEmptyView;
            if (view != null) {
                view.setVisibility(8);
            }
            List list3 = (List) pair.getFirst();
            if (list3 != null && list3.isEmpty()) {
                searchCloudFragment.v1();
                return zfb.a;
            }
            LayoutCloudSearchBinding layoutCloudSearchBinding = searchCloudFragment.mBinding;
            if (layoutCloudSearchBinding != null && (recyclerView3 = layoutCloudSearchBinding.k) != null) {
                recyclerView3.setVisibility(8);
            }
            LayoutCloudSearchBinding layoutCloudSearchBinding2 = searchCloudFragment.mBinding;
            if (layoutCloudSearchBinding2 != null && (recyclerView2 = layoutCloudSearchBinding2.l) != null) {
                recyclerView2.setVisibility(0);
            }
            LayoutCloudSearchBinding layoutCloudSearchBinding3 = searchCloudFragment.mBinding;
            if (layoutCloudSearchBinding3 != null && (relativeLayout2 = layoutCloudSearchBinding3.h) != null) {
                relativeLayout2.setVisibility(0);
            }
            LayoutCloudSearchBinding layoutCloudSearchBinding4 = searchCloudFragment.mBinding;
            if (layoutCloudSearchBinding4 != null && (relativeLayout = layoutCloudSearchBinding4.h) != null) {
                relativeLayout.setVisibility(0);
            }
            List list4 = (List) pair.getFirst();
            if (list4 != null) {
                CloudSearchAdapter cloudSearchAdapter2 = searchCloudFragment.mCloudDataAdapter;
                if (cloudSearchAdapter2 != null) {
                    cloudSearchAdapter2.setNewData(new ArrayList(list4));
                }
                int size = list4.size();
                CloudSearchViewModel cloudSearchViewModel2 = searchCloudFragment.mCloudSearchViewModel;
                if (cloudSearchViewModel2 == null) {
                    y45.B("mCloudSearchViewModel");
                } else {
                    cloudSearchViewModel = cloudSearchViewModel2;
                }
                if (size < cloudSearchViewModel.getMPageSize() && (cloudSearchAdapter = searchCloudFragment.mCloudDataAdapter) != null) {
                    cloudSearchAdapter.loadMoreEnd();
                }
            }
        } else {
            if (pair == null || ((list = (List) pair.getFirst()) != null && list.isEmpty())) {
                CloudSearchAdapter cloudSearchAdapter3 = searchCloudFragment.mCloudDataAdapter;
                if (cloudSearchAdapter3 != null) {
                    cloudSearchAdapter3.loadMoreEnd();
                }
                return zfb.a;
            }
            LayoutCloudSearchBinding layoutCloudSearchBinding5 = searchCloudFragment.mBinding;
            if (layoutCloudSearchBinding5 != null && (recyclerView = layoutCloudSearchBinding5.l) != null) {
                recyclerView.setVisibility(0);
            }
            List list5 = (List) pair.getFirst();
            if (list5 != null) {
                CloudSearchAdapter cloudSearchAdapter4 = searchCloudFragment.mCloudDataAdapter;
                if (cloudSearchAdapter4 != null) {
                    cloudSearchAdapter4.addData((Collection) new ArrayList(list5));
                }
                CloudSearchAdapter cloudSearchAdapter5 = searchCloudFragment.mCloudDataAdapter;
                if (cloudSearchAdapter5 != null) {
                    cloudSearchAdapter5.loadMoreComplete();
                }
            }
        }
        return zfb.a;
    }

    public static final zfb o1(SearchCloudFragment searchCloudFragment, List list) {
        CloudSearchAdapter cloudSearchAdapter;
        if (list.isEmpty() && (cloudSearchAdapter = searchCloudFragment.mCloudDataAdapter) != null) {
            cloudSearchAdapter.setNewData(new ArrayList(list));
        }
        return zfb.a;
    }

    public static final zfb p1(SearchCloudFragment searchCloudFragment, Boolean bool) {
        Runnable runnable = searchCloudFragment.mLoadingDialogRunnable;
        if (runnable != null) {
            searchCloudFragment.mMainHandler.removeCallbacks(runnable);
        }
        com.transsion.widgetslib.dialog.d dVar = searchCloudFragment.mLoadingDialog;
        if (dVar != null) {
            dVar.dismiss();
        }
        searchCloudFragment.mLoadingDialogRunnable = null;
        return zfb.a;
    }

    public static final void q1(SearchCloudFragment searchCloudFragment) {
        EditText editText;
        SearchBar searchBar = searchCloudFragment.mSearchBar;
        if (searchBar == null || (editText = searchBar.getEditText()) == null) {
            return;
        }
        searchCloudFragment.hideSoftPanel(editText);
    }

    public static final void r1(SearchCloudFragment searchCloudFragment) {
        EditText editText;
        SearchBar searchBar = searchCloudFragment.mSearchBar;
        if (searchBar == null || (editText = searchBar.getEditText()) == null) {
            return;
        }
        searchCloudFragment.showSoftPanel(editText);
    }

    public static final void s1(SearchCloudFragment searchCloudFragment, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        if (wx0.a.a()) {
            return;
        }
        Object obj = baseQuickAdapter.getData().get(i);
        y45.h(obj, "null cannot be cast to non-null type com.transsion.dbdata.beans.cloud.SearchResponseData");
        SearchResponseData searchResponseData = (SearchResponseData) obj;
        Integer dataType = searchResponseData.getDataType();
        if (dataType == null || dataType.intValue() != 1) {
            VideoPlayerActivityInner.F2(searchCloudFragment.getContext(), MIMediaDataUtils.INSTANCE.searchDataToPlayVideoData(searchResponseData, 49));
            az5.a.Q(searchResponseData.getSourceId(), searchResponseData.getTitle(), searchResponseData.getMediaLibraryId(), searchResponseData.getMediaLibraryName(), searchCloudFragment.mSource, "video");
        } else {
            searchCloudFragment.jumpToPlayerPage(searchResponseData, 49);
            Long size = searchResponseData.getSize();
            if (size != null) {
                az5.a.O(searchResponseData.getTitle(), cz5.b(size.longValue(), true), searchCloudFragment.mSource);
            }
        }
    }

    private final void v1() {
        RecyclerView recyclerView;
        RelativeLayout relativeLayout;
        u1();
        LayoutCloudSearchBinding layoutCloudSearchBinding = this.mBinding;
        if (layoutCloudSearchBinding != null && (relativeLayout = layoutCloudSearchBinding.h) != null) {
            relativeLayout.setVisibility(8);
        }
        LayoutCloudSearchBinding layoutCloudSearchBinding2 = this.mBinding;
        if (layoutCloudSearchBinding2 == null || (recyclerView = layoutCloudSearchBinding2.l) == null) {
            return;
        }
        recyclerView.setVisibility(8);
    }

    private final void w1(boolean show) {
        this.mMainHandler.removeCallbacks(this.mShowOKeyboardRunnable);
        this.mMainHandler.removeCallbacks(this.mHideOKeyboardRunnable);
        this.mMainHandler.postDelayed(show ? this.mShowOKeyboardRunnable : this.mHideOKeyboardRunnable, 200L);
    }

    public static final void z1(SearchCloudFragment searchCloudFragment, String str, String str2) {
        String string;
        try {
            if (!TextUtils.isEmpty(str2)) {
                y45.g(str2);
                if (!TextUtils.isEmpty(j1a.i1(str2).toString())) {
                    if (searchCloudFragment.getMPromptDialog() != null) {
                        com.transsion.widgetslib.dialog.d mPromptDialog = searchCloudFragment.getMPromptDialog();
                        y45.g(mPromptDialog);
                        mPromptDialog.dismiss();
                    }
                    if (str == null || str.length() <= 0) {
                        string = j1a.i1(str2).toString();
                    } else {
                        string = j1a.i1(str2).toString() + Consts.DOT + str;
                    }
                    CloudSearchViewModel cloudSearchViewModel = searchCloudFragment.mCloudSearchViewModel;
                    CloudSearchViewModel cloudSearchViewModel2 = null;
                    if (cloudSearchViewModel == null) {
                        y45.B("mCloudSearchViewModel");
                        cloudSearchViewModel = null;
                    }
                    CloudSearchViewModel cloudSearchViewModel3 = searchCloudFragment.mCloudSearchViewModel;
                    if (cloudSearchViewModel3 == null) {
                        y45.B("mCloudSearchViewModel");
                    } else {
                        cloudSearchViewModel2 = cloudSearchViewModel3;
                    }
                    cloudSearchViewModel.v(cloudSearchViewModel2.getMSelectedItemData(), string);
                    return;
                }
            }
            ToastUtils.s(R.string.empty_text);
        } catch (Exception unused) {
        }
    }

    public final void B1(Editable s) {
        EditText editText;
        EditText editText2;
        if (j1a.i1(s.toString()).toString().length() > 0) {
            SearchBar searchBar = this.mSearchBar;
            if (searchBar != null && (editText2 = searchBar.getEditText()) != null) {
                editText2.setImeOptions(3);
            }
        } else {
            SearchBar searchBar2 = this.mSearchBar;
            if (searchBar2 != null && (editText = searchBar2.getEditText()) != null) {
                editText.setImeOptions(1073741830);
            }
        }
        FragmentActivity activity = getActivity();
        if (activity != null) {
            Object systemService = activity.getSystemService("input_method");
            y45.h(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
            InputMethodManager inputMethodManager = (InputMethodManager) systemService;
            SearchBar searchBar3 = this.mSearchBar;
            inputMethodManager.restartInput(searchBar3 != null ? searchBar3.getEditText() : null);
        }
    }

    public final void W0(String text) {
        CloudSearchViewModel cloudSearchViewModel;
        LinearLayout linearLayout;
        LinearLayout linearLayout2;
        CloudSearchViewModel cloudSearchViewModel2 = null;
        if (ejb.a.a(text)) {
            Intent intent = new Intent(getContext(), (Class<?>) WebActivity.class);
            intent.putExtra(VkConstant.URL, text);
            intent.putExtra("web_url_from", "dl_brower_cycle_search");
            f5.c(intent, getContext());
            w1(false);
            if (MainApp.p) {
                return;
            }
            CloudSearchViewModel cloudSearchViewModel3 = this.mCloudSearchViewModel;
            if (cloudSearchViewModel3 == null) {
                y45.B("mCloudSearchViewModel");
            } else {
                cloudSearchViewModel2 = cloudSearchViewModel3;
            }
            cloudSearchViewModel2.x(text);
            return;
        }
        LayoutCloudSearchBinding layoutCloudSearchBinding = this.mBinding;
        if (layoutCloudSearchBinding != null && (linearLayout2 = layoutCloudSearchBinding.n) != null) {
            linearLayout2.setVisibility(text.length() <= 0 ? 8 : 0);
        }
        LayoutCloudSearchBinding layoutCloudSearchBinding2 = this.mBinding;
        if (layoutCloudSearchBinding2 != null && (linearLayout = layoutCloudSearchBinding2.c) != null) {
            linearLayout.setVisibility(8);
        }
        if (text.length() > 0) {
            CloudSearchViewModel cloudSearchViewModel4 = this.mCloudSearchViewModel;
            if (cloudSearchViewModel4 == null) {
                y45.B("mCloudSearchViewModel");
                cloudSearchViewModel4 = null;
            }
            cloudSearchViewModel4.w(1);
            if (this.mLoadingDialogRunnable == null) {
                this.mLoadingDialogRunnable = new Runnable() {
                    @Override
                    public final void run() {
                        SearchCloudFragment.X0(this.b);
                    }
                };
            }
            Handler handler = this.mMainHandler;
            Runnable runnable = this.mLoadingDialogRunnable;
            y45.g(runnable);
            handler.postDelayed(runnable, 1000L);
            CloudSearchViewModel cloudSearchViewModel5 = this.mCloudSearchViewModel;
            if (cloudSearchViewModel5 == null) {
                y45.B("mCloudSearchViewModel");
                cloudSearchViewModel = null;
            } else {
                cloudSearchViewModel = cloudSearchViewModel5;
            }
            CloudSearchViewModel.s(cloudSearchViewModel, text, Boolean.valueOf(CloudFeaturesConfigHelper.INSTANCE.isSupportMIMediaLibrary()), 0, 0, 12, null);
            if (MainApp.p) {
                return;
            }
            CloudSearchViewModel cloudSearchViewModel6 = this.mCloudSearchViewModel;
            if (cloudSearchViewModel6 == null) {
                y45.B("mCloudSearchViewModel");
            } else {
                cloudSearchViewModel2 = cloudSearchViewModel6;
            }
            cloudSearchViewModel2.x(text);
        }
    }

    public final void Z0(boolean show) {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        RelativeLayout root;
        CloudSearchViewModel cloudSearchViewModel = this.mCloudSearchViewModel;
        View viewFindViewById = null;
        if (cloudSearchViewModel == null) {
            y45.B("mCloudSearchViewModel");
            cloudSearchViewModel = null;
        }
        List mHistoryCache = cloudSearchViewModel.getMHistoryCache();
        if (this.mEmptyView == null) {
            LayoutCloudSearchBinding layoutCloudSearchBinding = this.mBinding;
            if (layoutCloudSearchBinding != null && (root = layoutCloudSearchBinding.getRoot()) != null) {
                viewFindViewById = root.findViewById(R.id.empty_view);
            }
            y45.h(viewFindViewById, "null cannot be cast to non-null type android.view.ViewStub");
            this.mEmptyView = ((ViewStub) viewFindViewById).inflate();
        }
        View view = this.mEmptyView;
        if (view != null) {
            view.setVisibility((MainApp.p && show) ? 0 : 8);
        }
        if (MainApp.p && mHistoryCache.isEmpty()) {
            LayoutCloudSearchBinding layoutCloudSearchBinding2 = this.mBinding;
            if (layoutCloudSearchBinding2 == null || (recyclerView2 = layoutCloudSearchBinding2.j) == null) {
                return;
            }
            recyclerView2.setVisibility(8);
            return;
        }
        LayoutCloudSearchBinding layoutCloudSearchBinding3 = this.mBinding;
        if (layoutCloudSearchBinding3 == null || (recyclerView = layoutCloudSearchBinding3.j) == null) {
            return;
        }
        recyclerView.setVisibility(0);
    }

    @Override
    public void deleteFile() {
        CloudSearchViewModel cloudSearchViewModel = this.mCloudSearchViewModel;
        CloudSearchViewModel cloudSearchViewModel2 = null;
        if (cloudSearchViewModel == null) {
            y45.B("mCloudSearchViewModel");
            cloudSearchViewModel = null;
        }
        CloudSearchViewModel cloudSearchViewModel3 = this.mCloudSearchViewModel;
        if (cloudSearchViewModel3 == null) {
            y45.B("mCloudSearchViewModel");
        } else {
            cloudSearchViewModel2 = cloudSearchViewModel3;
        }
        cloudSearchViewModel.i(cloudSearchViewModel2.getMSelectedItemData());
    }

    @Override
    public void didReceivedNotification(int eventId, Object... args) {
        List<SearchResponseData> list;
        y45.j(args, "args");
        if (eventId != 1133) {
            if (eventId != 1135) {
                return;
            }
            w1(false);
            return;
        }
        if (args.length == 0) {
            return;
        }
        Object obj = args[0];
        if (obj instanceof FileHandlerCloudSearchData) {
            y45.h(obj, "null cannot be cast to non-null type com.transsion.dbdata.beans.FileHandlerCloudSearchData");
            FileHandlerCloudSearchData fileHandlerCloudSearchData = (FileHandlerCloudSearchData) obj;
            SearchResponseData data = fileHandlerCloudSearchData.getData();
            if (data == null || (list = fileHandlerCloudSearchData.getList()) == null) {
                return;
            }
            t1(fileHandlerCloudSearchData.getHandleType(), data, list);
        }
    }

    @Override
    public void doShare() {
        String sourceId;
        String title;
        String title2;
        CloudDriveBottomShareActivity.Companion companion = CloudDriveBottomShareActivity.INSTANCE;
        BaseActivity baseActivity = this.mActivity;
        y45.i(baseActivity, "mActivity");
        CloudSearchViewModel cloudSearchViewModel = this.mCloudSearchViewModel;
        if (cloudSearchViewModel == null) {
            y45.B("mCloudSearchViewModel");
            cloudSearchViewModel = null;
        }
        SearchResponseData mSelectedItemData = cloudSearchViewModel.getMSelectedItemData();
        String str = "";
        if (mSelectedItemData == null || (sourceId = mSelectedItemData.getSourceId()) == null) {
            sourceId = "";
        }
        CloudSearchViewModel cloudSearchViewModel2 = this.mCloudSearchViewModel;
        if (cloudSearchViewModel2 == null) {
            y45.B("mCloudSearchViewModel");
            cloudSearchViewModel2 = null;
        }
        SearchResponseData mSelectedItemData2 = cloudSearchViewModel2.getMSelectedItemData();
        if (mSelectedItemData2 == null || (title = mSelectedItemData2.getTitle()) == null) {
            title = "";
        }
        companion.a(baseActivity, sourceId, title);
        bz5.a aVar = bz5.a;
        CloudSearchViewModel cloudSearchViewModel3 = this.mCloudSearchViewModel;
        if (cloudSearchViewModel3 == null) {
            y45.B("mCloudSearchViewModel");
            cloudSearchViewModel3 = null;
        }
        SearchResponseData mSelectedItemData3 = cloudSearchViewModel3.getMSelectedItemData();
        if (mSelectedItemData3 != null && (title2 = mSelectedItemData3.getTitle()) != null) {
            str = title2;
        }
        bz5.a.b(aVar, null, str, 1, null);
    }

    @Override
    public void downloadFile() {
        new e6b(this.mContext, new e6b.c() {
            @Override
            public final void a(boolean z) {
                SearchCloudFragment.Y0(this.a, z);
            }
        }).b(false);
    }

    @Override
    public void loadData(boolean preload) {
        CloudSearchViewModel cloudSearchViewModel = this.mCloudSearchViewModel;
        if (cloudSearchViewModel == null) {
            y45.B("mCloudSearchViewModel");
            cloudSearchViewModel = null;
        }
        cloudSearchViewModel.t();
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        String string;
        super.onCreate(savedInstanceState);
        this.mCloudSearchViewModel = (CloudSearchViewModel) new ViewModelProvider(this).get(CloudSearchViewModel.class);
        this.mDownloadMainViewModel = (DownloadMainViewModel) new ViewModelProvider(this).get(DownloadMainViewModel.class);
        this.mBookmarksViewModelNew = (BookmarksViewModelNew) new ViewModelProvider(this).get(BookmarksViewModelNew.class);
        CloudSearchAdapter cloudSearchAdapter = new CloudSearchAdapter();
        this.mCloudDataAdapter = cloudSearchAdapter;
        cloudSearchAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                SearchCloudFragment.s1(this.b, baseQuickAdapter, view, i);
            }
        });
        DownloadMainItemAdapter downloadMainItemAdapter = new DownloadMainItemAdapter(this.mContext);
        this.mDownloadMainItemAdapter = downloadMainItemAdapter;
        downloadMainItemAdapter.r = true;
        this.mHistoryAdapter = new CloudHistoryAdapter();
        Bundle arguments = getArguments();
        if (arguments == null || (string = arguments.getString("source")) == null) {
            string = "";
        }
        this.mSource = string;
        DownloadEmptyHolder.INSTANCE.b(string);
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        y45.j(inflater, "inflater");
        LayoutCloudSearchBinding layoutCloudSearchBindingC = LayoutCloudSearchBinding.c(inflater, container, false);
        this.mBinding = layoutCloudSearchBindingC;
        if (layoutCloudSearchBindingC != null) {
            return layoutCloudSearchBindingC.getRoot();
        }
        return null;
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        h27.c().f(this, 1135);
    }

    @Override
    public void onPause() {
        super.onPause();
        h27.c().e(1128, new Object[0]);
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        View backView;
        y45.j(view, "view");
        super.onViewCreated(view, savedInstanceState);
        initView(view);
        initViewModel();
        loadData(true);
        SearchBar searchBar = (SearchBar) view.findViewById(R.id.search_bar_file);
        this.mSearchBar = searchBar;
        if (searchBar != null && (backView = searchBar.getBackView()) != null) {
            backView.setRotationY(Utils.isRtl() ? 180.0f : 0.0f);
        }
        w1(true);
        h27.c().b(this, 1135);
    }

    @Override
    public void showRenameDialog() {
        w1(false);
        y1();
    }

    public final void t1(int type, SearchResponseData videoCloudData, List videoCloudDataList) {
        List<SearchResponseData> listK;
        CloudSearchAdapter cloudSearchAdapter = this.mCloudDataAdapter;
        if (cloudSearchAdapter == null || (listK = cloudSearchAdapter.getData()) == null) {
            listK = y71.k();
        }
        ArrayList arrayList = new ArrayList(listK);
        if (type == 1) {
            arrayList.remove(videoCloudData);
            CloudSearchAdapter cloudSearchAdapter2 = this.mCloudDataAdapter;
            if (cloudSearchAdapter2 != null) {
                cloudSearchAdapter2.setNewData(arrayList);
                return;
            }
            return;
        }
        if (type != 2) {
            return;
        }
        Iterator it = arrayList.iterator();
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                i = -1;
                break;
            } else if (y45.e(((SearchResponseData) it.next()).getSourceId(), videoCloudData.getSourceId())) {
                break;
            } else {
                i++;
            }
        }
        if (i != -1) {
            arrayList.set(i, videoCloudData);
            CloudSearchAdapter cloudSearchAdapter3 = this.mCloudDataAdapter;
            if (cloudSearchAdapter3 != null) {
                cloudSearchAdapter3.setNewData(arrayList);
            }
        }
    }

    public final void u1() {
        EditText editText;
        Editable text;
        RecyclerView recyclerView;
        LayoutCloudSearchBinding layoutCloudSearchBinding = this.mBinding;
        if (layoutCloudSearchBinding != null && (recyclerView = layoutCloudSearchBinding.k) != null) {
            recyclerView.setVisibility(0);
        }
        DownloadMainViewModel downloadMainViewModel = this.mDownloadMainViewModel;
        if (downloadMainViewModel == null) {
            y45.B("mDownloadMainViewModel");
            downloadMainViewModel = null;
        }
        downloadMainViewModel.f(this.mContext);
        SearchBar searchBar = this.mSearchBar;
        if (searchBar == null || (editText = searchBar.getEditText()) == null || (text = editText.getText()) == null) {
            return;
        }
        DownloadMainItemAdapter downloadMainItemAdapter = this.mDownloadMainItemAdapter;
        if (downloadMainItemAdapter != null) {
            downloadMainItemAdapter.q = text.toString();
        }
        DownloadEmptyHolder.s = text.toString();
    }

    public final void x1(SearchResponseData searchResponseData) {
        Intent intent = new Intent();
        MediaItem mediaItem = new MediaItem();
        mediaItem.displayName = searchResponseData.getTitle();
        intent.putExtra(SheetDialogParamsConstant.IS_KT_CLOUD_MAIN_PAGE, true);
        intent.putExtra("data", mediaItem);
        intent.putExtra(SheetDialogParamsConstant.IN_PARAM_FROM_LIST_MORE_ICON, true);
        intent.setClass(this.mActivity, VideoSheetDialogActivity.class);
        getMActivityResultLauncher().launch(intent);
    }

    public final void y1() {
        CloudSearchViewModel cloudSearchViewModel = this.mCloudSearchViewModel;
        if (cloudSearchViewModel == null) {
            y45.B("mCloudSearchViewModel");
            cloudSearchViewModel = null;
        }
        SearchResponseData mSelectedItemData = cloudSearchViewModel.getMSelectedItemData();
        if (mSelectedItemData != null) {
            String title = mSelectedItemData.getTitle();
            final String strZ0 = title != null ? j1a.Z0(title, Consts.DOT, "") : null;
            if (strZ0 != null && strZ0.length() > 0) {
                title = j1a.g1(title, Consts.DOT, null, 2, null);
            }
            setMInputDialog(new InputDialog(this.mContext).A(R.string.rename).s(R.string.Save, new InputDialog.g() {
                @Override
                public final void a(String str) {
                    SearchCloudFragment.z1(this.a, strZ0, str);
                }
            }).x(R.string.cancel, new DialogInterface.OnClickListener() {
                @Override
                public final void onClick(DialogInterface dialogInterface, int i) {
                    SearchCloudFragment.A1(this.b, dialogInterface, i);
                }
            }).z(true).r(false));
            InputDialog mInputDialog = getMInputDialog();
            if (mInputDialog != null) {
                mInputDialog.v(title == null ? "" : title, "", 61, null);
            }
            InputDialog mInputDialog2 = getMInputDialog();
            if (mInputDialog2 != null) {
                mInputDialog2.setTextWatcher(new d(title, this));
            }
            try {
                InputDialog mInputDialog3 = getMInputDialog();
                setMPromptDialog(mInputDialog3 != null ? mInputDialog3.m() : null);
                com.transsion.widgetslib.dialog.d mPromptDialog = getMPromptDialog();
                if (mPromptDialog != null) {
                    mPromptDialog.show();
                }
                InputDialog mInputDialog4 = getMInputDialog();
                if (mInputDialog4 != null) {
                    mInputDialog4.w(false);
                }
                setButtonEnable(false);
                zfb zfbVar = zfb.a;
            } catch (Exception e) {
                Log.e("CloudFragment", "error:" + e.getMessage());
            }
        }
    }
}
