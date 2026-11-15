package com.transsion.shorttv._channel.ui.fragment;

import android.content.res.Configuration;
import android.graphics.Typeface;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v0;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.loadmore.LoadMoreStatus;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.google.android.material.tabs.TabLayout;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.push.PushConstants;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv.R$string;
import com.transsion.shorttv._channel.model.ShortTvChannel;
import com.transsion.shorttv._channel.model.ShortTvFilterItems;
import com.transsion.shorttv._channel.model.ShortTvItem;
import com.transsion.shorttv._channel.model.ShortTvLayoutStyle;
import com.transsion.shorttv._channel.model.ShortTvMovieBean;
import com.transsion.shorttv._channel.model.ShortTvMovieItem;
import com.transsion.shorttv._channel.model.ShortTvRefreshBaseDto;
import com.transsion.shorttv._channel.ui.ShortTvOffsetGridLayoutManager;
import com.transsion.shorttv._channel.ui.fragment.ShortTvMovieFragment;
import com.transsion.shorttv._channel.ui.viewmodel.ShortTvMovieViewModel;
import com.transsion.shorttv._channel.ui.widget.ShortTvPopupFilterView;
import com.transsion.shorttv.base.activity.g;
import com.transsion.shorttv.base.fragment.PageStatusFragment;
import com.transsion.shorttv.bean.Pager;
import com.transsion.shorttv.bean.Subject;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.json.JSONObject;
import qi.h;
import qr.a0;
import qr.d0;
import wf.a;
import yg.l;

