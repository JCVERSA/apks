package com.transsion.home.fragment.filter;

import android.content.Context;
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
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.v0;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.loadmore.LoadMoreStatus;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.net.bean.BaseDto;
import com.tn.lib.view.NoNetworkBigView;
import com.tn.lib.widget.R$color;
import com.transsion.ad.bidding.nativead.BiddingListManager;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.R$string;
import com.transsion.home.bean.Channel;
import com.transsion.home.bean.FilterItems;
import com.transsion.home.bean.Item;
import com.transsion.home.bean.LayoutStyle;
import com.transsion.home.bean.MovieBean;
import com.transsion.home.bean.MovieItem;
import com.transsion.home.bean.RefreshBaseDto;
import com.transsion.home.fragment.home.HomeFragment;
import com.transsion.home.fragment.tab.BaseHomeSubFragment;
import com.transsion.home.view.filter.expand.FilterExpandView;
import com.transsion.home.view.filter.expand.TabExpandView;
import com.transsion.home.view.layoutmanager.OffsetGridLayoutManager;
import com.transsion.home.viewmodel.MovieViewModel;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.DownloadManagerApi;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.json.JSONObject;

@Metadata(d1 = {"\u0000à\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0007\u0018\u0000 ²\u00012\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002³\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u0004J\u000f\u0010\u000b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000b\u0010\u0004J\u0017\u0010\u000e\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0010\u0010\u0004J\u000f\u0010\u0011\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0011\u0010\u0004J;\u0010\u0018\u001a\u001e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00160\u0015j\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0016`\u00172\u000e\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0012H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u001d\u0010\u001b\u001a\u00020\u00072\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\f0\u001aH\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u0015\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\f0\u001aH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ!\u0010!\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u00122\b\u0010\u001f\u001a\u0004\u0018\u00010\u0016H\u0002¢\u0006\u0004\b!\u0010\"J\u0017\u0010%\u001a\u00020\u00072\u0006\u0010$\u001a\u00020#H\u0002¢\u0006\u0004\b%\u0010&J\u000f\u0010'\u001a\u00020\u0007H\u0002¢\u0006\u0004\b'\u0010\u0004J\u000f\u0010(\u001a\u00020\u0007H\u0002¢\u0006\u0004\b(\u0010\u0004J7\u0010*\u001a\u00020\u00072&\u0010)\u001a\"\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u0015j\u0010\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0016\u0018\u0001`\u0017H\u0002¢\u0006\u0004\b*\u0010+J\u000f\u0010,\u001a\u00020\u0007H\u0002¢\u0006\u0004\b,\u0010\u0004J\u000f\u0010-\u001a\u00020\u0007H\u0002¢\u0006\u0004\b-\u0010\u0004J\u000f\u0010.\u001a\u00020\u0007H\u0002¢\u0006\u0004\b.\u0010\u0004J\u001f\u00101\u001a\u00020\u00072\u0006\u0010/\u001a\u00020\u00162\u0006\u00100\u001a\u00020\u0016H\u0002¢\u0006\u0004\b1\u00102JI\u00106\u001a\u00020\u00072\b\u0010\u001f\u001a\u0004\u0018\u00010\u00162&\u00103\u001a\"\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u0015j\u0010\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0016\u0018\u0001`\u00172\u0006\u00105\u001a\u000204H\u0002¢\u0006\u0004\b6\u00107J!\u0010:\u001a\u00020\u00072\b\u00109\u001a\u0004\u0018\u0001082\u0006\u00105\u001a\u000204H\u0002¢\u0006\u0004\b:\u0010;J\u000f\u0010<\u001a\u00020\u0007H\u0002¢\u0006\u0004\b<\u0010\u0004J\u000f\u0010=\u001a\u00020\u0007H\u0002¢\u0006\u0004\b=\u0010\u0004J\u000f\u0010>\u001a\u00020\u0007H\u0002¢\u0006\u0004\b>\u0010\u0004J\u0019\u0010@\u001a\u00020\u00072\b\u0010?\u001a\u0004\u0018\u00010\u0016H\u0002¢\u0006\u0004\b@\u0010AJC\u0010C\u001a\u00020\u00072\b\u0010\u001f\u001a\u0004\u0018\u00010\u00162(\b\u0002\u0010B\u001a\"\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u0015j\u0010\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0016\u0018\u0001`\u0017H\u0002¢\u0006\u0004\bC\u0010DJ\u0019\u0010E\u001a\u00020\u00072\b\u0010\u001f\u001a\u0004\u0018\u00010\u0016H\u0002¢\u0006\u0004\bE\u0010AJ\u000f\u0010F\u001a\u00020\u0007H\u0002¢\u0006\u0004\bF\u0010\u0004J\u000f\u0010G\u001a\u00020#H\u0002¢\u0006\u0004\bG\u0010HJ\u001b\u0010J\u001a\u0004\u0018\u00010I2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0016H\u0002¢\u0006\u0004\bJ\u0010KJ\u000f\u0010L\u001a\u00020#H\u0002¢\u0006\u0004\bL\u0010HJ\u000f\u0010M\u001a\u00020\u0007H\u0002¢\u0006\u0004\bM\u0010\u0004J\u000f\u0010N\u001a\u00020\u0016H\u0002¢\u0006\u0004\bN\u0010OJ+\u0010R\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00160Q2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010P\u001a\u00020\u0016H\u0002¢\u0006\u0004\bR\u0010SJ\u0017\u0010V\u001a\u00020\u00022\u0006\u0010U\u001a\u00020TH\u0016¢\u0006\u0004\bV\u0010WJ\u0019\u0010Z\u001a\u00020\u00072\b\u0010Y\u001a\u0004\u0018\u00010XH\u0016¢\u0006\u0004\bZ\u0010[J!\u0010]\u001a\u00020\u00072\u0006\u0010\\\u001a\u00020\u00052\b\u0010Y\u001a\u0004\u0018\u00010XH\u0017¢\u0006\u0004\b]\u0010^J\u000f\u0010_\u001a\u00020\u0007H\u0016¢\u0006\u0004\b_\u0010\u0004J\u000f\u0010`\u001a\u00020\u0007H\u0016¢\u0006\u0004\b`\u0010\u0004J\u000f\u0010a\u001a\u00020\u0007H\u0016¢\u0006\u0004\ba\u0010\u0004J\u000f\u0010b\u001a\u00020\u0007H\u0016¢\u0006\u0004\bb\u0010\u0004J\u0017\u0010d\u001a\u00020\u00072\u0006\u0010c\u001a\u000204H\u0016¢\u0006\u0004\bd\u0010eJ\u000f\u0010f\u001a\u00020\u0007H\u0016¢\u0006\u0004\bf\u0010\u0004J\u000f\u0010h\u001a\u00020gH\u0016¢\u0006\u0004\bh\u0010iJ\u000f\u0010j\u001a\u00020\u0007H\u0016¢\u0006\u0004\bj\u0010\u0004J!\u0010m\u001a\u00020\u00162\b\u0010\u001f\u001a\u0004\u0018\u00010\u00162\b\u0010l\u001a\u0004\u0018\u00010k¢\u0006\u0004\bm\u0010nJ\u000f\u0010o\u001a\u00020\u0016H\u0016¢\u0006\u0004\bo\u0010OJ\u000f\u0010p\u001a\u00020\u0007H\u0016¢\u0006\u0004\bp\u0010\u0004J\u0011\u0010r\u001a\u0004\u0018\u00010qH\u0016¢\u0006\u0004\br\u0010sJ\u001f\u0010w\u001a\u00020\u00072\u0006\u0010t\u001a\u00020#2\u0006\u0010v\u001a\u00020uH\u0016¢\u0006\u0004\bw\u0010xR\u0018\u0010|\u001a\u0004\u0018\u00010y8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bz\u0010{R\u0019\u0010\u0080\u0001\u001a\u0004\u0018\u00010}8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b~\u0010\u007fR\u0018\u0010\u0006\u001a\u00020\u00058\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u0081\u0001\u0010\u0082\u0001R\u001a\u0010\u0086\u0001\u001a\u00030\u0083\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u0084\u0001\u0010\u0085\u0001R\u001a\u0010\u008a\u0001\u001a\u00030\u0087\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u0088\u0001\u0010\u0089\u0001R\u001a\u0010\u008e\u0001\u001a\u00030\u008b\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u008c\u0001\u0010\u008d\u0001R\u0019\u0010\u0091\u0001\u001a\u00020#8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008f\u0001\u0010\u0090\u0001R\u001b\u0010\u0094\u0001\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0092\u0001\u0010\u0093\u0001R\u001b\u0010\u0097\u0001\u001a\u0004\u0018\u00010k8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0095\u0001\u0010\u0096\u0001R\u001b\u0010\u0099\u0001\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0098\u0001\u0010\u0093\u0001R\u0019\u0010\u009b\u0001\u001a\u00020#8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009a\u0001\u0010\u0090\u0001R\u0019\u0010\u009e\u0001\u001a\u0002048\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009c\u0001\u0010\u009d\u0001Rq\u0010¡\u0001\u001aZ\u0012\u0006\u0012\u0004\u0018\u00010\u0016\u0012 \u0012\u001e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00160\u0015j\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0016`\u00170\u0015j,\u0012\u0006\u0012\u0004\u0018\u00010\u0016\u0012 \u0012\u001e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00160\u0015j\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0016`\u0017`\u00178\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009f\u0001\u0010 \u0001R\u001a\u0010¥\u0001\u001a\u00030¢\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b£\u0001\u0010¤\u0001R\u001c\u0010©\u0001\u001a\u0005\u0018\u00010¦\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b§\u0001\u0010¨\u0001R9\u0010«\u0001\u001a\"\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u0015j\u0010\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0016\u0018\u0001`\u00178\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bª\u0001\u0010 \u0001R\u001b\u0010\u00ad\u0001\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¬\u0001\u0010\u0082\u0001R\u001b\u0010¯\u0001\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b®\u0001\u0010\u0082\u0001R\u001b\u0010±\u0001\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b°\u0001\u0010\u0082\u0001¨\u0006´\u0001"}, d2 = {"Lcom/transsion/home/fragment/filter/FilterFragment;", "Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;", "Lqk/m;", "<init>", "()V", "Landroid/view/View;", "header", "", "m1", "(Landroid/view/View;)V", "h1", "g1", "Lbl/a;", WebConstants.FIELD_ITEM, "y1", "(Lbl/a;)V", "i1", "d1", "", "Lcom/transsion/home/bean/Channel;", "list", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "e1", "(Ljava/util/List;)Ljava/util/HashMap;", "", "x1", "(Ljava/util/List;)V", "T0", "()Ljava/util/List;", TmcStartParams.KEY_CHANNEL_ID, "Lcom/transsion/home/bean/Item;", "S0", "(Ljava/lang/String;)Ljava/util/List;", "", RequestParameters.POSITION, "P0", "(I)V", "initViewModel", "E1", "selectItems", "I1", "(Ljava/util/HashMap;)V", "loadData", "z1", "loadMore", "filterType", "filterValue", "u1", "(Ljava/lang/String;Ljava/lang/String;)V", "selectedItems", "", "isRefresh", "R0", "(Ljava/lang/String;Ljava/util/HashMap;Z)V", "Lcom/transsion/home/bean/MovieBean;", "movieBean", "F1", "(Lcom/transsion/home/bean/MovieBean;Z)V", "H1", "showLoadingView", "b1", "string", "C1", "(Ljava/lang/String;)V", "selectMap", "v1", "(Ljava/lang/String;Ljava/util/HashMap;)V", "Q0", "c1", "Y0", "()I", "Lcom/transsion/home/bean/LayoutStyle;", "V0", "(Ljava/lang/String;)Lcom/transsion/home/bean/LayoutStyle;", "W0", "f1", "X0", "()Ljava/lang/String;", "key", "", "U0", "(Lbl/a;Ljava/lang/String;)Ljava/util/Map;", "Landroid/view/LayoutInflater;", "inflater", "a1", "(Landroid/view/LayoutInflater;)Lqk/m;", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "lazyLoadData", "startLoading", "hideLoading", "onResume", "hidden", "onHiddenChanged", "(Z)V", "onPause", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "onDestroyView", "Lcom/transsion/home/bean/FilterItems;", "filterItems", "Z0", "(Ljava/lang/String;Lcom/transsion/home/bean/FilterItems;)Ljava/lang/String;", "g0", "c0", "Landroidx/recyclerview/widget/RecyclerView;", "f0", "()Landroidx/recyclerview/widget/RecyclerView;", "lastAdPosition", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "wrapperNativeManager", "l0", "(ILcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V", "Lcom/transsion/home/adapter/a;", "g", "Lcom/transsion/home/adapter/a;", "mAdapter", "Lcom/transsion/home/viewmodel/MovieViewModel;", "h", "Lcom/transsion/home/viewmodel/MovieViewModel;", "mMovieModel", "i", "Landroid/view/View;", "Lqk/z;", "j", "Lqk/z;", "headerBinding", "Lcom/transsion/home/view/filter/expand/TabExpandView;", CampaignEx.JSON_KEY_AD_K, "Lcom/transsion/home/view/filter/expand/TabExpandView;", "channelView", "Lcom/transsion/home/view/filter/expand/FilterExpandView;", "l", "Lcom/transsion/home/view/filter/expand/FilterExpandView;", "filterView", "m", "I", "mPage", "n", "Ljava/lang/String;", "mFilterJson", "o", "Lcom/transsion/home/bean/FilterItems;", "mFilterItems", TtmlNode.TAG_P, "mChannelId", CampaignEx.JSON_KEY_AD_Q, "mPerPage", CampaignEx.JSON_KEY_AD_R, "Z", "mUpdateFilterItems", "s", "Ljava/util/HashMap;", "mSubjectTypeMap", "", "t", "J", "startShowTime", "Lrk/b;", TmcStartParams.KEY_URL_SHORT, "Lrk/b;", "mExposureHelper", "v", "mLatestSelectItems", "w", "mNoNetworkView", "x", "mLoadingView", "y", "mNoResultView", "z", "a", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class FilterFragment extends BaseHomeSubFragment<qk.m> {

    private com.transsion.home.adapter.a mAdapter;

    private MovieViewModel mMovieModel;

    private View header;

    private qk.z headerBinding;

    private TabExpandView channelView;

    private FilterExpandView filterView;

    private volatile String mFilterJson;

    private FilterItems mFilterItems;

    private String mChannelId;

    private rk.b mExposureHelper;

    private HashMap mLatestSelectItems;

    private View mNoNetworkView;

    private View mLoadingView;

    private View mNoResultView;

    public static final Companion INSTANCE = new Companion(null);
    public static final int A = 8;

    private int mPage = 1;

    private int mPerPage = 12;

    private boolean mUpdateFilterItems = true;

    private HashMap mSubjectTypeMap = new HashMap();

    private long startShowTime = SystemClock.elapsedRealtime();

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final FilterFragment a(int i10, String str, String str2) {
            Bundle bundle = new Bundle();
            bundle.putInt("tab_id", i10);
            bundle.putString(WebConstants.TAB_CODE, str);
            bundle.putString("filter_json", str2);
            FilterFragment filterFragment = new FilterFragment();
            filterFragment.setArguments(bundle);
            return filterFragment;
        }

        private Companion() {
        }
    }

    public static final class b implements rk.a {
        b() {
        }

        @Override
        public void a(int i10, long j10, View view) {
            List<Object> data;
            String subjectId;
            String ops;
            com.transsion.home.adapter.a aVar = FilterFragment.this.mAdapter;
            if (aVar != null) {
                aVar.s0();
            }
            com.transsion.home.adapter.a aVar2 = FilterFragment.this.mAdapter;
            if (aVar2 == null || (data = aVar2.getData()) == null) {
                return;
            }
            int size = data.size();
            FilterFragment filterFragment = FilterFragment.this;
            if (i10 >= size) {
                return;
            }
            com.transsion.home.adapter.a aVar3 = filterFragment.mAdapter;
            MovieItem movieItem = aVar3 != null ? (MovieItem) aVar3.getItem(i10) : null;
            HashMap map = new HashMap();
            String str = "";
            if (movieItem == null || (subjectId = movieItem.getSubjectId()) == null) {
                subjectId = "";
            }
            map.put("subject_id", subjectId);
            map.put("has_resource", String.valueOf(movieItem != null ? movieItem.getHasResource() : null));
            map.put("sequence", String.valueOf(i10));
            if (movieItem != null && (ops = movieItem.getOps()) != null) {
                str = ops;
            }
            map.put("ops", str);
            com.transsion.baselib.helper.a.f42121a.e(filterFragment.Z0(filterFragment.mChannelId, filterFragment.mFilterItems), map);
        }
    }

    public static final class c extends DiffUtil.e {
        c() {
        }

        @Override
        public boolean areContentsTheSame(MovieItem oldItem, MovieItem newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            return Intrinsics.c(oldItem.getSubjectId(), newItem.getSubjectId());
        }

        @Override
        public boolean areItemsTheSame(MovieItem oldItem, MovieItem newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            return Intrinsics.c(oldItem.getSubjectType(), newItem.getSubjectType());
        }
    }

    public static final class d extends RecyclerView.r {

        private int f43795a;

        final View f43797c;

        d(View view) {
            this.f43797c = view;
        }

        private final void d(RecyclerView recyclerView) {
            RecyclerView.m layoutManager = recyclerView.getLayoutManager();
            Intrinsics.f(layoutManager, "null cannot be cast to non-null type com.transsion.home.view.layoutmanager.OffsetGridLayoutManager");
            this.f43795a = ((OffsetGridLayoutManager) layoutManager).findLastCompletelyVisibleItemPosition();
        }

        @Override
        public void onScrollStateChanged(RecyclerView recyclerView, int i10) {
            com.transsion.home.adapter.a aVar;
            t6.f fVarH0;
            t6.f fVarH1;
            Intrinsics.h(recyclerView, "recyclerView");
            super.onScrollStateChanged(recyclerView, i10);
            RecyclerView.m layoutManager = recyclerView.getLayoutManager();
            int childCount = layoutManager != null ? layoutManager.getChildCount() : 0;
            int itemCount = layoutManager != null ? layoutManager.getItemCount() : 0;
            if (i10 != 0 || childCount <= 0 || this.f43795a < itemCount - 1) {
                return;
            }
            com.transsion.home.adapter.a aVar2 = FilterFragment.this.mAdapter;
            if (((aVar2 == null || (fVarH1 = aVar2.h0()) == null) ? null : fVarH1.i()) != LoadMoreStatus.Fail || (aVar = FilterFragment.this.mAdapter) == null || (fVarH0 = aVar.h0()) == null) {
                return;
            }
            fVarH0.w();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
            qk.a0 a0Var;
            ConstraintLayout constraintLayout;
            qk.a0 a0Var2;
            qk.a0 a0Var3;
            ConstraintLayout constraintLayout2;
            Intrinsics.h(recyclerView, "recyclerView");
            int iComputeVerticalScrollOffset = recyclerView.computeVerticalScrollOffset();
            int measuredHeight = this.f43797c.getMeasuredHeight();
            TabExpandView tabExpandView = FilterFragment.this.channelView;
            if (tabExpandView == null) {
                Intrinsics.y("channelView");
                tabExpandView = null;
            }
            if (iComputeVerticalScrollOffset > measuredHeight - tabExpandView.getMeasuredHeight()) {
                qk.m mVar = (qk.m) FilterFragment.this.getMViewBinding();
                if (mVar != null && (a0Var3 = mVar.f69799b) != null && (constraintLayout2 = a0Var3.f69692c) != null) {
                    uf.c.k(constraintLayout2);
                }
                qk.m mVar2 = (qk.m) FilterFragment.this.getMViewBinding();
                if (mVar2 != null && (a0Var2 = mVar2.f69799b) != null) {
                    FilterFragment filterFragment = FilterFragment.this;
                    ConstraintLayout llTabFilter = a0Var2.f69692c;
                    Intrinsics.g(llTabFilter, "llTabFilter");
                    uf.c.k(llTabFilter);
                    filterFragment.H1();
                }
            } else {
                qk.m mVar3 = (qk.m) FilterFragment.this.getMViewBinding();
                if (mVar3 != null && (a0Var = mVar3.f69799b) != null && (constraintLayout = a0Var.f69692c) != null) {
                    uf.c.g(constraintLayout);
                }
            }
            d(recyclerView);
        }
    }

    public static final class e implements yg.m {
        e() {
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
            List<Object> data;
            List<Object> data2;
            List<Object> data3;
            Intrinsics.h(network, "network");
            Intrinsics.h(networkCapabilities, "networkCapabilities");
            if (FilterFragment.this.isResumed()) {
                com.transsion.home.adapter.a aVar = FilterFragment.this.mAdapter;
                if (aVar != null && (data3 = aVar.getData()) != null && data3.isEmpty()) {
                    View view = FilterFragment.this.mNoNetworkView;
                    if (view != null) {
                        uf.c.g(view);
                    }
                    FilterFragment.this.loadData();
                    return;
                }
                com.transsion.home.adapter.a aVar2 = FilterFragment.this.mAdapter;
                int size = (aVar2 == null || (data2 = aVar2.getData()) == null) ? 0 : data2.size();
                if (size <= 0) {
                    FilterFragment filterFragment = FilterFragment.this;
                    filterFragment.R0(filterFragment.mChannelId, FilterFragment.this.mLatestSelectItems, true);
                    return;
                }
                com.transsion.home.adapter.a aVar3 = FilterFragment.this.mAdapter;
                MovieItem movieItem = (aVar3 == null || (data = aVar3.getData()) == null) ? null : (MovieItem) data.get(size - 1);
                if (Intrinsics.c(FilterFragment.this.mChannelId, movieItem != null ? movieItem.getChannelId() : null)) {
                    if (Intrinsics.c(FilterFragment.this.mLatestSelectItems, movieItem != null ? movieItem.getSelectItems() : null)) {
                        com.transsion.home.adapter.a aVar4 = FilterFragment.this.mAdapter;
                        if (aVar4 == null || (fVarH0 = aVar4.h0()) == null) {
                            return;
                        }
                        fVarH0.w();
                        return;
                    }
                }
                FilterFragment filterFragment2 = FilterFragment.this;
                filterFragment2.R0(filterFragment2.mChannelId, FilterFragment.this.mLatestSelectItems, true);
            }
        }
    }

    static final class f implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f43799a;

        f(Function1 function) {
            Intrinsics.h(function, "function");
            this.f43799a = function;
        }

        @Override
        public final Function a() {
            return this.f43799a;
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
            this.f43799a.invoke(obj);
        }
    }

    public static final Unit A1(NoNetworkBigView noNetworkBigView, FilterFragment filterFragment) {
        uf.c.g(noNetworkBigView);
        filterFragment.loadData();
        com.tn.lib.view.o.b(filterFragment.X0());
        return Unit.f64096a;
    }

    public static final Unit B1(FilterFragment filterFragment) {
        com.tn.lib.view.o.c(filterFragment.X0());
        return Unit.f64096a;
    }

    private final void C1(String string) {
        if (this.mNoResultView == null) {
            qk.z zVar = this.headerBinding;
            if (zVar == null) {
                Intrinsics.y("headerBinding");
                zVar = null;
            }
            this.mNoResultView = zVar.f69890g.inflate();
        }
        final View view = this.mNoResultView;
        if (view != null) {
            uf.c.k(view);
            TextView textView = (TextView) view.findViewById(R$id.tv_no_result);
            if (textView != null) {
                textView.setText(string);
            }
            View viewFindViewById = view.findViewById(R$id.tv_reset);
            if (viewFindViewById != null) {
                viewFindViewById.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view2) {
                        FilterFragment.D1(this.f43844a, view, view2);
                    }
                });
            }
        }
    }

    public static final void D1(FilterFragment filterFragment, View view, View view2) {
        filterFragment.Q0(filterFragment.mChannelId);
        filterFragment.mFilterJson = null;
        uf.c.g(view);
        filterFragment.mUpdateFilterItems = true;
        filterFragment.loadData();
    }

    private final void E1() {
        List listS0;
        if (this.mUpdateFilterItems && (listS0 = S0(this.mChannelId)) != null) {
            FilterExpandView filterExpandView = this.filterView;
            FilterExpandView filterExpandView2 = null;
            if (filterExpandView == null) {
                Intrinsics.y("filterView");
                filterExpandView = null;
            }
            if (filterExpandView.getHasInit()) {
                FilterExpandView filterExpandView3 = this.filterView;
                if (filterExpandView3 == null) {
                    Intrinsics.y("filterView");
                    filterExpandView3 = null;
                }
                FilterExpandView.updateList$default(filterExpandView3, listS0, null, 2, null);
            } else {
                FilterExpandView filterExpandView4 = this.filterView;
                if (filterExpandView4 == null) {
                    Intrinsics.y("filterView");
                    filterExpandView4 = null;
                }
                FilterExpandView.updateList$default(filterExpandView4, listS0, null, 2, null);
            }
            FilterExpandView filterExpandView5 = this.filterView;
            if (filterExpandView5 == null) {
                Intrinsics.y("filterView");
            } else {
                filterExpandView2 = filterExpandView5;
            }
            filterExpandView2.setMovieModel(this.mMovieModel);
            this.mUpdateFilterItems = false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void F1(MovieBean movieBean, boolean isRefresh) {
        t6.f fVarH0;
        qk.m mVar;
        LinearLayout root;
        t6.f fVarH1;
        com.transsion.home.adapter.a aVar;
        t6.f fVarH2;
        SwipeRefreshLayout swipeRefreshLayout;
        qk.m mVar2;
        SwipeRefreshLayout swipeRefreshLayout2;
        Integer perPage;
        if (movieBean != null) {
            Pager pager = movieBean.getPager();
            this.mPerPage = (pager == null || (perPage = pager.getPerPage()) == null) ? 10 : perPage.intValue();
            if (isRefresh) {
                qk.m mVar3 = (qk.m) getMViewBinding();
                if (mVar3 != null && (swipeRefreshLayout = mVar3.f69801d) != null && swipeRefreshLayout.isRefreshing() && (mVar2 = (qk.m) getMViewBinding()) != null && (swipeRefreshLayout2 = mVar2.f69801d) != null) {
                    swipeRefreshLayout2.setRefreshing(false);
                }
                com.transsion.home.adapter.a aVar2 = this.mAdapter;
                if (aVar2 != null) {
                    aVar2.n1(movieBean.getItems());
                }
                List<MovieItem> items = movieBean.getItems();
                if (items == null || !items.isEmpty()) {
                    c1();
                } else {
                    C1(getString(R$string.no_filter_result));
                }
            } else {
                com.transsion.home.adapter.a aVar3 = this.mAdapter;
                List<Object> data = aVar3 != null ? aVar3.getData() : null;
                ArrayList arrayList = new ArrayList();
                List<MovieItem> items2 = movieBean.getItems();
                if (items2 == null) {
                    items2 = CollectionsKt.l();
                }
                if (data == null || !(!data.isEmpty())) {
                    arrayList.addAll(items2);
                } else {
                    for (MovieItem movieItem : items2) {
                        if (!data.contains(movieItem)) {
                            arrayList.add(movieItem);
                        }
                    }
                }
                if (arrayList.isEmpty()) {
                    com.transsion.home.adapter.a aVar4 = this.mAdapter;
                    if (aVar4 == null || (fVarH1 = aVar4.h0()) == null) {
                        return;
                    }
                    t6.f.u(fVarH1, false, 1, null);
                    return;
                }
                com.transsion.home.adapter.a aVar5 = this.mAdapter;
                if (aVar5 != null) {
                    aVar5.q(arrayList);
                }
                com.transsion.home.adapter.a aVar6 = this.mAdapter;
                if (aVar6 != null && (fVarH0 = aVar6.h0()) != null && fVarH0.r() && (mVar = (qk.m) getMViewBinding()) != null && (root = mVar.getRoot()) != null) {
                    root.postDelayed(new Runnable() {
                        @Override
                        public final void run() {
                            FilterFragment.G1(this.f43835a);
                        }
                    }, 300L);
                }
            }
            Pager pager2 = movieBean.getPager();
            if (!(pager2 != null ? Intrinsics.c(pager2.getHasMore(), Boolean.FALSE) : false) || (aVar = this.mAdapter) == null || (fVarH2 = aVar.h0()) == null) {
                return;
            }
            t6.f.u(fVarH2, false, 1, null);
        }
    }

    public static final void G1(FilterFragment filterFragment) {
        t6.f fVarH0;
        com.transsion.home.adapter.a aVar = filterFragment.mAdapter;
        if (aVar == null || (fVarH0 = aVar.h0()) == null) {
            return;
        }
        fVarH0.s();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void H1() {
        qk.a0 a0Var;
        AppCompatTextView appCompatTextView;
        StringBuilder sb2 = new StringBuilder();
        HashMap map = (HashMap) this.mSubjectTypeMap.get(this.mChannelId);
        if (map != null) {
            for (Map.Entry entry : map.entrySet()) {
                if (!Intrinsics.c(entry.getValue(), getString(com.tn.lib.widget.R$string.all))) {
                    sb2.append((String) entry.getValue());
                    sb2.append(" • ");
                }
            }
        }
        boolean zC0 = StringsKt.c0(sb2, " • ", false, 2, null);
        StringBuilder sbSubstring = sb2;
        if (zC0) {
            sbSubstring = sb2.substring(0, sb2.length() - 2);
        }
        int length = sbSubstring.length();
        CharSequence string = sbSubstring;
        if (length == 0) {
            string = getString(com.tn.lib.widget.R$string.all);
        }
        qk.m mVar = (qk.m) getMViewBinding();
        if (mVar == null || (a0Var = mVar.f69799b) == null || (appCompatTextView = a0Var.f69691b) == null) {
            return;
        }
        appCompatTextView.setText(string);
        uf.c.k(appCompatTextView);
    }

    private final void I1(HashMap selectItems) {
        this.mUpdateFilterItems = false;
        FilterExpandView filterExpandView = this.filterView;
        FilterExpandView filterExpandView2 = null;
        if (filterExpandView == null) {
            Intrinsics.y("filterView");
            filterExpandView = null;
        }
        if (filterExpandView.getMovieModel() == null) {
            FilterExpandView filterExpandView3 = this.filterView;
            if (filterExpandView3 == null) {
                Intrinsics.y("filterView");
                filterExpandView3 = null;
            }
            filterExpandView3.setMovieModel(this.mMovieModel);
        }
        List<Item> listS0 = S0(this.mChannelId);
        if (listS0 != null) {
            FilterExpandView filterExpandView4 = this.filterView;
            if (filterExpandView4 == null) {
                Intrinsics.y("filterView");
            } else {
                filterExpandView2 = filterExpandView4;
            }
            filterExpandView2.updateList(listS0, selectItems);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void P0(int position) {
        View view;
        RecyclerView recyclerView;
        List<Channel> typeList;
        Channel channel;
        List<Channel> typeList2;
        FilterItems filterItems = this.mFilterItems;
        int size = (filterItems == null || (typeList2 = filterItems.getTypeList()) == null) ? -1 : typeList2.size();
        if (position < 0 || position >= size) {
            return;
        }
        FilterItems filterItems2 = this.mFilterItems;
        this.mChannelId = (filterItems2 == null || (typeList = filterItems2.getTypeList()) == null || (channel = typeList.get(position)) == null) ? null : channel.getChannelId();
        qk.m mVar = (qk.m) getMViewBinding();
        RecyclerView.m layoutManager = (mVar == null || (recyclerView = mVar.f69800c) == null) ? null : recyclerView.getLayoutManager();
        if (layoutManager instanceof OffsetGridLayoutManager) {
            OffsetGridLayoutManager offsetGridLayoutManager = (OffsetGridLayoutManager) layoutManager;
            if (offsetGridLayoutManager.U() == Y0()) {
                wf.a.C0922a.f(wf.a.f74274a, "MovieFragment", "span count is same " + offsetGridLayoutManager.U(), false, 4, null);
                return;
            }
        }
        i1();
        View view2 = this.header;
        if (view2 == null) {
            Intrinsics.y("header");
            view2 = null;
        }
        ViewParent parent = view2.getParent();
        if (parent != null && (parent instanceof ViewGroup)) {
            ViewGroup viewGroup = (ViewGroup) parent;
            View view3 = this.header;
            if (view3 == null) {
                Intrinsics.y("header");
                view3 = null;
            }
            viewGroup.removeView(view3);
        }
        com.transsion.home.adapter.a aVar = this.mAdapter;
        if (aVar != null) {
            View view4 = this.header;
            if (view4 == null) {
                Intrinsics.y("header");
                view = null;
            } else {
                view = view4;
            }
            BaseQuickAdapter.y(aVar, view, 0, 0, 6, null);
        }
        showLoadingView();
    }

    private final void Q0(String channelId) {
        HashMap map = (HashMap) this.mSubjectTypeMap.get(channelId);
        if (map != null) {
            map.clear();
        }
    }

    public final void R0(String channelId, HashMap selectedItems, boolean isRefresh) {
        MovieViewModel movieViewModel = this.mMovieModel;
        if (movieViewModel != null) {
            int i10 = this.mPage;
            this.mPage = i10 + 1;
            movieViewModel.k(i10, this.mPerPage, channelId, selectedItems, isRefresh);
        }
        this.mLatestSelectItems = selectedItems;
    }

    private final List S0(String channelId) {
        List<Channel> typeList;
        FilterItems filterItems = this.mFilterItems;
        if (filterItems == null || (typeList = filterItems.getTypeList()) == null) {
            return null;
        }
        for (Channel channel : typeList) {
            if (Intrinsics.c(channel.getChannelId(), channelId)) {
                return channel.getItems();
            }
        }
        return null;
    }

    private final List T0() {
        List<Channel> typeList;
        ArrayList arrayList = new ArrayList();
        FilterItems filterItems = this.mFilterItems;
        if (filterItems != null && (typeList = filterItems.getTypeList()) != null) {
            for (Channel channel : typeList) {
                arrayList.add(new bl.a(String.valueOf(channel.getChannelId()), String.valueOf(channel.getChannelName()), String.valueOf(channel.getSubjectType()), Intrinsics.c(channel.getChannelId(), this.mChannelId), null, 16, null));
            }
        }
        return arrayList;
    }

    private final Map U0(bl.a item, String key) {
        HashMap map = new HashMap();
        map.put("event_type", key);
        map.put(CampaignEx.JSON_KEY_TITLE, item.a());
        map.put(NativeComponentConstants.KEY_COMPONENT_TYPE, item.b());
        map.put("tabId", String.valueOf(getMTabId()));
        return map;
    }

    private final LayoutStyle V0(String channelId) {
        List<Channel> typeList;
        FilterItems filterItems = this.mFilterItems;
        if (filterItems == null || (typeList = filterItems.getTypeList()) == null) {
            return null;
        }
        for (Channel channel : typeList) {
            if (Intrinsics.c(channel.getChannelId(), channelId)) {
                return channel.getStyle();
            }
        }
        return null;
    }

    private final int W0() {
        return R$layout.home_empty_view_loading;
    }

    private final String X0() {
        Fragment parentFragment = getParentFragment();
        return parentFragment instanceof HomeFragment ? ((HomeFragment) parentFragment).J0() : "";
    }

    private final int Y0() {
        LayoutStyle layoutStyleV0 = V0(this.mChannelId);
        if (layoutStyleV0 != null) {
            int colNum = layoutStyleV0.getColNum();
            FragmentActivity activity = getActivity();
            return colNum + ((activity == null || !com.transsion.baseui.util.b.a(activity)) ? 0 : 1);
        }
        if (Intrinsics.c(this.mChannelId, "5") || Intrinsics.c(this.mChannelId, PrepareException.ERROR_NO_URL) || Intrinsics.c(this.mChannelId, "1003") || Intrinsics.c(this.mChannelId, "1004")) {
            return 2;
        }
        FragmentActivity activity2 = getActivity();
        return (activity2 == null || !com.transsion.baseui.util.b.a(activity2)) ? 3 : 4;
    }

    private final void b1() {
        View view = this.mLoadingView;
        if (view != null) {
            uf.c.g(view);
        }
    }

    private final void c1() {
        View view = this.mNoResultView;
        if (view != null) {
            uf.c.g(view);
        }
    }

    private final void d1() {
        List<Channel> typeList;
        FilterItems filterItems = this.mFilterItems;
        TabExpandView tabExpandView = null;
        FilterExpandView filterExpandView = null;
        HashMap mapE1 = e1(filterItems != null ? filterItems.getTypeList() : null);
        FilterItems filterItems2 = this.mFilterItems;
        int size = (filterItems2 == null || (typeList = filterItems2.getTypeList()) == null) ? 0 : typeList.size();
        if (size <= 0) {
            return;
        }
        if (size == 1) {
            TabExpandView tabExpandView2 = this.channelView;
            if (tabExpandView2 == null) {
                Intrinsics.y("channelView");
                tabExpandView2 = null;
            }
            uf.c.g(tabExpandView2);
        } else {
            TabExpandView tabExpandView3 = this.channelView;
            if (tabExpandView3 == null) {
                Intrinsics.y("channelView");
                tabExpandView3 = null;
            }
            uf.c.k(tabExpandView3);
            List<bl.a> listT0 = T0();
            TabExpandView tabExpandView4 = this.channelView;
            if (tabExpandView4 == null) {
                Intrinsics.y("channelView");
                tabExpandView4 = null;
            }
            tabExpandView4.updateData(listT0);
            x1(listT0);
        }
        v1(this.mChannelId, mapE1);
        I1((HashMap) this.mSubjectTypeMap.get(this.mChannelId));
        if (mapE1.isEmpty()) {
            TabExpandView tabExpandView5 = this.channelView;
            if (tabExpandView5 == null) {
                Intrinsics.y("channelView");
            } else {
                tabExpandView = tabExpandView5;
            }
            tabExpandView.expand();
            return;
        }
        TabExpandView tabExpandView6 = this.channelView;
        if (tabExpandView6 == null) {
            Intrinsics.y("channelView");
            tabExpandView6 = null;
        }
        tabExpandView6.collapse();
        FilterExpandView filterExpandView2 = this.filterView;
        if (filterExpandView2 == null) {
            Intrinsics.y("filterView");
        } else {
            filterExpandView = filterExpandView2;
        }
        filterExpandView.expandFilter(mapE1.size() - 1);
    }

    private final HashMap e1(List list) {
        Object next;
        if (list == null) {
            return new HashMap();
        }
        HashMap map = new HashMap();
        String str = this.mFilterJson;
        if (str != null && str.length() != 0) {
            try {
                JSONObject jSONObject = new JSONObject(this.mFilterJson);
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next2 = itKeys.next();
                    String string = jSONObject.getString(next2);
                    if (Intrinsics.c(next2, TmcStartParams.KEY_CHANNEL_ID)) {
                        Iterator it = list.iterator();
                        do {
                            if (!it.hasNext()) {
                                next = null;
                                break;
                            }
                            next = it.next();
                        } while (!Intrinsics.c(((Channel) next).getChannelId(), string));
                        if (((Channel) next) == null) {
                            return new HashMap();
                        }
                        this.mChannelId = string;
                    } else {
                        map.put(next2, string);
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return map;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void f1() {
        RecyclerView recyclerView;
        if (this.mExposureHelper == null) {
            rk.b bVar = new rk.b(0.6f, new b(), false, 4, null);
            qk.m mVar = (qk.m) getMViewBinding();
            if (mVar != null && (recyclerView = mVar.f69800c) != null) {
                recyclerView.addOnScrollListener(bVar);
            }
            this.mExposureHelper = bVar;
        }
    }

    private final void g1() {
        FilterExpandView filterExpandView = this.filterView;
        if (filterExpandView == null) {
            Intrinsics.y("filterView");
            filterExpandView = null;
        }
        filterExpandView.setReportEvent(new FilterFragment$initFilter$1(this));
    }

    private final void h1() {
        List<Channel> typeList;
        this.mSubjectTypeMap.clear();
        FilterItems filterItems = this.mFilterItems;
        if (filterItems == null || (typeList = filterItems.getTypeList()) == null) {
            return;
        }
        Iterator<T> it = typeList.iterator();
        while (it.hasNext()) {
            this.mSubjectTypeMap.put(((Channel) it.next()).getChannelId(), new HashMap());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void i1() {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        qk.m mVar;
        RecyclerView recyclerView3;
        RecyclerView recyclerView4;
        int iY0 = Y0();
        OffsetGridLayoutManager offsetGridLayoutManager = new OffsetGridLayoutManager(getContext(), iY0, 1, false);
        qk.m mVar2 = (qk.m) getMViewBinding();
        if (mVar2 != null && (recyclerView4 = mVar2.f69800c) != null) {
            recyclerView4.setLayoutManager(offsetGridLayoutManager);
        }
        final com.transsion.home.adapter.a aVar = new com.transsion.home.adapter.a(new ArrayList(), this.mExposureHelper, V0(this.mChannelId), iY0);
        aVar.h0().z(true);
        aVar.h0().y(true);
        aVar.h0().D(new r6.f() {
            @Override
            public final void a() {
                FilterFragment.k1(this.f43841a);
            }
        });
        aVar.R0(new c());
        aVar.w1(new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                FilterFragment.j1(this.f43842a, aVar, baseQuickAdapter, view, i10);
            }
        });
        this.mAdapter = aVar;
        qk.m mVar3 = (qk.m) getMViewBinding();
        if (mVar3 != null && (recyclerView2 = mVar3.f69800c) != null && recyclerView2.getItemDecorationCount() < 1 && (mVar = (qk.m) getMViewBinding()) != null && (recyclerView3 = mVar.f69800c) != null) {
            recyclerView3.addItemDecoration(new tf.b(com.blankj.utilcode.util.a0.a(4.0f), com.blankj.utilcode.util.a0.a(4.0f), com.blankj.utilcode.util.a0.a(16.0f), com.blankj.utilcode.util.a0.a(16.0f)));
        }
        qk.m mVar4 = (qk.m) getMViewBinding();
        if (mVar4 == null || (recyclerView = mVar4.f69800c) == null) {
            return;
        }
        recyclerView.setAdapter(this.mAdapter);
    }

    private final void initViewModel() {
        MovieViewModel movieViewModel = this.mMovieModel;
        if (movieViewModel != null) {
            movieViewModel.i().j(this, new f(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return FilterFragment.q1(this.f43838a, (BaseDto) obj);
                }
            }));
            movieViewModel.l().j(this, new f(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return FilterFragment.s1(this.f43839a, (RefreshBaseDto) obj);
                }
            }));
            movieViewModel.n().j(this, new f(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return FilterFragment.t1(this.f43840a, (bl.a) obj);
                }
            }));
        }
    }

    public static final void j1(FilterFragment filterFragment, com.transsion.home.adapter.a aVar, BaseQuickAdapter adapter, View view, int i10) {
        String str;
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "<unused var>");
        Object item = adapter.getItem(i10);
        if (item instanceof MovieItem) {
            String strZ0 = filterFragment.Z0(filterFragment.mChannelId, filterFragment.mFilterItems);
            MovieItem movieItem = (MovieItem) item;
            String subjectId = movieItem.getSubjectId();
            if (subjectId != null) {
                Integer subjectType = movieItem.getSubjectType();
                int value = SubjectType.SHORT_TV.getValue();
                if (subjectType != null && subjectType.intValue() == value) {
                    DownloadManagerApi downloadManagerApiA = DownloadManagerApi.f56187j.a();
                    Context context = aVar.getContext();
                    Intrinsics.f(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
                    downloadManagerApiA.d0((FragmentActivity) context, filterFragment.Z0(filterFragment.mChannelId, filterFragment.mFilterItems), (384 & 4) != 0 ? "" : "", movieItem.getOps(), (384 & 16) != 0 ? null : "download_subject", (384 & 32) != 0 ? false : false, (384 & 64) != 0 ? null : new Subject(subjectId, movieItem.getSubjectType(), movieItem.getTitle(), null, null, null, movieItem.getDescription(), null, null, movieItem.getGenre(), null, null, null, null, null, null, null, null, null, movieItem.getOps(), null, null, null, null, false, false, null, null, null, null, null, false, false, null, null, 0, false, false, 0L, null, null, 0L, null, 0, false, null, 0, null, null, null, null, null, 0, null, null, null, null, null, -524872, 67108863, null), (384 & 128) != 0 ? null : null, (384 & 256) != 0 ? Boolean.FALSE : null);
                    str = "ops";
                } else {
                    Navigator navigatorC = TheRouter.c("/movie/detail");
                    Integer subjectType2 = movieItem.getSubjectType();
                    str = "ops";
                    Navigator.x(navigatorC.F("subject_type", subjectType2 != null ? subjectType2.intValue() : SubjectType.MOVIE.getValue()).K("id", subjectId).K(str, movieItem.getOps()), aVar.getContext(), null, 2, null);
                }
            } else {
                str = "ops";
            }
            HashMap map = new HashMap();
            String subjectId2 = movieItem.getSubjectId();
            if (subjectId2 == null) {
                subjectId2 = "";
            }
            map.put("subject_id", subjectId2);
            map.put("sequence", String.valueOf(i10));
            String ops = movieItem.getOps();
            map.put(str, ops != null ? ops : "");
            com.transsion.baselib.helper.a.f42121a.f(strZ0, map);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void k1(final FilterFragment filterFragment) {
        RecyclerView recyclerView;
        if (yg.l.f76264a.e()) {
            filterFragment.loadMore();
            return;
        }
        fh.b.f60176a.d(com.tn.lib.widget.R$string.no_network_toast);
        qk.m mVar = (qk.m) filterFragment.getMViewBinding();
        if (mVar == null || (recyclerView = mVar.f69800c) == null) {
            return;
        }
        recyclerView.postDelayed(new Runnable() {
            @Override
            public final void run() {
                FilterFragment.l1(this.f43846a);
            }
        }, 500L);
    }

    public static final void l1(FilterFragment filterFragment) {
        t6.f fVarH0;
        com.transsion.home.adapter.a aVar = filterFragment.mAdapter;
        if (aVar == null || (fVarH0 = aVar.h0()) == null) {
            return;
        }
        fVarH0.v();
    }

    public final void loadData() {
        startLoading();
        MovieViewModel movieViewModel = this.mMovieModel;
        if (movieViewModel != null) {
            movieViewModel.h(Integer.valueOf(getMTabId()), "v2");
        }
    }

    private final void loadMore() {
        String str = this.mChannelId;
        R0(str, (HashMap) this.mSubjectTypeMap.get(str), false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void m1(View header) {
        qk.a0 a0Var;
        ConstraintLayout constraintLayout;
        RecyclerView recyclerView;
        SwipeRefreshLayout swipeRefreshLayout;
        SwipeRefreshLayout swipeRefreshLayout2;
        qk.m mVar = (qk.m) getMViewBinding();
        if (mVar != null && (swipeRefreshLayout2 = mVar.f69801d) != null) {
            swipeRefreshLayout2.setEnabled(false);
        }
        qk.m mVar2 = (qk.m) getMViewBinding();
        if (mVar2 != null && (swipeRefreshLayout = mVar2.f69801d) != null) {
            swipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.j() {
                @Override
                public final void a() {
                    FilterFragment.n1(this.f43836a);
                }
            });
        }
        qk.m mVar3 = (qk.m) getMViewBinding();
        if (mVar3 != null && (recyclerView = mVar3.f69800c) != null) {
            recyclerView.addOnScrollListener(new d(header));
        }
        qk.m mVar4 = (qk.m) getMViewBinding();
        if (mVar4 == null || (a0Var = mVar4.f69799b) == null || (constraintLayout = a0Var.f69692c) == null) {
            return;
        }
        constraintLayout.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                FilterFragment.o1(this.f43837a, view);
            }
        });
    }

    public static final void n1(FilterFragment filterFragment) {
        filterFragment.c0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void o1(FilterFragment filterFragment, View view) {
        RecyclerView recyclerView;
        qk.m mVar = (qk.m) filterFragment.getMViewBinding();
        if (mVar == null || (recyclerView = mVar.f69800c) == null) {
            return;
        }
        recyclerView.scrollToPosition(0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit p1(FilterFragment filterFragment, bl.a data) {
        RecyclerView recyclerView;
        List<Channel> typeList;
        Intrinsics.h(data, "data");
        wf.a.C0922a.f(wf.a.f74274a, "MovieFragment", "selected tab " + data.c(), false, 4, null);
        FilterItems filterItems = filterFragment.mFilterItems;
        if (filterItems != null && (typeList = filterItems.getTypeList()) != null) {
            int i10 = 0;
            for (Object obj : typeList) {
                int i11 = i10 + 1;
                if (i10 < 0) {
                    CollectionsKt.u();
                }
                if (Intrinsics.c(((Channel) obj).getChannelId(), data.c())) {
                    filterFragment.P0(i10);
                }
                i10 = i11;
            }
        }
        filterFragment.y1(data);
        rk.b bVar = filterFragment.mExposureHelper;
        if (bVar != null) {
            bVar.e();
        }
        FilterExpandView filterExpandView = null;
        w1(filterFragment, filterFragment.mChannelId, null, 2, null);
        filterFragment.I1((HashMap) filterFragment.mSubjectTypeMap.get(filterFragment.mChannelId));
        qk.m mVar = (qk.m) filterFragment.getMViewBinding();
        if (mVar != null && (recyclerView = mVar.f69800c) != null) {
            recyclerView.scrollToPosition(0);
        }
        TabExpandView tabExpandView = filterFragment.channelView;
        if (tabExpandView == null) {
            Intrinsics.y("channelView");
            tabExpandView = null;
        }
        tabExpandView.collapse();
        FilterExpandView filterExpandView2 = filterFragment.filterView;
        if (filterExpandView2 == null) {
            Intrinsics.y("filterView");
        } else {
            filterExpandView = filterExpandView2;
        }
        filterExpandView.expandFilter(0);
        if (filterFragment.Y0() > 2) {
            BiddingListManager biddingListManagerI0 = filterFragment.getV3ListManager();
            if (biddingListManagerI0 != null) {
                biddingListManagerI0.C(false);
            }
        } else {
            BiddingListManager biddingListManagerI1 = filterFragment.getV3ListManager();
            if (biddingListManagerI1 != null) {
                biddingListManagerI1.C(true);
            }
        }
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit q1(final FilterFragment filterFragment, BaseDto baseDto) {
        SwipeRefreshLayout swipeRefreshLayout;
        if (baseDto == null) {
            return Unit.f64096a;
        }
        if (!Intrinsics.c(baseDto.getCode(), "0")) {
            qk.m mVar = (qk.m) filterFragment.getMViewBinding();
            if (mVar != null && (swipeRefreshLayout = mVar.f69801d) != null) {
                swipeRefreshLayout.postDelayed(new Runnable() {
                    @Override
                    public final void run() {
                        FilterFragment.r1(this.f43829a);
                    }
                }, 200L);
            }
            return Unit.f64096a;
        }
        filterFragment.mFilterItems = (FilterItems) baseDto.getData();
        filterFragment.P0(0);
        filterFragment.h1();
        filterFragment.d1();
        com.transsion.home.adapter.a aVar = filterFragment.mAdapter;
        if (aVar != null) {
            aVar.F1(filterFragment.V0(filterFragment.mChannelId));
        }
        return Unit.f64096a;
    }

    public static final void r1(FilterFragment filterFragment) {
        filterFragment.hideLoading();
        filterFragment.z1();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit s1(FilterFragment filterFragment, RefreshBaseDto refreshBaseDto) {
        t6.f fVarH0;
        com.transsion.home.adapter.a aVar;
        t6.f fVarH1;
        List<Object> data;
        SwipeRefreshLayout swipeRefreshLayout;
        SwipeRefreshLayout swipeRefreshLayout2;
        SwipeRefreshLayout swipeRefreshLayout3;
        if (refreshBaseDto == null) {
            return Unit.f64096a;
        }
        qk.m mVar = (qk.m) filterFragment.getMViewBinding();
        if (mVar != null && (swipeRefreshLayout3 = mVar.f69801d) != null) {
            swipeRefreshLayout3.setEnabled(true);
        }
        if (Intrinsics.c(refreshBaseDto.getCode(), "0")) {
            qi.b logViewConfig = filterFragment.getLogViewConfig();
            if (logViewConfig != null) {
                logViewConfig.k(true);
            }
            MovieBean movieBean = (MovieBean) refreshBaseDto.getData();
            if (movieBean != null) {
                filterFragment.F1(movieBean, refreshBaseDto.getIsRefresh());
                filterFragment.E1();
                View view = filterFragment.mNoNetworkView;
                if (view != null) {
                    uf.c.g(view);
                }
            }
            filterFragment.hideLoading();
            return Unit.f64096a;
        }
        if (refreshBaseDto.getIsRefresh()) {
            qk.m mVar2 = (qk.m) filterFragment.getMViewBinding();
            if (mVar2 != null && (swipeRefreshLayout = mVar2.f69801d) != null && swipeRefreshLayout.isRefreshing()) {
                qk.m mVar3 = (qk.m) filterFragment.getMViewBinding();
                if (mVar3 != null && (swipeRefreshLayout2 = mVar3.f69801d) != null) {
                    swipeRefreshLayout2.setRefreshing(false);
                }
                filterFragment.n0();
            }
        } else {
            com.transsion.home.adapter.a aVar2 = filterFragment.mAdapter;
            if (aVar2 != null && (fVarH0 = aVar2.h0()) != null && fVarH0.r() && (aVar = filterFragment.mAdapter) != null && (fVarH1 = aVar.h0()) != null) {
                fVarH1.v();
            }
        }
        com.transsion.home.adapter.a aVar3 = filterFragment.mAdapter;
        if (aVar3 == null || (data = aVar3.getData()) == null || data.size() != 0) {
            if (yg.l.f76264a.e()) {
                fh.b.f60176a.d(com.transsnet.downloader.R$string.str_ad_video_error_tips);
            } else {
                fh.b.f60176a.d(com.tn.lib.widget.R$string.no_network_toast);
            }
            return Unit.f64096a;
        }
        if (yg.l.f76264a.e()) {
            filterFragment.C1(filterFragment.getString(R$string.home_no_network_content));
        } else {
            filterFragment.z1();
        }
        return Unit.f64096a;
    }

    private final void showLoadingView() {
        qk.z zVar = this.headerBinding;
        if (zVar == null) {
            Intrinsics.y("headerBinding");
            zVar = null;
        }
        ViewStub loadingStub = zVar.f69888e;
        Intrinsics.g(loadingStub, "loadingStub");
        loadingStub.setLayoutResource(W0());
        if (this.mLoadingView == null) {
            this.mLoadingView = loadingStub.inflate();
        }
        View view = this.mLoadingView;
        if (view != null) {
            uf.c.k(view);
        }
    }

    public static final Unit t1(FilterFragment filterFragment, bl.a aVar) {
        if (aVar != null) {
            filterFragment.u1(aVar.b(), aVar.c());
            com.transsion.baselib.helper.a.f42121a.h(filterFragment.Z0(filterFragment.mChannelId, filterFragment.mFilterItems), aVar.a(), (60 & 4) != 0 ? "" : null, (60 & 8) != 0 ? "" : null, (60 & 16) != 0 ? "" : null, (60 & 32) != 0 ? null : null);
            rk.b bVar = filterFragment.mExposureHelper;
            if (bVar != null) {
                bVar.e();
            }
        }
        return Unit.f64096a;
    }

    private final void u1(String filterType, String filterValue) {
        this.mPage = 1;
        HashMap map = (HashMap) this.mSubjectTypeMap.get(this.mChannelId);
        if (map != null) {
            map.put(filterType, filterValue);
        }
        R0(this.mChannelId, map, true);
    }

    private final void v1(String channelId, HashMap selectMap) {
        List<Channel> typeList;
        this.mPage = 1;
        FilterItems filterItems = this.mFilterItems;
        if (filterItems == null || (typeList = filterItems.getTypeList()) == null) {
            return;
        }
        for (Channel channel : typeList) {
            if (Intrinsics.c(channel.getChannelId(), channelId)) {
                if (selectMap == null || selectMap.isEmpty()) {
                    selectMap = (HashMap) this.mSubjectTypeMap.get(channelId);
                    List<Item> items = channel.getItems();
                    if (items != null) {
                        for (Item item : items) {
                            if ((selectMap != null ? (String) selectMap.get(item.getFilterType()) : null) == null && selectMap != null) {
                                selectMap.put(item.getFilterType(), item.getFilterValsV2().get(0).getName());
                            }
                        }
                    }
                } else {
                    this.mSubjectTypeMap.put(channelId, selectMap);
                }
                R0(channelId, selectMap, true);
                return;
            }
        }
    }

    static void w1(FilterFragment filterFragment, String str, HashMap map, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            map = null;
        }
        filterFragment.v1(str, map);
    }

    private final void x1(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            com.transsion.baselib.helper.a.f42121a.a("home_filter_page", U0((bl.a) it.next(), "browse_filter"));
        }
    }

    public final void y1(bl.a item) {
        com.transsion.baselib.helper.a.f42121a.i("home_filter_page", U0(item, "click_filter"));
    }

    private final void z1() {
        if (this.mNoNetworkView == null) {
            qk.z zVar = this.headerBinding;
            if (zVar == null) {
                Intrinsics.y("headerBinding");
                zVar = null;
            }
            this.mNoNetworkView = zVar.f69889f.inflate();
        }
        View view = this.mNoNetworkView;
        if (view != null) {
            uf.c.k(view);
            final NoNetworkBigView noNetworkBigView = (NoNetworkBigView) view.findViewById(R$id.state_view);
            if (noNetworkBigView != null) {
                NoNetworkBigView.showTitle$default(noNetworkBigView, false, null, 2, null);
                noNetworkBigView.retry(new Function0() {
                    @Override
                    public final Object invoke() {
                        return FilterFragment.A1(noNetworkBigView, this);
                    }
                });
                noNetworkBigView.goToSetting(new Function0() {
                    @Override
                    public final Object invoke() {
                        return FilterFragment.B1(this.f43834a);
                    }
                });
            }
            com.tn.lib.view.o.a(X0());
        }
    }

    public final String Z0(String channelId, FilterItems filterItems) {
        List<Channel> typeList;
        String strD0 = getMTabCode();
        if (strD0 != null && strD0.length() != 0) {
            String strD1 = getMTabCode();
            return strD1 == null ? "" : strD1;
        }
        if (filterItems != null && (typeList = filterItems.getTypeList()) != null) {
            for (Channel channel : typeList) {
                if (Intrinsics.c(channelId, channel.getChannelId())) {
                    String channelName = channel.getChannelName();
                    return channelName == null ? X0() : channelName;
                }
            }
        }
        return X0();
    }

    @Override
    public qk.m getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        qk.m mVarC = qk.m.c(inflater);
        Intrinsics.g(mVarC, "inflate(...)");
        return mVarC;
    }

    @Override
    public void c0() {
        super.c0();
        this.mPage = 1;
        String str = this.mChannelId;
        R0(str, (HashMap) this.mSubjectTypeMap.get(str), true);
        rk.b bVar = this.mExposureHelper;
        if (bVar != null) {
            bVar.e();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public RecyclerView f0() {
        qk.m mVar = (qk.m) getMViewBinding();
        if (mVar != null) {
            return mVar.f69800c;
        }
        return null;
    }

    @Override
    public String g0() {
        int iY0 = Y0();
        if (iY0 != 2) {
            return iY0 != 3 ? "HomeFragmentListLinearTemplateAd" : "HomeFragmentListGrid3TemplateAd";
        }
        return "HomeFragmentListGrid2TemplateAd";
    }

    @Override
    public void hideLoading() {
        b1();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void initView(View view, Bundle savedInstanceState) {
        qk.a0 a0Var;
        ConstraintLayout constraintLayout;
        Intrinsics.h(view, "view");
        super.initView(view, savedInstanceState);
        this.mMovieModel = (MovieViewModel) new v0(this).a(MovieViewModel.class);
        TabExpandView tabExpandView = null;
        View viewInflate = LayoutInflater.from(getContext()).inflate(R$layout.header_filter, (ViewGroup) null);
        qk.z zVarA = qk.z.a(viewInflate);
        this.headerBinding = zVarA;
        if (zVarA == null) {
            Intrinsics.y("headerBinding");
            zVarA = null;
        }
        this.channelView = zVarA.f69885b;
        qk.z zVar = this.headerBinding;
        if (zVar == null) {
            Intrinsics.y("headerBinding");
            zVar = null;
        }
        this.filterView = zVar.f69886c;
        g1();
        f1();
        i1();
        Intrinsics.e(viewInflate);
        m1(viewInflate);
        com.transsion.home.adapter.a aVar = this.mAdapter;
        if (aVar != null) {
            BaseQuickAdapter.y(aVar, viewInflate, 0, 0, 6, null);
        }
        initViewModel();
        setNetListener(new e());
        TabExpandView tabExpandView2 = this.channelView;
        if (tabExpandView2 == null) {
            Intrinsics.y("channelView");
        } else {
            tabExpandView = tabExpandView2;
        }
        tabExpandView.setOnItemClickListener(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return FilterFragment.p1(this.f43827a, (bl.a) obj);
            }
        });
        this.header = viewInflate;
        int color = androidx.core.content.b.getColor(requireContext(), R$color.module_01);
        qk.m mVar = (qk.m) getMViewBinding();
        if (mVar == null || (a0Var = mVar.f69799b) == null || (constraintLayout = a0Var.f69692c) == null) {
            return;
        }
        constraintLayout.setBackgroundColor(color);
    }

    @Override
    public void l0(int lastAdPosition, BiddingNativeManager wrapperNativeManager) {
        List<Object> data;
        Intrinsics.h(wrapperNativeManager, "wrapperNativeManager");
        if (wrapperNativeManager != null) {
            MovieItem movieItem = new MovieItem(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 67108863, null);
            movieItem.setNonAdDelegate(wrapperNativeManager);
            com.transsion.home.adapter.a aVar = this.mAdapter;
            int size = (aVar == null || (data = aVar.getData()) == null) ? 0 : data.size();
            if (lastAdPosition < 0 || lastAdPosition > size) {
                com.transsion.home.adapter.a aVar2 = this.mAdapter;
                if (aVar2 != null) {
                    aVar2.p(movieItem);
                    return;
                }
                return;
            }
            com.transsion.home.adapter.a aVar3 = this.mAdapter;
            if (aVar3 != null) {
                aVar3.n(lastAdPosition, movieItem);
            }
        }
    }

    @Override
    public void lazyLoadData() {
        loadData();
    }

    @Override
    public qi.b newLogViewConfig() {
        return new qi.b(X0(), false, 2, null);
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        this.mFilterJson = arguments != null ? arguments.getString("filter_json") : null;
    }

    @Override
    public void onDestroyView() {
        androidx.p009lifecycle.b0 b0VarM;
        androidx.p009lifecycle.b0 b0VarJ;
        this.mPage = 1;
        MovieViewModel movieViewModel = this.mMovieModel;
        if (movieViewModel != null && (b0VarJ = movieViewModel.j()) != null) {
            b0VarJ.q(null);
        }
        MovieViewModel movieViewModel2 = this.mMovieModel;
        if (movieViewModel2 != null && (b0VarM = movieViewModel2.m()) != null) {
            b0VarM.q(null);
        }
        super.onDestroyView();
    }

    @Override
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        com.transsion.baseui.activity.k.h(null, this, hidden, "tabId=" + getMTabId(), 1, null);
        if (isResumed()) {
            if (!hidden) {
                logResume();
            } else {
                logPause();
                this.startShowTime = SystemClock.elapsedRealtime();
            }
        }
    }

    @Override
    public void onPause() {
        super.onPause();
        com.transsion.baselib.helper.a.f42121a.k(Z0(this.mChannelId, this.mFilterItems), qi.h.f69682a.h(), String.valueOf(SystemClock.elapsedRealtime() - this.startShowTime));
        rk.b bVar = this.mExposureHelper;
        if (bVar != null) {
            bVar.e();
        }
        com.transsion.baseui.activity.k.l(null, this, "tabId=" + getMTabId(), 1, null);
    }

    @Override
    public void onResume() {
        com.transsion.home.adapter.a aVar;
        List<Object> data;
        super.onResume();
        this.startShowTime = SystemClock.elapsedRealtime();
        View view = this.mNoNetworkView;
        if (view != null && uf.c.i(view) && yg.l.f76264a.e() && (aVar = this.mAdapter) != null && (data = aVar.getData()) != null && data.isEmpty()) {
            View view2 = this.mNoNetworkView;
            if (view2 != null) {
                uf.c.g(view2);
            }
            loadData();
        }
        com.transsion.baseui.activity.k.p(null, this, "tabId=" + getMTabId() + " visible=" + isVisible(), 1, null);
    }

    @Override
    public void startLoading() {
        showLoadingView();
    }
}
