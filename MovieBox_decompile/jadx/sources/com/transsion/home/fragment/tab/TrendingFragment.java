package com.transsion.home.fragment.tab;

import android.content.Context;
import android.content.res.Configuration;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.view.KeyEventDispatcher;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.tn.lib.view.DefaultView;
import com.tn.lib.view.NoNetworkBigView;
import com.tn.lib.view.layoutmanager.NpaGridLayoutManager;
import com.tn.lib.widget.R$mipmap;
import com.transsion.ad.bidding.nativead.BiddingListManager;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.home.R$id;
import com.transsion.home.adapter.trending.BannerADDataHelper;
import com.transsion.home.adapter.trending.adapter.SportLiveAdapter;
import com.transsion.home.bean.AppointSubject;
import com.transsion.home.bean.BannerBean;
import com.transsion.home.bean.BannerData;
import com.transsion.home.bean.CustomData;
import com.transsion.home.bean.LiveListItem;
import com.transsion.home.bean.MainOperateData;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.bean.TrendingRespData;
import com.transsion.home.bean.TrendingRespItem;
import com.transsion.home.bean.TrendingRespItemType;
import com.transsion.home.fragment.home.HomeFragment;
import com.transsion.home.viewmodel.HomePreferencesViewModel;
import com.transsion.home.viewmodel.TrendingViewModel;
import com.transsion.home.viewmodel.preload.PreloadTrendingData;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.moviedetailapi.bean.PostItemType;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.postdetail.R$string;
import com.transsion.startup.pref.consume.AppStartDotState;
import com.transsion.startup.pref.consume.AppStartReport;
import com.transsion.web.api.WebConstants;
import com.transsion.wrapperad.view.BiddingFloatingIrregularView;
import com.transsion.wrapperad.view.secondfloor.CustomSwipeRefreshLayout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000ø\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u0007\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\b\u0016\b\u0007\u0018\u0000 É\u00012\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0002Ê\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\u0005J\u000f\u0010\b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\b\u0010\u0005J\u000f\u0010\t\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\u0005J\u0019\u0010\f\u001a\u00020\u00062\b\b\u0002\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000b\u0010\u0005J\u000f\u0010\u000e\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000e\u0010\u0005J\u000f\u0010\u000f\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000f\u0010\u0005J\u0017\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0015\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0016\u0010\u0005J\u000f\u0010\u0017\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0017\u0010\u0005J!\u0010\u001b\u001a\u00020\u00062\b\u0010\u0019\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u001a\u001a\u00020\nH\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ#\u0010!\u001a\b\u0012\u0004\u0012\u00020 0\u001d2\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001dH\u0002¢\u0006\u0004\b!\u0010\"J%\u0010&\u001a\u00020\u00062\f\u0010$\u001a\b\u0012\u0004\u0012\u00020 0#2\u0006\u0010%\u001a\u00020\u001eH\u0002¢\u0006\u0004\b&\u0010'J\u001d\u0010)\u001a\u00020\u00062\f\u0010(\u001a\b\u0012\u0004\u0012\u00020 0#H\u0002¢\u0006\u0004\b)\u0010*J!\u0010-\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010,\u0018\u00010#2\u0006\u0010+\u001a\u00020 H\u0002¢\u0006\u0004\b-\u0010.J\u000f\u00100\u001a\u00020/H\u0002¢\u0006\u0004\b0\u00101J\u000f\u00102\u001a\u00020\u0006H\u0002¢\u0006\u0004\b2\u0010\u0005J\u000f\u00103\u001a\u00020/H\u0002¢\u0006\u0004\b3\u00101J\u000f\u00104\u001a\u00020\u0006H\u0002¢\u0006\u0004\b4\u0010\u0005J\u0017\u00107\u001a\u00020\u00062\u0006\u00106\u001a\u000205H\u0002¢\u0006\u0004\b7\u00108J\u000f\u00109\u001a\u00020\u0006H\u0002¢\u0006\u0004\b9\u0010\u0005J#\u0010<\u001a\u00020\u00062\b\b\u0002\u0010:\u001a\u00020\n2\b\b\u0002\u0010;\u001a\u000205H\u0002¢\u0006\u0004\b<\u0010=J\u0017\u0010@\u001a\u00020\u00062\u0006\u0010?\u001a\u00020>H\u0002¢\u0006\u0004\b@\u0010AJ\u000f\u0010B\u001a\u00020>H\u0002¢\u0006\u0004\bB\u0010CJ\u000f\u0010D\u001a\u00020\nH\u0002¢\u0006\u0004\bD\u0010EJ\u001f\u0010G\u001a\u00020\n2\u000e\u0010F\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u001dH\u0002¢\u0006\u0004\bG\u0010HJ\u000f\u0010I\u001a\u00020\u0006H\u0002¢\u0006\u0004\bI\u0010\u0005J\u000f\u0010J\u001a\u00020\nH\u0002¢\u0006\u0004\bJ\u0010EJ\u000f\u0010K\u001a\u000205H\u0002¢\u0006\u0004\bK\u0010LJ\u000f\u0010M\u001a\u00020\u0006H\u0002¢\u0006\u0004\bM\u0010\u0005J\u001d\u0010N\u001a\u0002052\f\u0010(\u001a\b\u0012\u0004\u0012\u00020 0\u001dH\u0002¢\u0006\u0004\bN\u0010OJ\u000f\u0010P\u001a\u00020\u0006H\u0002¢\u0006\u0004\bP\u0010\u0005J\u000f\u0010Q\u001a\u00020\u0006H\u0002¢\u0006\u0004\bQ\u0010\u0005J\u000f\u0010R\u001a\u00020\u0006H\u0002¢\u0006\u0004\bR\u0010\u0005J\u000f\u0010S\u001a\u00020\u0006H\u0002¢\u0006\u0004\bS\u0010\u0005J\u000f\u0010T\u001a\u00020\u0006H\u0002¢\u0006\u0004\bT\u0010\u0005J\u0019\u0010W\u001a\u00020\u00062\b\u0010V\u001a\u0004\u0018\u00010UH\u0016¢\u0006\u0004\bW\u0010XJ\u0017\u0010[\u001a\u00020\u00022\u0006\u0010Z\u001a\u00020YH\u0016¢\u0006\u0004\b[\u0010\\J\u0017\u0010_\u001a\u00020\u00062\u0006\u0010^\u001a\u00020]H\u0016¢\u0006\u0004\b_\u0010`J!\u0010b\u001a\u00020\u00062\u0006\u0010a\u001a\u00020\u00122\b\u0010V\u001a\u0004\u0018\u00010UH\u0016¢\u0006\u0004\bb\u0010cJ\u0017\u0010e\u001a\u00020\u00062\u0006\u0010d\u001a\u00020UH\u0016¢\u0006\u0004\be\u0010XJ!\u0010f\u001a\u00020\u00062\u0006\u0010a\u001a\u00020\u00122\b\u0010V\u001a\u0004\u0018\u00010UH\u0016¢\u0006\u0004\bf\u0010cJ\u0017\u0010h\u001a\u00020\u00062\u0006\u0010g\u001a\u00020\nH\u0016¢\u0006\u0004\bh\u0010\rJ\u000f\u0010i\u001a\u00020\u0006H\u0016¢\u0006\u0004\bi\u0010\u0005J\u000f\u0010j\u001a\u00020\u0006H\u0016¢\u0006\u0004\bj\u0010\u0005J\r\u0010k\u001a\u00020\u0006¢\u0006\u0004\bk\u0010\u0005J\u000f\u0010l\u001a\u00020\u0006H\u0016¢\u0006\u0004\bl\u0010\u0005J\u000f\u0010m\u001a\u00020\u0006H\u0016¢\u0006\u0004\bm\u0010\u0005J\u000f\u0010n\u001a\u00020\u0006H\u0016¢\u0006\u0004\bn\u0010\u0005J\u000f\u0010p\u001a\u00020oH\u0016¢\u0006\u0004\bp\u0010qJ\u000f\u0010r\u001a\u00020\u0006H\u0016¢\u0006\u0004\br\u0010\u0005J\u000f\u0010s\u001a\u00020\u0006H\u0016¢\u0006\u0004\bs\u0010\u0005J\u000f\u0010t\u001a\u00020/H\u0016¢\u0006\u0004\bt\u00101J\u0011\u0010v\u001a\u0004\u0018\u00010uH\u0016¢\u0006\u0004\bv\u0010wJ\u001f\u0010{\u001a\u00020\u00062\u0006\u0010x\u001a\u0002052\u0006\u0010z\u001a\u00020yH\u0016¢\u0006\u0004\b{\u0010|J\u000f\u0010}\u001a\u00020\u0006H\u0016¢\u0006\u0004\b}\u0010\u0005J\r\u0010~\u001a\u00020\u0006¢\u0006\u0004\b~\u0010\u0005R\u001b\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u007f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0080\u0001\u0010\u0081\u0001R\u0019\u0010\u0085\u0001\u001a\u00020/8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0083\u0001\u0010\u0084\u0001R\u0019\u0010\u0088\u0001\u001a\u0002058\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0086\u0001\u0010\u0087\u0001R\u001c\u0010\u008c\u0001\u001a\u0005\u0018\u00010\u0089\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008a\u0001\u0010\u008b\u0001R\u001a\u0010\u0090\u0001\u001a\u00030\u008d\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u008e\u0001\u0010\u008f\u0001R,\u0010\u0098\u0001\u001a\u0005\u0018\u00010\u0091\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u0092\u0001\u0010\u0093\u0001\u001a\u0006\b\u0094\u0001\u0010\u0095\u0001\"\u0006\b\u0096\u0001\u0010\u0097\u0001R\u0018\u0010\u009c\u0001\u001a\u00030\u0099\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u009a\u0001\u0010\u009b\u0001R\u0019\u0010\u009e\u0001\u001a\u0002058\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009d\u0001\u0010\u0087\u0001R\u001c\u0010¢\u0001\u001a\u0005\u0018\u00010\u009f\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b \u0001\u0010¡\u0001R\u001b\u0010¤\u0001\u001a\u0004\u0018\u00010/8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b£\u0001\u0010\u0084\u0001R#\u0010ª\u0001\u001a\u0005\u0018\u00010¥\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b¦\u0001\u0010§\u0001\u001a\u0006\b¨\u0001\u0010©\u0001R!\u0010¯\u0001\u001a\u00030«\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b¬\u0001\u0010§\u0001\u001a\u0006\b\u00ad\u0001\u0010®\u0001R(\u0010³\u0001\u001a\u0011\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010°\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b±\u0001\u0010²\u0001R)\u0010¸\u0001\u001a\u0012\u0012\u000b\u0012\t\u0012\u0004\u0012\u00020/0µ\u0001\u0018\u00010´\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¶\u0001\u0010·\u0001R1\u0010º\u0001\u001a\u001c\u0012\u0011\u0012\u000f\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00060°\u0001\u0012\u0004\u0012\u00020\u00060°\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¹\u0001\u0010²\u0001R\u001b\u0010½\u0001\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b»\u0001\u0010¼\u0001R\u0019\u0010¿\u0001\u001a\u0002058\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¾\u0001\u0010\u0087\u0001R\u0019\u0010Á\u0001\u001a\u0002058\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÀ\u0001\u0010\u0087\u0001R\u0019\u0010Ä\u0001\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÂ\u0001\u0010Ã\u0001R\u0019\u0010Æ\u0001\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÅ\u0001\u0010Ã\u0001R\u0018\u0010È\u0001\u001a\u00030\u0099\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÇ\u0001\u0010\u009b\u0001¨\u0006Ë\u0001"}, d2 = {"Lcom/transsion/home/fragment/tab/TrendingFragment;", "Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;", "Lqk/x;", "Lim/f;", "<init>", "()V", "", "L1", "initViewModel", "i1", "", "showProgress", "W1", "(Z)V", "n2", "showEmpty", "Landroid/content/Context;", "context", "Landroid/view/View;", "getEmptyView", "(Landroid/content/Context;)Landroid/view/View;", "t1", "hideProgress", "Z1", "Lcom/transsion/home/bean/TrendingRespData;", "baseBean", "isRefresh", "p2", "(Lcom/transsion/home/bean/TrendingRespData;Z)V", "", "Lcom/transsion/home/bean/TrendingRespItem;", "feedsList", "Lcom/transsion/home/bean/OperateItem;", "i2", "(Ljava/util/List;)Ljava/util/List;", "", "newList", WebConstants.FIELD_ITEM, "f1", "(Ljava/util/List;Lcom/transsion/home/bean/TrendingRespItem;)V", "opreateItems", "E1", "(Ljava/util/List;)V", "it", "Lcom/transsion/home/bean/BannerData;", "F1", "(Lcom/transsion/home/bean/OperateItem;)Ljava/util/List;", "", "B1", "()Ljava/lang/String;", "initExposureHelper", "getPageName", "n1", "", RequestParameters.POSITION, "j2", "(I)V", "g1", "hasTopBanner", "retryCount", "p1", "(ZI)V", "", "alpha", "m2", "(F)V", "x1", "()F", "H1", "()Z", "items", "I1", "(Ljava/util/List;)Z", "V1", "G1", "A1", "()I", "h2", "z1", "(Ljava/util/List;)I", "initAd", "a2", "Y1", "e2", "h1", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "D1", "(Landroid/view/LayoutInflater;)Lqk/x;", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "(Landroid/content/res/Configuration;)V", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "outState", "onSaveInstanceState", "onViewCreated", "hidden", "onHiddenChanged", "logResume", "p0", "f2", "lazyLoadData", "onDestroyView", "onDestroy", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "onResume", "onPause", "g0", "Landroidx/recyclerview/widget/RecyclerView;", "f0", "()Landroidx/recyclerview/widget/RecyclerView;", "lastAdPosition", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "wrapperNativeManager", "l0", "(ILcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V", "c0", "k2", "Lrk/b;", "g", "Lrk/b;", "exposureHelper", "h", "Ljava/lang/String;", "nextPage", "i", "I", "mPerPage", "Lcom/transsion/home/viewmodel/TrendingViewModel;", "j", "Lcom/transsion/home/viewmodel/TrendingViewModel;", "mPostListModel", "Lcom/transsion/home/adapter/trending/b;", CampaignEx.JSON_KEY_AD_K, "Lcom/transsion/home/adapter/trending/b;", "mAdapter", "Lrk/c;", "l", "Lrk/c;", "C1", "()Lrk/c;", "setPostListReport", "(Lrk/c;)V", "postListReport", "Landroid/os/Handler;", "m", "Landroid/os/Handler;", "mHandler", "n", "mHeaderBgHeight", "Lcom/transsion/home/bean/MainOperateData;", "o", "Lcom/transsion/home/bean/MainOperateData;", "operatingResp", TtmlNode.TAG_P, "mPageName", "Lkk/a;", CampaignEx.JSON_KEY_AD_Q, "Lkotlin/Lazy;", "w1", "()Lkk/a;", "fissionProvider", "Lcom/transsion/home/viewmodel/HomePreferencesViewModel;", CampaignEx.JSON_KEY_AD_R, "y1", "()Lcom/transsion/home/viewmodel/HomePreferencesViewModel;", "homePreferencesViewModel", "Lkotlin/Function1;", "s", "Lkotlin/jvm/functions/Function1;", "mPermissionCallback", "Landroidx/activity/result/b;", "", "t", "Landroidx/activity/result/b;", "mLauncher", TmcStartParams.KEY_URL_SHORT, "mOnAppointmentClick", "v", "Landroid/view/View;", "mNoNetworkView", "w", "mProgressViewStartOffset", "x", "mProgressViewEndOffset", "y", "Z", "hasAd", "z", "isAdLoadDisabled", "A", "adHandler", "B", "a", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class TrendingFragment extends BaseHomeSubFragment<qk.x> implements im.f {

    public static final Companion INSTANCE = new Companion(null);
    public static final int C = 8;

    private rk.b exposureHelper;

    private TrendingViewModel mPostListModel;

    private com.transsion.home.adapter.trending.b mAdapter;

    private rk.c postListReport;

    private int mHeaderBgHeight;

    private volatile MainOperateData operatingResp;

    private String mPageName;

    private Function1 mPermissionCallback;

    private androidx.activity.result.b mLauncher;

    private View mNoNetworkView;

    private int mProgressViewStartOffset;

    private int mProgressViewEndOffset;

    private boolean hasAd;

    private boolean isAdLoadDisabled;

    private String nextPage = "1";

    private int mPerPage = 12;

    private final Handler mHandler = new Handler(Looper.getMainLooper());

    private final Lazy fissionProvider = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return TrendingFragment.o1();
        }
    });

    private final Lazy homePreferencesViewModel = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return TrendingFragment.J1(this.f44265a);
        }
    });

    private final Function1 mOnAppointmentClick = new Function1() {
        @Override
        public final Object invoke(Object obj) {
            return TrendingFragment.c2(this.f44269a, (Function1) obj);
        }
    };

    private final Handler adHandler = new Handler(Looper.getMainLooper());

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final TrendingFragment a(int i10, String str) {
            Bundle bundle = new Bundle();
            bundle.putInt("tab_id", i10);
            bundle.putString(WebConstants.TAB_CODE, str);
            wf.a.f74274a.c("TrendingFragment", "create trending fragment", true);
            TrendingFragment trendingFragment = new TrendingFragment();
            trendingFragment.setArguments(bundle);
            return trendingFragment;
        }

        private Companion() {
        }
    }

    public static final class b extends RecyclerView.r {
        b() {
        }

        @Override
        public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
            Intrinsics.h(recyclerView, "recyclerView");
            if (TrendingFragment.this.H1()) {
                int iComputeVerticalScrollOffset = recyclerView.computeVerticalScrollOffset();
                TrendingFragment trendingFragment = TrendingFragment.this;
                trendingFragment.m2(RangesKt.g((iComputeVerticalScrollOffset * 1.0f) / trendingFragment.mHeaderBgHeight, 1.0f));
                if (!TrendingFragment.this.getMIsWhite() && TrendingFragment.this.x1() < 0.7f) {
                    TrendingFragment.this.b0(true);
                } else {
                    if (!TrendingFragment.this.getMIsWhite() || TrendingFragment.this.x1() < 0.7f) {
                        return;
                    }
                    TrendingFragment.this.b0(false);
                }
            }
        }
    }

    public static final class c implements ViewTreeObserver.OnPreDrawListener {
        c() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public boolean onPreDraw() {
            RecyclerView recyclerView;
            ViewTreeObserver viewTreeObserver;
            qk.x xVar = (qk.x) TrendingFragment.this.getMViewBinding();
            if (xVar != null && (recyclerView = xVar.f69871d) != null && (viewTreeObserver = recyclerView.getViewTreeObserver()) != null) {
                viewTreeObserver.removeOnPreDrawListener(this);
            }
            com.transsion.startup.pref.consume.c.f52518a.o(TrendingFragment.this.getActivity());
            return true;
        }
    }

    public static final class d implements CustomSwipeRefreshLayout.b {
        d() {
        }

        public static final void d(TrendingFragment trendingFragment) {
            trendingFragment.c0();
        }

        public static final void e(TrendingFragment trendingFragment) {
            trendingFragment.c0();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void a(String action, float f10, float f11) {
            CustomSwipeRefreshLayout customSwipeRefreshLayout;
            CustomSwipeRefreshLayout customSwipeRefreshLayout2;
            qk.x xVar;
            CustomSwipeRefreshLayout customSwipeRefreshLayout3;
            CustomSwipeRefreshLayout customSwipeRefreshLayout4;
            CustomSwipeRefreshLayout customSwipeRefreshLayout5;
            CustomSwipeRefreshLayout customSwipeRefreshLayout6;
            qk.x xVar2;
            CustomSwipeRefreshLayout customSwipeRefreshLayout7;
            Intrinsics.h(action, "action");
            if (Intrinsics.c(action, CustomSwipeRefreshLayout.DOWN)) {
                TrendingFragment trendingFragment = TrendingFragment.this;
                FragmentActivity activity = trendingFragment.getActivity();
                BaseActivity baseActivity = activity instanceof BaseActivity ? (BaseActivity) activity : null;
                trendingFragment.hasAd = baseActivity != null ? baseActivity.hasAd() : false;
            }
            if (!TrendingFragment.this.hasAd) {
                if (Intrinsics.c(action, CustomSwipeRefreshLayout.DOWN) && (xVar2 = (qk.x) TrendingFragment.this.getMViewBinding()) != null && (customSwipeRefreshLayout7 = xVar2.f69872e) != null) {
                    customSwipeRefreshLayout7.setProgressViewOffset(false, TrendingFragment.this.mHeaderBgHeight, TrendingFragment.this.mHeaderBgHeight + com.blankj.utilcode.util.a0.a(50.0f));
                }
                qk.x xVar3 = (qk.x) TrendingFragment.this.getMViewBinding();
                if (xVar3 == null || (customSwipeRefreshLayout6 = xVar3.f69872e) == null) {
                    return;
                }
                customSwipeRefreshLayout6.setCurrentState(CustomSwipeRefreshLayout.IDLE);
                return;
            }
            FragmentActivity activity2 = TrendingFragment.this.getActivity();
            BaseActivity baseActivity2 = activity2 instanceof BaseActivity ? (BaseActivity) activity2 : null;
            if (baseActivity2 != null) {
                baseActivity2.onAction(action, f10, f11);
            }
            int iHashCode = action.hashCode();
            if (iHashCode == -1435393951) {
                if (action.equals(CustomSwipeRefreshLayout.SECOND_FLOOR)) {
                    qk.x xVar4 = (qk.x) TrendingFragment.this.getMViewBinding();
                    if (xVar4 != null && (customSwipeRefreshLayout2 = xVar4.f69872e) != null) {
                        customSwipeRefreshLayout2.setRefreshing(true);
                    }
                    qk.x xVar5 = (qk.x) TrendingFragment.this.getMViewBinding();
                    if (xVar5 == null || (customSwipeRefreshLayout = xVar5.f69872e) == null) {
                        return;
                    }
                    final TrendingFragment trendingFragment2 = TrendingFragment.this;
                    customSwipeRefreshLayout.postDelayed(new Runnable() {
                        @Override
                        public final void run() {
                            TrendingFragment.d.e(trendingFragment2);
                        }
                    }, 300L);
                    return;
                }
                return;
            }
            if (iHashCode == 2715) {
                action.equals(CustomSwipeRefreshLayout.UP);
                return;
            }
            if (iHashCode == 2104482) {
                if (!action.equals(CustomSwipeRefreshLayout.DOWN) || (xVar = (qk.x) TrendingFragment.this.getMViewBinding()) == null || (customSwipeRefreshLayout3 = xVar.f69872e) == null) {
                    return;
                }
                customSwipeRefreshLayout3.setProgressViewOffset(false, -600, -600);
                return;
            }
            if (iHashCode == 1803427515 && action.equals(CustomSwipeRefreshLayout.REFRESH)) {
                qk.x xVar6 = (qk.x) TrendingFragment.this.getMViewBinding();
                if (xVar6 != null && (customSwipeRefreshLayout5 = xVar6.f69872e) != null) {
                    customSwipeRefreshLayout5.setRefreshing(true);
                }
                qk.x xVar7 = (qk.x) TrendingFragment.this.getMViewBinding();
                if (xVar7 == null || (customSwipeRefreshLayout4 = xVar7.f69872e) == null) {
                    return;
                }
                final TrendingFragment trendingFragment3 = TrendingFragment.this;
                customSwipeRefreshLayout4.postDelayed(new Runnable() {
                    @Override
                    public final void run() {
                        TrendingFragment.d.d(trendingFragment3);
                    }
                }, 300L);
            }
        }
    }

    public static final class e implements rk.a {
        e() {
        }

        @Override
        public void a(int i10, long j10, View view) {
            List<BannerData> banners;
            androidx.p009lifecycle.b0 b0VarW;
            List<BannerData> items;
            try {
                com.transsion.home.adapter.trending.b bVar = TrendingFragment.this.mAdapter;
                com.transsion.home.adapter.trending.b bVar2 = null;
                if (bVar == null) {
                    Intrinsics.y("mAdapter");
                    bVar = null;
                }
                OperateItem operateItem = (OperateItem) bVar.getData().get(i10);
                TrendingFragment.this.j2(i10);
                String type = operateItem.getType();
                if (Intrinsics.c(type, PostItemType.OP_SUBJECTS_MOVIE.getValue())) {
                    List<AppointSubject> subjects = operateItem.getSubjects();
                    if (subjects != null) {
                        zk.c.f76806a.s(operateItem, operateItem.getType() + "_Full", subjects, j10, i10);
                        return;
                    }
                    return;
                }
                if (Intrinsics.c(type, PostItemType.CUSTOM_DATA.getValue())) {
                    CustomData customData = operateItem.getCustomData();
                    if (customData == null || (items = customData.getItems()) == null) {
                        return;
                    }
                    zk.c.f76806a.b(operateItem, operateItem.getType() + "_Full", items, j10, i10);
                    return;
                }
                if (!Intrinsics.c(type, PostItemType.HORIZONTAL_BANNER.getValue()) && !Intrinsics.c(type, PostItemType.BANNER.getValue())) {
                    if (Intrinsics.c(type, PostItemType.SPORT_LIVE.getValue())) {
                        List<LiveListItem> liveList = operateItem.getLiveList();
                        if (liveList != null) {
                            zk.c.f76806a.t(operateItem, operateItem.getType() + "_Full", liveList, j10, i10);
                            return;
                        }
                        return;
                    }
                    if (Intrinsics.c(type, PostItemType.ROOM.getValue())) {
                        TrendingViewModel trendingViewModel = TrendingFragment.this.mPostListModel;
                        if (trendingViewModel == null || (b0VarW = trendingViewModel.W()) == null) {
                            return;
                        }
                        return;
                    }
                    if (Intrinsics.c(type, PostItemType.SINGLE_IMAGE.getValue())) {
                        zk.c.f76806a.e(i10, j10, operateItem);
                        return;
                    }
                    rk.c postListReport = TrendingFragment.this.getPostListReport();
                    if (postListReport != null) {
                        com.transsion.home.adapter.trending.b bVar3 = TrendingFragment.this.mAdapter;
                        if (bVar3 == null) {
                            Intrinsics.y("mAdapter");
                        } else {
                            bVar2 = bVar3;
                        }
                        postListReport.a(bVar2, i10, j10);
                        return;
                    }
                    return;
                }
                BannerBean banner = operateItem.getBanner();
                if (banner == null || (banners = banner.getBanners()) == null) {
                    return;
                }
                zk.c.f76806a.b(operateItem, operateItem.getType() + "_Full", banners, j10, i10);
            } catch (Exception e10) {
                String message = e10.getMessage();
                if (message != null) {
                    wf.a.C0922a.f(wf.a.f74274a, "reportExposure", message, false, 4, null);
                }
            }
        }
    }

    public static final class f extends DiffUtil.e {
        f() {
        }

        @Override
        public boolean areContentsTheSame(OperateItem oldItem, OperateItem newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            Subject feedsSubject = oldItem.getFeedsSubject();
            String strValueOf = String.valueOf(feedsSubject != null ? feedsSubject.getSubjectId() : null);
            Subject feedsSubject2 = newItem.getFeedsSubject();
            return Intrinsics.c(strValueOf, String.valueOf(feedsSubject2 != null ? feedsSubject2.getSubjectId() : null));
        }

        @Override
        public boolean areItemsTheSame(OperateItem oldItem, OperateItem newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            return Intrinsics.c(oldItem.getType(), newItem.getType());
        }
    }

    public static final class g extends GridLayoutManager.c {

        final int f44171f;

        g(int i10) {
            this.f44171f = i10;
        }

        @Override
        public int f(int i10) {
            com.transsion.home.adapter.trending.b bVar = TrendingFragment.this.mAdapter;
            com.transsion.home.adapter.trending.b bVar2 = null;
            if (bVar == null) {
                Intrinsics.y("mAdapter");
                bVar = null;
            }
            if (!bVar.getIsGridTrendingAdapter()) {
                return this.f44171f;
            }
            com.transsion.home.adapter.trending.b bVar3 = TrendingFragment.this.mAdapter;
            if (bVar3 == null) {
                Intrinsics.y("mAdapter");
            } else {
                bVar2 = bVar3;
            }
            if (Intrinsics.c(((OperateItem) bVar2.getItem(i10)).getType(), PostItemType.SUBJECT.getValue())) {
                return 1;
            }
            return this.f44171f;
        }
    }

    public static final class h implements yg.m {
        h() {
        }

        @Override
        public void onConnected() {
            yg.m.a.a(this);
        }

        @Override
        public void onDisconnected() {
            TrendingFragment.this.V1();
        }

        @Override
        public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
            Intrinsics.h(network, "network");
            Intrinsics.h(networkCapabilities, "networkCapabilities");
            TrendingFragment.this.h2();
            if (TrendingFragment.this.isResumed()) {
                com.transsion.home.adapter.trending.b bVar = TrendingFragment.this.mAdapter;
                if (bVar == null) {
                    Intrinsics.y("mAdapter");
                    bVar = null;
                }
                if (bVar.getData().isEmpty() || PreloadTrendingData.f44531n.a().K().f() == null) {
                    wf.a.C0922a.f(wf.a.f74274a, "TrendingFragment", "onConnected", false, 4, null);
                    TrendingFragment.this.W1(false);
                }
            }
        }
    }

    public static final class i implements ViewTreeObserver.OnPreDrawListener {
        i() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public boolean onPreDraw() {
            RecyclerView recyclerView;
            ViewTreeObserver viewTreeObserver;
            Unit unit;
            TrendingFragment trendingFragment = TrendingFragment.this;
            try {
                Result.Companion companion = Result.INSTANCE;
                FragmentActivity activity = trendingFragment.getActivity();
                if (activity != null) {
                    activity.reportFullyDrawn();
                    unit = Unit.f64096a;
                } else {
                    unit = null;
                }
                Result.m453constructorimpl(unit);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m453constructorimpl(ResultKt.a(th2));
            }
            qk.x xVar = (qk.x) TrendingFragment.this.getMViewBinding();
            if (xVar == null || (recyclerView = xVar.f69871d) == null || (viewTreeObserver = recyclerView.getViewTreeObserver()) == null) {
                return true;
            }
            viewTreeObserver.removeOnPreDrawListener(this);
            return true;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.home.fragment.tab.TrendingFragment$initViewModel$2", f = "TrendingFragment.kt", l = {449}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
        int label;

        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", ""}, k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
        @DebugMetadata(c = "com.transsion.home.fragment.tab.TrendingFragment$initViewModel$2$1", f = "TrendingFragment.kt", l = {}, m = "invokeSuspend")
        static final class AnonymousClass1 extends SuspendLambda implements Function2<Boolean, Continuation<? super Unit>, Object> {
            boolean Z$0;
            int label;
            final TrendingFragment this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(TrendingFragment trendingFragment, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.this$0 = trendingFragment;
            }

            @Override
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, continuation);
                anonymousClass1.Z$0 = ((Boolean) obj).booleanValue();
                return anonymousClass1;
            }

            @Override
            public Object invoke(Object obj, Object obj2) {
                return invoke(((Boolean) obj).booleanValue(), (Continuation<? super Unit>) obj2);
            }

            @Override
            public final Object invokeSuspend(Object obj) {
                androidx.p009lifecycle.b0 b0VarV;
                IntrinsicsKt.f();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
                boolean z10 = this.Z$0;
                TrendingViewModel trendingViewModel = this.this$0.mPostListModel;
                if (trendingViewModel != null && (b0VarV = trendingViewModel.V()) != null) {
                    b0VarV.n(Boxing.a(z10));
                }
                return Unit.f64096a;
            }

            public final Object invoke(boolean z10, Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(Boolean.valueOf(z10), continuation)).invokeSuspend(Unit.f64096a);
            }
        }

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return TrendingFragment.this.new AnonymousClass2(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            kotlinx.coroutines.flow.h1 h1VarA;
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.b(obj);
                im.b bVar = (im.b) TheRouter.d(im.b.class, new Object[0]);
                if (bVar != null && (h1VarA = bVar.a()) != null) {
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(TrendingFragment.this, null);
                    this.label = 1;
                    if (kotlinx.coroutines.flow.c.h(h1VarA, anonymousClass1, this) == objF) {
                        return objF;
                    }
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    static final class j implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f44174a;

        j(Function1 function) {
            Intrinsics.h(function, "function");
            this.f44174a = function;
        }

        @Override
        public final Function a() {
            return this.f44174a;
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
            this.f44174a.invoke(obj);
        }
    }

    private final int A1() {
        com.transsion.home.adapter.trending.b bVar = this.mAdapter;
        if (bVar == null) {
            Intrinsics.y("mAdapter");
            bVar = null;
        }
        int i10 = 0;
        for (Object obj : bVar.getData()) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt.u();
            }
            if (Intrinsics.c(((OperateItem) obj).getType(), PostItemType.NO_NETWORK.getValue())) {
                return i10;
            }
            i10 = i11;
        }
        return -1;
    }

    private final String B1() {
        String str;
        if (this.mPageName == null) {
            Fragment parentFragment = getParentFragment();
            if (parentFragment instanceof HomeFragment) {
                this.mPageName = ((HomeFragment) parentFragment).J0();
            }
        }
        return (TextUtils.isEmpty(this.mPageName) || (str = this.mPageName) == null) ? "Trending" : str;
    }

    private final void E1(List opreateItems) {
        Integer groupPos;
        Integer groupPos2;
        Integer groupPos3;
        int iZ1;
        HashMap mapG;
        List<OperateItem> items;
        List<OperateItem> listI0;
        ArrayList arrayList;
        MainOperateData mainOperateData = this.operatingResp;
        if (mainOperateData != null && (items = mainOperateData.getItems()) != null && (listI0 = CollectionsKt.I0(items, new Comparator() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final int compare(T t10, T t11) {
                return ComparisonsKt.d(((OperateItem) t10).getPosition(), ((OperateItem) t11).getPosition());
            }
        })) != null) {
            for (OperateItem operateItem : listI0) {
                String type = operateItem.getType();
                if (Intrinsics.c(type, PostItemType.BANNER.getValue())) {
                    BannerBean banner = operateItem.getBanner();
                    List<BannerData> banners = banner != null ? banner.getBanners() : null;
                    if (banners != null && !banners.isEmpty()) {
                        BannerBean banner2 = operateItem.getBanner();
                        if (banner2 != null) {
                            banner2.setBanners(F1(operateItem));
                        }
                    }
                }
                if (Intrinsics.c(type, PostItemType.SPORT_LIVE.getValue())) {
                    List<LiveListItem> liveList = operateItem.getLiveList();
                    if (liveList != null) {
                        arrayList = new ArrayList();
                        for (Object obj : liveList) {
                            if (!Intrinsics.c(((LiveListItem) obj).getStatus(), SportLiveAdapter.P)) {
                                arrayList.add(obj);
                            }
                        }
                    } else {
                        arrayList = null;
                    }
                    if (arrayList == null || arrayList.isEmpty()) {
                    }
                }
                com.transsion.home.adapter.trending.b bVar = this.mAdapter;
                if (bVar == null) {
                    Intrinsics.y("mAdapter");
                    bVar = null;
                }
                Set<String> setKeySet = bVar.S1().keySet();
                Intrinsics.g(setKeySet, "<get-keys>(...)");
                if (CollectionsKt.b0(setKeySet, type)) {
                    List<AppointSubject> subjects = operateItem.getSubjects();
                    if (subjects != null) {
                        int size = subjects.size();
                        if (!Intrinsics.c(type, PostItemType.OP_SUBJECTS_MOVIE.getValue()) || size >= 3) {
                        }
                    }
                    opreateItems.add(operateItem);
                }
            }
        }
        qi.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
            MainOperateData mainOperateData2 = this.operatingResp;
        }
        if (!yg.l.f76264a.e() && (iZ1 = z1(opreateItems)) >= 0 && iZ1 < opreateItems.size()) {
            opreateItems.add(iZ1, new OperateItem(null, PostItemType.NO_NETWORK.getValue(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 536870909, null));
        }
        opreateItems.add(new OperateItem(getString(R$string.short_tv_most_trending), PostItemType.FEEDS_TITLE.getValue(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 536870908, null));
        MainOperateData mainOperateData3 = this.operatingResp;
        if (((mainOperateData3 == null || (groupPos3 = mainOperateData3.getGroupPos()) == null) ? 0 : groupPos3.intValue()) > 0) {
            ep.k.f59780a.m(true);
            MainOperateData mainOperateData4 = this.operatingResp;
            int iIntValue = (mainOperateData4 == null || (groupPos2 = mainOperateData4.getGroupPos()) == null) ? 0 : groupPos2.intValue();
            if (iIntValue >= opreateItems.size()) {
                opreateItems.add(new OperateItem(null, PostItemType.ROOM.getValue(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 536870909, null));
            } else {
                opreateItems.add(iIntValue, new OperateItem(null, PostItemType.ROOM.getValue(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 536870909, null));
            }
        }
        ep.k kVar = ep.k.f59780a;
        MainOperateData mainOperateData5 = this.operatingResp;
        kVar.m(((mainOperateData5 == null || (groupPos = mainOperateData5.getGroupPos()) == null) ? 0 : groupPos.intValue()) > 0);
        HomePreferencesUiHelperKt.f(getMTabCode(), y1(), opreateItems);
    }

    private final List F1(OperateItem it) {
        List<BannerData> banners;
        BannerBean banner = it.getBanner();
        if (banner != null) {
            banner.setRefreshAd(true);
        }
        BannerBean banner2 = it.getBanner();
        if (banner2 == null || (banners = banner2.getBanners()) == null) {
            return null;
        }
        return CollectionsKt.U0(banners);
    }

    private final boolean G1() {
        com.transsion.home.adapter.trending.b bVar = this.mAdapter;
        if (bVar == null) {
            Intrinsics.y("mAdapter");
            bVar = null;
        }
        Iterator<T> it = bVar.getData().iterator();
        while (it.hasNext()) {
            if (Intrinsics.c(((OperateItem) it.next()).getType(), PostItemType.NO_NETWORK.getValue())) {
                return true;
            }
        }
        return false;
    }

    public final boolean H1() {
        com.transsion.home.adapter.trending.b bVar = this.mAdapter;
        com.transsion.home.adapter.trending.b bVar2 = null;
        if (bVar == null) {
            Intrinsics.y("mAdapter");
            bVar = null;
        }
        if (bVar.getData().size() <= 0) {
            return false;
        }
        com.transsion.home.adapter.trending.b bVar3 = this.mAdapter;
        if (bVar3 == null) {
            Intrinsics.y("mAdapter");
        } else {
            bVar2 = bVar3;
        }
        return Intrinsics.c(((OperateItem) bVar2.getData().get(0)).getType(), PostItemType.BANNER.getValue());
    }

    private final boolean I1(List items) {
        OperateItem operateItem;
        return Intrinsics.c((items == null || (operateItem = (OperateItem) CollectionsKt.k0(items)) == null) ? null : operateItem.getType(), PostItemType.BANNER.getValue());
    }

    public static final HomePreferencesViewModel J1(TrendingFragment trendingFragment) {
        Fragment fragmentRequireParentFragment = trendingFragment.requireParentFragment();
        Intrinsics.g(fragmentRequireParentFragment, "requireParentFragment(...)");
        return (HomePreferencesViewModel) new androidx.p009lifecycle.v0(fragmentRequireParentFragment).a(HomePreferencesViewModel.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void K1(TrendingFragment trendingFragment) {
        CustomSwipeRefreshLayout customSwipeRefreshLayout;
        CustomSwipeRefreshLayout customSwipeRefreshLayout2;
        qk.x xVar = (qk.x) trendingFragment.getMViewBinding();
        int progressViewEndOffset = 0;
        trendingFragment.mProgressViewStartOffset = (xVar == null || (customSwipeRefreshLayout2 = xVar.f69872e) == null) ? 0 : customSwipeRefreshLayout2.getProgressViewStartOffset();
        qk.x xVar2 = (qk.x) trendingFragment.getMViewBinding();
        if (xVar2 != null && (customSwipeRefreshLayout = xVar2.f69872e) != null) {
            progressViewEndOffset = customSwipeRefreshLayout.getProgressViewEndOffset();
        }
        trendingFragment.mProgressViewEndOffset = progressViewEndOffset;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void L1() {
        int i10;
        CustomSwipeRefreshLayout customSwipeRefreshLayout;
        Context context = getContext();
        if (context == null || !com.transsion.baseui.util.b.a(context)) {
            i10 = 3;
        } else {
            i10 = com.blankj.utilcode.util.y.e() > com.blankj.utilcode.util.y.c() ? 5 : 4;
        }
        rk.b bVar = this.exposureHelper;
        KeyEventDispatcher.Component activity = getActivity();
        Intrinsics.f(activity, "null cannot be cast to non-null type com.transsion.home.preload.MainXMLPreload");
        com.transsion.home.preload.b xmlPreload = ((com.transsion.home.preload.a) activity).getXmlPreload();
        TrendingViewModel trendingViewModel = this.mPostListModel;
        Function1 function1 = this.mOnAppointmentClick;
        Context context2 = getContext();
        final com.transsion.home.adapter.trending.b bVar2 = new com.transsion.home.adapter.trending.b(bVar, xmlPreload, this, trendingViewModel, function1, context2 != null && com.transsion.baseui.util.b.a(context2), i10);
        bVar2.h0().z(true);
        bVar2.h0().y(true);
        bVar2.h0().E(4);
        bVar2.h0().D(new r6.f() {
            @Override
            public final void a() {
                TrendingFragment.N1(this.f44289a);
            }
        });
        bVar2.R0(new f());
        bVar2.w1(new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                TrendingFragment.O1(this.f44288a, baseQuickAdapter, view, i11);
            }
        });
        bVar2.l(R$id.ll_download);
        bVar2.s1(new r6.b() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                TrendingFragment.P1(this.f44292a, bVar2, baseQuickAdapter, view, i11);
            }
        });
        bVar2.U1(new Function0() {
            @Override
            public final Object invoke() {
                return TrendingFragment.M1(this.f44296a);
            }
        });
        this.mAdapter = bVar2;
        BaseItemProvider baseItemProvider = bVar2.S1().get(PostItemType.PREFERENCES.getValue());
        com.transsion.home.adapter.trending.b bVar3 = null;
        com.transsion.home.adapter.trending.provider.e eVar = baseItemProvider instanceof com.transsion.home.adapter.trending.provider.e ? (com.transsion.home.adapter.trending.provider.e) baseItemProvider : null;
        if (eVar != null) {
            HomePreferencesViewModel homePreferencesViewModelY1 = y1();
            com.transsion.home.adapter.trending.b bVar4 = this.mAdapter;
            if (bVar4 == null) {
                Intrinsics.y("mAdapter");
                bVar4 = null;
            }
            int mTabId = getMTabId();
            String mTabCode = getMTabCode();
            if (mTabCode == null) {
                mTabCode = "";
            }
            HomePreferencesUiHelperKt.j(eVar, homePreferencesViewModelY1, bVar4, mTabId, mTabCode);
        }
        NpaGridLayoutManager npaGridLayoutManager = new NpaGridLayoutManager(requireContext(), i10);
        g gVar = new g(i10);
        gVar.i(true);
        npaGridLayoutManager.d0(gVar);
        initExposureHelper();
        qk.x xVar = (qk.x) getMViewBinding();
        RecyclerView recyclerView = xVar != null ? xVar.f69871d : null;
        rk.b bVar5 = this.exposureHelper;
        if (bVar5 != null && recyclerView != null) {
            recyclerView.addOnScrollListener(bVar5);
        }
        if (recyclerView != null) {
            recyclerView.setLayoutManager(npaGridLayoutManager);
            npaGridLayoutManager.setInitialPrefetchItemCount(6);
            tf.h hVar = new tf.h(com.blankj.utilcode.util.a0.a(12.0f), i10);
            hVar.d(com.blankj.utilcode.util.a0.a(6.0f));
            recyclerView.addItemDecoration(hVar);
            recyclerView.setItemAnimator(null);
            com.transsion.home.adapter.trending.b bVar6 = this.mAdapter;
            if (bVar6 == null) {
                Intrinsics.y("mAdapter");
                bVar6 = null;
            }
            recyclerView.setAdapter(bVar6);
            com.transsion.home.adapter.trending.b bVar7 = this.mAdapter;
            if (bVar7 == null) {
                Intrinsics.y("mAdapter");
            } else {
                bVar3 = bVar7;
            }
            recyclerView.addOnScrollListener(new nj.a(bVar3.h0()));
        }
        if (recyclerView != null) {
            HomePreferencesUiHelperKt.h(this, recyclerView, npaGridLayoutManager, y1(), new Function0() {
                @Override
                public final Object invoke() {
                    return Integer.valueOf(TrendingFragment.Q1(this.f44299a));
                }
            });
        }
        qk.x xVar2 = (qk.x) getMViewBinding();
        if (xVar2 == null || (customSwipeRefreshLayout = xVar2.f69872e) == null) {
            return;
        }
        customSwipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.j() {
            @Override
            public final void a() {
                TrendingFragment.R1(this.f44301a);
            }
        });
    }

    public static final Unit M1(TrendingFragment trendingFragment) {
        if (yg.l.f76264a.e()) {
            trendingFragment.h2();
        }
        return Unit.f64096a;
    }

    public static final void N1(TrendingFragment trendingFragment) {
        trendingFragment.Z1();
    }

    public static final void O1(TrendingFragment trendingFragment, BaseQuickAdapter adapter, View view, int i10) {
        OperateItem operateItem;
        Subject feedsSubject;
        String subjectId;
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "<unused var>");
        Object item = adapter.getItem(i10);
        if (!(item instanceof OperateItem) || (feedsSubject = (operateItem = (OperateItem) item).getFeedsSubject()) == null || (subjectId = feedsSubject.getSubjectId()) == null || subjectId.length() <= 0) {
            return;
        }
        Subject feedsSubject2 = operateItem.getFeedsSubject();
        Intrinsics.e(feedsSubject2);
        zk.h.f(feedsSubject2, "opt_feeds");
        rk.c cVar = trendingFragment.postListReport;
        if (cVar != null) {
            Subject feedsSubject3 = operateItem.getFeedsSubject();
            Intrinsics.e(feedsSubject3);
            cVar.b(i10, feedsSubject3);
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static final void P1(TrendingFragment trendingFragment, com.transsion.home.adapter.trending.b bVar, BaseQuickAdapter adapter, View view, int i10) {
        Subject feedsSubject;
        TrendingViewModel trendingViewModel;
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        if (com.transsion.baseui.util.c.f42332a.a(view.getId(), 2000L)) {
            return;
        }
        Object item = adapter.getItem(i10);
        String strG = null;
        OperateItem operateItem = item instanceof OperateItem ? (OperateItem) item : null;
        if (view.getId() == R$id.ll_download) {
            strG = zk.h.g(operateItem != null ? operateItem.getFeedsSubject() : null, trendingFragment.getPageName(), bVar.getContext(), "opt_feeds");
        }
        if (operateItem == null || (feedsSubject = operateItem.getFeedsSubject()) == null || (trendingViewModel = trendingFragment.mPostListModel) == null) {
            return;
        }
        if (strG == null) {
            strG = "";
        }
        trendingViewModel.a0(feedsSubject, i10, strG);
    }

    public static final int Q1(TrendingFragment trendingFragment) {
        com.transsion.home.adapter.trending.b bVar = trendingFragment.mAdapter;
        if (bVar == null) {
            Intrinsics.y("mAdapter");
            bVar = null;
        }
        return bVar.getData().size();
    }

    public static final void R1(TrendingFragment trendingFragment) {
        trendingFragment.c0();
        trendingFragment.a2();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void S1(final TrendingFragment trendingFragment, Map permissions) {
        RecyclerView recyclerView;
        Intrinsics.h(permissions, "permissions");
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        booleanRef.element = true;
        Iterator it = permissions.entrySet().iterator();
        while (it.hasNext()) {
            if (!((Boolean) ((Map.Entry) it.next()).getValue()).booleanValue()) {
                booleanRef.element = false;
            }
        }
        qk.x xVar = (qk.x) trendingFragment.getMViewBinding();
        if (xVar == null || (recyclerView = xVar.f69871d) == null) {
            return;
        }
        recyclerView.post(new Runnable() {
            @Override
            public final void run() {
                TrendingFragment.T1(this.f44278a, booleanRef);
            }
        });
    }

    public static final void T1(TrendingFragment trendingFragment, Ref.BooleanRef booleanRef) {
        Function1 function1 = trendingFragment.mPermissionCallback;
        if (function1 != null) {
            function1.invoke(Boolean.valueOf(booleanRef.element));
        }
    }

    public static final Unit U1(TrendingFragment trendingFragment, TrendingRespData trendingRespData) {
        List<OperateItem> items;
        MainOperateData mainOperateData = trendingFragment.operatingResp;
        boolean z10 = false;
        boolean z11 = ((mainOperateData == null || (items = mainOperateData.getItems()) == null) ? 0 : items.size()) > 0;
        if (!z11) {
            com.transsion.home.adapter.trending.b bVar = trendingFragment.mAdapter;
            if (bVar == null) {
                Intrinsics.y("mAdapter");
                bVar = null;
            }
            if (bVar.getData().size() > 0 && Intrinsics.c(trendingFragment.nextPage, "1")) {
                z10 = true;
            }
        }
        wf.a.C0922a.f(wf.a.f74274a, "PreloadTrending", "load feeds isFresh " + z10 + " hasOperating " + z11, false, 4, null);
        trendingFragment.p2(trendingRespData, z10);
        return Unit.f64096a;
    }

    public final void V1() {
        if (G1()) {
            return;
        }
        com.transsion.home.adapter.trending.b bVar = this.mAdapter;
        if (bVar == null) {
            Intrinsics.y("mAdapter");
            bVar = null;
        }
        int iZ1 = z1(bVar.getData());
        if (iZ1 >= 0) {
            com.transsion.home.adapter.trending.b bVar2 = this.mAdapter;
            if (bVar2 == null) {
                Intrinsics.y("mAdapter");
                bVar2 = null;
            }
            if (iZ1 < bVar2.getData().size()) {
                com.transsion.home.adapter.trending.b bVar3 = this.mAdapter;
                if (bVar3 == null) {
                    Intrinsics.y("mAdapter");
                    bVar3 = null;
                }
                bVar3.getData().add(iZ1, new OperateItem(null, PostItemType.NO_NETWORK.getValue(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 536870909, null));
                com.transsion.home.adapter.trending.b bVar4 = this.mAdapter;
                if (bVar4 == null) {
                    Intrinsics.y("mAdapter");
                    bVar4 = null;
                }
                bVar4.notifyItemInserted(iZ1);
            }
        }
    }

    public final void W1(boolean showProgress) {
        if (showProgress) {
            com.transsion.home.adapter.trending.b bVar = this.mAdapter;
            if (bVar == null) {
                Intrinsics.y("mAdapter");
                bVar = null;
            }
            if (bVar.getData().size() <= 2) {
                showProgress();
            }
        }
        PreloadTrendingData preloadTrendingDataA = PreloadTrendingData.f44531n.a();
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        preloadTrendingDataA.U(contextRequireContext);
    }

    static void X1(TrendingFragment trendingFragment, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = true;
        }
        trendingFragment.W1(z10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void Y1() {
        BiddingFloatingIrregularView biddingFloatingIrregularView;
        qk.x xVar = (qk.x) getMViewBinding();
        if (xVar == null || (biddingFloatingIrregularView = xVar.f69869b) == null) {
            return;
        }
        biddingFloatingIrregularView.loadAd();
    }

    private final void Z1() {
        int i10 = this.mPerPage;
        if (i10 <= 0) {
            i10 = 12;
        }
        TrendingViewModel trendingViewModel = this.mPostListModel;
        if (trendingViewModel != null) {
            String str = this.nextPage;
            com.transsion.home.adapter.trending.b bVar = this.mAdapter;
            if (bVar == null) {
                Intrinsics.y("mAdapter");
                bVar = null;
            }
            trendingViewModel.Y(str, i10, bVar.getIsGridTrendingAdapter());
        }
    }

    private final void a2() {
        this.adHandler.removeCallbacksAndMessages(null);
        if (this.hasAd) {
            return;
        }
        this.adHandler.postDelayed(new Runnable() {
            @Override
            public final void run() {
                TrendingFragment.b2(this.f44286a);
            }
        }, 500L);
    }

    public static final void b2(TrendingFragment trendingFragment) {
        FragmentActivity activity = trendingFragment.getActivity();
        BaseActivity baseActivity = activity instanceof BaseActivity ? (BaseActivity) activity : null;
        if (baseActivity != null) {
            baseActivity.loadTwoLevelAd();
        }
    }

    public static final Unit c2(TrendingFragment trendingFragment, Function1 callback) {
        Intrinsics.h(callback, "callback");
        trendingFragment.mPermissionCallback = callback;
        androidx.activity.result.b bVar = trendingFragment.mLauncher;
        if (bVar != null) {
            bVar.a(new String[]{"android.permission.READ_CALENDAR", "android.permission.WRITE_CALENDAR"});
        }
        return Unit.f64096a;
    }

    public static final void d2(int i10, int i11, TrendingFragment trendingFragment, OperateItem operateItem) {
        com.transsion.home.adapter.trending.b bVar = null;
        if (i10 < 0 || i10 > i11) {
            com.transsion.home.adapter.trending.b bVar2 = trendingFragment.mAdapter;
            if (bVar2 == null) {
                Intrinsics.y("mAdapter");
            } else {
                bVar = bVar2;
            }
            bVar.p(operateItem);
            return;
        }
        com.transsion.home.adapter.trending.b bVar3 = trendingFragment.mAdapter;
        if (bVar3 == null) {
            Intrinsics.y("mAdapter");
        } else {
            bVar = bVar3;
        }
        bVar.n(i10, operateItem);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void e2() {
        BaseActivity baseActivity;
        CustomSwipeRefreshLayout customSwipeRefreshLayout;
        if (this.hasAd) {
            qk.x xVar = (qk.x) getMViewBinding();
            String currentState = (xVar == null || (customSwipeRefreshLayout = xVar.f69872e) == null) ? null : customSwipeRefreshLayout.getCurrentState();
            if (currentState != null) {
                int iHashCode = currentState.hashCode();
                String str = CustomSwipeRefreshLayout.IDLE;
                if (iHashCode != -1435393951) {
                    if (iHashCode != 2242516) {
                        if (iHashCode == 1803427515 && currentState.equals(CustomSwipeRefreshLayout.REFRESH)) {
                            String str2 = CustomSwipeRefreshLayout.INSTANCE.b() ? CustomSwipeRefreshLayout.HOVER_FULL : CustomSwipeRefreshLayout.HOVER_HALF;
                            if (isVisible()) {
                                str = str2;
                            }
                            FragmentActivity activity = getActivity();
                            baseActivity = activity instanceof BaseActivity ? (BaseActivity) activity : null;
                            if (baseActivity != null) {
                                baseActivity.onAction(str, 0.0f, 0.0f);
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    if (!currentState.equals(CustomSwipeRefreshLayout.IDLE)) {
                        return;
                    }
                } else if (!currentState.equals(CustomSwipeRefreshLayout.SECOND_FLOOR)) {
                    return;
                }
                FragmentActivity activity2 = getActivity();
                baseActivity = activity2 instanceof BaseActivity ? (BaseActivity) activity2 : null;
                if (baseActivity != null) {
                    baseActivity.onAction(CustomSwipeRefreshLayout.IDLE, 0.0f, 0.0f);
                }
            }
        }
    }

    private final void f1(List newList, TrendingRespItem item) {
        Integer type = item.getType();
        int value = TrendingRespItemType.SUBJECT.getValue();
        if (type == null || type.intValue() != value || item.getSubject() == null) {
            return;
        }
        newList.add(new OperateItem(null, PostItemType.SUBJECT.getValue(), null, null, null, null, null, null, null, null, null, null, item.getSubject(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 536866813, null));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void g1() {
        RecyclerView recyclerView;
        qk.x xVar = (qk.x) getMViewBinding();
        if (xVar == null || (recyclerView = xVar.f69871d) == null) {
            return;
        }
        recyclerView.addOnScrollListener(new b());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void g2(TrendingFragment trendingFragment) {
        CustomSwipeRefreshLayout customSwipeRefreshLayout;
        qk.x xVar = (qk.x) trendingFragment.getMViewBinding();
        if (xVar != null && (customSwipeRefreshLayout = xVar.f69872e) != null) {
            customSwipeRefreshLayout.setRefreshing(true);
        }
        trendingFragment.c0();
    }

    private final View getEmptyView(Context context) {
        final DefaultView defaultView = new DefaultView(context);
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
                TrendingFragment.s1(this.f44250a, defaultView, view);
            }
        });
        defaultView.setVisibility(0);
        return defaultView;
    }

    private final String getPageName() {
        return B1();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void h1() {
        CustomSwipeRefreshLayout customSwipeRefreshLayout;
        qk.x xVar = (qk.x) getMViewBinding();
        if (xVar != null && (customSwipeRefreshLayout = xVar.f69872e) != null) {
            customSwipeRefreshLayout.setCurrentState(CustomSwipeRefreshLayout.IDLE);
        }
        FragmentActivity activity = getActivity();
        BaseActivity baseActivity = activity instanceof BaseActivity ? (BaseActivity) activity : null;
        if (baseActivity != null) {
            baseActivity.onAction(CustomSwipeRefreshLayout.IDLE, 0.0f, 0.0f);
        }
    }

    public final void h2() {
        int iA1 = A1();
        if (iA1 >= 0) {
            com.transsion.home.adapter.trending.b bVar = this.mAdapter;
            com.transsion.home.adapter.trending.b bVar2 = null;
            if (bVar == null) {
                Intrinsics.y("mAdapter");
                bVar = null;
            }
            if (iA1 < bVar.getData().size()) {
                com.transsion.home.adapter.trending.b bVar3 = this.mAdapter;
                if (bVar3 == null) {
                    Intrinsics.y("mAdapter");
                    bVar3 = null;
                }
                bVar3.getData().remove(iA1);
                com.transsion.home.adapter.trending.b bVar4 = this.mAdapter;
                if (bVar4 == null) {
                    Intrinsics.y("mAdapter");
                } else {
                    bVar2 = bVar4;
                }
                bVar2.notifyItemRemoved(iA1);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void hideProgress() {
        CustomSwipeRefreshLayout customSwipeRefreshLayout;
        CustomSwipeRefreshLayout customSwipeRefreshLayout2;
        CustomSwipeRefreshLayout customSwipeRefreshLayout3;
        qk.h0 h0Var;
        ConstraintLayout constraintLayout;
        qk.x xVar = (qk.x) getMViewBinding();
        if (xVar != null && (h0Var = xVar.f69870c) != null && (constraintLayout = h0Var.f69763h) != null) {
            uf.c.g(constraintLayout);
        }
        qk.x xVar2 = (qk.x) getMViewBinding();
        if (xVar2 != null && (customSwipeRefreshLayout3 = xVar2.f69872e) != null) {
            customSwipeRefreshLayout3.setEnabled(true);
        }
        qk.x xVar3 = (qk.x) getMViewBinding();
        if (xVar3 == null || (customSwipeRefreshLayout = xVar3.f69872e) == null || !customSwipeRefreshLayout.isRefreshing()) {
            return;
        }
        qk.x xVar4 = (qk.x) getMViewBinding();
        if (xVar4 != null && (customSwipeRefreshLayout2 = xVar4.f69872e) != null) {
            customSwipeRefreshLayout2.setRefreshing(false);
        }
        e2();
    }

    private final void i1() {
        final Function1 function1 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return TrendingFragment.j1(this.f44317a, ((Boolean) obj).booleanValue());
            }
        };
        wf.a.C0922a c0922a = wf.a.f74274a;
        PreloadTrendingData.a aVar = PreloadTrendingData.f44531n;
        wf.a.C0922a.f(c0922a, "lgx", "preObserve fragment:" + this + " " + aVar.a().J() + "  " + aVar.a().K(), false, 4, null);
        aVar.a().J().j(this, new j(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return TrendingFragment.l1(this.f44197a, function1, (MainOperateData) obj);
            }
        }));
        aVar.a().K().j(this, new j(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return TrendingFragment.m1(this.f44211a, function1, (MainOperateData) obj);
            }
        }));
    }

    private final List i2(List feedsList) {
        ArrayList arrayList = new ArrayList();
        com.transsion.home.adapter.trending.b bVar = this.mAdapter;
        if (bVar == null) {
            Intrinsics.y("mAdapter");
            bVar = null;
        }
        List<Object> data = bVar.getData();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : data) {
            if (((OperateItem) obj).getFeedsSubject() != null) {
                arrayList2.add(obj);
            }
        }
        ArrayList arrayList3 = new ArrayList(CollectionsKt.v(arrayList2, 10));
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            Subject feedsSubject = ((OperateItem) it.next()).getFeedsSubject();
            arrayList3.add(feedsSubject != null ? feedsSubject.getSubjectId() : null);
        }
        Iterator it2 = feedsList.iterator();
        while (it2.hasNext()) {
            TrendingRespItem trendingRespItem = (TrendingRespItem) it2.next();
            if (trendingRespItem.getSubject() != null) {
                Subject subject = trendingRespItem.getSubject();
                if (arrayList3.contains(subject != null ? subject.getSubjectId() : null)) {
                    wf.a.C0922a c0922a = wf.a.f74274a;
                    Subject subject2 = trendingRespItem.getSubject();
                    String title = subject2 != null ? subject2.getTitle() : null;
                    Subject subject3 = trendingRespItem.getSubject();
                    wf.a.C0922a.f(c0922a, "Trending", "find same item title..." + title + " id  " + (subject3 != null ? subject3.getSubjectId() : null), false, 4, null);
                }
            }
            f1(arrayList, trendingRespItem);
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initAd() {
        CustomSwipeRefreshLayout customSwipeRefreshLayout;
        CustomSwipeRefreshLayout customSwipeRefreshLayout2;
        qk.x xVar = (qk.x) getMViewBinding();
        if (xVar != null && (customSwipeRefreshLayout2 = xVar.f69872e) != null) {
            customSwipeRefreshLayout2.post(new Runnable() {
                @Override
                public final void run() {
                    TrendingFragment.K1(this.f44314a);
                }
            });
        }
        qk.x xVar2 = (qk.x) getMViewBinding();
        if (xVar2 == null || (customSwipeRefreshLayout = xVar2.f69872e) == null) {
            return;
        }
        customSwipeRefreshLayout.setOnSwipeActionListener(new d());
    }

    private final void initExposureHelper() {
        this.postListReport = new rk.c(getPageName());
        rk.b bVar = new rk.b(0.6f, new e(), false, 4, null);
        this.exposureHelper = bVar;
        bVar.l(2);
    }

    private final void initViewModel() {
        TrendingViewModel trendingViewModel = this.mPostListModel;
        if (trendingViewModel != null) {
            trendingViewModel.X().j(this, new j(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return TrendingFragment.U1(this.f44303a, (TrendingRespData) obj);
                }
            }));
        }
        com.transsion.home.adapter.trending.b bVar = null;
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new AnonymousClass2(null), 3, null);
        i1();
        HomePreferencesViewModel homePreferencesViewModelY1 = y1();
        com.transsion.home.adapter.trending.b bVar2 = this.mAdapter;
        if (bVar2 == null) {
            Intrinsics.y("mAdapter");
        } else {
            bVar = bVar2;
        }
        HomePreferencesUiHelperKt.o(this, homePreferencesViewModelY1, bVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit j1(final TrendingFragment trendingFragment, boolean z10) {
        qk.x xVar;
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        RecyclerView recyclerView3;
        ViewTreeObserver viewTreeObserver;
        RecyclerView recyclerView4;
        TrendingViewModel trendingViewModel;
        Integer groupPos;
        qi.b logViewConfig = trendingFragment.getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.k(true);
        }
        MainOperateData mainOperateData = trendingFragment.operatingResp;
        if (((mainOperateData == null || (groupPos = mainOperateData.getGroupPos()) == null) ? 0 : groupPos.intValue()) > 0 && (trendingViewModel = trendingFragment.mPostListModel) != null) {
            trendingViewModel.T(z10);
        }
        final ArrayList arrayList = new ArrayList();
        trendingFragment.E1(arrayList);
        String mTabCode = trendingFragment.getMTabCode();
        if (mTabCode != null) {
            trendingFragment.y1().E(mTabCode, arrayList);
        }
        MainOperateData mainOperateData2 = trendingFragment.operatingResp;
        zk.h.c(arrayList, mainOperateData2 != null ? mainOperateData2.getOps() : null);
        final boolean zI1 = trendingFragment.I1(arrayList);
        qk.x xVar2 = (qk.x) trendingFragment.getMViewBinding();
        if (xVar2 != null && (recyclerView4 = xVar2.f69871d) != null) {
            recyclerView4.post(new Runnable() {
                @Override
                public final void run() {
                    TrendingFragment.k1(this.f44235a, arrayList, zI1);
                }
            });
        }
        qk.x xVar3 = (qk.x) trendingFragment.getMViewBinding();
        if (xVar3 != null && (recyclerView3 = xVar3.f69871d) != null && (viewTreeObserver = recyclerView3.getViewTreeObserver()) != null) {
            viewTreeObserver.addOnPreDrawListener(trendingFragment.new c());
        }
        wf.a.C0922a.f(wf.a.f74274a, "lgx", "hide1 fragment:" + trendingFragment, false, 4, null);
        trendingFragment.hideProgress();
        qk.x xVar4 = (qk.x) trendingFragment.getMViewBinding();
        if (((xVar4 == null || (recyclerView2 = xVar4.f69871d) == null) ? 0 : recyclerView2.computeVerticalScrollOffset()) > 10 && (xVar = (qk.x) trendingFragment.getMViewBinding()) != null && (recyclerView = xVar.f69871d) != null) {
            recyclerView.scrollBy(0, 1);
        }
        if (!z10) {
            com.transsion.home.preload.c.b(arrayList);
        }
        return Unit.f64096a;
    }

    public final void j2(int position) {
        HashMap mapG;
        HashMap mapG2;
        String str;
        Integer numV;
        qi.b logViewConfig = getLogViewConfig();
        int iIntValue = (logViewConfig == null || (mapG2 = logViewConfig.g()) == null || (str = (String) mapG2.get("scrollPosition")) == null || (numV = StringsKt.v(str)) == null) ? 0 : numV.intValue();
        qi.b logViewConfig2 = getLogViewConfig();
        if (logViewConfig2 == null || (mapG = logViewConfig2.g()) == null) {
            return;
        }
        mapG.put("scrollPosition", String.valueOf(RangesKt.e(iIntValue, position)));
    }

    public static final void k1(TrendingFragment trendingFragment, List list, boolean z10) {
        com.transsion.home.adapter.trending.b bVar = trendingFragment.mAdapter;
        if (bVar == null) {
            Intrinsics.y("mAdapter");
            bVar = null;
        }
        bVar.n1(list);
        q1(trendingFragment, z10, 0, 2, null);
    }

    public static final Unit l1(TrendingFragment trendingFragment, Function1 function1, MainOperateData mainOperateData) {
        HashMap mapG;
        List<OperateItem> items;
        wf.a.C0922a.f(wf.a.f74274a, "lgx", "observe1 fragment:" + trendingFragment, false, 4, null);
        qi.b logViewConfig = trendingFragment.getLogViewConfig();
        if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
            mapG.put("enterCache", String.valueOf((mainOperateData == null || (items = mainOperateData.getItems()) == null) ? null : Integer.valueOf(items.size())));
        }
        com.transsion.home.adapter.trending.b bVar = trendingFragment.mAdapter;
        if (bVar == null) {
            Intrinsics.y("mAdapter");
            bVar = null;
        }
        if (bVar.getData().size() == 0) {
            List<OperateItem> items2 = mainOperateData != null ? mainOperateData.getItems() : null;
            if (items2 != null && !items2.isEmpty()) {
                trendingFragment.operatingResp = mainOperateData;
                function1.invoke(Boolean.TRUE);
            }
        }
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit l2(TrendingFragment trendingFragment, String state) {
        CustomSwipeRefreshLayout customSwipeRefreshLayout;
        Intrinsics.h(state, "state");
        qk.x xVar = (qk.x) trendingFragment.getMViewBinding();
        if (xVar != null && (customSwipeRefreshLayout = xVar.f69872e) != null) {
            customSwipeRefreshLayout.setCurrentState(state);
        }
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit m1(TrendingFragment trendingFragment, Function1 function1, MainOperateData mainOperateData) {
        List<OperateItem> items;
        qk.x xVar;
        CustomSwipeRefreshLayout customSwipeRefreshLayout;
        HashMap mapG;
        List<OperateItem> items2;
        List<OperateItem> items3;
        List<OperateItem> items4;
        List<OperateItem> items5;
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, "lgx", "observe2 fragment:" + trendingFragment, false, 4, null);
        MainOperateData mainOperateData2 = (MainOperateData) PreloadTrendingData.f44531n.a().J().f();
        c0922a.c("PreloadTrending", "operating preload cache " + ((mainOperateData2 == null || (items5 = mainOperateData2.getItems()) == null) ? null : Integer.valueOf(items5.size())) + "  net:" + ((mainOperateData == null || (items4 = mainOperateData.getItems()) == null) ? null : Integer.valueOf(items4.size())), true);
        qi.b logViewConfig = trendingFragment.getLogViewConfig();
        if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
            mapG.put("enterNet", "cache:" + ((mainOperateData2 == null || (items3 = mainOperateData2.getItems()) == null) ? null : Integer.valueOf(items3.size())) + " net:" + ((mainOperateData == null || (items2 = mainOperateData.getItems()) == null) ? null : Integer.valueOf(items2.size())));
        }
        List<OperateItem> items6 = mainOperateData != null ? mainOperateData.getItems() : null;
        if (items6 != null && !items6.isEmpty()) {
            trendingFragment.operatingResp = mainOperateData;
        } else if (trendingFragment.operatingResp == null) {
            trendingFragment.operatingResp = mainOperateData2;
        }
        com.transsion.home.adapter.trending.b bVar = trendingFragment.mAdapter;
        if (bVar == null) {
            Intrinsics.y("mAdapter");
            bVar = null;
        }
        if (bVar.getData().size() > 0 && ((xVar = (qk.x) trendingFragment.getMViewBinding()) == null || (customSwipeRefreshLayout = xVar.f69872e) == null || !customSwipeRefreshLayout.isRefreshing())) {
            List<OperateItem> items7 = mainOperateData != null ? mainOperateData.getItems() : null;
            if (items7 == null || items7.isEmpty()) {
                return Unit.f64096a;
            }
        }
        MainOperateData mainOperateData3 = trendingFragment.operatingResp;
        if (mainOperateData3 == null || (items = mainOperateData3.getItems()) == null || !(!items.isEmpty())) {
            trendingFragment.Z1();
            q1(trendingFragment, false, 0, 3, null);
        } else {
            function1.invoke(Boolean.FALSE);
        }
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void m2(float alpha) {
        View view;
        qk.x xVar = (qk.x) getMViewBinding();
        if (xVar == null || (view = xVar.f69873f) == null) {
            return;
        }
        view.setAlpha(alpha);
    }

    private final void n1() {
        rk.b bVar = this.exposureHelper;
        if (bVar != null) {
            bVar.e();
        }
    }

    private final void n2() {
        this.mHandler.postDelayed(new Runnable() {
            @Override
            public final void run() {
                TrendingFragment.o2(this.f44243a);
            }
        }, 200L);
    }

    public static final kk.a o1() {
        return (kk.a) TheRouter.d(kk.a.class, new Object[0]);
    }

    public static final void o2(TrendingFragment trendingFragment) {
        if (trendingFragment.isDetached() || !trendingFragment.isAdded() || trendingFragment.getContext() == null) {
            return;
        }
        trendingFragment.hideProgress();
        Context contextRequireContext = trendingFragment.requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        View viewT1 = trendingFragment.t1(contextRequireContext);
        com.transsion.home.adapter.trending.b bVar = trendingFragment.mAdapter;
        if (bVar == null) {
            Intrinsics.y("mAdapter");
            bVar = null;
        }
        bVar.Y0(viewT1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void p1(final boolean hasTopBanner, final int retryCount) {
        CustomSwipeRefreshLayout customSwipeRefreshLayout;
        CustomSwipeRefreshLayout customSwipeRefreshLayout2;
        View view;
        CustomSwipeRefreshLayout customSwipeRefreshLayout3;
        qk.x xVar = (qk.x) getMViewBinding();
        if (xVar == null || (customSwipeRefreshLayout = xVar.f69872e) == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = customSwipeRefreshLayout.getLayoutParams();
        FrameLayout.LayoutParams layoutParams2 = layoutParams instanceof FrameLayout.LayoutParams ? (FrameLayout.LayoutParams) layoutParams : null;
        if (layoutParams2 == null) {
            if (retryCount < 2) {
                customSwipeRefreshLayout.post(new Runnable() {
                    @Override
                    public final void run() {
                        TrendingFragment.r1(this.f44281a, hasTopBanner, retryCount);
                    }
                });
                return;
            }
            return;
        }
        if (hasTopBanner) {
            layoutParams2.topMargin = 0;
            qk.x xVar2 = (qk.x) getMViewBinding();
            if (xVar2 != null && (customSwipeRefreshLayout3 = xVar2.f69872e) != null) {
                int i10 = this.mHeaderBgHeight;
                customSwipeRefreshLayout3.setProgressViewOffset(false, i10, com.blankj.utilcode.util.a0.a(50.0f) + i10);
            }
            m2(0.0f);
            b0(true);
            return;
        }
        qk.x xVar3 = (qk.x) getMViewBinding();
        int height = (xVar3 == null || (view = xVar3.f69873f) == null) ? 0 : view.getHeight();
        if (height <= 0) {
            height = this.mHeaderBgHeight;
        }
        layoutParams2.topMargin = height;
        qk.x xVar4 = (qk.x) getMViewBinding();
        if (xVar4 != null && (customSwipeRefreshLayout2 = xVar4.f69872e) != null) {
            customSwipeRefreshLayout2.setProgressViewOffset(false, 0, com.blankj.utilcode.util.a0.a(50.0f));
        }
        m2(1.0f);
        b0(false);
    }

    private final void p2(TrendingRespData baseBean, boolean isRefresh) {
        String nextPage;
        List<TrendingRespItem> list;
        List<TrendingRespItem> list2;
        Integer perPage;
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, "PreloadTrending", "updateTrendingList baseBean.data=" + baseBean, false, 4, null);
        com.transsion.home.adapter.trending.b bVar = null;
        if (baseBean == null) {
            MainOperateData mainOperateData = this.operatingResp;
            List<OperateItem> items = mainOperateData != null ? mainOperateData.getItems() : null;
            if (items == null || items.isEmpty()) {
                n2();
            }
            com.transsion.home.adapter.trending.b bVar2 = this.mAdapter;
            if (bVar2 == null) {
                Intrinsics.y("mAdapter");
                bVar2 = null;
            }
            if (bVar2.h0().r()) {
                com.transsion.home.adapter.trending.b bVar3 = this.mAdapter;
                if (bVar3 == null) {
                    Intrinsics.y("mAdapter");
                } else {
                    bVar = bVar3;
                }
                bVar.h0().v();
                return;
            }
            return;
        }
        hideProgress();
        List<TrendingRespItem> items2 = baseBean.getItems();
        wf.a.C0922a.f(c0922a, "TrendingFragment", "updateTrendingList subjectBean " + (items2 != null ? Integer.valueOf(items2.size()) : null), false, 4, null);
        Pager pager = baseBean.getPager();
        this.mPerPage = (pager == null || (perPage = pager.getPerPage()) == null) ? this.mPerPage : perPage.intValue();
        Pager pager2 = baseBean.getPager();
        if (pager2 == null || (nextPage = pager2.getNextPage()) == null) {
            nextPage = "1";
        }
        this.nextPage = nextPage;
        List<TrendingRespItem> items3 = baseBean.getItems();
        if (isRefresh && (list2 = items3) != null && !list2.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            Iterator<TrendingRespItem> it = items3.iterator();
            while (it.hasNext()) {
                f1(arrayList, it.next());
            }
            com.transsion.home.adapter.trending.b bVar4 = this.mAdapter;
            if (bVar4 == null) {
                Intrinsics.y("mAdapter");
            } else {
                bVar = bVar4;
            }
            bVar.n1(arrayList);
            return;
        }
        com.transsion.home.adapter.trending.b bVar5 = this.mAdapter;
        if (bVar5 == null) {
            Intrinsics.y("mAdapter");
        } else {
            bVar = bVar5;
        }
        if (bVar.getData().size() == 0 && ((list = items3) == null || list.isEmpty())) {
            showEmpty();
        } else {
            if (items3 == null) {
                this.mHandler.postDelayed(new Runnable() {
                    @Override
                    public final void run() {
                        TrendingFragment.q2(this.f44218a);
                    }
                }, 200L);
                return;
            }
            final List listI2 = i2(items3);
            com.transsion.home.preload.c.a(getContext(), listI2);
            this.mHandler.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    TrendingFragment.r2(this.f44224a, listI2);
                }
            }, 200L);
        }
    }

    static void q1(TrendingFragment trendingFragment, boolean z10, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = trendingFragment.H1();
        }
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        trendingFragment.p1(z10, i10);
    }

    public static final void q2(TrendingFragment trendingFragment) {
        com.transsion.home.adapter.trending.b bVar = trendingFragment.mAdapter;
        if (bVar == null) {
            Intrinsics.y("mAdapter");
            bVar = null;
        }
        bVar.h0().v();
    }

    public static final void r1(TrendingFragment trendingFragment, boolean z10, int i10) {
        if (trendingFragment.isAdded()) {
            trendingFragment.p1(z10, i10 + 1);
        }
    }

    public static final void r2(TrendingFragment trendingFragment, List list) {
        if (trendingFragment.getContext() == null) {
            return;
        }
        com.transsion.home.adapter.trending.b bVar = null;
        if (list.isEmpty()) {
            com.transsion.home.adapter.trending.b bVar2 = trendingFragment.mAdapter;
            if (bVar2 == null) {
                Intrinsics.y("mAdapter");
                bVar2 = null;
            }
            t6.f.u(bVar2.h0(), false, 1, null);
            return;
        }
        com.transsion.home.adapter.trending.b bVar3 = trendingFragment.mAdapter;
        if (bVar3 == null) {
            Intrinsics.y("mAdapter");
            bVar3 = null;
        }
        bVar3.q(list);
        com.transsion.home.adapter.trending.b bVar4 = trendingFragment.mAdapter;
        if (bVar4 == null) {
            Intrinsics.y("mAdapter");
            bVar4 = null;
        }
        if (bVar4.h0().r()) {
            com.transsion.home.adapter.trending.b bVar5 = trendingFragment.mAdapter;
            if (bVar5 == null) {
                Intrinsics.y("mAdapter");
            } else {
                bVar = bVar5;
            }
            bVar.h0().s();
        }
    }

    public static final void s1(TrendingFragment trendingFragment, DefaultView defaultView, View view) {
        X1(trendingFragment, false, 1, null);
        defaultView.setVisibility(8);
    }

    private final void showEmpty() {
        hideProgress();
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        View emptyView = getEmptyView(contextRequireContext);
        com.transsion.home.adapter.trending.b bVar = this.mAdapter;
        if (bVar == null) {
            Intrinsics.y("mAdapter");
            bVar = null;
        }
        bVar.Y0(emptyView);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void showProgress() {
        CustomSwipeRefreshLayout customSwipeRefreshLayout;
        qk.h0 h0Var;
        ConstraintLayout constraintLayout;
        qk.x xVar = (qk.x) getMViewBinding();
        if (xVar != null && (h0Var = xVar.f69870c) != null && (constraintLayout = h0Var.f69763h) != null) {
            uf.c.k(constraintLayout);
        }
        qk.x xVar2 = (qk.x) getMViewBinding();
        if (xVar2 == null || (customSwipeRefreshLayout = xVar2.f69872e) == null) {
            return;
        }
        customSwipeRefreshLayout.setEnabled(false);
    }

    private final View t1(Context context) {
        NoNetworkBigView noNetworkBigView = new NoNetworkBigView(context);
        this.mNoNetworkView = noNetworkBigView;
        noNetworkBigView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        NoNetworkBigView.showTitle$default(noNetworkBigView, false, null, 2, null);
        noNetworkBigView.retry(new Function0() {
            @Override
            public final Object invoke() {
                return TrendingFragment.u1(this.f44256a);
            }
        });
        noNetworkBigView.goToSetting(new Function0() {
            @Override
            public final Object invoke() {
                return TrendingFragment.v1(this.f44260a);
            }
        });
        com.tn.lib.view.o.a(getPageName());
        return noNetworkBigView;
    }

    public static final Unit u1(TrendingFragment trendingFragment) {
        X1(trendingFragment, false, 1, null);
        com.tn.lib.view.o.b(trendingFragment.getPageName());
        return Unit.f64096a;
    }

    public static final Unit v1(TrendingFragment trendingFragment) {
        com.tn.lib.view.o.c(trendingFragment.getPageName());
        return Unit.f64096a;
    }

    private final kk.a w1() {
        return (kk.a) this.fissionProvider.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final float x1() {
        View view;
        qk.x xVar = (qk.x) getMViewBinding();
        if (xVar == null || (view = xVar.f69873f) == null) {
            return 0.0f;
        }
        return view.getAlpha();
    }

    private final HomePreferencesViewModel y1() {
        return (HomePreferencesViewModel) this.homePreferencesViewModel.getValue();
    }

    private final int z1(List opreateItems) {
        int i10 = 0;
        for (Object obj : opreateItems) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt.u();
            }
            if (Intrinsics.c(((OperateItem) obj).getType(), PostItemType.BANNER.getValue())) {
                return i11;
            }
            i10 = i11;
        }
        return 0;
    }

    public final rk.c getPostListReport() {
        return this.postListReport;
    }

    @Override
    public qk.x getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        KeyEventDispatcher.Component activity = getActivity();
        Intrinsics.f(activity, "null cannot be cast to non-null type com.transsion.home.preload.MainXMLPreload");
        com.transsion.home.preload.b xmlPreload = ((com.transsion.home.preload.a) activity).getXmlPreload();
        Boolean boolValueOf = xmlPreload != null ? Boolean.valueOf(xmlPreload.e()) : null;
        View viewF = xmlPreload != null ? xmlPreload.f() : null;
        if (viewF == null || !Intrinsics.c(boolValueOf, Boolean.FALSE)) {
            qk.x xVarC = qk.x.c(inflater);
            Intrinsics.g(xVarC, "inflate(...)");
            return xVarC;
        }
        wf.a.C0922a.f(wf.a.f74274a, "MainXMLPreload", "postlist root ", false, 4, null);
        qk.x xVarA = qk.x.a(viewF);
        Intrinsics.g(xVarA, "bind(...)");
        return xVarA;
    }

    @Override
    public void c0() {
        String version;
        super.c0();
        BiddingListManager v3ListManager = getV3ListManager();
        if (v3ListManager != null) {
            v3ListManager.C(true);
        }
        this.nextPage = "1";
        Context context = getContext();
        if (context != null) {
            PreloadTrendingData preloadTrendingDataA = PreloadTrendingData.f44531n.a();
            MainOperateData mainOperateData = this.operatingResp;
            if (mainOperateData == null || (version = mainOperateData.getVersion()) == null) {
                version = "";
            }
            if (preloadTrendingDataA.X(context, version)) {
                return;
            }
            hideProgress();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public RecyclerView f0() {
        qk.x xVar = (qk.x) getMViewBinding();
        if (xVar != null) {
            return xVar.f69871d;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void f2() {
        CustomSwipeRefreshLayout customSwipeRefreshLayout;
        RecyclerView recyclerView;
        if (isAdded()) {
            qk.x xVar = (qk.x) getMViewBinding();
            if (xVar != null && (recyclerView = xVar.f69871d) != null) {
                recyclerView.scrollToPosition(0);
            }
            qk.x xVar2 = (qk.x) getMViewBinding();
            if (xVar2 == null || (customSwipeRefreshLayout = xVar2.f69872e) == null) {
                return;
            }
            customSwipeRefreshLayout.post(new Runnable() {
                @Override
                public final void run() {
                    TrendingFragment.g2(this.f44275a);
                }
            });
        }
    }

    @Override
    public String g0() {
        return "TrendingScene";
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void initView(View view, Bundle savedInstanceState) {
        CustomSwipeRefreshLayout customSwipeRefreshLayout;
        CustomSwipeRefreshLayout customSwipeRefreshLayout2;
        View view2;
        ViewGroup.LayoutParams layoutParams;
        RecyclerView recyclerView;
        ViewTreeObserver viewTreeObserver;
        Intrinsics.h(view, "view");
        super.initView(view, savedInstanceState);
        TrendingViewModel trendingViewModel = this.mPostListModel;
        if (trendingViewModel != null) {
            trendingViewModel.N(getPageName());
        }
        L1();
        initViewModel();
        setNetListener(new h());
        qk.x xVar = (qk.x) getMViewBinding();
        if (xVar != null && (recyclerView = xVar.f69871d) != null && (viewTreeObserver = recyclerView.getViewTreeObserver()) != null) {
            viewTreeObserver.addOnPreDrawListener(new i());
        }
        this.mLauncher = registerForActivityResult(new f.h(), new androidx.activity.result.a() {
            @Override
            public final void a(Object obj) {
                TrendingFragment.S1(this.f44285a, (Map) obj);
            }
        });
        g1();
        this.mHeaderBgHeight = h0();
        qk.x xVar2 = (qk.x) getMViewBinding();
        if (xVar2 != null && (view2 = xVar2.f69873f) != null && (layoutParams = view2.getLayoutParams()) != null) {
            layoutParams.height = this.mHeaderBgHeight;
        }
        qk.x xVar3 = (qk.x) getMViewBinding();
        ViewGroup.LayoutParams layoutParams2 = (xVar3 == null || (customSwipeRefreshLayout2 = xVar3.f69872e) == null) ? null : customSwipeRefreshLayout2.getLayoutParams();
        FrameLayout.LayoutParams layoutParams3 = layoutParams2 instanceof FrameLayout.LayoutParams ? (FrameLayout.LayoutParams) layoutParams2 : null;
        if (layoutParams3 != null) {
            layoutParams3.topMargin = this.mHeaderBgHeight;
            qk.x xVar4 = (qk.x) getMViewBinding();
            if (xVar4 != null && (customSwipeRefreshLayout = xVar4.f69872e) != null) {
                customSwipeRefreshLayout.setLayoutParams(layoutParams3);
            }
        }
        if (savedInstanceState != null && savedInstanceState.getBoolean("operate_items", false)) {
            wf.a.C0922a.f(wf.a.f74274a, "lgx", "get save instance", false, 4, null);
            List listL = PreloadTrendingData.f44531n.a().L();
            com.transsion.home.adapter.trending.b bVar = this.mAdapter;
            if (bVar == null) {
                Intrinsics.y("mAdapter");
                bVar = null;
            }
            bVar.n1(listL);
            q1(this, I1(listL), 0, 2, null);
        }
        initAd();
    }

    public final void k2() {
        FragmentActivity activity = getActivity();
        BaseActivity baseActivity = activity instanceof BaseActivity ? (BaseActivity) activity : null;
        if (baseActivity != null) {
            baseActivity.setStateCallback(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return TrendingFragment.l2(this.f44272a, (String) obj);
                }
            });
        }
    }

    /* JADX WARN: Code duplicated, block: B:22:0x009a  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void l0(final int lastAdPosition, BiddingNativeManager wrapperNativeManager) {
        String value;
        RecyclerView recyclerView;
        Intrinsics.h(wrapperNativeManager, "wrapperNativeManager");
        if (wrapperNativeManager != null) {
            final OperateItem operateItem = new OperateItem(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 536870911, null);
            operateItem.setNonAdDelegate(wrapperNativeManager);
            com.transsion.home.adapter.trending.b bVar = this.mAdapter;
            com.transsion.home.adapter.trending.b bVar2 = null;
            if (bVar == null) {
                Intrinsics.y("mAdapter");
                bVar = null;
            }
            final int size = bVar.getData().size();
            com.transsion.home.adapter.trending.b bVar3 = this.mAdapter;
            if (bVar3 == null) {
                Intrinsics.y("mAdapter");
                bVar3 = null;
            }
            if (!bVar3.getIsGridTrendingAdapter()) {
                value = PostItemType.TRENDING_NATIVE_AD.getValue();
            } else if (1 > lastAdPosition || lastAdPosition >= size) {
                value = PostItemType.SUBJECT.getValue();
            } else {
                com.transsion.home.adapter.trending.b bVar4 = this.mAdapter;
                if (bVar4 == null) {
                    Intrinsics.y("mAdapter");
                } else {
                    bVar2 = bVar4;
                }
                if (Intrinsics.c(((OperateItem) bVar2.getData().get(lastAdPosition)).getType(), PostItemType.SUBJECT.getValue())) {
                    value = PostItemType.SUBJECT.getValue();
                } else {
                    value = PostItemType.TRENDING_NATIVE_AD.getValue();
                }
            }
            operateItem.setType(value);
            if (Intrinsics.c(operateItem.getType(), PostItemType.SUBJECT.getValue())) {
                BiddingListManager v3ListManager = getV3ListManager();
                if (v3ListManager != null) {
                    v3ListManager.C(false);
                    return;
                }
                return;
            }
            qk.x xVar = (qk.x) getMViewBinding();
            if (xVar == null || (recyclerView = xVar.f69871d) == null) {
                return;
            }
            recyclerView.post(new Runnable() {
                @Override
                public final void run() {
                    TrendingFragment.d2(lastAdPosition, size, this, operateItem);
                }
            });
        }
    }

    @Override
    public void lazyLoadData() {
        List<OperateItem> items;
        MainOperateData mainOperateData = this.operatingResp;
        if (mainOperateData == null || (items = mainOperateData.getItems()) == null || !(!items.isEmpty())) {
            wf.a.C0922a c0922a = wf.a.f74274a;
            boolean z10 = this.operatingResp == null;
            com.transsion.home.adapter.trending.b bVar = this.mAdapter;
            if (bVar == null) {
                Intrinsics.y("mAdapter");
                bVar = null;
            }
            c0922a.c("PreloadTrending", "lazyLoadData " + z10 + " " + bVar.getData().size(), true);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("load1 fragment:");
            sb2.append(this);
            wf.a.C0922a.f(c0922a, "lgx", sb2.toString(), false, 4, null);
            X1(this, false, 1, null);
        }
    }

    @Override
    public void logResume() {
        super.logResume();
        kk.a aVarW1 = w1();
        if (aVarW1 != null) {
            kk.a.C0793a.a(aVarW1, false, 1, null);
        }
        kk.a aVarW2 = w1();
        if (aVarW2 != null) {
            aVarW2.c(false);
        }
        bm.e.f15845a.h();
    }

    @Override
    public qi.b newLogViewConfig() {
        return new qi.b(getPageName(), false, 2, null);
    }

    @Override
    public void onConfigurationChanged(Configuration newConfig) {
        Intrinsics.h(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        com.transsion.home.adapter.trending.b bVar = this.mAdapter;
        com.transsion.home.adapter.trending.b bVar2 = null;
        if (bVar == null) {
            Intrinsics.y("mAdapter");
            bVar = null;
        }
        if (bVar.getIsGridTrendingAdapter()) {
            com.transsion.home.adapter.trending.b bVar3 = this.mAdapter;
            if (bVar3 == null) {
                Intrinsics.y("mAdapter");
            } else {
                bVar2 = bVar3;
            }
            bVar2.notifyDataSetChanged();
        }
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        HashMap mapG;
        qi.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
            mapG.put("onCreate", "true");
        }
        AppStartReport.f52508a.e(new AppStartDotState(AppStartDotState.TRENDING_CREATE, 0L, 2, null));
        super.onCreate(savedInstanceState);
        this.mPostListModel = (TrendingViewModel) new androidx.p009lifecycle.v0(this).a(TrendingViewModel.class);
        k2();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        this.mHandler.removeCallbacksAndMessages(null);
        zk.c.f76806a.a();
        BannerADDataHelper.f43481a.j();
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
    }

    @Override
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (hidden) {
            h1();
        }
        if (isResumed()) {
            if (hidden) {
                logPause();
                n1();
            } else {
                logResume();
                Y1();
            }
        }
        com.transsion.baseui.activity.k.h(null, this, hidden, null, 9, null);
    }

    @Override
    public void onPause() {
        super.onPause();
        n1();
        com.transsion.baseui.activity.k.l(null, this, null, 5, null);
    }

    @Override
    public void onResume() {
        HashMap mapG;
        super.onResume();
        wf.a.C0922a c0922a = wf.a.f74274a;
        View view = this.mNoNetworkView;
        wf.a.C0922a.f(c0922a, "TrendingFragment", "visible = " + (view != null ? Integer.valueOf(view.getVisibility()) : null) + "  " + this, false, 4, null);
        View view2 = this.mNoNetworkView;
        if (view2 != null && view2.getVisibility() == 0 && yg.l.f76264a.e()) {
            com.transsion.home.adapter.trending.b bVar = this.mAdapter;
            if (bVar == null) {
                Intrinsics.y("mAdapter");
                bVar = null;
            }
            if (bVar.getData().size() < 2) {
                X1(this, false, 1, null);
            }
        }
        com.transsion.baseui.activity.k.p(null, this, "visible=" + isVisible(), 1, null);
        qi.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
            mapG.put("scrollPosition", "0");
        }
        if (this.isAdLoadDisabled) {
            return;
        }
        a2();
        Y1();
        this.isAdLoadDisabled = true;
    }

    @Override
    public void onSaveInstanceState(Bundle outState) {
        Intrinsics.h(outState, "outState");
        super.onSaveInstanceState(outState);
        com.transsion.home.adapter.trending.b bVar = this.mAdapter;
        com.transsion.home.adapter.trending.b bVar2 = null;
        if (bVar == null) {
            Intrinsics.y("mAdapter");
            bVar = null;
        }
        if (bVar.getData().size() > 0) {
            PreloadTrendingData preloadTrendingDataA = PreloadTrendingData.f44531n.a();
            com.transsion.home.adapter.trending.b bVar3 = this.mAdapter;
            if (bVar3 == null) {
                Intrinsics.y("mAdapter");
            } else {
                bVar2 = bVar3;
            }
            preloadTrendingDataA.b0(bVar2.getData());
            outState.putBoolean("operate_items", true);
        }
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        AppStartReport.f52508a.e(new AppStartDotState(AppStartDotState.TRENDING_RENDER, 0L, 2, null));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void p0() {
        RecyclerView recyclerView;
        qk.x xVar = (qk.x) getMViewBinding();
        if (xVar == null || (recyclerView = xVar.f69871d) == null) {
            return;
        }
        recyclerView.smoothScrollToPosition(0);
    }
}
