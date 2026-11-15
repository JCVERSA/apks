package com.transsion.postdetail.ui.fragment;

import android.content.Context;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.loadmore.LoadMoreStatus;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.MBridgeConstans;
import com.therouter.TheRouter;
import com.tn.lib.view.DefaultView;
import com.tn.lib.widget.R$mipmap;
import com.tn.lib.widget.TnTextView;
import com.tn.lib.widget.dialog.TRDialog;
import com.tn.lib.widget.dialog.TRDialogListener;
import com.transsion.ad.bidding.nativead.BiddingListManager;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.moviedetailapi.bean.PostItemType;
import com.transsion.moviedetailapi.bean.PostSubjectBean;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.moviedetailapi.bean.Video;
import com.transsion.ninegridview.helper.FileHelper;
import com.transsion.player.config.RenderType;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.postdetail.R$string;
import com.transsion.postdetail.control.VideoPagerChangeControl;
import com.transsion.postdetail.helper.ImmVideoHelper;
import com.transsion.postdetail.ui.fragment.preload.VideoDataLoader;
import com.transsion.postdetail.ui.fragment.preload.VideoImmersiveDataLoaderV2;
import com.transsion.postdetail.ui.view.ImmVideoLoadMoreView;
import com.transsion.postdetail.ui.view.ImmVideoNoNetworkView;
import com.transsion.postdetail.util.PostSaveHelper;
import com.transsion.postdetail.viewmodel.PostDetailViewModel;
import com.transsion.shorttv.base.pager.PagerLayoutManager;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000Þ\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u009f\u00012\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u0004:\u0002 \u0001B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\u0006J\u000f\u0010\t\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\t\u0010\u0006J\u000f\u0010\n\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u0006J\u000f\u0010\u000b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000b\u0010\u0006J\u000f\u0010\f\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\f\u0010\u0006J\u000f\u0010\r\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\r\u0010\u0006J\u0017\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0012\u0010\u0006J\u000f\u0010\u0013\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0013\u0010\u0006J\u0019\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0015\u001a\u00020\u0014H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0019\u0010\u0019\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0015\u001a\u00020\u0014H\u0002¢\u0006\u0004\b\u0019\u0010\u0018J\u000f\u0010\u001a\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u001a\u0010\u0006J\u000f\u0010\u001b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u001b\u0010\u0006J\u000f\u0010\u001c\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u001c\u0010\u0006J\u000f\u0010\u001d\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u001d\u0010\u0006J\u000f\u0010\u001e\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u001e\u0010\u0006J\u0017\u0010!\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u001fH\u0002¢\u0006\u0004\b!\u0010\"J\u0017\u0010&\u001a\u00020%2\u0006\u0010$\u001a\u00020#H\u0002¢\u0006\u0004\b&\u0010'J\u000f\u0010(\u001a\u00020\u0007H\u0002¢\u0006\u0004\b(\u0010\u0006J\u000f\u0010)\u001a\u00020\u0007H\u0002¢\u0006\u0004\b)\u0010\u0006J\u0017\u0010,\u001a\u00020\u00072\u0006\u0010+\u001a\u00020*H\u0002¢\u0006\u0004\b,\u0010-J\u000f\u0010.\u001a\u00020\u0007H\u0002¢\u0006\u0004\b.\u0010\u0006J\u000f\u0010/\u001a\u00020\u0007H\u0002¢\u0006\u0004\b/\u0010\u0006J\u0017\u00102\u001a\u00020\u00022\u0006\u00101\u001a\u000200H\u0016¢\u0006\u0004\b2\u00103J\u0019\u00106\u001a\u00020\u00072\b\u00105\u001a\u0004\u0018\u000104H\u0016¢\u0006\u0004\b6\u00107J\u000f\u00109\u001a\u000208H\u0016¢\u0006\u0004\b9\u0010:J!\u0010<\u001a\u00020\u00072\u0006\u0010;\u001a\u00020\u00162\b\u00105\u001a\u0004\u0018\u000104H\u0016¢\u0006\u0004\b<\u0010=J!\u0010>\u001a\u00020\u00072\u0006\u0010;\u001a\u00020\u00162\b\u00105\u001a\u0004\u0018\u000104H\u0016¢\u0006\u0004\b>\u0010=J\u000f\u0010?\u001a\u00020\u0007H\u0016¢\u0006\u0004\b?\u0010\u0006J\u000f\u0010@\u001a\u00020\u0007H\u0016¢\u0006\u0004\b@\u0010\u0006J\u000f\u0010A\u001a\u00020\u0007H\u0016¢\u0006\u0004\bA\u0010\u0006J\u0017\u0010C\u001a\u00020\u00072\u0006\u0010B\u001a\u00020%H\u0016¢\u0006\u0004\bC\u0010DJ\u000f\u0010E\u001a\u00020\u0007H\u0016¢\u0006\u0004\bE\u0010\u0006J\u000f\u0010F\u001a\u00020\u0007H\u0016¢\u0006\u0004\bF\u0010\u0006J\u000f\u0010G\u001a\u00020\u0007H\u0016¢\u0006\u0004\bG\u0010\u0006J\u0017\u0010I\u001a\u00020\u00072\u0006\u0010H\u001a\u000204H\u0016¢\u0006\u0004\bI\u00107J\u000f\u0010J\u001a\u00020\u0007H\u0016¢\u0006\u0004\bJ\u0010\u0006J\u0017\u0010M\u001a\u00020\u00072\u0006\u0010L\u001a\u00020KH\u0016¢\u0006\u0004\bM\u0010NJ\u0017\u0010O\u001a\u00020\u00072\u0006\u0010L\u001a\u00020KH\u0016¢\u0006\u0004\bO\u0010NJ1\u0010U\u001a\u00020\u00072\u0006\u0010P\u001a\u00020\u001f2\u0010\u0010R\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010#0Q2\u0006\u0010T\u001a\u00020SH\u0016¢\u0006\u0004\bU\u0010VR\u0016\u0010W\u001a\u00020#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bW\u0010XR\u0016\u0010Y\u001a\u00020#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bY\u0010XR\u0016\u0010Z\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bZ\u0010[R\u0016\u0010\\\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\\\u0010]R$\u0010^\u001a\u0004\u0018\u00010#8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b^\u0010X\u001a\u0004\b_\u0010`\"\u0004\ba\u0010bR\u0016\u0010c\u001a\u00020#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bc\u0010XR\u0016\u0010d\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bd\u0010[R\u0016\u0010e\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\be\u0010]R\u0016\u0010f\u001a\u00020#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bf\u0010XR\u0018\u0010g\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bg\u0010XR\u001b\u0010m\u001a\u00020h8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bi\u0010j\u001a\u0004\bk\u0010lR\u001d\u0010r\u001a\u0004\u0018\u00010n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bo\u0010j\u001a\u0004\bp\u0010qR\u0018\u0010t\u001a\u0004\u0018\u00010s8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bt\u0010uR\u0018\u0010w\u001a\u0004\u0018\u00010v8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bw\u0010xR\u0018\u0010z\u001a\u0004\u0018\u00010y8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bz\u0010{R\u0018\u0010}\u001a\u0004\u0018\u00010|8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b}\u0010~R\u001b\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u007f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0080\u0001\u0010\u0081\u0001R\u0018\u0010\u0082\u0001\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0082\u0001\u0010]R\u0018\u0010\u0083\u0001\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0083\u0001\u0010]R\u0018\u0010\u0084\u0001\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0084\u0001\u0010]R\u0018\u0010\u0085\u0001\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0085\u0001\u0010]R/\u0010\u0088\u0001\u001a\u0018\u0012\u0004\u0012\u00020*\u0018\u00010\u0086\u0001j\u000b\u0012\u0004\u0012\u00020*\u0018\u0001`\u0087\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0088\u0001\u0010\u0089\u0001R\u0018\u0010\u008a\u0001\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u008a\u0001\u0010]R\u0018\u0010\u008b\u0001\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u008b\u0001\u0010]R\u0018\u0010\u008c\u0001\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u008c\u0001\u0010[R\u0018\u0010\u008d\u0001\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u008d\u0001\u0010[R\u0018\u0010\u008e\u0001\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u008e\u0001\u0010]R\u0018\u0010\u008f\u0001\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u008f\u0001\u0010[R#\u0010\u0091\u0001\u001a\t\u0012\u0004\u0012\u00020#0\u0090\u00018\u0006¢\u0006\u0010\n\u0006\b\u0091\u0001\u0010\u0092\u0001\u001a\u0006\b\u0093\u0001\u0010\u0094\u0001R*\u0010\u0096\u0001\u001a\u00030\u0095\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u0096\u0001\u0010\u0097\u0001\u001a\u0006\b\u0098\u0001\u0010\u0099\u0001\"\u0006\b\u009a\u0001\u0010\u009b\u0001R\u001c\u0010\u009d\u0001\u001a\u0005\u0018\u00010\u009c\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009d\u0001\u0010\u009e\u0001¨\u0006¡\u0001"}, d2 = {"Lcom/transsion/postdetail/ui/fragment/VideoFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lwn/o;", "Lim/f;", "Lcom/tn/lib/widget/dialog/TRDialogListener;", "<init>", "()V", "", "initPlayer", "initAdapter", "initViewModel", "initBack", "initAudioListener", "observeRemoveVideo", "Lcom/transsion/moviedetailapi/bean/PostSubjectBean;", "subjectBean", "updateData", "(Lcom/transsion/moviedetailapi/bean/PostSubjectBean;)V", "showNotNetError", "showEmpty", "Landroid/content/Context;", "context", "Landroid/view/View;", "getEmptyView", "(Landroid/content/Context;)Landroid/view/View;", "getNotNetErrorView", "hideProgress", "showProgress", "loadMore", "loadData", "doLoadData", "", "it", "scrollToPosition", "(I)V", "", "itemType", "", "checkItemType", "(Ljava/lang/String;)Z", "localLogPause", "initAd", "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", WebConstants.FIELD_ITEM, "setPTParams", "(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V", "initNonAd", "showSettingDialog", "Landroid/view/LayoutInflater;", "inflater", "getViewBinding", "(Landroid/view/LayoutInflater;)Lwn/o;", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "initData", "lazyLoadData", "onResume", "onPause", "hidden", "onHiddenChanged", "(Z)V", "logPause", "logResume", "onDestroy", "outState", "onSaveInstanceState", "onMemberStateChange", "Lcom/tn/lib/widget/dialog/TRDialog;", "dialog", "onLeftButtonClick", "(Lcom/tn/lib/widget/dialog/TRDialog;)V", "onRightButtonClick", "requestCode", "", "permissions", "", "grantResults", "onRequestPermissionsResult", "(I[Ljava/lang/String;[I)V", "mPostId", "Ljava/lang/String;", "mItemType", "mTabId", "I", "fromComment", "Z", "tran_ops", "getTran_ops", "()Ljava/lang/String;", "setTran_ops", "(Ljava/lang/String;)V", "mNextPage", "mPerPage", "videoLoadMore", "commentId", "pageFrom", "Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;", "mVideoViewModel$delegate", "Lkotlin/Lazy;", "getMVideoViewModel", "()Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;", "mVideoViewModel", "Lep/a;", "mAudioApi$delegate", "getMAudioApi", "()Lep/a;", "mAudioApi", "Lcom/transsion/shorttv/base/pager/PagerLayoutManager;", "mPagerLayoutManager", "Lcom/transsion/shorttv/base/pager/PagerLayoutManager;", "Lcom/transsion/postdetail/control/VideoPagerChangeControl;", "mPagerChangeControl", "Lcom/transsion/postdetail/control/VideoPagerChangeControl;", "Lcom/transsion/postdetail/ui/adapter/d;", "mAdapter", "Lcom/transsion/postdetail/ui/adapter/d;", "Lcom/transsion/player/orplayer/f;", "mOrPlayer", "Lcom/transsion/player/orplayer/f;", "Lcom/transsion/player/ui/ORPlayerView;", "mOrPlayerView", "Lcom/transsion/player/ui/ORPlayerView;", "isLoadingData", "isFirstLoadMore", "attachToMain", "needBackToRoom", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "downloadedShortsList", "Ljava/util/ArrayList;", "prioritizeDownloaded", "isFromDownloaded", "currentDownloadedIndex", "startDownloadedIndex", "hasShownOnlineToast", "savedCurrentIndex", "", "list", "Ljava/util/List;", "getList", "()Ljava/util/List;", "", "resumeTimeStamp", "J", "getResumeTimeStamp", "()J", "setResumeTimeStamp", "(J)V", "Lcom/transsion/ad/bidding/nativead/BiddingListManager;", "v3ListManager", "Lcom/transsion/ad/bidding/nativead/BiddingListManager;", "Companion", "a", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class VideoFragment extends BaseFragment<wn.o> implements im.f, TRDialogListener {
    private static final String CURRENT_INDEX = "CURRENT_INDEX";

    public static final Companion INSTANCE = new Companion(null);
    public static final String PAGE_NAME = "postdetail_video";
    private boolean attachToMain;
    private int currentDownloadedIndex;
    private ArrayList<PostSubjectItem> downloadedShortsList;
    private boolean fromComment;
    private boolean hasShownOnlineToast;
    private boolean isFirstLoadMore;
    private boolean isFromDownloaded;
    private boolean isLoadingData;
    private final List<String> list;
    private com.transsion.postdetail.ui.adapter.d mAdapter;

    private final Lazy mAudioApi;
    private com.transsion.player.orplayer.f mOrPlayer;
    private ORPlayerView mOrPlayerView;
    private VideoPagerChangeControl mPagerChangeControl;
    private PagerLayoutManager mPagerLayoutManager;
    private int mTabId;

    private final Lazy mVideoViewModel;
    private boolean needBackToRoom;
    private String pageFrom;
    private boolean prioritizeDownloaded;
    private long resumeTimeStamp;
    private int savedCurrentIndex;
    private int startDownloadedIndex;
    private String tran_ops;
    private BiddingListManager v3ListManager;
    private boolean videoLoadMore;
    private String mPostId = "";
    private String mItemType = "";
    private String mNextPage = "1";
    private int mPerPage = 5;
    private String commentId = "";

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final VideoFragment a(String str, String str2, Integer num, boolean z10, boolean z11, String str3, boolean z12, String str4, String str5, boolean z13, ArrayList arrayList, boolean z14, boolean z15) {
            int iC;
            VideoFragment videoFragment = new VideoFragment();
            if (str == null || str.length() == 0) {
                iC = am.e.f407a.c(new VideoImmersiveDataLoaderV2(str5, "0", "1", 5));
            } else {
                iC = am.e.f407a.c(new VideoDataLoader(str));
            }
            videoFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("id", str), TuplesKt.a("item_type", str2), TuplesKt.a("tab_id", num), TuplesKt.a("video_load_more", Boolean.valueOf(z10)), TuplesKt.a("from_comment", Boolean.valueOf(z11)), TuplesKt.a("rec_ops", str3), TuplesKt.a("attach_to_main", Boolean.valueOf(z12)), TuplesKt.a("yy_preload_id", Integer.valueOf(iC)), TuplesKt.a("comment_id", str4), TuplesKt.a(WebConstants.PAGE_FROM, str5), TuplesKt.a("need_back_to_room", Boolean.valueOf(z13)), TuplesKt.a("downloaded_shorts_list", arrayList), TuplesKt.a("prioritize_downloaded", Boolean.valueOf(z14)), TuplesKt.a("is_from_downloaded", Boolean.valueOf(z15))));
            return videoFragment;
        }

        private Companion() {
        }
    }

    public static final class b extends androidx.activity.u {
        b() {
            super(true);
        }

        @Override
        public void handleOnBackPressed() {
            if (VideoFragment.this.needBackToRoom) {
                ep.k.i(ep.k.f59780a, null, null, null, false, 15, null);
            }
            FragmentActivity activity = VideoFragment.this.getActivity();
            if (activity != null) {
                activity.finish();
            }
        }
    }

    public static final class c implements yg.m {
        c() {
        }

        @Override
        public void onConnected() {
            yg.m.a.a(this);
        }

        @Override
        public void onDisconnected() {
        }

        @Override
        public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
            t6.f fVarH0;
            Intrinsics.h(network, "network");
            Intrinsics.h(networkCapabilities, "networkCapabilities");
            if (((PostSubjectBean) VideoFragment.this.getMVideoViewModel().v().f()) == null) {
                VideoFragment.this.loadData();
                return;
            }
            com.transsion.postdetail.ui.adapter.d dVar = VideoFragment.this.mAdapter;
            if (((dVar == null || (fVarH0 = dVar.h0()) == null) ? null : fVarH0.i()) == LoadMoreStatus.Fail) {
                VideoFragment.this.loadMore();
            }
        }
    }

    public static final class d extends VideoPagerChangeControl {
        d(boolean z10, com.transsion.postdetail.ui.adapter.d dVar, com.transsion.player.orplayer.f fVar, ORPlayerView oRPlayerView, PagerLayoutManager pagerLayoutManager, String str) {
            super(VideoFragment.this, z10, dVar, fVar, oRPlayerView, pagerLayoutManager, str);
        }

        @Override
        public void f(int i10, boolean z10, View view) {
            super.f(i10, z10, view);
            if (VideoFragment.this.isFromDownloaded) {
                ArrayList arrayList = VideoFragment.this.downloadedShortsList;
                int size = VideoFragment.this.startDownloadedIndex >= 0 ? (arrayList != null ? arrayList.size() : 0) - VideoFragment.this.startDownloadedIndex : 0;
                if (size <= 0 || i10 < size) {
                    VideoFragment.this.hasShownOnlineToast = false;
                } else {
                    if (VideoFragment.this.hasShownOnlineToast) {
                        return;
                    }
                    VideoFragment.this.hasShownOnlineToast = true;
                    com.transsion.baseui.util.m.a(R$string.shorts_view_online_content);
                    com.transsion.baselib.helper.a.f42121a.c(VideoFragment.PAGE_NAME, "online");
                }
            }
        }
    }

    public static final class e extends RecyclerView.r {

        private long f47568a;

        e() {
        }

        @Override
        public void onScrollStateChanged(RecyclerView recyclerView, int i10) {
            List<Object> data;
            Intrinsics.h(recyclerView, "recyclerView");
            super.onScrollStateChanged(recyclerView, i10);
            if (!VideoFragment.this.isFromDownloaded || yg.l.f76264a.e() || i10 == 0) {
                return;
            }
            VideoPagerChangeControl videoPagerChangeControl = VideoFragment.this.mPagerChangeControl;
            int size = 0;
            int iH = videoPagerChangeControl != null ? videoPagerChangeControl.h() : 0;
            com.transsion.postdetail.ui.adapter.d dVar = VideoFragment.this.mAdapter;
            if (dVar != null && (data = dVar.getData()) != null) {
                size = data.size();
            }
            boolean zCanScrollVertically = recyclerView.canScrollVertically(1);
            if (iH < size - 1 || zCanScrollVertically) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - this.f47568a > 2000) {
                this.f47568a = jCurrentTimeMillis;
                com.transsion.baseui.util.m.d(R$string.shorts_no_more_downloaded);
                com.transsion.baselib.helper.a.f42121a.c(VideoFragment.PAGE_NAME, OfflineConstantsKt.OFFLINE);
            }
        }
    }

    static final class f implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f47570a;

        f(Function1 function) {
            Intrinsics.h(function, "function");
            this.f47570a = function;
        }

        @Override
        public final Function a() {
            return this.f47570a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof androidx.p009lifecycle.c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override
        public final void onChanged(Object obj) {
            this.f47570a.invoke(obj);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.postdetail.ui.fragment.VideoFragment$onDestroy$1", f = "VideoFragment.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return VideoFragment.this.new AnonymousClass1(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            com.transsion.player.orplayer.f fVar = VideoFragment.this.mOrPlayer;
            if (fVar != null) {
                fVar.stop();
            }
            com.transsion.player.orplayer.f fVar2 = VideoFragment.this.mOrPlayer;
            if (fVar2 != null) {
                fVar2.release();
            }
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    public VideoFragment() {
        final Function0<Fragment> function0 = new Function0<Fragment>() {
            {
                super(0);
            }

            @Override
            public final Fragment invoke() {
                return this;
            }
        };
        this.mVideoViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(PostDetailViewModel.class), new Function0<androidx.p009lifecycle.x0>() {
            {
                super(0);
            }

            @Override
            public final androidx.p009lifecycle.x0 invoke() {
                androidx.p009lifecycle.x0 viewModelStore = ((androidx.p009lifecycle.y0) function0.invoke()).getViewModelStore();
                Intrinsics.g(viewModelStore, "ownerProducer().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<androidx.lifecycle.v0.c>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final androidx.lifecycle.v0.c invoke() {
                Object objInvoke = function0.invoke();
                androidx.p009lifecycle.m mVar = objInvoke instanceof androidx.p009lifecycle.m ? (androidx.p009lifecycle.m) objInvoke : null;
                androidx.lifecycle.v0.c defaultViewModelProviderFactory = mVar != null ? mVar.getDefaultViewModelProviderFactory() : null;
                if (defaultViewModelProviderFactory == null) {
                    defaultViewModelProviderFactory = this.getDefaultViewModelProviderFactory();
                }
                Intrinsics.g(defaultViewModelProviderFactory, "(ownerProducer() as? Has…tViewModelProviderFactory");
                return defaultViewModelProviderFactory;
            }
        });
        this.mAudioApi = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return VideoFragment.mAudioApi_delegate$lambda$0();
            }
        });
        this.isFirstLoadMore = true;
        this.currentDownloadedIndex = -1;
        this.savedCurrentIndex = -1;
        this.list = CollectionsKt.e(PostItemType.SUBJECT.getValue());
    }

    private final boolean checkItemType(String itemType) {
        return this.list.contains(itemType);
    }

    private final void doLoadData() {
        ArrayList<PostSubjectItem> arrayList;
        if (this.isLoadingData) {
            return;
        }
        if (this.prioritizeDownloaded && (arrayList = this.downloadedShortsList) != null && !arrayList.isEmpty()) {
            int i10 = this.currentDownloadedIndex + 1;
            this.currentDownloadedIndex = i10;
            ArrayList<PostSubjectItem> arrayList2 = this.downloadedShortsList;
            Intrinsics.e(arrayList2);
            if (i10 < arrayList2.size()) {
                ArrayList<PostSubjectItem> arrayList3 = this.downloadedShortsList;
                Intrinsics.e(arrayList3);
                PostSubjectItem postSubjectItem = arrayList3.get(this.currentDownloadedIndex);
                Intrinsics.g(postSubjectItem, "get(...)");
                updateData(new PostSubjectBean(CollectionsKt.q(postSubjectItem), null, null, null));
                return;
            }
            this.prioritizeDownloaded = false;
        }
        this.isLoadingData = true;
        PostDetailViewModel mVideoViewModel = getMVideoViewModel();
        String str = this.mPostId;
        mVideoViewModel.u(str, this.mTabId, this.mNextPage, this.mPerPage, this.videoLoadMore, (this.attachToMain && (str == null || str.length() == 0)) ? 1 : 0);
    }

    private final View getEmptyView(Context context) {
        final DefaultView defaultView = new DefaultView(context, DefaultView.ModelStyle.MODEL_STYLE_NIGHT);
        defaultView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        defaultView.setGravity(17);
        defaultView.setDefaultImageViewVisibility(0);
        defaultView.setDefaultImage(R$mipmap.ic_no_content);
        String string = context.getString(com.tn.lib.widget.R$string.no_content);
        Intrinsics.g(string, "getString(...)");
        defaultView.setDescText(string);
        defaultView.setStyle(DefaultView.DefaultViewStyle.STYLE_IMAGE_DESC_BTN);
        defaultView.setBtnVisibility(0);
        String string2 = context.getString(com.transsion.baseui.R$string.retry_text);
        Intrinsics.g(string2, "getString(...)");
        defaultView.setBtnText(string2);
        defaultView.setBtnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                VideoFragment.getEmptyView$lambda$20$lambda$19(this.f47604a, defaultView, view);
            }
        });
        defaultView.setVisibility(0);
        return defaultView;
    }

    public static final void getEmptyView$lambda$20$lambda$19(VideoFragment videoFragment, DefaultView defaultView, View view) {
        videoFragment.loadData();
        defaultView.setVisibility(8);
    }

    private final ep.a getMAudioApi() {
        return (ep.a) this.mAudioApi.getValue();
    }

    public final PostDetailViewModel getMVideoViewModel() {
        return (PostDetailViewModel) this.mVideoViewModel.getValue();
    }

    private final View getNotNetErrorView(Context context) {
        final ImmVideoNoNetworkView immVideoNoNetworkView = new ImmVideoNoNetworkView(context);
        uf.c.e(immVideoNoNetworkView);
        immVideoNoNetworkView.retry(new Function0() {
            @Override
            public final Object invoke() {
                return VideoFragment.getNotNetErrorView$lambda$23$lambda$21(immVideoNoNetworkView, this);
            }
        });
        immVideoNoNetworkView.goToSetting(new Function0() {
            @Override
            public final Object invoke() {
                return VideoFragment.getNotNetErrorView$lambda$23$lambda$22();
            }
        });
        com.tn.lib.view.o.a(PAGE_NAME);
        return immVideoNoNetworkView;
    }

    public static final Unit getNotNetErrorView$lambda$23$lambda$21(ImmVideoNoNetworkView immVideoNoNetworkView, VideoFragment videoFragment) {
        uf.c.g(immVideoNoNetworkView);
        videoFragment.showProgress();
        videoFragment.loadData();
        com.tn.lib.view.o.b(PAGE_NAME);
        return Unit.f64096a;
    }

    public static final Unit getNotNetErrorView$lambda$23$lambda$22() {
        com.tn.lib.view.o.c(PAGE_NAME);
        return Unit.f64096a;
    }

    private final void hideProgress() {
        ProgressBar progressBar;
        wn.o mViewBinding = getMViewBinding();
        if (mViewBinding == null || (progressBar = mViewBinding.f74509c) == null) {
            return;
        }
        uf.c.g(progressBar);
    }

    private final void initAd() {
        BiddingListManager biddingListManager = new BiddingListManager();
        this.v3ListManager = biddingListManager;
        wn.o mViewBinding = getMViewBinding();
        biddingListManager.F(mViewBinding != null ? mViewBinding.f74510d : null);
        BiddingListManager biddingListManager2 = this.v3ListManager;
        if (biddingListManager2 != null) {
            biddingListManager2.A(androidx.p009lifecycle.v.a(this));
        }
        BiddingListManager biddingListManager3 = this.v3ListManager;
        if (biddingListManager3 != null) {
            biddingListManager3.G("VideoForYouListScene");
        }
        BiddingListManager biddingListManager4 = this.v3ListManager;
        if (biddingListManager4 != null) {
            biddingListManager4.z(new Function2() {
                @Override
                public final Object invoke(Object obj, Object obj2) {
                    return VideoFragment.initAd$lambda$28(this.f47751a, ((Integer) obj).intValue(), (BiddingNativeManager) obj2);
                }
            });
        }
    }

    public static final Unit initAd$lambda$28(VideoFragment videoFragment, int i10, BiddingNativeManager current) {
        List<Object> data;
        Intrinsics.h(current, "current");
        if (current != null) {
            PostSubjectItem postSubjectItem = new PostSubjectItem(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, null, false, null, false, null, false, false, false, false, null, -1, 1, null);
            postSubjectItem.setNonAdDelegate(current);
            com.transsion.postdetail.ui.adapter.d dVar = videoFragment.mAdapter;
            int size = (dVar == null || (data = dVar.getData()) == null) ? 0 : data.size();
            if (i10 <= size) {
                com.transsion.postdetail.ui.adapter.d dVar2 = videoFragment.mAdapter;
                if (dVar2 != null) {
                    dVar2.n(i10, postSubjectItem);
                }
            } else {
                com.transsion.postdetail.ui.adapter.d dVar3 = videoFragment.mAdapter;
                if (dVar3 != null) {
                    dVar3.n(size, postSubjectItem);
                }
            }
        }
        return Unit.f64096a;
    }

    private final void initAdapter() {
        ArrayList arrayList = new ArrayList();
        boolean z10 = this.videoLoadMore;
        String str = this.mPostId;
        String str2 = this.mItemType;
        boolean z11 = this.attachToMain;
        String str3 = this.commentId;
        String str4 = this.pageFrom;
        if (str4 == null) {
            str4 = "";
        }
        com.transsion.postdetail.ui.adapter.d dVar = new com.transsion.postdetail.ui.adapter.d(arrayList, this, z10, str, str2, z11, str3, str4, this.isFromDownloaded);
        dVar.h0().z(this.videoLoadMore);
        if (this.videoLoadMore) {
            dVar.h0().C(new ImmVideoLoadMoreView());
            dVar.h0().z(true);
            dVar.h0().y(true);
            dVar.h0().E(2);
            dVar.h0().D(new r6.f() {
                @Override
                public final void a() {
                    VideoFragment.initAdapter$lambda$7$lambda$6(this.f47746a);
                }
            });
        }
        this.mAdapter = dVar;
    }

    public static final void initAdapter$lambda$7$lambda$6(final VideoFragment videoFragment) {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        ArrayList<PostSubjectItem> arrayList;
        boolean zE = yg.l.f76264a.e();
        boolean z10 = (!videoFragment.prioritizeDownloaded || (arrayList = videoFragment.downloadedShortsList) == null || arrayList.isEmpty()) ? false : true;
        if (!zE && !z10) {
            wn.o mViewBinding = videoFragment.getMViewBinding();
            if (mViewBinding == null || (recyclerView2 = mViewBinding.f74510d) == null) {
                return;
            }
            recyclerView2.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    VideoFragment.initAdapter$lambda$7$lambda$6$lambda$5(this.f47780a);
                }
            }, 500L);
            return;
        }
        if (videoFragment.isFirstLoadMore) {
            videoFragment.isFirstLoadMore = false;
            videoFragment.loadMore();
            return;
        }
        wn.o mViewBinding2 = videoFragment.getMViewBinding();
        if (mViewBinding2 == null || (recyclerView = mViewBinding2.f74510d) == null) {
            return;
        }
        recyclerView.postDelayed(new Runnable() {
            @Override
            public final void run() {
                this.f47773a.loadMore();
            }
        }, 500L);
    }

    public static final void initAdapter$lambda$7$lambda$6$lambda$5(VideoFragment videoFragment) {
        t6.f fVarH0;
        videoFragment.isLoadingData = false;
        com.transsion.postdetail.ui.adapter.d dVar = videoFragment.mAdapter;
        if (dVar == null || (fVarH0 = dVar.h0()) == null) {
            return;
        }
        fVarH0.v();
    }

    private final void initAudioListener() {
        ep.a mAudioApi = getMAudioApi();
        if (mAudioApi != null) {
            mAudioApi.pause();
        }
    }

    private final void initBack() {
        AppCompatImageView appCompatImageView;
        TnTextView tnTextView;
        AppCompatImageView appCompatImageView2;
        ConstraintLayout constraintLayout;
        wn.o mViewBinding = getMViewBinding();
        ViewGroup.LayoutParams layoutParams = (mViewBinding == null || (constraintLayout = mViewBinding.f74511e) == null) ? null : constraintLayout.getLayoutParams();
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
        ((FrameLayout.LayoutParams) layoutParams).topMargin = com.blankj.utilcode.util.d.c();
        if (this.mPostId.length() == 0) {
            wn.o mViewBinding2 = getMViewBinding();
            if (mViewBinding2 == null || (appCompatImageView2 = mViewBinding2.f74508b) == null) {
                return;
            }
            uf.c.g(appCompatImageView2);
            return;
        }
        wn.o mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (tnTextView = mViewBinding3.f74512f) != null) {
            uf.c.g(tnTextView);
        }
        wn.o mViewBinding4 = getMViewBinding();
        if (mViewBinding4 != null && (appCompatImageView = mViewBinding4.f74508b) != null) {
            appCompatImageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    VideoFragment.initBack$lambda$11(this.f47727a, view);
                }
            });
        }
        requireActivity().getOnBackPressedDispatcher().i(this, new b());
    }

    public static final void initBack$lambda$11(VideoFragment videoFragment, View view) {
        if (videoFragment.needBackToRoom) {
            ep.k.i(ep.k.f59780a, null, null, null, false, 15, null);
        }
        videoFragment.requireActivity().finish();
    }

    private final void initNonAd() {
    }

    private final void initPlayer() {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        this.mOrPlayer = new com.transsion.player.orplayer.f.a(contextRequireContext).b(new hn.d(null, false, 0, 0, 0, 0, 0, 0, 0L, 0, 0, false, true, false, false, false, null, 126975, null)).a();
        FragmentActivity fragmentActivityRequireActivity = requireActivity();
        Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
        ORPlayerView oRPlayerView = new ORPlayerView(fragmentActivityRequireActivity, RenderType.TEXTURE_VIEW);
        this.mOrPlayerView = oRPlayerView;
        com.transsion.player.orplayer.f fVar = this.mOrPlayer;
        if (fVar != null) {
            fVar.setTextureView(oRPlayerView.getTextureView());
        }
        com.transsion.player.orplayer.f fVar2 = this.mOrPlayer;
        if (fVar2 != null) {
            fVar2.setLooping(true);
        }
    }

    private final void initViewModel() {
        getMVideoViewModel().v().j(this, new f(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return VideoFragment.initViewModel$lambda$8(this.f47786a, (PostSubjectBean) obj);
            }
        }));
        getMVideoViewModel().t().j(this, new f(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return VideoFragment.initViewModel$lambda$9(this.f47577a, (String) obj);
            }
        }));
        if (this.attachToMain) {
            ImmVideoHelper.f46840h.a().i().j(this, new f(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return VideoFragment.initViewModel$lambda$10(this.f47585a, (List) obj);
                }
            }));
        }
    }

    public static final Unit initViewModel$lambda$10(VideoFragment videoFragment, List list) {
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            videoFragment.showProgress();
            videoFragment.loadData();
        } else {
            wf.a.C0922a.f(wf.a.f74274a, PAGE_NAME, "get cache " + ((PostSubjectItem) list.get(0)).getTitle(), false, 4, null);
            videoFragment.updateData(new PostSubjectBean(CollectionsKt.U0(list), null, null, null));
        }
        return Unit.f64096a;
    }

    public static final Unit initViewModel$lambda$8(VideoFragment videoFragment, PostSubjectBean postSubjectBean) {
        t6.f fVarH0;
        com.transsion.postdetail.ui.adapter.d dVar;
        t6.f fVarH1;
        List<Object> data;
        videoFragment.isLoadingData = false;
        if (postSubjectBean == null) {
            com.transsion.postdetail.ui.adapter.d dVar2 = videoFragment.mAdapter;
            if (dVar2 == null || (data = dVar2.getData()) == null || data.size() != 0) {
                com.transsion.postdetail.ui.adapter.d dVar3 = videoFragment.mAdapter;
                if (dVar3 != null && (fVarH0 = dVar3.h0()) != null && fVarH0.r() && (dVar = videoFragment.mAdapter) != null && (fVarH1 = dVar.h0()) != null) {
                    fVarH1.v();
                }
            } else if (yg.l.f76264a.e()) {
                videoFragment.showEmpty();
            } else {
                videoFragment.showNotNetError();
            }
        } else {
            qi.b logViewConfig = videoFragment.getLogViewConfig();
            if (logViewConfig != null) {
                logViewConfig.k(true);
            }
            videoFragment.updateData(postSubjectBean);
        }
        return Unit.f64096a;
    }

    public static final Unit initViewModel$lambda$9(VideoFragment videoFragment, String str) {
        if (TextUtils.equals("0", str)) {
            gx.b.f61207a.a().e(videoFragment.mPostId);
            FragmentActivity activity = videoFragment.getActivity();
            if (activity != null) {
                activity.finish();
            }
        } else {
            fh.b.a aVar = fh.b.f60176a;
            FragmentActivity activity2 = videoFragment.getActivity();
            aVar.e(activity2 != null ? activity2.getString(R$string.delete_post_failed) : null);
        }
        return Unit.f64096a;
    }

    public final void loadData() {
        doLoadData();
    }

    public final void loadMore() {
        loadData();
    }

    private final void localLogPause() {
        HashMap mapG;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        qi.b logViewConfig = getLogViewConfig();
        long jH = jElapsedRealtime - (logViewConfig != null ? logViewConfig.h() : 0L);
        qi.b logViewConfig2 = getLogViewConfig();
        if (logViewConfig2 == null || (mapG = logViewConfig2.g()) == null) {
            return;
        }
    }

    public static final ep.a mAudioApi_delegate$lambda$0() {
        return (ep.a) TheRouter.d(ep.a.class, new Object[0]);
    }

    private final void observeRemoveVideo() {
        getMVideoViewModel().C().j(this, new f(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return VideoFragment.observeRemoveVideo$lambda$13(this.f47756a, (Integer) obj);
            }
        }));
    }

    public static final Unit observeRemoveVideo$lambda$13(final VideoFragment videoFragment, final Integer num) {
        RecyclerView recyclerView;
        try {
            if (num.intValue() >= 0) {
                VideoPagerChangeControl videoPagerChangeControl = videoFragment.mPagerChangeControl;
                if (videoPagerChangeControl != null) {
                    videoPagerChangeControl.n();
                }
                com.transsion.postdetail.ui.adapter.d dVar = videoFragment.mAdapter;
                if (dVar != null) {
                    Intrinsics.e(num);
                    dVar.G0(num.intValue());
                }
                wn.o mViewBinding = videoFragment.getMViewBinding();
                if (mViewBinding != null && (recyclerView = mViewBinding.f74510d) != null) {
                    recyclerView.post(new Runnable() {
                        @Override
                        public final void run() {
                            VideoFragment.observeRemoveVideo$lambda$13$lambda$12(this.f47762a, num);
                        }
                    });
                }
            }
        } catch (Throwable unused) {
        }
        return Unit.f64096a;
    }

    public static final void observeRemoveVideo$lambda$13$lambda$12(VideoFragment videoFragment, Integer num) {
        RecyclerView.a0 a0VarFindViewHolderForAdapterPosition;
        RecyclerView recyclerView;
        Integer numValueOf;
        wn.o mViewBinding = videoFragment.getMViewBinding();
        if (mViewBinding == null || (recyclerView = mViewBinding.f74510d) == null) {
            a0VarFindViewHolderForAdapterPosition = null;
        } else {
            com.transsion.postdetail.ui.adapter.d dVar = videoFragment.mAdapter;
            if (dVar != null) {
                int iA0 = dVar.a0();
                Intrinsics.e(num);
                numValueOf = Integer.valueOf(iA0 + num.intValue());
            } else {
                numValueOf = num;
            }
            Intrinsics.e(numValueOf);
            a0VarFindViewHolderForAdapterPosition = recyclerView.findViewHolderForAdapterPosition(numValueOf.intValue());
        }
        VideoPagerChangeControl videoPagerChangeControl = videoFragment.mPagerChangeControl;
        if (videoPagerChangeControl != null) {
            Intrinsics.e(num);
            videoPagerChangeControl.f(num.intValue(), true, a0VarFindViewHolderForAdapterPosition != null ? a0VarFindViewHolderForAdapterPosition.itemView : null);
        }
    }

    private final void scrollToPosition(final int it) {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        List<Object> data;
        com.transsion.postdetail.ui.adapter.d dVar = this.mAdapter;
        if (((dVar == null || (data = dVar.getData()) == null) ? 0 : data.size()) <= it) {
            return;
        }
        wn.o mViewBinding = getMViewBinding();
        if (mViewBinding != null && (recyclerView2 = mViewBinding.f74510d) != null) {
            recyclerView2.scrollToPosition(it);
        }
        wn.o mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (recyclerView = mViewBinding2.f74510d) == null) {
            return;
        }
        recyclerView.post(new Runnable() {
            @Override
            public final void run() {
                VideoFragment.scrollToPosition$lambda$26(this.f47703a, it);
            }
        });
    }

    public static final void scrollToPosition$lambda$26(VideoFragment videoFragment, int i10) {
        PagerLayoutManager pagerLayoutManager = videoFragment.mPagerLayoutManager;
        if (pagerLayoutManager != null) {
            View viewT = pagerLayoutManager.T();
            if (viewT != null) {
                wf.a.C0922a.r(wf.a.f74274a, "ImmVideoPlayer", new String[]{"initView2， scrollToPosition ：" + i10}, false, 4, null);
                VideoPagerChangeControl videoPagerChangeControl = videoFragment.mPagerChangeControl;
                if (videoPagerChangeControl != null) {
                    videoPagerChangeControl.f(i10, true, viewT);
                    return;
                }
                return;
            }
            int childCount = pagerLayoutManager.getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = pagerLayoutManager.getChildAt(i11);
                if (childAt != null && pagerLayoutManager.getPosition(childAt) == i10) {
                    wf.a.C0922a.r(wf.a.f74274a, "ImmVideoPlayer", new String[]{"initView， scrollToPosition ：" + i10}, false, 4, null);
                    VideoPagerChangeControl videoPagerChangeControl2 = videoFragment.mPagerChangeControl;
                    if (videoPagerChangeControl2 != null) {
                        videoPagerChangeControl2.f(i10, true, childAt);
                        return;
                    }
                    return;
                }
            }
        }
    }

    private final void setPTParams(PostSubjectItem item) {
        HashMap mapG;
        HashMap mapG2;
        HashMap mapG3;
        String mediaType;
        qi.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.k(true);
        }
        qi.b logViewConfig2 = getLogViewConfig();
        if (logViewConfig2 != null) {
            logViewConfig2.n(item.getRec_ops());
        }
        qi.b logViewConfig3 = getLogViewConfig();
        if (logViewConfig3 != null && (mapG3 = logViewConfig3.g()) != null) {
            Media media = item.getMedia();
            if (media == null || (mediaType = media.getMediaType()) == null) {
                mediaType = "";
            }
            mapG3.put("post_media_type", mediaType);
        }
        qi.b logViewConfig4 = getLogViewConfig();
        if (logViewConfig4 != null && (mapG2 = logViewConfig4.g()) != null) {
            Subject subject = item.getSubject();
            mapG2.put("subject_id", subject != null ? subject.getSubjectId() : null);
        }
        qi.b logViewConfig5 = getLogViewConfig();
        if (logViewConfig5 == null || (mapG = logViewConfig5.g()) == null) {
            return;
        }
        Subject subject2 = item.getSubject();
        mapG.put("has_resource", String.valueOf(subject2 != null ? subject2.getHasResource() : null));
    }

    private final void showEmpty() {
        com.transsion.postdetail.ui.adapter.d dVar;
        List<Object> data;
        hideProgress();
        com.transsion.postdetail.ui.adapter.d dVar2 = this.mAdapter;
        if (dVar2 == null || (data = dVar2.getData()) == null || !(!data.isEmpty())) {
            Context contextRequireContext = requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            View emptyView = getEmptyView(contextRequireContext);
            if (emptyView == null || (dVar = this.mAdapter) == null) {
                return;
            }
            dVar.Y0(emptyView);
        }
    }

    private final void showNotNetError() {
        com.transsion.postdetail.ui.adapter.d dVar;
        TnTextView tnTextView;
        List<Object> data;
        hideProgress();
        com.transsion.postdetail.ui.adapter.d dVar2 = this.mAdapter;
        if (dVar2 == null || (data = dVar2.getData()) == null || !(!data.isEmpty())) {
            wn.o mViewBinding = getMViewBinding();
            if (mViewBinding != null && (tnTextView = mViewBinding.f74512f) != null) {
                uf.c.g(tnTextView);
            }
            Context contextRequireContext = requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            View notNetErrorView = getNotNetErrorView(contextRequireContext);
            if (notNetErrorView == null || (dVar = this.mAdapter) == null) {
                return;
            }
            dVar.Y0(notNetErrorView);
        }
    }

    private final void showProgress() {
        ProgressBar progressBar;
        wn.o mViewBinding = getMViewBinding();
        if (mViewBinding == null || (progressBar = mViewBinding.f74509c) == null) {
            return;
        }
        uf.c.k(progressBar);
    }

    private final void showSettingDialog() {
        String string = Utils.a().getString(com.transsion.ninegridview.R$string.permission_deny_down_tip, "\"" + Utils.a().getString(com.transsion.baseui.R$string.base_app_name) + "\"", "\"" + Utils.a().getString(com.transsion.ninegridview.R$string.system_settings) + "\"");
        Intrinsics.g(string, "getString(...)");
        TRDialog.a aVarG = new TRDialog.a().g(string);
        String string2 = Utils.a().getString(com.transsion.ninegridview.R$string.cancel);
        Intrinsics.g(string2, "getString(...)");
        TRDialog.a aVarE = aVarG.e(string2);
        String string3 = Utils.a().getString(com.transsion.ninegridview.R$string.system_settings);
        Intrinsics.g(string3, "getString(...)");
        aVarE.j(string3).f(this).a().show(getChildFragmentManager(), "settings");
    }

    private final void updateData(PostSubjectBean subjectBean) {
        String nextPage;
        com.transsion.postdetail.ui.adapter.d dVar;
        t6.f fVarH0;
        t6.f fVarH1;
        com.transsion.postdetail.ui.adapter.d dVar2;
        t6.f fVarH2;
        hideProgress();
        Pager pager = subjectBean.getPager();
        if (pager == null || (nextPage = pager.getNextPage()) == null) {
            nextPage = "1";
        }
        this.mNextPage = nextPage;
        List<PostSubjectItem> items = subjectBean.getItems();
        if (items != null) {
            Iterator<PostSubjectItem> it = items.iterator();
            while (it.hasNext()) {
                PostSubjectItem next = it.next();
                Media media = next.getMedia();
                if ((media != null ? media.getVideo() : null) != null) {
                    Media media2 = next.getMedia();
                    List<Video> video = media2 != null ? media2.getVideo() : null;
                    Intrinsics.e(video);
                    if (video.isEmpty()) {
                    }
                }
                it.remove();
            }
            com.transsion.postdetail.ui.adapter.d dVar3 = this.mAdapter;
            List<Object> data = dVar3 != null ? dVar3.getData() : null;
            ArrayList arrayList = new ArrayList();
            if (data == null || !(!data.isEmpty())) {
                arrayList.addAll(items);
            } else {
                PostSubjectItem postSubjectItem = (PostSubjectItem) CollectionsKt.k0(data);
                if (postSubjectItem != null) {
                    setPTParams(postSubjectItem);
                }
                for (PostSubjectItem postSubjectItem2 : items) {
                    if (data.contains(postSubjectItem2)) {
                        Subject subject = postSubjectItem2.getSubject();
                        if (subject != null) {
                            Integer subjectType = subject.getSubjectType();
                            int value = SubjectType.SHORT_TV.getValue();
                            if (subjectType != null && subjectType.intValue() == value) {
                            }
                        }
                        wf.a.C0922a.f(wf.a.f74274a, "ImmVideoList", "find same item title..." + postSubjectItem2.getTitle() + " id  " + postSubjectItem2.getPostId(), false, 4, null);
                    }
                    arrayList.add(postSubjectItem2);
                }
            }
            com.transsion.postdetail.ui.adapter.d dVar4 = this.mAdapter;
            if (dVar4 != null) {
                dVar4.q(arrayList);
            }
            VideoPagerChangeControl videoPagerChangeControl = this.mPagerChangeControl;
            if (videoPagerChangeControl != null) {
                videoPagerChangeControl.k();
            }
            if (this.attachToMain) {
                ImmVideoHelper immVideoHelperA = ImmVideoHelper.f46840h.a();
                com.transsion.postdetail.ui.adapter.d dVar5 = this.mAdapter;
                immVideoHelperA.r(dVar5 != null ? dVar5.getData() : null);
            }
        }
        com.transsion.postdetail.ui.adapter.d dVar6 = this.mAdapter;
        if (dVar6 != null && (fVarH1 = dVar6.h0()) != null && fVarH1.r() && (dVar2 = this.mAdapter) != null && (fVarH2 = dVar2.h0()) != null) {
            fVarH2.s();
        }
        Pager pager2 = subjectBean.getPager();
        if ((pager2 != null ? Intrinsics.c(pager2.getHasMore(), Boolean.FALSE) : false) && (dVar = this.mAdapter) != null && (fVarH0 = dVar.h0()) != null) {
            t6.f.u(fVarH0, false, 1, null);
        }
        int i10 = this.savedCurrentIndex;
        if (i10 >= 0) {
            scrollToPosition(i10);
            this.savedCurrentIndex = -1;
        }
    }

    public final List<String> getList() {
        return this.list;
    }

    public final long getResumeTimeStamp() {
        return this.resumeTimeStamp;
    }

    public final String getTran_ops() {
        return this.tran_ops;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0030  */
    @Override
    public void initData(View view, Bundle savedInstanceState) {
        List listG;
        ArrayList<PostSubjectItem> arrayList;
        String nextPage;
        Intrinsics.h(view, "view");
        setNetListener(new c());
        initViewModel();
        PostSubjectBean postSubjectBeanB = getMVideoViewModel().B();
        if (postSubjectBeanB == null) {
            listG = ImmVideoHelper.f46840h.a().g();
        } else {
            Pager pager = postSubjectBeanB.getPager();
            if (pager == null || (nextPage = pager.getNextPage()) == null) {
                nextPage = "1";
            }
            this.mNextPage = nextPage;
            listG = postSubjectBeanB.getItems();
            if (listG == null) {
                listG = ImmVideoHelper.f46840h.a().g();
            }
        }
        if (listG.isEmpty()) {
            if (this.attachToMain) {
                ImmVideoHelper.f46840h.a().p();
                return;
            } else {
                showProgress();
                loadData();
                return;
            }
        }
        if (!this.isFromDownloaded || (arrayList = this.downloadedShortsList) == null || arrayList.isEmpty()) {
            PostSubjectItem postSubjectItem = (PostSubjectItem) CollectionsKt.k0(listG);
            if (postSubjectItem != null) {
                setPTParams(postSubjectItem);
            }
            com.transsion.postdetail.ui.adapter.d dVar = this.mAdapter;
            if (dVar != null) {
                dVar.q(listG);
                return;
            }
            return;
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList<PostSubjectItem> arrayList3 = this.downloadedShortsList;
        Intrinsics.e(arrayList3);
        int size = arrayList3.size();
        for (int i10 = this.startDownloadedIndex; i10 < size; i10++) {
            ArrayList<PostSubjectItem> arrayList4 = this.downloadedShortsList;
            Intrinsics.e(arrayList4);
            PostSubjectItem postSubjectItem2 = arrayList4.get(i10);
            Intrinsics.g(postSubjectItem2, "get(...)");
            arrayList2.add(postSubjectItem2);
        }
        com.transsion.postdetail.ui.adapter.d dVar2 = this.mAdapter;
        if (dVar2 != null) {
            dVar2.n1(arrayList2);
        }
        this.prioritizeDownloaded = false;
    }

    @Override
    public void initView(View view, Bundle savedInstanceState) {
        HashMap mapG;
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        RecyclerView recyclerView3;
        Intrinsics.h(view, "view");
        int i10 = savedInstanceState != null ? savedInstanceState.getInt(CURRENT_INDEX) : -1;
        this.savedCurrentIndex = i10;
        wf.a.C0922a.r(wf.a.f74274a, "ImmVideoPlayer", new String[]{"initView， savedCurrentIndex ：" + i10}, false, 4, null);
        initAd();
        initNonAd();
        initAdapter();
        initPlayer();
        initBack();
        initAudioListener();
        observeRemoveVideo();
        FragmentActivity fragmentActivityRequireActivity = requireActivity();
        Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
        PagerLayoutManager pagerLayoutManager = new PagerLayoutManager(fragmentActivityRequireActivity);
        this.mPagerLayoutManager = pagerLayoutManager;
        d dVar = new d(this.fromComment, this.mAdapter, this.mOrPlayer, this.mOrPlayerView, pagerLayoutManager, this.pageFrom);
        this.mPagerChangeControl = dVar;
        PagerLayoutManager pagerLayoutManager2 = this.mPagerLayoutManager;
        if (pagerLayoutManager2 != null) {
            pagerLayoutManager2.X(dVar);
        }
        wn.o mViewBinding = getMViewBinding();
        if (mViewBinding != null && (recyclerView3 = mViewBinding.f74510d) != null) {
            recyclerView3.setLayoutManager(this.mPagerLayoutManager);
        }
        wn.o mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (recyclerView2 = mViewBinding2.f74510d) != null) {
            recyclerView2.setAdapter(this.mAdapter);
        }
        wn.o mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (recyclerView = mViewBinding3.f74510d) != null) {
            recyclerView.addOnScrollListener(new e());
        }
        ImmVideoHelper immVideoHelperA = ImmVideoHelper.f46840h.a();
        FragmentActivity fragmentActivityRequireActivity2 = requireActivity();
        Intrinsics.g(fragmentActivityRequireActivity2, "requireActivity(...)");
        immVideoHelperA.k(fragmentActivityRequireActivity2);
        qi.b logViewConfig = getLogViewConfig();
        if (logViewConfig == null || (mapG = logViewConfig.g()) == null) {
            return;
        }
    }

    @Override
    public void lazyLoadData() {
    }

    @Override
    public void logPause() {
        super.logPause();
        if (this.resumeTimeStamp != 0) {
            com.transsion.baselib.report.e.f42196a.n(PAGE_NAME, Long.valueOf(SystemClock.elapsedRealtime() - this.resumeTimeStamp), getContext());
        }
    }

    @Override
    public void logResume() {
        super.logResume();
        this.resumeTimeStamp = SystemClock.elapsedRealtime();
    }

    @Override
    public qi.b newLogViewConfig() {
        return new qi.b(PAGE_NAME, false, 2, null);
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        String string;
        String string2;
        HashMap mapG;
        HashMap mapG2;
        HashMap mapG3;
        ArrayList<PostSubjectItem> arrayList;
        String string3;
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        String str = "";
        if (arguments == null || (string = arguments.getString("id")) == null) {
            string = "";
        }
        this.mPostId = string;
        Bundle arguments2 = getArguments();
        if (arguments2 == null || (string2 = arguments2.getString("comment_id")) == null) {
            string2 = "";
        }
        this.commentId = string2;
        Bundle arguments3 = getArguments();
        if (arguments3 != null && (string3 = arguments3.getString("item_type")) != null) {
            str = string3;
        }
        this.mItemType = str;
        Bundle arguments4 = getArguments();
        this.mTabId = arguments4 != null ? arguments4.getInt("tab_id") : 0;
        Bundle arguments5 = getArguments();
        this.videoLoadMore = arguments5 != null ? arguments5.getBoolean("video_load_more", true) : true;
        Bundle arguments6 = getArguments();
        this.fromComment = arguments6 != null ? arguments6.getBoolean("from_comment") : false;
        Bundle arguments7 = getArguments();
        this.tran_ops = arguments7 != null ? arguments7.getString("rec_ops") : null;
        Bundle arguments8 = getArguments();
        this.attachToMain = arguments8 != null ? arguments8.getBoolean("attach_to_main") : false;
        Bundle arguments9 = getArguments();
        this.pageFrom = arguments9 != null ? arguments9.getString(WebConstants.PAGE_FROM) : null;
        Bundle arguments10 = getArguments();
        this.needBackToRoom = arguments10 != null ? arguments10.getBoolean("need_back_to_room") : false;
        Bundle arguments11 = getArguments();
        Serializable serializable = arguments11 != null ? arguments11.getSerializable("downloaded_shorts_list") : null;
        this.downloadedShortsList = serializable instanceof ArrayList ? (ArrayList) serializable : null;
        Bundle arguments12 = getArguments();
        this.prioritizeDownloaded = arguments12 != null ? arguments12.getBoolean("prioritize_downloaded") : false;
        Bundle arguments13 = getArguments();
        this.isFromDownloaded = arguments13 != null ? arguments13.getBoolean("is_from_downloaded") : false;
        if (this.prioritizeDownloaded && (arrayList = this.downloadedShortsList) != null && !arrayList.isEmpty()) {
            ArrayList<PostSubjectItem> arrayList2 = this.downloadedShortsList;
            int i10 = -1;
            if (arrayList2 != null) {
                Iterator<PostSubjectItem> it = arrayList2.iterator();
                int i11 = 0;
                while (it.hasNext()) {
                    if (Intrinsics.c(it.next().getPostId(), this.mPostId)) {
                        i10 = i11;
                        break;
                    }
                    i11++;
                }
            }
            this.currentDownloadedIndex = i10;
            if (i10 < 0) {
                i10 = 0;
            }
            this.startDownloadedIndex = i10;
        }
        qi.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null && (mapG3 = logViewConfig.g()) != null) {
        }
        qi.b logViewConfig2 = getLogViewConfig();
        if (logViewConfig2 != null && (mapG2 = logViewConfig2.g()) != null) {
        }
        qi.b logViewConfig3 = getLogViewConfig();
        if (logViewConfig3 != null && (mapG = logViewConfig3.g()) != null) {
        }
        PostDetailViewModel mVideoViewModel = getMVideoViewModel();
        if (mVideoViewModel != null) {
            Bundle arguments14 = getArguments();
            mVideoViewModel.F(arguments14 != null ? Integer.valueOf(arguments14.getInt("yy_preload_id")) : null, this.pageFrom);
        }
        im.b bVar = (im.b) TheRouter.d(im.b.class, new Object[0]);
        if (bVar != null) {
            bVar.D(this);
        }
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.b()), null, null, new AnonymousClass1(null), 3, null);
        ImmVideoHelper.f46840h.a().f();
        BiddingListManager biddingListManager = this.v3ListManager;
        if (biddingListManager != null) {
            biddingListManager.o();
        }
        im.b bVar = (im.b) TheRouter.d(im.b.class, new Object[0]);
        if (bVar != null) {
            bVar.v(this);
        }
    }

    @Override
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (isResumed()) {
            if (hidden) {
                com.transsion.player.orplayer.f fVar = this.mOrPlayer;
                if (fVar != null) {
                    fVar.pause();
                }
                logPause();
            } else {
                com.transsion.player.orplayer.f fVar2 = this.mOrPlayer;
                if (fVar2 != null) {
                    fVar2.play();
                }
                logResume();
            }
            VideoPagerChangeControl videoPagerChangeControl = this.mPagerChangeControl;
            if (videoPagerChangeControl != null) {
                videoPagerChangeControl.l(hidden);
            }
        }
        com.transsion.baseui.activity.k.h(null, this, hidden, null, 9, null);
    }

    @Override
    public void onLeftButtonClick(TRDialog dialog) {
        Intrinsics.h(dialog, "dialog");
    }

    @Override
    public void onMemberStateChange() {
        wf.a.C0922a.f(wf.a.f74274a, "co_mem", "VideoFragment --> onMemberStateChange() --> refresh list", false, 4, null);
        com.transsion.postdetail.ui.adapter.d dVar = this.mAdapter;
        if (dVar != null) {
            dVar.n1(null);
        }
        loadData();
    }

    @Override
    public void onPause() {
        localLogPause();
        super.onPause();
        com.transsion.baseui.activity.k.l(null, this, null, 5, null);
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        PostSubjectItem postSubjectItem;
        List<Object> data;
        Intrinsics.h(permissions, "permissions");
        Intrinsics.h(grantResults, "grantResults");
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        if (requestCode == FileHelper.f45804a.l()) {
            if (grantResults.length > 1) {
                if (grantResults[0] == 0 && grantResults[1] == 0) {
                    PostSaveHelper postSaveHelper = PostSaveHelper.f48054a;
                    com.transsion.postdetail.ui.adapter.d dVar = this.mAdapter;
                    if (dVar == null || (data = dVar.getData()) == null) {
                        postSubjectItem = null;
                    } else {
                        VideoPagerChangeControl videoPagerChangeControl = this.mPagerChangeControl;
                        postSubjectItem = (PostSubjectItem) data.get(videoPagerChangeControl != null ? videoPagerChangeControl.h() : 0);
                    }
                    postSaveHelper.c(postSubjectItem);
                    return;
                }
            }
            FragmentActivity activity = getActivity();
            Intrinsics.f(activity, "null cannot be cast to non-null type android.app.Activity");
            if (ActivityCompat.j(activity, "android.permission.WRITE_EXTERNAL_STORAGE")) {
                return;
            }
            showSettingDialog();
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        com.transsion.baseui.activity.k.p(null, this, "visible=" + isVisible(), 1, null);
    }

    @Override
    public void onRightButtonClick(TRDialog dialog) {
        Intrinsics.h(dialog, "dialog");
        com.transsion.ninegridview.helper.b bVar = com.transsion.ninegridview.helper.b.f45813a;
        FragmentActivity activity = getActivity();
        Intrinsics.f(activity, "null cannot be cast to non-null type android.app.Activity");
        bVar.a(activity, 101);
    }

    @Override
    public void onSaveInstanceState(Bundle outState) {
        Intrinsics.h(outState, "outState");
        super.onSaveInstanceState(outState);
        VideoPagerChangeControl videoPagerChangeControl = this.mPagerChangeControl;
        outState.putInt(CURRENT_INDEX, videoPagerChangeControl != null ? videoPagerChangeControl.h() : 0);
    }

    public final void setResumeTimeStamp(long j10) {
        this.resumeTimeStamp = j10;
    }

    public final void setTran_ops(String str) {
        this.tran_ops = str;
    }

    @Override
    public wn.o getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        wn.o oVarC = wn.o.c(inflater);
        Intrinsics.g(oVarC, "inflate(...)");
        return oVarC;
    }
}