@Metadata(d1 = {"\u0000Ê\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010$\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018\u0000 £\u00012\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002¤\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\tH\u0002¢\u0006\u0004\b\f\u0010\u0004J\u000f\u0010\r\u001a\u00020\tH\u0002¢\u0006\u0004\b\r\u0010\u0004J\u000f\u0010\u000e\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000e\u0010\u0004J\u000f\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0012\u0010\u0004J!\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u00142\b\u0010\u0013\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u001a\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\u0018H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001d\u001a\u00020\u001cH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\tH\u0002¢\u0006\u0004\b\u001f\u0010\u0004J7\u0010#\u001a\u00020\t2&\u0010\"\u001a\"\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f\u0018\u00010 j\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f\u0018\u0001`!H\u0002¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\tH\u0002¢\u0006\u0004\b%\u0010\u0004J\u000f\u0010&\u001a\u00020\tH\u0002¢\u0006\u0004\b&\u0010\u0004J\u000f\u0010'\u001a\u00020\tH\u0002¢\u0006\u0004\b'\u0010\u0004J\u0019\u0010(\u001a\u00020\t2\b\u0010\u0013\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0004\b(\u0010)J#\u0010,\u001a\u00020\t2\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f0*H\u0002¢\u0006\u0004\b,\u0010-J7\u00100\u001a\u00020\t2\b\u0010\u0013\u001a\u0004\u0018\u00010\u000f2\u0014\u0010.\u001a\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f\u0018\u00010*2\u0006\u0010/\u001a\u00020\u001cH\u0002¢\u0006\u0004\b0\u00101J!\u00104\u001a\u00020\t2\b\u00103\u001a\u0004\u0018\u0001022\u0006\u0010/\u001a\u00020\u001cH\u0002¢\u0006\u0004\b4\u00105J\u000f\u00106\u001a\u00020\tH\u0002¢\u0006\u0004\b6\u0010\u0004J\u000f\u00107\u001a\u00020\tH\u0002¢\u0006\u0004\b7\u0010\u0004J\u000f\u00108\u001a\u00020\tH\u0002¢\u0006\u0004\b8\u0010\u0004J\u000f\u00109\u001a\u00020\tH\u0002¢\u0006\u0004\b9\u0010\u0004J\u0019\u0010;\u001a\u00020\t2\b\u0010:\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0004\b;\u0010)J\u0019\u0010<\u001a\u00020\t2\b\u0010\u0013\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0004\b<\u0010)J\u000f\u0010=\u001a\u00020\tH\u0002¢\u0006\u0004\b=\u0010\u0004J\u000f\u0010>\u001a\u00020\u0018H\u0002¢\u0006\u0004\b>\u0010?J\u001b\u0010A\u001a\u0004\u0018\u00010@2\b\u0010\u0013\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0004\bA\u0010BJ\u000f\u0010C\u001a\u00020\u0018H\u0002¢\u0006\u0004\bC\u0010?J\u0017\u0010E\u001a\u00020\t2\u0006\u0010D\u001a\u00020\u001cH\u0002¢\u0006\u0004\bE\u0010FJ\u000f\u0010G\u001a\u00020\tH\u0002¢\u0006\u0004\bG\u0010\u0004J\u000f\u0010H\u001a\u00020\u000fH\u0002¢\u0006\u0004\bH\u0010\u0011J\u000f\u0010I\u001a\u00020\tH\u0002¢\u0006\u0004\bI\u0010\u0004J\u0017\u0010L\u001a\u00020\u00022\u0006\u0010K\u001a\u00020JH\u0016¢\u0006\u0004\bL\u0010MJ\u000f\u0010N\u001a\u00020\u000fH\u0016¢\u0006\u0004\bN\u0010\u0011J\u000f\u0010O\u001a\u00020\tH\u0016¢\u0006\u0004\bO\u0010\u0004J\u0019\u0010P\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\bP\u0010QJ!\u0010R\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\bR\u0010\u000bJ\u001f\u0010W\u001a\u00020\t2\u0006\u0010T\u001a\u00020S2\u0006\u0010V\u001a\u00020UH\u0016¢\u0006\u0004\bW\u0010XJ\u0017\u0010[\u001a\u00020\t2\u0006\u0010Z\u001a\u00020YH\u0016¢\u0006\u0004\b[\u0010\\J\u0019\u0010_\u001a\u00020\t*\u00020]2\u0006\u0010^\u001a\u00020\u001c¢\u0006\u0004\b_\u0010`J\u000f\u0010a\u001a\u00020\tH\u0016¢\u0006\u0004\ba\u0010\u0004J\u000f\u0010b\u001a\u00020\tH\u0016¢\u0006\u0004\bb\u0010\u0004J\u000f\u0010c\u001a\u00020\tH\u0016¢\u0006\u0004\bc\u0010\u0004J\u000f\u0010d\u001a\u00020\u001cH\u0016¢\u0006\u0004\bd\u0010\u001eJ\u000f\u0010e\u001a\u00020\tH\u0016¢\u0006\u0004\be\u0010\u0004J\u0017\u0010g\u001a\u00020\t2\u0006\u0010f\u001a\u00020\u001cH\u0016¢\u0006\u0004\bg\u0010FJ\u000f\u0010h\u001a\u00020\tH\u0016¢\u0006\u0004\bh\u0010\u0004J\u000f\u0010j\u001a\u00020iH\u0016¢\u0006\u0004\bj\u0010kJ\u000f\u0010l\u001a\u00020\tH\u0016¢\u0006\u0004\bl\u0010\u0004J\r\u0010m\u001a\u00020\u000f¢\u0006\u0004\bm\u0010\u0011R\u0018\u0010q\u001a\u0004\u0018\u00010n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bo\u0010pR\u0018\u0010u\u001a\u0004\u0018\u00010r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bs\u0010tR\u0018\u0010x\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bv\u0010wR\u0016\u0010{\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\by\u0010zR\u0018\u0010\u007f\u001a\u0004\u0018\u00010|8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b}\u0010~R\u001b\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0080\u0001\u0010\u0081\u0001R\u001b\u0010\u0084\u0001\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0083\u0001\u0010\u0081\u0001R\u001b\u0010\u0086\u0001\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0085\u0001\u0010\u0081\u0001R\u0018\u0010\u0088\u0001\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0087\u0001\u0010zRq\u0010\u008b\u0001\u001aZ\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0012 \u0012\u001e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f0 j\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f`!0 j,\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0012 \u0012\u001e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f0 j\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f`!`!8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0089\u0001\u0010\u008a\u0001R\u001c\u0010\u008f\u0001\u001a\u0005\u0018\u00010\u008c\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008d\u0001\u0010\u008e\u0001R\u001a\u0010\u0093\u0001\u001a\u00030\u0090\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0091\u0001\u0010\u0092\u0001R\u0019\u0010\u0095\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0094\u0001\u0010\u0081\u0001R\u001c\u0010\u0099\u0001\u001a\u0005\u0018\u00010\u0096\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0097\u0001\u0010\u0098\u0001R'\u0010\u009c\u0001\u001a\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f\u0018\u00010*8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009a\u0001\u0010\u009b\u0001R\u001a\u0010\u009e\u0001\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u009d\u0001\u0010wR\u001a\u0010 \u0001\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u009f\u0001\u0010wR\u001a\u0010¢\u0001\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b¡\u0001\u0010w¨\u0006¥\u0001"}, d2 = {"Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;", "Lcom/transsion/shorttv/base/fragment/PageStatusFragment;", "Lqr/a0;", "<init>", "()V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "initScrollListener", "T0", "U0", "", "H0", "()Ljava/lang/String;", "R0", TmcStartParams.KEY_CHANNEL_ID, "", "Lcom/transsion/shorttv/_channel/model/ShortTvItem;", "G0", "(Ljava/lang/String;)Ljava/util/List;", "", RequestParameters.POSITION, "C0", "(I)V", "", "O0", "()Z", "h1", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "selectItems", "p1", "(Ljava/util/HashMap;)V", "loadData", "k1", "loadMore", "f1", "(Ljava/lang/String;)V", "", "selectedMap", "e1", "(Ljava/util/Map;)V", "selectedItems", "isRefresh", "E0", "(Ljava/lang/String;Ljava/util/Map;Z)V", "Lcom/transsion/shorttv/_channel/model/ShortTvMovieBean;", "movieBean", "n1", "(Lcom/transsion/shorttv/_channel/model/ShortTvMovieBean;Z)V", "startLoading", "hideLoading", "j1", "P0", "string", "l1", "D0", "Q0", "L0", "()I", "Lcom/transsion/shorttv/_channel/model/ShortTvLayoutStyle;", "I0", "(Ljava/lang/String;)Lcom/transsion/shorttv/_channel/model/ShortTvLayoutStyle;", "J0", PushConstants.PUSH_SERVICE_TYPE_SHOW, "g1", "(Z)V", "S0", "K0", "F0", "Landroid/view/LayoutInflater;", "inflater", "N0", "(Landroid/view/LayoutInflater;)Lqr/a0;", "getPageStateLayoutTitle", "initViewData", "onCreate", "(Landroid/os/Bundle;)V", "onViewCreated", "Landroid/net/Network;", "network", "Landroid/net/NetworkCapabilities;", "networkCapabilities", "onConnected", "(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "(Landroid/content/res/Configuration;)V", "Lcom/google/android/material/tabs/TabLayout$Tab;", "selected", "i1", "(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V", "initViewModel", "initListener", "retryLoadData", "isShowPageStateLayoutTitle", "onResume", "hidden", "onHiddenChanged", "onPause", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "onDestroyView", "M0", "Lcom/transsion/shorttv/_channel/ui/adapter/c;", "i", "Lcom/transsion/shorttv/_channel/ui/adapter/c;", "mAdapter", "Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvMovieViewModel;", "j", "Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvMovieViewModel;", "mMovieModel", CampaignEx.JSON_KEY_AD_K, "Landroid/view/View;", "header", "l", "I", "mPage", "Lcom/transsion/shorttv/_channel/model/ShortTvFilterItems;", "m", "Lcom/transsion/shorttv/_channel/model/ShortTvFilterItems;", "mFilterItems", "n", "Ljava/lang/String;", "mChannelId", "o", "mDeeplinkChannelId", TtmlNode.TAG_P, "mFilterJson", CampaignEx.JSON_KEY_AD_Q, "mPerPage", CampaignEx.JSON_KEY_AD_R, "Ljava/util/HashMap;", "mSubjectTypeMap", "Lcom/transsion/shorttv/_channel/ui/widget/ShortTvPopupFilterView;", "s", "Lcom/transsion/shorttv/_channel/ui/widget/ShortTvPopupFilterView;", "mFilterView", "", "t", "J", "startShowTime", TmcStartParams.KEY_URL_SHORT, "mPageFrom", "Lbr/b;", "v", "Lbr/b;", "mExposureHelper", "w", "Ljava/util/Map;", "mLatestSelectItems", "x", "mNoNetworkView", "y", "mLoadingView", "z", "mNoResultView", "A", "a", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ShortTvMovieFragment extends PageStatusFragment<a0> {

    public static final Companion INSTANCE = new Companion(null);

    private com.transsion.shorttv._channel.ui.adapter.c mAdapter;

    private ShortTvMovieViewModel mMovieModel;

    private View header;

    private ShortTvFilterItems mFilterItems;

    private String mChannelId;

    private String mDeeplinkChannelId;

    private String mFilterJson;

    private ShortTvPopupFilterView mFilterView;

    private long startShowTime;

    private br.b mExposureHelper;

    private Map mLatestSelectItems;

    private View mNoNetworkView;

    private View mLoadingView;

    private View mNoResultView;

    private int mPage = 1;

    private int mPerPage = 12;

    private HashMap mSubjectTypeMap = new HashMap();

    private String mPageFrom = h.f69682a.h();

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ShortTvMovieFragment a(boolean z10, String str) {
            Bundle bundle = new Bundle();
            bundle.putBoolean("hide_header_bg", z10);
            bundle.putString("filter_json", str);
            ShortTvMovieFragment shortTvMovieFragment = new ShortTvMovieFragment();
            shortTvMovieFragment.setArguments(bundle);
            return shortTvMovieFragment;
        }

        private Companion() {
        }
    }

    public static final class b implements TabLayout.OnTabSelectedListener {
        b() {
        }

        @Override
        public void onTabReselected(TabLayout.Tab tab) {
            a.C0922a.f(a.f74274a, "MovieFragment", "release tab " + (tab != null ? Integer.valueOf(tab.getPosition()) : null), false, 4, null);
        }

        @Override
        public void onTabSelected(TabLayout.Tab tab) {
            RecyclerView recyclerView;
            a.C0922a.f(a.f74274a, "MovieFragment", "selected tab " + (tab != null ? Integer.valueOf(tab.getPosition()) : null), false, 4, null);
            if (tab != null) {
                ShortTvMovieFragment.this.i1(tab, true);
            }
            ShortTvMovieFragment.this.startShowTime = SystemClock.elapsedRealtime();
            ShortTvMovieFragment shortTvMovieFragment = ShortTvMovieFragment.this;
            shortTvMovieFragment.mPageFrom = shortTvMovieFragment.M0();
            if (tab == null) {
                return;
            }
            ShortTvMovieFragment.this.C0(tab.getPosition());
            xq.b.e(ShortTvMovieFragment.this.mPageFrom, ShortTvMovieFragment.this.mPageFrom, null, null, null, null, 60, null);
            br.b bVar = ShortTvMovieFragment.this.mExposureHelper;
            if (bVar != null) {
                bVar.e();
            }
            ShortTvMovieFragment shortTvMovieFragment2 = ShortTvMovieFragment.this;
            shortTvMovieFragment2.f1(shortTvMovieFragment2.mChannelId);
            ShortTvMovieFragment shortTvMovieFragment3 = ShortTvMovieFragment.this;
            shortTvMovieFragment3.p1((HashMap) shortTvMovieFragment3.mSubjectTypeMap.get(ShortTvMovieFragment.this.mChannelId));
            a0 a0Var = (a0) ShortTvMovieFragment.this.getMViewBinding();
            if (a0Var == null || (recyclerView = a0Var.f69943c) == null) {
                return;
            }
            recyclerView.scrollToPosition(0);
        }

        @Override
        public void onTabUnselected(TabLayout.Tab tab) {
            if (tab != null) {
                ShortTvMovieFragment.this.i1(tab, false);
            }
            xq.b.f(ShortTvMovieFragment.this.M0(), ShortTvMovieFragment.this.mPageFrom, String.valueOf(SystemClock.elapsedRealtime() - ShortTvMovieFragment.this.startShowTime));
            a.C0922a.f(a.f74274a, "MovieFragment", "unselected tab " + (tab != null ? Integer.valueOf(tab.getPosition()) : null), false, 4, null);
        }
    }

    public static final class c implements br.a {
        c() {
        }

        @Override
        public void a(int i10, long j10, View view) {
            List<Object> data;
            String subjectId;
            String ops;
            com.transsion.shorttv._channel.ui.adapter.c cVar = ShortTvMovieFragment.this.mAdapter;
            if (cVar == null || (data = cVar.getData()) == null) {
                return;
            }
            int size = data.size();
            ShortTvMovieFragment shortTvMovieFragment = ShortTvMovieFragment.this;
            if (i10 >= size) {
                return;
            }
            com.transsion.shorttv._channel.ui.adapter.c cVar2 = shortTvMovieFragment.mAdapter;
            ShortTvMovieItem shortTvMovieItem = cVar2 != null ? (ShortTvMovieItem) cVar2.getItem(i10) : null;
            HashMap map = new HashMap();
            String str = "";
            if (shortTvMovieItem == null || (subjectId = shortTvMovieItem.getSubjectId()) == null) {
                subjectId = "";
            }
            map.put("subject_id", subjectId);
            map.put("has_resource", String.valueOf(shortTvMovieItem != null ? shortTvMovieItem.getHasResource() : null));
            map.put("sequence", String.valueOf(i10));
            if (shortTvMovieItem != null && (ops = shortTvMovieItem.getOps()) != null) {
                str = ops;
            }
            map.put("ops", str);
            map.put("filter_name", shortTvMovieFragment.H0());
            map.put("browse_duration", String.valueOf(j10));
            h.f69682a.z(shortTvMovieFragment.M0(), map);
        }
    }

    public static final class d extends DiffUtil.e {
        d() {
        }

        @Override
        public boolean areContentsTheSame(ShortTvMovieItem oldItem, ShortTvMovieItem newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            return Intrinsics.c(oldItem.getSubjectId(), newItem.getSubjectId());
        }

        @Override
        public boolean areItemsTheSame(ShortTvMovieItem oldItem, ShortTvMovieItem newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            return Intrinsics.c(oldItem.getSubjectType(), newItem.getSubjectType());
        }
    }

    public static final class e extends RecyclerView.r {

        private int[] f50606a;

        private int f50607b;

        e() {
        }

        private final void d(RecyclerView recyclerView) {
            RecyclerView.m layoutManager = recyclerView.getLayoutManager();
            if (layoutManager instanceof StaggeredGridLayoutManager) {
                if (this.f50606a == null) {
                    this.f50606a = new int[((StaggeredGridLayoutManager) layoutManager).Q()];
                }
                ((StaggeredGridLayoutManager) layoutManager).E(this.f50606a);
                this.f50607b = e(this.f50606a);
                return;
            }
            if (layoutManager instanceof GridLayoutManager) {
                this.f50607b = ((GridLayoutManager) layoutManager).findLastCompletelyVisibleItemPosition();
            } else {
                if (!(layoutManager instanceof LinearLayoutManager)) {
                    throw new RuntimeException("Unsupported layoutManager.");
                }
                this.f50607b = ((LinearLayoutManager) layoutManager).findLastCompletelyVisibleItemPosition();
            }
        }

        private final int e(int[] iArr) {
            if (iArr == null) {
                return 0;
            }
            int i10 = 0;
            for (int i11 : iArr) {
                if (i11 > i10) {
                    i10 = i11;
                }
            }
            return i10;
        }

        @Override
        public void onScrollStateChanged(RecyclerView recyclerView, int i10) {
            com.transsion.shorttv._channel.ui.adapter.c cVar;
            t6.f fVarH0;
            t6.f fVarH1;
            Intrinsics.h(recyclerView, "recyclerView");
            super.onScrollStateChanged(recyclerView, i10);
            RecyclerView.m layoutManager = recyclerView.getLayoutManager();
            int childCount = layoutManager != null ? layoutManager.getChildCount() : 0;
            int itemCount = layoutManager != null ? layoutManager.getItemCount() : 0;
            if (i10 != 0 || childCount <= 0 || this.f50607b < itemCount - 1) {
                return;
            }
            com.transsion.shorttv._channel.ui.adapter.c cVar2 = ShortTvMovieFragment.this.mAdapter;
            if (((cVar2 == null || (fVarH1 = cVar2.h0()) == null) ? null : fVarH1.i()) != LoadMoreStatus.Fail || (cVar = ShortTvMovieFragment.this.mAdapter) == null || (fVarH0 = cVar.h0()) == null) {
                return;
            }
            fVarH0.w();
        }

        @Override
        public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
            Intrinsics.h(recyclerView, "recyclerView");
            d(recyclerView);
        }
    }

    static final class f implements c0, FunctionAdapter {

        private final Function1 f50609a;

        f(Function1 function) {
            Intrinsics.h(function, "function");
            this.f50609a = function;
        }

        @Override
        public final Function a() {
            return this.f50609a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override
        public final void onChanged(Object obj) {
            this.f50609a.invoke(obj);
        }
    }

    public final void C0(int position) {
        String channelId;
        List<ShortTvChannel> typeList;
        ShortTvChannel shortTvChannel;
        RecyclerView recyclerView;
        List<ShortTvChannel> typeList2;
        ShortTvFilterItems shortTvFilterItems = this.mFilterItems;
        int size = (shortTvFilterItems == null || (typeList2 = shortTvFilterItems.getTypeList()) == null) ? -1 : typeList2.size();
        if (position < 0 || position >= size) {
            return;
        }
        RecyclerView.m layoutManager = null;
        if (O0()) {
            channelId = this.mDeeplinkChannelId;
        } else {
            ShortTvFilterItems shortTvFilterItems2 = this.mFilterItems;
            channelId = (shortTvFilterItems2 == null || (typeList = shortTvFilterItems2.getTypeList()) == null || (shortTvChannel = typeList.get(position)) == null) ? null : shortTvChannel.getChannelId();
        }
        this.mChannelId = channelId;
        this.mDeeplinkChannelId = null;
        View view = this.header;
        if (view != null) {
            a0 a0Var = (a0) getMViewBinding();
            if (a0Var != null && (recyclerView = a0Var.f69943c) != null) {
                layoutManager = recyclerView.getLayoutManager();
            }
            if (layoutManager instanceof ShortTvOffsetGridLayoutManager) {
                ShortTvOffsetGridLayoutManager shortTvOffsetGridLayoutManager = (ShortTvOffsetGridLayoutManager) layoutManager;
                if (shortTvOffsetGridLayoutManager.U() == L0()) {
                    a.C0922a.f(a.f74274a, "MovieFragment", "span count is same " + shortTvOffsetGridLayoutManager.U(), false, 4, null);
                    return;
                }
            }
            U0();
            ViewParent parent = view.getParent();
            if (parent != null && (parent instanceof ViewGroup)) {
                ((ViewGroup) parent).removeView(view);
            }
            com.transsion.shorttv._channel.ui.adapter.c cVar = this.mAdapter;
            if (cVar != null) {
                BaseQuickAdapter.y(cVar, view, 0, 0, 6, null);
            }
            j1();
        }
    }

    private final void D0(String channelId) {
        HashMap map = (HashMap) this.mSubjectTypeMap.get(channelId);
        if (map != null) {
            map.clear();
        }
    }

    private final void E0(String channelId, Map selectedItems, boolean isRefresh) {
        ShortTvMovieViewModel shortTvMovieViewModel = this.mMovieModel;
        if (shortTvMovieViewModel != null) {
            int i10 = this.mPage;
            this.mPage = i10 + 1;
            shortTvMovieViewModel.k(i10, this.mPerPage, channelId, selectedItems, isRefresh);
        }
        this.mLatestSelectItems = selectedItems;
    }

    private final void F0() {
        this.mPage = 1;
        String str = this.mChannelId;
        E0(str, (Map) this.mSubjectTypeMap.get(str), true);
        br.b bVar = this.mExposureHelper;
        if (bVar != null) {
            bVar.e();
        }
    }

    private final List G0(String channelId) {
        List<ShortTvChannel> typeList;
        ShortTvFilterItems shortTvFilterItems = this.mFilterItems;
        if (shortTvFilterItems == null || (typeList = shortTvFilterItems.getTypeList()) == null) {
            return null;
        }
        for (ShortTvChannel shortTvChannel : typeList) {
            if (Intrinsics.c(shortTvChannel.getChannelId(), channelId)) {
                return shortTvChannel.getItems();
            }
        }
        return null;
    }

    public final String H0() {
        String str;
        HashMap map = (HashMap) this.mSubjectTypeMap.get(this.mChannelId);
        if (map == null || (str = (String) map.get("sort")) == null) {
            str = "";
        }
        return "filter_" + str;
    }

    private final ShortTvLayoutStyle I0(String channelId) {
        List<ShortTvChannel> typeList;
        ShortTvFilterItems shortTvFilterItems = this.mFilterItems;
        if (shortTvFilterItems == null || (typeList = shortTvFilterItems.getTypeList()) == null) {
            return null;
        }
        for (ShortTvChannel shortTvChannel : typeList) {
            if (Intrinsics.c(shortTvChannel.getChannelId(), channelId)) {
                return shortTvChannel.getStyle();
            }
        }
        return null;
    }

    private final int J0() {
        return R$layout.short_tv_home_empty_view_loading;
    }

    private final String K0() {
        return "movie_filter_page";
    }

    private final int L0() {
        ShortTvLayoutStyle shortTvLayoutStyleI0 = I0(this.mChannelId);
        if (shortTvLayoutStyleI0 != null) {
            int colNum = shortTvLayoutStyleI0.getColNum();
            FragmentActivity activity = getActivity();
            return colNum + ((activity == null || !hr.a.a(activity)) ? 0 : 1);
        }
        if (Intrinsics.c(this.mChannelId, "5") || Intrinsics.c(this.mChannelId, PrepareException.ERROR_NO_URL) || Intrinsics.c(this.mChannelId, "1003") || Intrinsics.c(this.mChannelId, "1004")) {
            return 2;
        }
        FragmentActivity activity2 = getActivity();
        return (activity2 == null || !hr.a.a(activity2)) ? 3 : 4;
    }

    private final boolean O0() {
        ShortTvFilterItems shortTvFilterItems;
        List<ShortTvChannel> typeList;
        String str = this.mDeeplinkChannelId;
        if (str != null && str.length() != 0 && (shortTvFilterItems = this.mFilterItems) != null && (typeList = shortTvFilterItems.getTypeList()) != null) {
            Iterator<T> it = typeList.iterator();
            while (it.hasNext()) {
                if (Intrinsics.c(((ShortTvChannel) it.next()).getChannelId(), this.mDeeplinkChannelId)) {
                    return true;
                }
            }
        }
        return false;
    }

    private final void P0() {
        View view = this.mLoadingView;
        if (view != null) {
            cr.b.b(view);
        }
    }

    private final void Q0() {
        View view = this.mNoResultView;
        if (view != null) {
            cr.b.b(view);
        }
    }

    private final void R0() {
        List<ShortTvChannel> typeList;
        d0 d0Var;
        d0 d0Var2;
        List<ShortTvChannel> typeList2;
        ShortTvFilterItems shortTvFilterItems = this.mFilterItems;
        int i10 = 0;
        int size = (shortTvFilterItems == null || (typeList2 = shortTvFilterItems.getTypeList()) == null) ? 0 : typeList2.size();
        if (size <= 0) {
            return;
        }
        a0 a0Var = (a0) getMViewBinding();
        ConstraintLayout constraintLayout = null;
        TabLayout tabLayout = (a0Var == null || (d0Var2 = a0Var.f69942b) == null) ? null : d0Var2.f70001d;
        a0 a0Var2 = (a0) getMViewBinding();
        if (a0Var2 != null && (d0Var = a0Var2.f69942b) != null) {
            constraintLayout = d0Var.f70000c;
        }
        if (size == 1) {
            if (constraintLayout != null) {
                cr.b.b(constraintLayout);
            }
            f1(this.mChannelId);
            p1((HashMap) this.mSubjectTypeMap.get(this.mChannelId));
            return;
        }
        if (constraintLayout != null) {
            cr.b.e(constraintLayout);
        }
        if (tabLayout != null) {
            tabLayout.removeAllTabs();
        }
        if (tabLayout != null) {
            tabLayout.clearOnTabSelectedListeners();
        }
        if (tabLayout != null) {
            tabLayout.addOnTabSelectedListener((TabLayout.OnTabSelectedListener) new b());
        }
        ShortTvFilterItems shortTvFilterItems2 = this.mFilterItems;
        if (shortTvFilterItems2 == null || (typeList = shortTvFilterItems2.getTypeList()) == null) {
            return;
        }
        for (Object obj : typeList) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt.u();
            }
            ShortTvChannel shortTvChannel = (ShortTvChannel) obj;
            if (tabLayout != null) {
                tabLayout.addTab(tabLayout.newTab().setText(shortTvChannel.getChannelName()), Intrinsics.c(shortTvChannel.getChannelId(), this.mChannelId));
            }
            i10 = i11;
        }
    }

    private final void S0() {
        RecyclerView recyclerView;
        if (this.mExposureHelper == null) {
            br.b bVar = new br.b(0.6f, new c(), false, 4, null);
            a0 a0Var = (a0) getMViewBinding();
            if (a0Var != null && (recyclerView = a0Var.f69943c) != null) {
                recyclerView.addOnScrollListener(bVar);
            }
            this.mExposureHelper = bVar;
        }
    }

    private final void T0() {
        List<ShortTvChannel> typeList;
        this.mSubjectTypeMap.clear();
        ShortTvFilterItems shortTvFilterItems = this.mFilterItems;
        if (shortTvFilterItems == null || (typeList = shortTvFilterItems.getTypeList()) == null) {
            return;
        }
        Iterator<T> it = typeList.iterator();
        while (it.hasNext()) {
            this.mSubjectTypeMap.put(((ShortTvChannel) it.next()).getChannelId(), new HashMap());
        }
    }

    private final void U0() {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        a0 a0Var;
        RecyclerView recyclerView3;
        RecyclerView recyclerView4;
        int iL0 = L0();
        ShortTvOffsetGridLayoutManager shortTvOffsetGridLayoutManager = new ShortTvOffsetGridLayoutManager(getContext(), iL0, 1, false);
        a0 a0Var2 = (a0) getMViewBinding();
        if (a0Var2 != null && (recyclerView4 = a0Var2.f69943c) != null) {
            recyclerView4.setLayoutManager(shortTvOffsetGridLayoutManager);
        }
        com.transsion.shorttv._channel.ui.adapter.c cVar = new com.transsion.shorttv._channel.ui.adapter.c(new ArrayList(), this.mExposureHelper, I0(this.mChannelId), iL0);
        cVar.h0().z(true);
        cVar.h0().y(true);
        cVar.h0().D(new r6.f() {
            @Override
            public final void a() {
                ShortTvMovieFragment.W0(this.f73235a);
            }
        });
        cVar.R0(new d());
        cVar.w1(new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                ShortTvMovieFragment.V0(this.f73236a, baseQuickAdapter, view, i10);
            }
        });
        this.mAdapter = cVar;
        a0 a0Var3 = (a0) getMViewBinding();
        if (a0Var3 != null && (recyclerView2 = a0Var3.f69943c) != null && recyclerView2.getItemDecorationCount() < 2 && (a0Var = (a0) getMViewBinding()) != null && (recyclerView3 = a0Var.f69943c) != null) {
            recyclerView3.addItemDecoration(new sq.b(com.blankj.utilcode.util.a0.a(4.0f), com.blankj.utilcode.util.a0.a(4.0f), com.blankj.utilcode.util.a0.a(16.0f), com.blankj.utilcode.util.a0.a(16.0f)));
        }
        a0 a0Var4 = (a0) getMViewBinding();
        if (a0Var4 == null || (recyclerView = a0Var4.f69943c) == null) {
            return;
        }
        recyclerView.setAdapter(this.mAdapter);
    }

    public static final void V0(ShortTvMovieFragment shortTvMovieFragment, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "<unused var>");
        Object item = adapter.getItem(i10);
        if (item instanceof ShortTvMovieItem) {
            ShortTvMovieItem shortTvMovieItem = (ShortTvMovieItem) item;
            String subjectId = shortTvMovieItem.getSubjectId();
            if (subjectId != null) {
                xq.b.c(new Subject(subjectId, shortTvMovieItem.getSubjectType(), shortTvMovieItem.getTitle(), null, null, null, shortTvMovieItem.getDescription(), null, null, shortTvMovieItem.getGenre(), null, null, null, null, null, null, null, null, null, shortTvMovieItem.getOps(), null, null, null, null, false, false, null, null, null, null, null, false, false, null, null, 0, false, false, 0L, null, null, 0L, null, 0, false, null, 0, null, null, null, null, null, false, null, shortTvMovieItem.getPlayUrl(), 0, 0, null, 0, null, 0, null, -524872, 1069547519, null));
            }
            HashMap map = new HashMap();
            String subjectId2 = shortTvMovieItem.getSubjectId();
            if (subjectId2 == null) {
                subjectId2 = "";
            }
            map.put("subject_id", subjectId2);
            map.put("sequence", String.valueOf(i10));
            String ops = shortTvMovieItem.getOps();
            map.put("ops", ops != null ? ops : "");
            map.put("filter_name", shortTvMovieFragment.H0());
            h.f69682a.o(shortTvMovieFragment.M0(), map);
        }
    }

    public static final void W0(final ShortTvMovieFragment shortTvMovieFragment) {
        RecyclerView recyclerView;
        if (l.f76264a.e()) {
            shortTvMovieFragment.loadMore();
            return;
        }
        jr.b.f63248a.d(R$string.short_tv_no_network_toast);
        a0 a0Var = (a0) shortTvMovieFragment.getMViewBinding();
        if (a0Var == null || (recyclerView = a0Var.f69943c) == null) {
            return;
        }
        recyclerView.postDelayed(new Runnable() {
            @Override
            public final void run() {
                ShortTvMovieFragment.X0(this.f73226a);
            }
        }, 500L);
    }

    public static final void X0(ShortTvMovieFragment shortTvMovieFragment) {
        t6.f fVarH0;
        com.transsion.shorttv._channel.ui.adapter.c cVar = shortTvMovieFragment.mAdapter;
        if (cVar == null || (fVarH0 = cVar.h0()) == null) {
            return;
        }
        fVarH0.v();
    }

    public static final void Y0(ShortTvMovieFragment shortTvMovieFragment) {
        shortTvMovieFragment.F0();
    }

    public static final void Z0(ShortTvMovieFragment shortTvMovieFragment) {
        shortTvMovieFragment.loadData();
    }

    public static final Unit a1(final ShortTvMovieFragment shortTvMovieFragment, BaseDto baseDto) {
        SwipeRefreshLayout swipeRefreshLayout;
        if (baseDto == null) {
            return Unit.f64096a;
        }
        if (!Intrinsics.c(baseDto.getCode(), "0")) {
            a0 a0Var = (a0) shortTvMovieFragment.getMViewBinding();
            if (a0Var != null && (swipeRefreshLayout = a0Var.f69947g) != null) {
                swipeRefreshLayout.postDelayed(new Runnable() {
                    @Override
                    public final void run() {
                        ShortTvMovieFragment.b1(this.f73233a);
                    }
                }, 200L);
            }
            return Unit.f64096a;
        }
        shortTvMovieFragment.mFilterItems = (ShortTvFilterItems) baseDto.getData();
        shortTvMovieFragment.C0(0);
        shortTvMovieFragment.T0();
        shortTvMovieFragment.R0();
        com.transsion.shorttv._channel.ui.adapter.c cVar = shortTvMovieFragment.mAdapter;
        if (cVar != null) {
            cVar.F1(shortTvMovieFragment.I0(shortTvMovieFragment.mChannelId));
        }
        return Unit.f64096a;
    }

    public static final void b1(ShortTvMovieFragment shortTvMovieFragment) {
        shortTvMovieFragment.hideLoading();
        shortTvMovieFragment.k1();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit c1(ShortTvMovieFragment shortTvMovieFragment, ShortTvRefreshBaseDto shortTvRefreshBaseDto) {
        t6.f fVarH0;
        com.transsion.shorttv._channel.ui.adapter.c cVar;
        t6.f fVarH1;
        List<Object> data;
        SwipeRefreshLayout swipeRefreshLayout;
        a0 a0Var;
        SwipeRefreshLayout swipeRefreshLayout2;
        SwipeRefreshLayout swipeRefreshLayout3;
        if (shortTvRefreshBaseDto == null) {
            return Unit.f64096a;
        }
        a0 a0Var2 = (a0) shortTvMovieFragment.getMViewBinding();
        if (a0Var2 != null && (swipeRefreshLayout3 = a0Var2.f69947g) != null) {
            swipeRefreshLayout3.setEnabled(true);
        }
        if (Intrinsics.c(shortTvRefreshBaseDto.getCode(), "0")) {
            qi.b logViewConfig = shortTvMovieFragment.getLogViewConfig();
            if (logViewConfig != null) {
                logViewConfig.k(true);
            }
            ShortTvMovieBean shortTvMovieBean = (ShortTvMovieBean) shortTvRefreshBaseDto.getData();
            if (shortTvMovieBean != null) {
                shortTvMovieFragment.n1(shortTvMovieBean, shortTvRefreshBaseDto.getIsRefresh());
                View view = shortTvMovieFragment.mNoNetworkView;
                if (view != null) {
                    cr.b.b(view);
                }
            }
            shortTvMovieFragment.hideLoading();
            return Unit.f64096a;
        }
        if (shortTvRefreshBaseDto.getIsRefresh()) {
            a0 a0Var3 = (a0) shortTvMovieFragment.getMViewBinding();
            if (a0Var3 != null && (swipeRefreshLayout = a0Var3.f69947g) != null && swipeRefreshLayout.isRefreshing() && (a0Var = (a0) shortTvMovieFragment.getMViewBinding()) != null && (swipeRefreshLayout2 = a0Var.f69947g) != null) {
                swipeRefreshLayout2.setRefreshing(false);
            }
        } else {
            com.transsion.shorttv._channel.ui.adapter.c cVar2 = shortTvMovieFragment.mAdapter;
            if (cVar2 != null && (fVarH0 = cVar2.h0()) != null && fVarH0.r() && (cVar = shortTvMovieFragment.mAdapter) != null && (fVarH1 = cVar.h0()) != null) {
                fVarH1.v();
            }
        }
        com.transsion.shorttv._channel.ui.adapter.c cVar3 = shortTvMovieFragment.mAdapter;
        if (cVar3 == null || (data = cVar3.getData()) == null || data.size() != 0) {
            if (l.f76264a.e()) {
                jr.b.f63248a.d(R$string.short_tv_str_ad_video_error_tips);
            } else {
                jr.b.f63248a.d(R$string.short_tv_no_network_toast);
            }
            shortTvMovieFragment.P0();
            return Unit.f64096a;
        }
        if (l.f76264a.e()) {
            shortTvMovieFragment.l1(shortTvMovieFragment.getString(R$string.short_tv_no_network));
        } else {
            shortTvMovieFragment.k1();
        }
        shortTvMovieFragment.P0();
        return Unit.f64096a;
    }

    public static final Unit d1(ShortTvMovieFragment shortTvMovieFragment, Map it) {
        Intrinsics.h(it, "it");
        shortTvMovieFragment.e1(it);
        xq.b.e(shortTvMovieFragment.M0(), it.toString(), null, null, null, null, 60, null);
        br.b bVar = shortTvMovieFragment.mExposureHelper;
        if (bVar != null) {
            bVar.e();
        }
        return Unit.f64096a;
    }

    private final void e1(Map selectedMap) {
        this.mPage = 1;
        HashMap map = (HashMap) this.mSubjectTypeMap.get(this.mChannelId);
        if (map != null) {
            map.clear();
        }
        if (map != null) {
            map.putAll(selectedMap);
        }
        E0(this.mChannelId, map, true);
    }

    public final void f1(String channelId) {
        List<ShortTvChannel> typeList;
        this.mPage = 1;
        ShortTvFilterItems shortTvFilterItems = this.mFilterItems;
        if (shortTvFilterItems == null || (typeList = shortTvFilterItems.getTypeList()) == null) {
            return;
        }
        for (ShortTvChannel shortTvChannel : typeList) {
            if (Intrinsics.c(shortTvChannel.getChannelId(), channelId)) {
                HashMap map = (HashMap) this.mSubjectTypeMap.get(channelId);
                String str = this.mFilterJson;
                if (str == null || str.length() <= 0) {
                    List<ShortTvItem> items = shortTvChannel.getItems();
                    if (items != null) {
                        for (ShortTvItem shortTvItem : items) {
                            if ((map != null ? (String) map.get(shortTvItem.getFilterType()) : null) == null) {
                                if (shortTvItem.getRangeVals() != null) {
                                    String strA = ShortTvPopupFilterView.INSTANCE.a(shortTvItem.getRangeVals().getMinVal(), shortTvItem.getRangeVals().getMaxVal());
                                    if (map != null) {
                                        map.put(shortTvItem.getFilterType(), strA);
                                    }
                                } else if (!shortTvItem.getFilterValsV2().isEmpty() && map != null) {
                                    map.put(shortTvItem.getFilterType(), shortTvItem.getFilterValsV2().get(0).getId());
                                }
                            }
                        }
                    }
                } else {
                    try {
                        String str2 = this.mFilterJson;
                        if (str2 == null) {
                            str2 = "";
                        }
                        JSONObject jSONObject = new JSONObject(str2);
                        Iterator<String> itKeys = jSONObject.keys();
                        while (itKeys.hasNext()) {
                            String next = itKeys.next();
                            String string = jSONObject.getString(next);
                            if (map != null) {
                                map.put(next, string);
                            }
                        }
                        Unit unit = Unit.f64096a;
                    } catch (Exception unused) {
                        List<ShortTvItem> items2 = shortTvChannel.getItems();
                        if (items2 != null) {
                            for (ShortTvItem shortTvItem2 : items2) {
                                if ((map != null ? (String) map.get(shortTvItem2.getFilterType()) : null) == null && map != null) {
                                    map.put(shortTvItem2.getFilterType(), shortTvItem2.getFilterValsV2().get(0).getId());
                                }
                            }
                            Unit unit2 = Unit.f64096a;
                        }
                    }
                }
                this.mFilterJson = null;
                E0(channelId, map, true);
            }
        }
    }

    private final void g1(boolean show) {
    }

    private final void h1() {
        ShortTvPopupFilterView shortTvPopupFilterView = this.mFilterView;
        if (shortTvPopupFilterView != null) {
            ShortTvPopupFilterView.initSelectData$default(shortTvPopupFilterView, G0(this.mChannelId), null, 2, null);
        }
    }

    private final void hideLoading() {
        P0();
    }

    private final void initScrollListener() {
        RecyclerView recyclerView;
        SwipeRefreshLayout swipeRefreshLayout;
        SwipeRefreshLayout swipeRefreshLayout2;
        a0 a0Var = (a0) getMViewBinding();
        if (a0Var != null && (swipeRefreshLayout2 = a0Var.f69947g) != null) {
            swipeRefreshLayout2.setEnabled(false);
        }
        a0 a0Var2 = (a0) getMViewBinding();
        if (a0Var2 != null && (swipeRefreshLayout = a0Var2.f69947g) != null) {
            swipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.j() {
                @Override
                public final void a() {
                    ShortTvMovieFragment.Y0(this.f73234a);
                }
            });
        }
        a0 a0Var3 = (a0) getMViewBinding();
        if (a0Var3 == null || (recyclerView = a0Var3.f69943c) == null) {
            return;
        }
        recyclerView.addOnScrollListener(new e());
    }

    private final void initView(View view, Bundle savedInstanceState) {
        a0 a0Var;
        View view2;
        View view3;
        a0 a0Var2 = (a0) getMViewBinding();
        if (a0Var2 != null && (view3 = a0Var2.f69946f) != null) {
            view3.getLayoutParams().height = com.blankj.utilcode.util.d.c();
        }
        Bundle arguments = getArguments();
        if (arguments != null && arguments.getBoolean("hide_header_bg", false) && (a0Var = (a0) getMViewBinding()) != null && (view2 = a0Var.f69946f) != null) {
            cr.b.b(view2);
        }
        this.mMovieModel = (ShortTvMovieViewModel) new v0(this).a(ShortTvMovieViewModel.class);
        a0 a0Var3 = (a0) getMViewBinding();
        this.mFilterView = a0Var3 != null ? a0Var3.f69944d : null;
        View viewInflate = LayoutInflater.from(getContext()).inflate(R$layout.short_tv_header_movie, (ViewGroup) null);
        this.header = viewInflate;
        if (viewInflate != null) {
            S0();
            U0();
            initScrollListener();
            com.transsion.shorttv._channel.ui.adapter.c cVar = this.mAdapter;
            if (cVar != null) {
                BaseQuickAdapter.y(cVar, viewInflate, 0, 0, 6, null);
            }
            initViewModel();
            viewInflate.post(new Runnable() {
                @Override
                public final void run() {
                    ShortTvMovieFragment.Z0(this.f73229a);
                }
            });
        }
    }

    private final void j1() {
        View view = this.header;
        if (view != null) {
            ViewStub viewStub = (ViewStub) view.findViewById(R$id.loading_stub);
            if (viewStub != null) {
                viewStub.setLayoutResource(J0());
            }
            if (this.mLoadingView == null) {
                this.mLoadingView = viewStub.inflate();
            }
            View view2 = this.mLoadingView;
            if (view2 != null) {
                cr.b.e(view2);
            }
        }
    }

    private final void k1() {
        showNoNetworkView(false);
    }

    private final void l1(String string) {
        View view = this.header;
        if (view != null) {
            ViewStub viewStub = (ViewStub) view.findViewById(R$id.no_result_stub);
            if (this.mNoResultView == null) {
                this.mNoResultView = viewStub.inflate();
            }
            final View view2 = this.mNoResultView;
            if (view2 != null) {
                cr.b.e(view2);
                TextView textView = (TextView) view2.findViewById(R$id.tv_no_result);
                if (textView != null) {
                    textView.setText(string);
                }
                View viewFindViewById = view2.findViewById(R$id.tv_reset);
                if (viewFindViewById != null) {
                    viewFindViewById.setOnClickListener(new View.OnClickListener() {
                        @Override
                        public final void onClick(View view3) {
                            ShortTvMovieFragment.m1(this.f73231a, view2, view3);
                        }
                    });
                }
            }
        }
    }

    private final void loadData() {
        startLoading();
        ShortTvMovieViewModel shortTvMovieViewModel = this.mMovieModel;
        if (shortTvMovieViewModel != null) {
            shortTvMovieViewModel.h("v3");
        }
    }

    private final void loadMore() {
        String str = this.mChannelId;
        E0(str, (Map) this.mSubjectTypeMap.get(str), false);
    }

    public static final void m1(ShortTvMovieFragment shortTvMovieFragment, View view, View view2) {
        shortTvMovieFragment.D0(shortTvMovieFragment.mChannelId);
        shortTvMovieFragment.f1(shortTvMovieFragment.mChannelId);
        cr.b.b(view);
        shortTvMovieFragment.startLoading();
        shortTvMovieFragment.h1();
    }

    private final void n1(ShortTvMovieBean movieBean, boolean isRefresh) {
        t6.f fVarH0;
        a0 a0Var;
        LinearLayout linearLayoutB;
        t6.f fVarH1;
        com.transsion.shorttv._channel.ui.adapter.c cVar;
        t6.f fVarH2;
        SwipeRefreshLayout swipeRefreshLayout;
        a0 a0Var2;
        SwipeRefreshLayout swipeRefreshLayout2;
        Integer perPage;
        if (movieBean != null) {
            Pager pager = movieBean.getPager();
            this.mPerPage = (pager == null || (perPage = pager.getPerPage()) == null) ? 10 : perPage.intValue();
            if (isRefresh) {
                a0 a0Var3 = (a0) getMViewBinding();
                if (a0Var3 != null && (swipeRefreshLayout = a0Var3.f69947g) != null && swipeRefreshLayout.isRefreshing() && (a0Var2 = (a0) getMViewBinding()) != null && (swipeRefreshLayout2 = a0Var2.f69947g) != null) {
                    swipeRefreshLayout2.setRefreshing(false);
                }
                com.transsion.shorttv._channel.ui.adapter.c cVar2 = this.mAdapter;
                if (cVar2 != null) {
                    cVar2.n1(movieBean.getItems());
                }
                List<ShortTvMovieItem> items = movieBean.getItems();
                if (items == null || !items.isEmpty()) {
                    Q0();
                } else {
                    l1(getString(R$string.short_tv_no_filter_result));
                }
            } else {
                com.transsion.shorttv._channel.ui.adapter.c cVar3 = this.mAdapter;
                List<Object> data = cVar3 != null ? cVar3.getData() : null;
                ArrayList arrayList = new ArrayList();
                List<ShortTvMovieItem> items2 = movieBean.getItems();
                if (items2 == null) {
                    items2 = CollectionsKt.l();
                }
                if (data == null || !(!data.isEmpty())) {
                    arrayList.addAll(items2);
                } else {
                    for (ShortTvMovieItem shortTvMovieItem : items2) {
                        if (!data.contains(shortTvMovieItem)) {
                            arrayList.add(shortTvMovieItem);
                        }
                    }
                }
                if (arrayList.isEmpty()) {
                    com.transsion.shorttv._channel.ui.adapter.c cVar4 = this.mAdapter;
                    if (cVar4 == null || (fVarH1 = cVar4.h0()) == null) {
                        return;
                    }
                    t6.f.u(fVarH1, false, 1, null);
                    return;
                }
                com.transsion.shorttv._channel.ui.adapter.c cVar5 = this.mAdapter;
                if (cVar5 != null) {
                    cVar5.q(arrayList);
                }
                com.transsion.shorttv._channel.ui.adapter.c cVar6 = this.mAdapter;
                if (cVar6 != null && (fVarH0 = cVar6.h0()) != null && fVarH0.r() && (a0Var = (a0) getMViewBinding()) != null && (linearLayoutB = a0Var.getRoot()) != null) {
                    linearLayoutB.postDelayed(new Runnable() {
                        @Override
                        public final void run() {
                            ShortTvMovieFragment.o1(this.f73230a);
                        }
                    }, 300L);
                }
            }
            Pager pager2 = movieBean.getPager();
            if (!(pager2 != null ? Intrinsics.c(pager2.getHasMore(), Boolean.FALSE) : false) || (cVar = this.mAdapter) == null || (fVarH2 = cVar.h0()) == null) {
                return;
            }
            t6.f.u(fVarH2, false, 1, null);
        }
    }

    public static final void o1(ShortTvMovieFragment shortTvMovieFragment) {
        t6.f fVarH0;
        com.transsion.shorttv._channel.ui.adapter.c cVar = shortTvMovieFragment.mAdapter;
        if (cVar == null || (fVarH0 = cVar.h0()) == null) {
            return;
        }
        fVarH0.s();
    }

    public final void p1(HashMap selectItems) {
        ShortTvPopupFilterView shortTvPopupFilterView = this.mFilterView;
        if (shortTvPopupFilterView != null) {
            shortTvPopupFilterView.initSelectData(G0(this.mChannelId), selectItems);
        }
    }

    private final void startLoading() {
        j1();
    }

    public final String M0() {
        return "movie_filter_page";
    }

    @Override
    public a0 getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        a0 a0VarC = a0.c(inflater);
        Intrinsics.g(a0VarC, "inflate(...)");
        return a0VarC;
    }

    @Override
    public String getPageStateLayoutTitle() {
        return "";
    }

    public final void i1(TabLayout.Tab tab, boolean z10) {
        Intrinsics.h(tab, "<this>");
        try {
            Field declaredField = tab.getClass().getDeclaredField(MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW);
            declaredField.setAccessible(true);
            Object obj = declaredField.get(tab);
            Field declaredField2 = obj.getClass().getDeclaredField("textView");
            declaredField2.setAccessible(true);
            Object obj2 = declaredField2.get(obj);
            Intrinsics.f(obj2, "null cannot be cast to non-null type android.widget.TextView");
            TextView textView = (TextView) obj2;
            textView.setTextSize(14.0f);
            if (z10) {
                textView.setTypeface(Typeface.defaultFromStyle(1));
            } else {
                textView.setTypeface(Typeface.defaultFromStyle(0));
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override
    public void initListener() {
    }

    @Override
    public void initViewData() {
    }

    @Override
    public void initViewModel() {
        ShortTvMovieViewModel shortTvMovieViewModel = this.mMovieModel;
        if (shortTvMovieViewModel != null) {
            shortTvMovieViewModel.i().j(this, new f(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return ShortTvMovieFragment.a1(this.f73225a, (BaseDto) obj);
                }
            }));
            shortTvMovieViewModel.l().j(this, new f(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return ShortTvMovieFragment.c1(this.f73227a, (ShortTvRefreshBaseDto) obj);
                }
            }));
            ShortTvPopupFilterView shortTvPopupFilterView = this.mFilterView;
            if (shortTvPopupFilterView != null) {
                shortTvPopupFilterView.setOnFilterListener(new Function1() {
                    @Override
                    public final Object invoke(Object obj) {
                        return ShortTvMovieFragment.d1(this.f73228a, (Map) obj);
                    }
                });
            }
        }
    }

    @Override
    public boolean isShowPageStateLayoutTitle() {
        return false;
    }

    @Override
    public qi.b newLogViewConfig() {
        return new qi.b(K0(), false, 2, null);
    }

    @Override
    public void onConfigurationChanged(Configuration newConfig) {
        Intrinsics.h(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        com.transsion.shorttv._channel.ui.adapter.c cVar = this.mAdapter;
        if (cVar != null) {
            cVar.notifyDataSetChanged();
        }
    }

    @Override
    public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
        t6.f fVarH0;
        List<Object> data;
        List<Object> data2;
        List<Object> data3;
        Intrinsics.h(network, "network");
        Intrinsics.h(networkCapabilities, "networkCapabilities");
        super.onConnected(network, networkCapabilities);
        if (isResumed()) {
            com.transsion.shorttv._channel.ui.adapter.c cVar = this.mAdapter;
            if (cVar != null && (data3 = cVar.getData()) != null && data3.isEmpty()) {
                View view = this.mNoNetworkView;
                if (view != null) {
                    cr.b.b(view);
                }
                loadData();
                return;
            }
            com.transsion.shorttv._channel.ui.adapter.c cVar2 = this.mAdapter;
            int size = (cVar2 == null || (data2 = cVar2.getData()) == null) ? 0 : data2.size();
            if (size <= 0) {
                E0(this.mChannelId, this.mLatestSelectItems, true);
                return;
            }
            com.transsion.shorttv._channel.ui.adapter.c cVar3 = this.mAdapter;
            ShortTvMovieItem shortTvMovieItem = (cVar3 == null || (data = cVar3.getData()) == null) ? null : (ShortTvMovieItem) data.get(size - 1);
            if (Intrinsics.c(this.mChannelId, shortTvMovieItem != null ? shortTvMovieItem.getChannelId() : null)) {
                if (Intrinsics.c(this.mLatestSelectItems, shortTvMovieItem != null ? shortTvMovieItem.getSelectItems() : null)) {
                    com.transsion.shorttv._channel.ui.adapter.c cVar4 = this.mAdapter;
                    if (cVar4 == null || (fVarH0 = cVar4.h0()) == null) {
                        return;
                    }
                    fVarH0.w();
                    return;
                }
            }
            E0(this.mChannelId, this.mLatestSelectItems, true);
        }
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        this.mFilterJson = arguments != null ? arguments.getString("filter_json") : null;
    }

    @Override
    public void onDestroyView() {
        b0 b0VarM;
        b0 b0VarJ;
        this.mPage = 1;
        ShortTvMovieViewModel shortTvMovieViewModel = this.mMovieModel;
        if (shortTvMovieViewModel != null && (b0VarJ = shortTvMovieViewModel.j()) != null) {
            b0VarJ.q(null);
        }
        ShortTvMovieViewModel shortTvMovieViewModel2 = this.mMovieModel;
        if (shortTvMovieViewModel2 != null && (b0VarM = shortTvMovieViewModel2.m()) != null) {
            b0VarM.q(null);
        }
        super.onDestroyView();
    }

    @Override
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        g.d(null, this, hidden, "", 1, null);
        if (isResumed()) {
            if (!hidden) {
                logResume();
                g1(true);
            } else {
                g1(false);
                logPause();
                this.startShowTime = SystemClock.elapsedRealtime();
            }
        }
    }

    @Override
    public void onPause() {
        super.onPause();
        br.b bVar = this.mExposureHelper;
        if (bVar != null) {
            bVar.e();
        }
        g.h(null, this, "", 1, null);
        g1(false);
    }

    @Override
    public void onResume() {
        com.transsion.shorttv._channel.ui.adapter.c cVar;
        List<Object> data;
        super.onResume();
        this.startShowTime = SystemClock.elapsedRealtime();
        View view = this.mNoNetworkView;
        if (view != null && cr.b.d(view) && l.f76264a.e() && (cVar = this.mAdapter) != null && (data = cVar.getData()) != null && data.isEmpty()) {
            View view2 = this.mNoNetworkView;
            if (view2 != null) {
                cr.b.b(view2);
            }
            loadData();
        }
        g.l(null, this, "visible=" + isVisible(), 1, null);
        g1(true);
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        initView(view, savedInstanceState);
    }

    @Override
    public void retryLoadData() {
    }
}
