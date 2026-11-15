package com.transsion.shorttv.ui.fragment;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.Space;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.v0;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import androidx.viewpager2.widget.ViewPager2;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.loadmore.LoadMoreStatus;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.gyf.immersionbar.ImmersionBar;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.ad.bidding.nativead.BiddingListManager;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.shorttv.R$color;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv.R$string;
import com.transsion.shorttv.base.fragment.PageStatusFragment;
import com.transsion.shorttv.base.widget.NpaGridLayoutManager;
import com.transsion.shorttv.base.widget.SafeRecyclerView;
import com.transsion.shorttv.base.widget.StateView;
import com.transsion.shorttv.bean.BannerBean;
import com.transsion.shorttv.bean.BannerData;
import com.transsion.shorttv.bean.Image;
import com.transsion.shorttv.bean.OperateItem;
import com.transsion.shorttv.bean.OperatingResp;
import com.transsion.shorttv.bean.Pager;
import com.transsion.shorttv.bean.ShortTVRespData;
import com.transsion.shorttv.bean.ShortTvItemType;
import com.transsion.shorttv.bean.Subject;
import com.transsion.shorttv.ui.adapter.ShortTVBannerAdapter;
import com.transsion.shorttv.ui.widget.ShortTVBannerView;
import com.transsion.shorttv.ui.widget.ShortTVDiscoverHeaderView;
import com.transsion.shorttv.ui.widget.ShortTVFavoriteView;
import com.transsion.shorttv.ui.widget.ShortTvCategoryView;
import com.transsion.shorttv.ui.widget.ShortTvLoadMoreView;
import com.transsion.shorttv.viewmodel.ShortTvViewModel;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
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
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import qr.q0;

@Metadata(d1 = {"\u0000ô\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\b\u0016\u0018\u0000 \u0098\u00012\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002Û\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u0013\u0010\b\u001a\u00020\u0007*\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\tJ\u0019\u0010\f\u001a\u00020\u00052\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u000e\u001a\u00020\u00052\b\u0010\u000b\u001a\u0004\u0018\u00010\u0007H\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0016\u0010\u0013J\u000f\u0010\u0017\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0017\u0010\u0004J\u0019\u0010\u001a\u001a\u00020\u00052\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001c\u0010\u0004J\u0019\u0010\u001e\u001a\u00020\u00052\b\b\u0002\u0010\u001d\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u001e\u0010\u0013J\u000f\u0010\u001f\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001f\u0010\u0004J\u000f\u0010 \u001a\u00020\u0005H\u0002¢\u0006\u0004\b \u0010\u0004J\u000f\u0010!\u001a\u00020\u0005H\u0002¢\u0006\u0004\b!\u0010\u0004J\u001f\u0010$\u001a\u00020\u00052\u000e\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010#0\"H\u0002¢\u0006\u0004\b$\u0010%J\u001f\u0010(\u001a\u00020\u00052\u000e\u0010'\u001a\n\u0012\u0004\u0012\u00020&\u0018\u00010\"H\u0002¢\u0006\u0004\b(\u0010%J'\u0010.\u001a\u00020\u00052\u0006\u0010*\u001a\u00020)2\u0006\u0010+\u001a\u00020)2\u0006\u0010-\u001a\u00020,H\u0002¢\u0006\u0004\b.\u0010/J\u000f\u00100\u001a\u00020\u0005H\u0002¢\u0006\u0004\b0\u0010\u0004J\u0017\u00102\u001a\u00020\u00052\u0006\u00101\u001a\u00020)H\u0002¢\u0006\u0004\b2\u00103J\u001f\u00105\u001a\u00020\u00052\u0006\u00104\u001a\u00020)2\u0006\u0010\u000b\u001a\u00020#H\u0002¢\u0006\u0004\b5\u00106J\u000f\u00107\u001a\u00020\u0005H\u0002¢\u0006\u0004\b7\u0010\u0004J\u000f\u00108\u001a\u00020\u0005H\u0002¢\u0006\u0004\b8\u0010\u0004J\u001f\u0010<\u001a\u00020\u00052\u0006\u0010:\u001a\u0002092\u0006\u0010;\u001a\u00020\u0010H\u0002¢\u0006\u0004\b<\u0010=J\u000f\u0010>\u001a\u00020\u0005H\u0002¢\u0006\u0004\b>\u0010\u0004J\u0017\u0010A\u001a\u00020\u00022\u0006\u0010@\u001a\u00020?H\u0016¢\u0006\u0004\bA\u0010BJ\u000f\u0010D\u001a\u00020CH\u0016¢\u0006\u0004\bD\u0010EJ\u000f\u0010F\u001a\u00020\u0005H\u0016¢\u0006\u0004\bF\u0010\u0004J\u000f\u0010G\u001a\u00020\u0005H\u0016¢\u0006\u0004\bG\u0010\u0004J\r\u0010H\u001a\u00020\u0005¢\u0006\u0004\bH\u0010\u0004J\u000f\u0010I\u001a\u00020\u0005H\u0016¢\u0006\u0004\bI\u0010\u0004J\u000f\u0010J\u001a\u00020\u0005H\u0016¢\u0006\u0004\bJ\u0010\u0004J)\u0010O\u001a\u00020\u00052\u0006\u0010L\u001a\u00020K2\u0012\u0010N\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00050M¢\u0006\u0004\bO\u0010PJ\u000f\u0010Q\u001a\u00020\u0005H\u0016¢\u0006\u0004\bQ\u0010\u0004J\u000f\u0010R\u001a\u00020\u0005H\u0016¢\u0006\u0004\bR\u0010\u0004J/\u0010U\u001a\u00020\u00052\u000e\u0010S\u001a\n\u0012\u0004\u0012\u000209\u0018\u00010\"2\u0006\u0010\u001d\u001a\u00020\u00102\u0006\u0010T\u001a\u00020\u0010H\u0016¢\u0006\u0004\bU\u0010VJ\u000f\u0010W\u001a\u00020\u0005H\u0016¢\u0006\u0004\bW\u0010\u0004J\u0017\u0010Z\u001a\u00020Y2\u0006\u0010X\u001a\u00020\u0010H\u0016¢\u0006\u0004\bZ\u0010[J\u000f\u0010\\\u001a\u00020)H\u0016¢\u0006\u0004\b\\\u0010]J\u000f\u0010^\u001a\u00020YH\u0016¢\u0006\u0004\b^\u0010_J\u0011\u0010`\u001a\u0004\u0018\u00010YH\u0016¢\u0006\u0004\b`\u0010_J\u000f\u0010a\u001a\u00020)H\u0016¢\u0006\u0004\ba\u0010]J\u0017\u0010c\u001a\u00020\u00052\u0006\u0010b\u001a\u00020\u0010H\u0016¢\u0006\u0004\bc\u0010\u0013J\u000f\u0010d\u001a\u00020\u0005H\u0016¢\u0006\u0004\bd\u0010\u0004J\u000f\u0010e\u001a\u00020\u0005H\u0016¢\u0006\u0004\be\u0010\u0004J\u000f\u0010f\u001a\u00020CH\u0016¢\u0006\u0004\bf\u0010EJ\u000f\u0010g\u001a\u00020CH\u0016¢\u0006\u0004\bg\u0010EJ\u000f\u0010i\u001a\u00020hH\u0016¢\u0006\u0004\bi\u0010jJ\u000f\u0010k\u001a\u00020\u0005H\u0016¢\u0006\u0004\bk\u0010\u0004R\"\u0010p\u001a\n l*\u0004\u0018\u00010C0C8\u0004X\u0084\u0004¢\u0006\f\n\u0004\bm\u0010n\u001a\u0004\bo\u0010ER$\u0010x\u001a\u0004\u0018\u00010q8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\br\u0010s\u001a\u0004\bt\u0010u\"\u0004\bv\u0010wR\"\u0010}\u001a\u00020C8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\by\u0010n\u001a\u0004\bz\u0010E\"\u0004\b{\u0010|R*\u0010\u0085\u0001\u001a\u0004\u0018\u00010~8\u0004@\u0004X\u0084\u000e¢\u0006\u0017\n\u0005\b\u007f\u0010\u0080\u0001\u001a\u0006\b\u0081\u0001\u0010\u0082\u0001\"\u0006\b\u0083\u0001\u0010\u0084\u0001R!\u0010\u008b\u0001\u001a\u00030\u0086\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u0087\u0001\u0010\u0088\u0001\u001a\u0006\b\u0089\u0001\u0010\u008a\u0001R\u001c\u0010\u008f\u0001\u001a\u0005\u0018\u00010\u008c\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008d\u0001\u0010\u008e\u0001R'\u0010\u0092\u0001\u001a\u00020\u00108\u0004@\u0004X\u0084\u000e¢\u0006\u0016\n\u0006\b\u0090\u0001\u0010\u0091\u0001\u001a\u0005\b\u0092\u0001\u0010\u0015\"\u0005\b\u0093\u0001\u0010\u0013R'\u0010\u0095\u0001\u001a\u00020\u00108\u0004@\u0004X\u0084\u000e¢\u0006\u0016\n\u0006\b\u0094\u0001\u0010\u0091\u0001\u001a\u0005\b\u0095\u0001\u0010\u0015\"\u0005\b\u0096\u0001\u0010\u0013R\u0019\u0010\u0099\u0001\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0097\u0001\u0010\u0098\u0001R'\u0010\u009e\u0001\u001a\u0010\u0012\u0004\u0012\u00020C\u0012\u0005\u0012\u00030\u009b\u00010\u009a\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009c\u0001\u0010\u009d\u0001R\u001c\u0010¢\u0001\u001a\u0005\u0018\u00010\u009f\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b \u0001\u0010¡\u0001R\u001c\u0010¦\u0001\u001a\u0005\u0018\u00010£\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¤\u0001\u0010¥\u0001R\u001b\u0010©\u0001\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b§\u0001\u0010¨\u0001R!\u0010®\u0001\u001a\u00030ª\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b«\u0001\u0010\u0088\u0001\u001a\u0006\b¬\u0001\u0010\u00ad\u0001R\u0019\u0010°\u0001\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¯\u0001\u0010\u0098\u0001R\u001a\u0010´\u0001\u001a\u00030±\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b²\u0001\u0010³\u0001R\u0019\u0010¶\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bµ\u0001\u0010\u0091\u0001R\u0017\u0010¸\u0001\u001a\u00020)8\u0002X\u0082\u0004¢\u0006\b\n\u0006\b·\u0001\u0010\u0098\u0001RH\u0010Á\u0001\u001a!\u0012\u0015\u0012\u00130\u0010¢\u0006\u000e\b¹\u0001\u0012\t\bº\u0001\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\u0005\u0018\u00010M8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b»\u0001\u0010¼\u0001\u001a\u0006\b½\u0001\u0010¾\u0001\"\u0006\b¿\u0001\u0010À\u0001R\u001b\u0010Ä\u0001\u001a\u0004\u0018\u00010K8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÂ\u0001\u0010Ã\u0001R'\u0010Æ\u0001\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0005\u0018\u00010M8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÅ\u0001\u0010¼\u0001R\u0017\u0010È\u0001\u001a\u00020\u00108\u0002X\u0082D¢\u0006\b\n\u0006\bÇ\u0001\u0010\u0091\u0001R'\u0010Ì\u0001\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0006\bÉ\u0001\u0010\u0091\u0001\u001a\u0005\bÊ\u0001\u0010\u0015\"\u0005\bË\u0001\u0010\u0013R\u0019\u0010Î\u0001\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÍ\u0001\u0010\u0098\u0001R\u0018\u0010Ò\u0001\u001a\u00030Ï\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÐ\u0001\u0010Ñ\u0001R\u001c\u0010Ö\u0001\u001a\u0005\u0018\u00010Ó\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÔ\u0001\u0010Õ\u0001R\u0016\u0010Ø\u0001\u001a\u00020\u00108BX\u0082\u0004¢\u0006\u0007\u001a\u0005\b×\u0001\u0010\u0015R\u0016\u0010Ú\u0001\u001a\u00020)8BX\u0082\u0004¢\u0006\u0007\u001a\u0005\bÙ\u0001\u0010]¨\u0006Ü\u0001"}, d2 = {"Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;", "Lcom/transsion/shorttv/base/fragment/PageStatusFragment;", "Lqr/x;", "<init>", "()V", "", "Y0", "Lcom/transsion/shorttv/bean/OperatingResp;", "M0", "(Lcom/transsion/shorttv/bean/OperatingResp;)Lcom/transsion/shorttv/bean/OperatingResp;", "Lcom/transsion/shorttv/bean/ShortTVRespData;", "data", "C1", "(Lcom/transsion/shorttv/bean/ShortTVRespData;)V", "z1", "(Lcom/transsion/shorttv/bean/OperatingResp;)V", "", "isBanner", "L0", "(Z)V", "W0", "()Z", "s1", "I0", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "K0", "(Landroidx/recyclerview/widget/RecyclerView;)V", "loadMore", "isRefresh", "k1", "j1", "H0", "t1", "", "Lcom/transsion/shorttv/bean/BannerData;", "v1", "(Ljava/util/List;)V", "Lcom/transsion/shorttv/bean/OperateItem;", "ops", "A1", "", "fromPosition", "toPosition", "", "positionOffset", "n1", "(IIF)V", "l1", "dy", "o1", "(I)V", RequestParameters.POSITION, "m1", "(ILcom/transsion/shorttv/bean/BannerData;)V", "showLoading", "hideLoading", "Lcom/transsion/shorttv/bean/Subject;", "subject", "isDownloadView", "p1", "(Lcom/transsion/shorttv/bean/Subject;Z)V", "initAd", "Landroid/view/LayoutInflater;", "inflater", "V0", "(Landroid/view/LayoutInflater;)Lqr/x;", "", "getPageStateLayoutTitle", "()Ljava/lang/String;", "initViewData", "initViewModel", "u1", TmcConstants.NAVIGATION_ON_START, "initListener", "Landroidx/recyclerview/widget/RecyclerView$r;", "pageScrollListener", "Lkotlin/Function1;", "onLoaderSuccess", "B1", "(Landroidx/recyclerview/widget/RecyclerView$r;Lkotlin/jvm/functions/Function1;)V", "retryLoadData", "r1", "list", "hasMore", "E1", "(Ljava/util/List;ZZ)V", "D1", "isShowTitleLayout", "Landroid/view/View;", "getEmptyView", "(Z)Landroid/view/View;", "getScreenType", "()I", "getNoNetworkView", "()Landroid/view/View;", "getLoadingView", "T0", "hidden", "onHiddenChanged", "onResume", "onPause", "getPageName", "R0", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "onDestroy", "kotlin.jvm.PlatformType", "i", "Ljava/lang/String;", "getTAG", "TAG", "Lcom/transsion/shorttv/ui/adapter/h;", "j", "Lcom/transsion/shorttv/ui/adapter/h;", "S0", "()Lcom/transsion/shorttv/ui/adapter/h;", "setListAdapter", "(Lcom/transsion/shorttv/ui/adapter/h;)V", "listAdapter", CampaignEx.JSON_KEY_AD_K, "getNextPage", "setNextPage", "(Ljava/lang/String;)V", "nextPage", "Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;", "l", "Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;", "getViewModel", "()Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;", "setViewModel", "(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)V", "viewModel", "Lwr/a;", "m", "Lkotlin/Lazy;", "U0", "()Lwr/a;", "recReport", "Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView;", "n", "Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView;", "favoriteHeaderView", "o", "Z", "isFirstStart", "setFirstStart", TtmlNode.TAG_P, "isFirstPageChange", "setFirstPageChange", CampaignEx.JSON_KEY_AD_Q, "I", "tabId", "", "Landroid/view/ViewGroup;", CampaignEx.JSON_KEY_AD_R, "Ljava/util/Map;", "headerViewList", "Lqr/q0;", "s", "Lqr/q0;", "bannerBinding", "Lcom/transsion/shorttv/ui/adapter/ShortTVBannerAdapter;", "t", "Lcom/transsion/shorttv/ui/adapter/ShortTVBannerAdapter;", "bannerAdapter", TmcStartParams.KEY_URL_SHORT, "Lcom/transsion/shorttv/bean/OperatingResp;", "curOperatingResp", "Lcom/transsion/shorttv/utils/a;", "v", "O0", "()Lcom/transsion/shorttv/utils/a;", "bannerDotHelper", "w", "bannerCurPosition", "", "x", "J", "bannerBrowseTime", "y", "hasAddedBanner", "z", "statusBarHeight", "Lkotlin/ParameterName;", "name", "A", "Lkotlin/jvm/functions/Function1;", "getListener", "()Lkotlin/jvm/functions/Function1;", "setListener", "(Lkotlin/jvm/functions/Function1;)V", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "B", "Landroidx/recyclerview/widget/RecyclerView$r;", "subTabScrollListener", "C", "subTabLoadSuccessListener", "D", "mockServerNoBanner", "E", "getHasSlideOutBanner", "y1", "hasSlideOutBanner", "F", "mDy", "Lbr/b;", "G", "Lbr/b;", "exposureHelper", "Lcom/transsion/ad/bidding/nativead/BiddingListManager;", "H", "Lcom/transsion/ad/bidding/nativead/BiddingListManager;", "v3ListManager", "Q0", "hasTopTabs", "N0", "adjustNoBannerTopMarginPx", "a", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public class ShortTVDiscoverFragment extends PageStatusFragment<qr.x> {

    public static final Companion INSTANCE = new Companion(null);

    private Function1 listener;

    private RecyclerView.r subTabScrollListener;

    private Function1 subTabLoadSuccessListener;

    private final boolean mockServerNoBanner;

    private boolean hasSlideOutBanner;

    private int mDy;

    private BiddingListManager v3ListManager;

    private com.transsion.shorttv.ui.adapter.h listAdapter;

    private ShortTvViewModel viewModel;

    private ShortTVFavoriteView favoriteHeaderView;

    private q0 bannerBinding;

    private ShortTVBannerAdapter bannerAdapter;

    private OperatingResp curOperatingResp;

    private long bannerBrowseTime;

    private boolean hasAddedBanner;

    private final String TAG = getClass().getSimpleName();

    private String nextPage = "1";

    private final Lazy recReport = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return ShortTVDiscoverFragment.q1();
        }
    });

    private boolean isFirstStart = true;

    private boolean isFirstPageChange = true;

    private int tabId = 13;

    private Map headerViewList = new LinkedHashMap();

    private final Lazy bannerDotHelper = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return ShortTVDiscoverFragment.J0(this.f51403a);
        }
    });

    private int bannerCurPosition = -1;

    private final int statusBarHeight = com.blankj.utilcode.util.d.c();

    private final br.b exposureHelper = new br.b(0.6f, new d(), false, 4, null);

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static ShortTVDiscoverFragment b(Companion companion, boolean z10, Bundle bundle, int i10, Object obj) {
            if ((i10 & 2) != 0) {
                bundle = null;
            }
            return companion.a(z10, bundle);
        }

        public final ShortTVDiscoverFragment a(boolean z10, Bundle bundle) {
            ShortTVDiscoverFragment shortTVDiscoverFragment = new ShortTVDiscoverFragment();
            Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
            bundle2.putBoolean("arg_has_top_tabs", z10);
            shortTVDiscoverFragment.setArguments(bundle2);
            return shortTVDiscoverFragment;
        }

        private Companion() {
        }
    }

    public class b {

        public static final int[] f51267a;

        static {
            int[] iArr = new int[ShortTvItemType.values().length];
            try {
                iArr[ShortTvItemType.FILTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ShortTvItemType.APPOINTMENT_LIST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ShortTvItemType.CUSTOM_DATA.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ShortTvItemType.OP_SUBJECTS_MOVIE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ShortTvItemType.PLAY_LIST.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            f51267a = iArr;
        }
    }

    public static final class c extends RecyclerView.r {
        c() {
        }

        @Override
        public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
            Intrinsics.h(recyclerView, "recyclerView");
            if (i11 > 0) {
                ShortTVDiscoverFragment.this.K0(recyclerView);
            }
        }
    }

    public static final class d implements br.a {
        d() {
        }

        @Override
        public void a(int i10, long j10, View view) {
            Subject subjectB;
            List<Object> data;
            List<Object> data2;
            com.transsion.shorttv.ui.adapter.h listAdapter = ShortTVDiscoverFragment.this.getListAdapter();
            if (((listAdapter == null || (data2 = listAdapter.getData()) == null) ? 0 : data2.size()) <= i10) {
                return;
            }
            com.transsion.shorttv.ui.adapter.h listAdapter2 = ShortTVDiscoverFragment.this.getListAdapter();
            bs.a aVar = (listAdapter2 == null || (data = listAdapter2.getData()) == null) ? null : (bs.a) data.get(i10);
            if (aVar == null || aVar.d() != 1 || (subjectB = aVar.b()) == null) {
                return;
            }
            ShortTVDiscoverFragment shortTVDiscoverFragment = ShortTVDiscoverFragment.this;
            shortTVDiscoverFragment.U0().a(shortTVDiscoverFragment.getPageName(), subjectB, i10, Long.valueOf(j10), shortTVDiscoverFragment.R0());
        }
    }

    public static final class e extends DiffUtil.e {
        e() {
        }

        @Override
        public boolean areContentsTheSame(bs.a oldItem, bs.a newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            if (oldItem.d() != 1 || newItem.d() != 1) {
                return false;
            }
            Subject subjectB = oldItem.b();
            String subjectId = subjectB != null ? subjectB.getSubjectId() : null;
            Subject subjectB2 = newItem.b();
            return Intrinsics.c(subjectId, subjectB2 != null ? subjectB2.getSubjectId() : null);
        }

        @Override
        public boolean areItemsTheSame(bs.a oldItem, bs.a newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            if (oldItem.d() != newItem.d()) {
                return false;
            }
            if (oldItem.d() != 1) {
                return Intrinsics.c(oldItem, newItem);
            }
            Subject subjectB = oldItem.b();
            String subjectId = subjectB != null ? subjectB.getSubjectId() : null;
            Subject subjectB2 = newItem.b();
            return Intrinsics.c(subjectId, subjectB2 != null ? subjectB2.getSubjectId() : null);
        }
    }

    public static final class f extends GridLayoutManager.c {

        final SafeRecyclerView f51271f;

        f(SafeRecyclerView safeRecyclerView) {
            this.f51271f = safeRecyclerView;
        }

        @Override
        public int f(int i10) {
            bs.a aVar;
            Subject subjectB;
            com.transsion.shorttv.ui.adapter.h listAdapter = ShortTVDiscoverFragment.this.getListAdapter();
            boolean z10 = ((listAdapter == null || (aVar = (bs.a) listAdapter.f0(i10)) == null || (subjectB = aVar.b()) == null) ? null : subjectB.getNonAdDelegate()) != null;
            Context context = this.f51271f.getContext();
            Intrinsics.g(context, "getContext(...)");
            return (!hr.a.a(context) || z10) ? 2 : 1;
        }
    }

    public static final class g extends RecyclerView.l {
        g() {
        }

        @Override
        public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.x state) {
            Intrinsics.h(outRect, "outRect");
            Intrinsics.h(view, "view");
            Intrinsics.h(parent, "parent");
            Intrinsics.h(state, "state");
            super.getItemOffsets(outRect, view, parent, state);
            int childAdapterPosition = parent.getChildAdapterPosition(view);
            if (parent.getAdapter() != null) {
                if (childAdapterPosition == 0) {
                    outRect.top = com.blankj.utilcode.util.a0.a(0.0f);
                } else {
                    outRect.top = com.blankj.utilcode.util.a0.a(16.0f);
                }
            }
        }
    }

    public static final class h extends RecyclerView.r {

        private int f51272a;

        h() {
        }

        @Override
        public void onScrollStateChanged(RecyclerView recyclerView, int i10) {
            qr.x xVar;
            SafeRecyclerView safeRecyclerView;
            Intrinsics.h(recyclerView, "recyclerView");
            super.onScrollStateChanged(recyclerView, i10);
            if (i10 != 0 || (xVar = (qr.x) ShortTVDiscoverFragment.this.getMViewBinding()) == null || (safeRecyclerView = xVar.f70191b) == null || safeRecyclerView.canScrollVertically(-1)) {
                return;
            }
            ShortTVDiscoverFragment shortTVDiscoverFragment = ShortTVDiscoverFragment.this;
            shortTVDiscoverFragment.L0(shortTVDiscoverFragment.W0());
            ShortTVDiscoverFragment.this.y1(false);
            this.f51272a = 0;
        }

        @Override
        public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
            Intrinsics.h(recyclerView, "recyclerView");
            ShortTVDiscoverFragment.this.o1(i11);
        }
    }

    static final class i implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f51274a;

        i(Function1 function) {
            Intrinsics.h(function, "function");
            this.f51274a = function;
        }

        @Override
        public final Function a() {
            return this.f51274a;
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
            this.f51274a.invoke(obj);
        }
    }

    public static final class j extends ViewPager2.OnPageChangeCallback {
        j() {
        }

        @Override
        public void onPageScrolled(int i10, float f10, int i11) {
            ShortTVDiscoverFragment shortTVDiscoverFragment = ShortTVDiscoverFragment.this;
            shortTVDiscoverFragment.n1(i10, shortTVDiscoverFragment.bannerCurPosition, f10);
        }

        @Override
        public void onPageSelected(int i10) {
            if (ShortTVDiscoverFragment.this.isResumed()) {
                ShortTVDiscoverFragment.this.l1();
                ShortTVDiscoverFragment.this.bannerBrowseTime = System.currentTimeMillis();
            }
            ShortTVDiscoverFragment.this.bannerCurPosition = i10;
        }
    }

    private final void A1(List ops) {
        Context context;
        int i10;
        boolean z10;
        OperateItem operateItem;
        boolean z11;
        List<OperateItem> listI0;
        com.transsion.shorttv.ui.adapter.h hVar;
        Object next;
        if (!isAdded() || isDetached() || isRemoving() || (context = getContext()) == null) {
            return;
        }
        boolean zA = hr.a.a(context);
        wf.a.C0922a c0922a = wf.a.f74274a;
        String TAG = this.TAG;
        Intrinsics.g(TAG, "TAG");
        wf.a.C0922a.f(c0922a, TAG, "setOtherOps ---", false, 4, null);
        String str = ShortTvItemType.FILTER.getValue() + "_";
        Iterator it = CollectionsKt.R0(this.headerViewList.entrySet()).iterator();
        while (true) {
            i10 = 2;
            Unit unit = null;
            z10 = false;
            if (!it.hasNext()) {
                break;
            }
            Map.Entry entry = (Map.Entry) it.next();
            String str2 = (String) entry.getKey();
            ViewGroup viewGroup = (ViewGroup) entry.getValue();
            if (!StringsKt.W(str2, str, false, 2, null)) {
                try {
                    Result.Companion companion = Result.INSTANCE;
                    com.transsion.shorttv.ui.adapter.h hVar2 = this.listAdapter;
                    if (hVar2 != null) {
                        hVar2.J0(viewGroup);
                        unit = Unit.f64096a;
                    }
                    Result.m453constructorimpl(unit);
                } catch (Throwable th2) {
                    Result.Companion companion2 = Result.INSTANCE;
                    Result.m453constructorimpl(ResultKt.a(th2));
                }
                this.headerViewList.remove(str2);
            }
        }
        if (ops != null) {
            Iterator it2 = ops.iterator();
            do {
                if (!it2.hasNext()) {
                    next = null;
                    break;
                }
                next = it2.next();
            } while (!Intrinsics.c(((OperateItem) next).getType(), ShortTvItemType.FILTER.getValue()));
            operateItem = (OperateItem) next;
        } else {
            operateItem = null;
        }
        if (operateItem == null) {
            z11 = true;
        } else {
            if (ops != null) {
                List list = ops;
                if (!(list instanceof Collection) || !list.isEmpty()) {
                    Iterator it3 = list.iterator();
                    while (true) {
                        if (it3.hasNext()) {
                            if (Intrinsics.c(((OperateItem) it3.next()).getType(), ShortTvItemType.FILTER.getValue())) {
                                z11 = true;
                            }
                        }
                    }
                }
            }
            z11 = false;
        }
        Set setKeySet = this.headerViewList.keySet();
        if (!(setKeySet instanceof Collection) || !setKeySet.isEmpty()) {
            Iterator it4 = setKeySet.iterator();
            while (it4.hasNext()) {
                if (StringsKt.W((String) it4.next(), str, false, 2, null)) {
                    z10 = true;
                    break;
                }
            }
        }
        if (z11 && !z10) {
            String str3 = ShortTvItemType.FILTER + "_1";
            int i11 = this.hasAddedBanner ? 2 : 1;
            com.transsion.shorttv.ui.adapter.h hVar3 = this.listAdapter;
            if (hVar3 != null) {
                ShortTvCategoryView shortTvCategoryView = new ShortTvCategoryView(context);
                this.headerViewList.put(str3, shortTvCategoryView);
                BaseQuickAdapter.y(hVar3, shortTvCategoryView, i11, 0, 4, null);
            }
        }
        if (ops == null || (listI0 = CollectionsKt.I0(ops, new Comparator() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final int compare(T t10, T t11) {
                return ComparisonsKt.d(((OperateItem) t10).getPosition(), ((OperateItem) t11).getPosition());
            }
        })) == null) {
            return;
        }
        for (OperateItem operateItem2 : listI0) {
            ShortTvItemType.Companion companion3 = ShortTvItemType.INSTANCE;
            String type = operateItem2.getType();
            if (type == null) {
                type = "";
            }
            ShortTvItemType shortTvItemTypeA = companion3.a(type);
            wf.a.C0922a c0922a2 = wf.a.f74274a;
            String TAG2 = this.TAG;
            Intrinsics.g(TAG2, "TAG");
            wf.a.C0922a.f(c0922a2, TAG2, "setOtherOps --type:" + shortTvItemTypeA + "_" + operateItem2.getPosition() + "， " + operateItem2.getTitle(), false, 4, null);
            int i12 = shortTvItemTypeA == null ? -1 : b.f51267a[shortTvItemTypeA.ordinal()];
            if ((i12 == i10 || i12 == 3 || i12 == 4 || i12 == 5) && (hVar = this.listAdapter) != null) {
                hVar.p(new bs.a(0, null, null, operateItem2, this.tabId, zA, 6, null));
            }
            i10 = 2;
        }
    }

    private final void C1(ShortTVRespData data) {
        String nextPage;
        Boolean hasMore;
        t6.f fVarH0;
        com.transsion.shorttv.ui.adapter.h hVar;
        t6.f fVarH1;
        com.transsion.shorttv.ui.adapter.h hVar2;
        List<Object> data2;
        if (data == null) {
            if (this.bannerBinding == null && this.headerViewList.isEmpty() && (hVar2 = this.listAdapter) != null && (data2 = hVar2.getData()) != null && data2.isEmpty()) {
                D1();
                return;
            }
            com.transsion.shorttv.ui.adapter.h hVar3 = this.listAdapter;
            if (hVar3 == null || (fVarH0 = hVar3.h0()) == null || !fVarH0.r() || (hVar = this.listAdapter) == null || (fVarH1 = hVar.h0()) == null) {
                return;
            }
            fVarH1.v();
            return;
        }
        Pager pager = data.getPager();
        if (pager == null || (nextPage = pager.getNextPage()) == null) {
            nextPage = "1";
        }
        this.nextPage = nextPage;
        wf.a.C0922a c0922a = wf.a.f74274a;
        String TAG = this.TAG;
        Intrinsics.g(TAG, "TAG");
        String str = this.nextPage;
        List<Subject> items = data.getItems();
        Integer numValueOf = items != null ? Integer.valueOf(items.size()) : null;
        Pager pager2 = data.getPager();
        wf.a.C0922a.f(c0922a, TAG, "updateTreadingList,nextPage :" + str + ", size:" + numValueOf + ", hasMore:" + (pager2 != null ? pager2.getHasMore() : null), false, 4, null);
        List<Subject> items2 = data.getItems();
        boolean zIsRefresh = data.isRefresh();
        Pager pager3 = data.getPager();
        E1(items2, zIsRefresh, (pager3 == null || (hasMore = pager3.getHasMore()) == null) ? false : hasMore.booleanValue());
    }

    public static final void F1(ShortTVDiscoverFragment shortTVDiscoverFragment) {
        com.transsion.shorttv.ui.adapter.h hVar = shortTVDiscoverFragment.listAdapter;
        if (hVar != null) {
            hVar.notifyDataSetChanged();
        }
    }

    public static final void G1(ShortTVDiscoverFragment shortTVDiscoverFragment) {
        com.transsion.shorttv.ui.adapter.h hVar = shortTVDiscoverFragment.listAdapter;
        if (hVar != null) {
            hVar.notifyDataSetChanged();
        }
    }

    private final void H0() {
        Context context;
        if (this.favoriteHeaderView == null && (context = getContext()) != null) {
            ShortTVFavoriteView shortTVFavoriteView = new ShortTVFavoriteView(this, "collection", U0(), context);
            this.favoriteHeaderView = shortTVFavoriteView;
            if (this.hasAddedBanner) {
                com.transsion.shorttv.ui.adapter.h hVar = this.listAdapter;
                if (hVar != null) {
                    Intrinsics.e(shortTVFavoriteView);
                    BaseQuickAdapter.y(hVar, shortTVFavoriteView, 2, 0, 4, null);
                    return;
                }
                return;
            }
            com.transsion.shorttv.ui.adapter.h hVar2 = this.listAdapter;
            if (hVar2 != null) {
                Intrinsics.e(shortTVFavoriteView);
                BaseQuickAdapter.y(hVar2, shortTVFavoriteView, 1, 0, 4, null);
            }
        }
    }

    private final void I0() {
        SafeRecyclerView safeRecyclerView;
        qr.x xVar = (qr.x) getMViewBinding();
        if (xVar == null || (safeRecyclerView = xVar.f70191b) == null) {
            return;
        }
        safeRecyclerView.addOnScrollListener(new c());
    }

    public static final com.transsion.shorttv.utils.a J0(ShortTVDiscoverFragment shortTVDiscoverFragment) {
        return new com.transsion.shorttv.utils.a(shortTVDiscoverFragment.getPageName());
    }

    public final void K0(RecyclerView recyclerView) {
        com.transsion.shorttv.ui.adapter.h hVar;
        LinearLayout linearLayoutZ;
        RecyclerView.m layoutManager = recyclerView != null ? recyclerView.getLayoutManager() : null;
        if (!(layoutManager instanceof LinearLayoutManager) || ((LinearLayoutManager) layoutManager).findFirstVisibleItemPosition() != 0 || (hVar = this.listAdapter) == null || (linearLayoutZ = hVar.Z()) == null) {
            return;
        }
        int childCount = linearLayoutZ.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = linearLayoutZ.getChildAt(i10);
            if ((childAt instanceof ShortTVDiscoverHeaderView) && childAt.getVisibility() == 0) {
                ((ShortTVDiscoverHeaderView) childAt).clearExposureCache();
            }
        }
    }

    public final void L0(boolean isBanner) {
        int color;
        qr.x xVar;
        View view;
        if (isBanner && W0()) {
            ImmersionBar immersionBarWith = ImmersionBar.with(this);
            color = 0;
            immersionBarWith.statusBarDarkFont(false);
            immersionBarWith.init();
        } else {
            color = androidx.core.content.b.getColor(requireContext(), R$color.short_tv_bg_02);
            ImmersionBar immersionBarWith2 = ImmersionBar.with(this);
            immersionBarWith2.statusBarDarkFont(!hr.g.f61486a.a());
            immersionBarWith2.init();
        }
        if (pq.c.f69249a.b().d().a() || (xVar = (qr.x) getMViewBinding()) == null || (view = xVar.f70196g) == null) {
            return;
        }
        view.setBackgroundColor(color);
    }

    private final OperatingResp M0(OperatingResp operatingResp) {
        OperateItem operateItem;
        BannerBean banner;
        List<BannerData> banners;
        List<OperateItem> items = operatingResp.getItems();
        if (items == null || (operateItem = (OperateItem) CollectionsKt.l0(items, 0)) == null || (banner = operateItem.getBanner()) == null || (banners = banner.getBanners()) == null || banners.isEmpty()) {
            return operatingResp;
        }
        OperateItem operateItemCopy = operateItem.copy((2097135 & 1) != 0 ? operateItem.title : null, (2097135 & 2) != 0 ? operateItem.type : null, (2097135 & 4) != 0 ? operateItem.position : null, (2097135 & 8) != 0 ? operateItem.deepLink : null, (2097135 & 16) != 0 ? operateItem.banner : BannerBean.copy$default(banner, null, null, null, false, null, 29, null), (2097135 & 32) != 0 ? operateItem.filters : null, (2097135 & 64) != 0 ? operateItem.subjects : null, (2097135 & 128) != 0 ? operateItem.customData : null, (2097135 & 256) != 0 ? operateItem.playListData : null, (2097135 & 512) != 0 ? operateItem.feedsSubject : null, (2097135 & 1024) != 0 ? operateItem.opId : null, (2097135 & 2048) != 0 ? operateItem.page : null, (2097135 & 4096) != 0 ? operateItem.rankings : null, (2097135 & 8192) != 0 ? operateItem.rankingData : null, (2097135 & 16384) != 0 ? operateItem.rankingListData : null, (2097135 & 32768) != 0 ? operateItem.liveList : null, (2097135 & 65536) != 0 ? operateItem.groups : null, (2097135 & 131072) != 0 ? operateItem.nonAdDelegate : null, (2097135 & 262144) != 0 ? operateItem.pageName : null, (2097135 & 524288) != 0 ? operateItem.md5 : null, (2097135 & 1048576) != 0 ? operateItem.ops : null);
        List listU0 = CollectionsKt.U0(items);
        listU0.set(0, operateItemCopy);
        OperatingResp operatingRespCopy$default = OperatingResp.copy$default(operatingResp, listU0, null, null, null, 14, null);
        operatingRespCopy$default.setCache(operatingResp.getIsCache());
        return operatingRespCopy$default;
    }

    private final int N0() {
        return cr.a.a(pq.c.f69249a.b().d().d());
    }

    private final com.transsion.shorttv.utils.a O0() {
        return (com.transsion.shorttv.utils.a) this.bannerDotHelper.getValue();
    }

    public static final Unit P0(ShortTVDiscoverFragment shortTVDiscoverFragment) {
        String strF;
        shortTVDiscoverFragment.retryLoadData();
        qi.b logViewConfig = shortTVDiscoverFragment.getLogViewConfig();
        if (logViewConfig != null && (strF = logViewConfig.f()) != null) {
            com.transsion.shorttv.base.widget.k.b(strF);
        }
        return Unit.f64096a;
    }

    private final boolean Q0() {
        Bundle arguments = getArguments();
        return arguments != null && arguments.getBoolean("arg_has_top_tabs", true);
    }

    public final wr.a U0() {
        return (wr.a) this.recReport.getValue();
    }

    public final boolean W0() {
        ShortTVBannerAdapter shortTVBannerAdapter = this.bannerAdapter;
        if (shortTVBannerAdapter == null) {
            return false;
        }
        Intrinsics.e(shortTVBannerAdapter);
        return shortTVBannerAdapter.getData().size() > 0;
    }

    public static final Unit X0(ShortTVDiscoverFragment shortTVDiscoverFragment, int i10, BiddingNativeManager wrapperNativeManager) {
        List<Object> data;
        Intrinsics.h(wrapperNativeManager, "wrapperNativeManager");
        if (wrapperNativeManager != null) {
            Subject subject = new Subject(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, false, null, null, null, null, null, false, false, null, null, 0, false, false, 0L, null, null, 0L, null, 0, false, null, 0, null, null, null, null, null, false, null, null, 0, 0, null, 0, null, 0, null, -1, 1073741823, null);
            subject.setNonAdDelegate(wrapperNativeManager);
            com.transsion.shorttv.ui.adapter.h hVar = shortTVDiscoverFragment.listAdapter;
            int size = (hVar == null || (data = hVar.getData()) == null) ? 0 : data.size();
            Context context = shortTVDiscoverFragment.getContext();
            int i11 = (context == null || !hr.a.a(context) || i10 % 2 == 0) ? i10 : i10 - 1;
            if (i11 <= size) {
                com.transsion.shorttv.ui.adapter.h hVar2 = shortTVDiscoverFragment.listAdapter;
                if (hVar2 != null) {
                    hVar2.n(i11, new bs.a(1, null, subject, null, 0, false, 58, null));
                }
            } else {
                com.transsion.shorttv.ui.adapter.h hVar3 = shortTVDiscoverFragment.listAdapter;
                if (hVar3 != null) {
                    hVar3.n(size, new bs.a(1, null, subject, null, 0, false, 58, null));
                }
            }
        }
        return Unit.f64096a;
    }

    private final void Y0() {
        final SwipeRefreshLayout swipeRefreshLayout;
        SafeRecyclerView safeRecyclerView;
        final boolean z10 = true;
        com.transsion.shorttv.ui.adapter.h hVar = new com.transsion.shorttv.ui.adapter.h(getPageName(), true);
        hVar.h0().C(new ShortTvLoadMoreView());
        hVar.h0().z(true);
        hVar.h0().y(true);
        hVar.h0().E(3);
        hVar.h0().D(new r6.f() {
            @Override
            public final void a() {
                ShortTVDiscoverFragment.a1(this.f51409a);
            }
        });
        hVar.R0(new e());
        hVar.w1(new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                ShortTVDiscoverFragment.b1(this.f51411a, baseQuickAdapter, view, i10);
            }
        });
        hVar.l(R$id.btn_download);
        hVar.s1(new r6.b() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                ShortTVDiscoverFragment.c1(this.f51413a, z10, baseQuickAdapter, view, i10);
            }
        });
        this.listAdapter = hVar;
        qr.x xVar = (qr.x) getMViewBinding();
        if (xVar != null && (safeRecyclerView = xVar.f70191b) != null) {
            NpaGridLayoutManager npaGridLayoutManager = new NpaGridLayoutManager(safeRecyclerView.getContext(), 2);
            npaGridLayoutManager.d0(new f(safeRecyclerView));
            safeRecyclerView.setLayoutManager(npaGridLayoutManager);
            safeRecyclerView.setAdapter(this.listAdapter);
            safeRecyclerView.setItemAnimator(null);
            safeRecyclerView.addOnScrollListener(this.exposureHelper);
            I0();
            safeRecyclerView.addItemDecoration(new g());
        }
        qr.x xVar2 = (qr.x) getMViewBinding();
        if (xVar2 == null || (swipeRefreshLayout = xVar2.f70192c) == null) {
            return;
        }
        int iA = com.blankj.utilcode.util.a0.a(30.0f);
        int i10 = this.statusBarHeight + iA;
        swipeRefreshLayout.setProgressViewOffset(false, i10, (iA * 2) + i10);
        swipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.j() {
            @Override
            public final void a() {
                ShortTVDiscoverFragment.Z0(swipeRefreshLayout, this);
            }
        });
    }

    public static final void Z0(SwipeRefreshLayout swipeRefreshLayout, ShortTVDiscoverFragment shortTVDiscoverFragment) {
        if (yg.l.f76264a.e()) {
            shortTVDiscoverFragment.r1();
        } else {
            jr.b.f63248a.d(R$string.short_tv_no_network_toast);
            swipeRefreshLayout.setRefreshing(false);
        }
    }

    public static final void a1(ShortTVDiscoverFragment shortTVDiscoverFragment) {
        shortTVDiscoverFragment.loadMore();
    }

    public static final void b1(ShortTVDiscoverFragment shortTVDiscoverFragment, BaseQuickAdapter baseQuickAdapter, View view, int i10) {
        Subject subjectB;
        List<Object> data;
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        com.transsion.shorttv.ui.adapter.h hVar = shortTVDiscoverFragment.listAdapter;
        bs.a aVar = (hVar == null || (data = hVar.getData()) == null) ? null : (bs.a) CollectionsKt.l0(data, i10);
        if (aVar == null || (subjectB = aVar.b()) == null) {
            return;
        }
        shortTVDiscoverFragment.U0().c(shortTVDiscoverFragment.getPageName(), subjectB, i10, shortTVDiscoverFragment.R0());
        shortTVDiscoverFragment.p1(subjectB, false);
    }

    public static final void c1(ShortTVDiscoverFragment shortTVDiscoverFragment, boolean z10, BaseQuickAdapter baseQuickAdapter, View view, int i10) {
        Subject subjectB;
        List<Object> data;
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        com.transsion.shorttv.ui.adapter.h hVar = shortTVDiscoverFragment.listAdapter;
        bs.a aVar = (hVar == null || (data = hVar.getData()) == null) ? null : (bs.a) CollectionsKt.l0(data, i10);
        if (aVar == null || (subjectB = aVar.b()) == null) {
            return;
        }
        shortTVDiscoverFragment.U0().c(shortTVDiscoverFragment.getPageName(), subjectB, i10, shortTVDiscoverFragment.R0());
        shortTVDiscoverFragment.p1(subjectB, z10);
    }

    public static final void d1(ShortTVDiscoverFragment shortTVDiscoverFragment) {
        SafeRecyclerView safeRecyclerView;
        if (shortTVDiscoverFragment.isAdded()) {
            qr.x xVar = (qr.x) shortTVDiscoverFragment.getMViewBinding();
            int iComputeVerticalScrollOffset = (xVar == null || (safeRecyclerView = xVar.f70191b) == null) ? 0 : safeRecyclerView.computeVerticalScrollOffset();
            shortTVDiscoverFragment.mDy = 0;
            shortTVDiscoverFragment.o1(iComputeVerticalScrollOffset);
        }
    }

    public static final Unit e1(ShortTVDiscoverFragment shortTVDiscoverFragment, OperatingResp operatingResp) {
        shortTVDiscoverFragment.hideLoading();
        if (shortTVDiscoverFragment.mockServerNoBanner) {
            operatingResp = operatingResp != null ? shortTVDiscoverFragment.M0(operatingResp) : null;
        }
        shortTVDiscoverFragment.z1(operatingResp);
        if (operatingResp == null || !operatingResp.getIsCache()) {
            shortTVDiscoverFragment.k1(true);
        }
        return Unit.f64096a;
    }

    public static final Unit f1(ShortTVDiscoverFragment shortTVDiscoverFragment, ShortTVRespData shortTVRespData) {
        shortTVDiscoverFragment.hideLoading();
        shortTVDiscoverFragment.C1(shortTVRespData);
        return Unit.f64096a;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x002e  */
    public static final Unit g1(ShortTVDiscoverFragment shortTVDiscoverFragment, ShortTVRespData shortTVRespData) {
        if ((shortTVRespData != null ? shortTVRespData.getItems() : null) != null) {
            List<Subject> items = shortTVRespData.getItems();
            Intrinsics.e(items);
            if (items.isEmpty()) {
                wf.a.C0922a c0922a = wf.a.f74274a;
                String TAG = shortTVDiscoverFragment.TAG;
                Intrinsics.g(TAG, "TAG");
                wf.a.C0922a.z(c0922a, TAG, "addHeaderView, has no Favorite", false, 4, null);
                shortTVDiscoverFragment.t1();
            } else {
                wf.a.C0922a c0922a2 = wf.a.f74274a;
                String TAG2 = shortTVDiscoverFragment.TAG;
                Intrinsics.g(TAG2, "TAG");
                wf.a.C0922a.f(c0922a2, TAG2, "addHeaderView, has Favorite", false, 4, null);
                shortTVDiscoverFragment.H0();
            }
        } else {
            wf.a.C0922a c0922a3 = wf.a.f74274a;
            String TAG3 = shortTVDiscoverFragment.TAG;
            Intrinsics.g(TAG3, "TAG");
            wf.a.C0922a.z(c0922a3, TAG3, "addHeaderView, has no Favorite", false, 4, null);
            shortTVDiscoverFragment.t1();
        }
        return Unit.f64096a;
    }

    public static final void h1(ShortTVDiscoverFragment shortTVDiscoverFragment) {
        t6.f fVarH0;
        com.transsion.shorttv.ui.adapter.h hVar = shortTVDiscoverFragment.listAdapter;
        if (((hVar == null || (fVarH0 = hVar.h0()) == null) ? null : fVarH0.i()) == LoadMoreStatus.End) {
            return;
        }
        wf.a.C0922a c0922a = wf.a.f74274a;
        String TAG = shortTVDiscoverFragment.TAG;
        Intrinsics.g(TAG, "TAG");
        wf.a.C0922a.f(c0922a, TAG, "load more， loadData", false, 4, null);
        shortTVDiscoverFragment.k1(false);
    }

    private final void hideLoading() {
        showContentView();
    }

    public static final void i1(ShortTVDiscoverFragment shortTVDiscoverFragment) {
        t6.f fVarH0;
        com.transsion.shorttv.ui.adapter.h hVar = shortTVDiscoverFragment.listAdapter;
        if (hVar == null || (fVarH0 = hVar.h0()) == null) {
            return;
        }
        fVarH0.v();
    }

    private final void initAd() {
        BiddingListManager biddingListManager = new BiddingListManager();
        qr.x xVar = (qr.x) getMViewBinding();
        biddingListManager.F(xVar != null ? xVar.f70191b : null);
        biddingListManager.A(androidx.p009lifecycle.v.a(this));
        biddingListManager.G("ShortTvDiscoverMostTrendingScene");
        biddingListManager.z(new Function2() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return ShortTVDiscoverFragment.X0(this.f51407a, ((Integer) obj).intValue(), (BiddingNativeManager) obj2);
            }
        });
        this.v3ListManager = biddingListManager;
    }

    private final void j1() {
        ShortTvViewModel shortTvViewModel = this.viewModel;
        if (shortTvViewModel != null) {
            shortTvViewModel.h0(this.tabId);
        }
    }

    private final void k1(boolean isRefresh) {
        ShortTvViewModel shortTvViewModel = this.viewModel;
        if (shortTvViewModel != null) {
            shortTvViewModel.r0(this.nextPage, 8, isRefresh);
        }
    }

    /* JADX WARN: Code duplicated, block: B:30:0x006f A[PHI: r3
      0x006f: PHI (r3v5 java.lang.String) = (r3v4 java.lang.String), (r3v8 java.lang.String) binds: [B:23:0x0059, B:28:0x0067] A[DONT_GENERATE, DONT_INLINE]] */
    public final void l1() {
        List data;
        BannerData bannerData;
        String value;
        List data2;
        int i10 = this.bannerCurPosition;
        if (i10 >= 0) {
            ShortTVBannerAdapter shortTVBannerAdapter = this.bannerAdapter;
            if (i10 >= ((shortTVBannerAdapter == null || (data2 = shortTVBannerAdapter.getData()) == null) ? 0 : data2.size())) {
                return;
            }
            long jCurrentTimeMillis = this.bannerBrowseTime > 0 ? System.currentTimeMillis() - this.bannerBrowseTime : 0L;
            ShortTVBannerAdapter shortTVBannerAdapter2 = this.bannerAdapter;
            if (shortTVBannerAdapter2 == null || (data = shortTVBannerAdapter2.getData()) == null || (bannerData = (BannerData) data.get(this.bannerCurPosition)) == null) {
                return;
            }
            com.transsion.shorttv.utils.a aVarO0 = O0();
            String pageName = getPageName();
            ShortTvItemType shortTvItemType = ShortTvItemType.BANNER;
            String value2 = shortTvItemType.getValue();
            String subjectId = bannerData.getSubjectId();
            String ops = bannerData.getOps();
            if (ops != null) {
                value = ops;
            } else {
                Subject subject = bannerData.getSubject();
                ops = subject != null ? subject.getOps() : null;
                if (ops == null) {
                    value = shortTvItemType.getValue();
                } else {
                    value = ops;
                }
            }
            Boolean hasResource = bannerData.getHasResource();
            String deepLink = bannerData.getDeepLink();
            Integer numValueOf = Integer.valueOf(this.bannerCurPosition);
            Image image = bannerData.getImage();
            aVarO0.a((4112 & 1) != 0 ? null : pageName, (4112 & 2) != 0 ? null : "opt", (4112 & 4) != 0 ? null : value2, (4112 & 8) != 0 ? null : subjectId, (4112 & 16) != 0 ? null : null, (4112 & 32) != 0 ? null : value, (4112 & 64) != 0 ? null : hasResource, (4112 & 128) != 0 ? null : deepLink, (4112 & 256) != 0 ? null : numValueOf, (4112 & 512) != 0 ? null : image != null ? image.getUrl() : null, (4112 & 1024) != 0 ? 0L : jCurrentTimeMillis, (4112 & 2048) != 0 ? Boolean.FALSE : Boolean.valueOf(bannerData.getBuiltIn()), (4112 & 4096) == 0 ? null : null);
        }
    }

    private final void loadMore() {
        SafeRecyclerView safeRecyclerView;
        SafeRecyclerView safeRecyclerView2;
        t6.f fVarH0;
        wf.a.C0922a c0922a = wf.a.f74274a;
        String TAG = this.TAG;
        Intrinsics.g(TAG, "TAG");
        wf.a.C0922a.f(c0922a, TAG, "loadMore", false, 4, null);
        if (!yg.l.f76264a.e()) {
            jr.b.f63248a.d(R$string.short_tv_no_network_toast);
            qr.x xVar = (qr.x) getMViewBinding();
            if (xVar == null || (safeRecyclerView = xVar.f70191b) == null) {
                return;
            }
            safeRecyclerView.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    ShortTVDiscoverFragment.i1(this.f51391a);
                }
            }, 500L);
            return;
        }
        com.transsion.shorttv.ui.adapter.h hVar = this.listAdapter;
        if (hVar != null && (fVarH0 = hVar.h0()) != null) {
            fVarH0.w();
        }
        qr.x xVar2 = (qr.x) getMViewBinding();
        if (xVar2 == null || (safeRecyclerView2 = xVar2.f70191b) == null) {
            return;
        }
        safeRecyclerView2.postDelayed(new Runnable() {
            @Override
            public final void run() {
                ShortTVDiscoverFragment.h1(this.f51317a);
            }
        }, 300L);
    }

    private final void m1(int position, BannerData data) {
        String ops = data.getOps();
        if (ops == null) {
            Subject subject = data.getSubject();
            ops = subject != null ? subject.getOps() : null;
            if (ops == null) {
                ops = ShortTvItemType.BANNER.getValue();
            }
        }
        com.transsion.shorttv.utils.a aVarO0 = O0();
        String pageName = getPageName();
        String value = ShortTvItemType.BANNER.getValue();
        String subjectId = data.getSubjectId();
        Boolean hasResource = data.getHasResource();
        String deepLink = data.getDeepLink();
        Integer numValueOf = Integer.valueOf(position);
        Image image = data.getImage();
        aVarO0.c(pageName, "opt", value, (4240 & 8) != 0 ? null : subjectId, (4240 & 16) != 0 ? null : null, (4240 & 32) != 0 ? null : ops, (4240 & 64) != 0 ? null : hasResource, (4240 & 128) != 0 ? null : null, (4240 & 256) != 0 ? null : deepLink, (4240 & 512) != 0 ? null : numValueOf, (4240 & 1024) != 0 ? null : image != null ? image.getUrl() : null, (4240 & 2048) != 0 ? Boolean.FALSE : Boolean.valueOf(data.getBuiltIn()), (4240 & 4096) != 0 ? null : null);
        String deepLink2 = data.getDeepLink();
        if (deepLink2 != null) {
            Uri uriA = dr.a.f59060a.a(Uri.parse(deepLink2 + "&ops=" + ops));
            if (uriA != null) {
                hr.c.j(uriA);
            }
        }
    }

    public final void n1(int fromPosition, int toPosition, float positionOffset) {
        Image image;
        String averageHueDark;
        Image image2;
        String averageHueDark2;
        View view;
        View view2;
        SwipeRefreshLayout swipeRefreshLayout;
        View view3;
        View view4;
        View view5;
        List data;
        List data2;
        ShortTVBannerAdapter shortTVBannerAdapter = this.bannerAdapter;
        BannerData bannerData = null;
        BannerData bannerData2 = (shortTVBannerAdapter == null || (data2 = shortTVBannerAdapter.getData()) == null) ? null : (BannerData) data2.get(fromPosition);
        ShortTVBannerAdapter shortTVBannerAdapter2 = this.bannerAdapter;
        if (shortTVBannerAdapter2 != null && (data = shortTVBannerAdapter2.getData()) != null) {
            bannerData = (BannerData) data.get(toPosition);
        }
        if (bannerData2 == null || (image = bannerData2.getImage()) == null || (averageHueDark = image.getAverageHueDark()) == null || bannerData == null || (image2 = bannerData.getImage()) == null || (averageHueDark2 = image2.getAverageHueDark()) == null) {
            return;
        }
        GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{fromPosition == toPosition ? Color.parseColor(averageHueDark) : wy.a.a(positionOffset, Color.parseColor(averageHueDark), Color.parseColor(averageHueDark2)), 0});
        if (!pq.c.f69249a.b().d().a()) {
            q0 q0Var = this.bannerBinding;
            if (q0Var == null || (view5 = q0Var.f70144d) == null) {
                return;
            }
            view5.setBackground(gradientDrawable);
            return;
        }
        qr.x xVar = (qr.x) getMViewBinding();
        if (xVar != null && (view3 = xVar.f70193d) != null) {
            ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
            if (layoutParams == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
            }
            q0 q0Var2 = this.bannerBinding;
            layoutParams.height = (q0Var2 == null || (view4 = q0Var2.f70144d) == null) ? 1 : view4.getHeight();
            view3.setLayoutParams(layoutParams);
            view3.setBackground(gradientDrawable);
        }
        qr.x xVar2 = (qr.x) getMViewBinding();
        if (xVar2 != null && (swipeRefreshLayout = xVar2.f70192c) != null) {
            ViewGroup.LayoutParams layoutParams2 = swipeRefreshLayout.getLayoutParams();
            if (layoutParams2 == null) {
                throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            }
            ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams2;
            bVar.setMargins(0, cr.a.a(74), 0, 0);
            swipeRefreshLayout.setLayoutParams(bVar);
        }
        q0 q0Var3 = this.bannerBinding;
        if (q0Var3 != null && (view2 = q0Var3.f70146f) != null) {
            ViewGroup.LayoutParams layoutParams3 = view2.getLayoutParams();
            if (layoutParams3 == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
            }
            layoutParams3.height = 0;
            view2.setLayoutParams(layoutParams3);
        }
        q0 q0Var4 = this.bannerBinding;
        if (q0Var4 == null || (view = q0Var4.f70145e) == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams4 = view.getLayoutParams();
        if (layoutParams4 == null) {
            throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
        }
        layoutParams4.height = cr.a.a(4);
        view.setLayoutParams(layoutParams4);
    }

    public final void o1(int dy2) {
        if (dy2 == 0) {
            this.mDy = 0;
        } else {
            this.mDy += dy2;
        }
        if (Math.abs(this.mDy) > ((com.blankj.utilcode.util.y.e() * 9) / 16) / 2) {
            if (this.hasSlideOutBanner) {
                return;
            }
            L0(false);
            this.hasSlideOutBanner = true;
            return;
        }
        if (this.hasSlideOutBanner) {
            L0(true);
            this.hasSlideOutBanner = false;
        }
    }

    private final void p1(Subject subject, boolean isDownloadView) {
        Context context = getContext();
        if (context != null) {
            rr.a.f71324a.a((FragmentActivity) context, getPageName(), subject.getOps(), (64 & 8) != 0 ? null : "download_subject", (64 & 16) != 0 ? false : isDownloadView, (64 & 32) != 0 ? null : subject, (64 & 64) != 0 ? null : null, (64 & 128) != 0 ? Boolean.FALSE : null);
        }
    }

    public static final wr.a q1() {
        return new wr.a();
    }

    private final void s1(boolean isBanner) {
        Space space;
        View view;
        Space space2;
        View view2;
        Space space3;
        View view3;
        if (isBanner) {
            qr.x xVar = (qr.x) getMViewBinding();
            if (xVar != null && (view3 = xVar.f70195f) != null) {
                ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
                if (layoutParams == null) {
                    throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
                }
                ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
                ((ViewGroup.MarginLayoutParams) bVar).height = this.subTabScrollListener != null ? 0 : this.statusBarHeight;
                view3.setLayoutParams(bVar);
            }
            qr.x xVar2 = (qr.x) getMViewBinding();
            if (xVar2 == null || (space3 = xVar2.f70194e) == null) {
                return;
            }
            ViewGroup.LayoutParams layoutParams2 = space3.getLayoutParams();
            if (layoutParams2 == null) {
                throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            }
            ConstraintLayout.b bVar2 = (ConstraintLayout.b) layoutParams2;
            ((ViewGroup.MarginLayoutParams) bVar2).height = this.subTabScrollListener != null ? cr.a.a(90) : 0;
            space3.setLayoutParams(bVar2);
            return;
        }
        if (Q0() && pq.c.f69249a.b().d().a()) {
            qr.x xVar3 = (qr.x) getMViewBinding();
            if (xVar3 != null && (view2 = xVar3.f70195f) != null) {
                ViewGroup.LayoutParams layoutParams3 = view2.getLayoutParams();
                if (layoutParams3 == null) {
                    throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
                }
                ConstraintLayout.b bVar3 = (ConstraintLayout.b) layoutParams3;
                ((ViewGroup.MarginLayoutParams) bVar3).height = this.statusBarHeight + N0();
                view2.setLayoutParams(bVar3);
            }
            qr.x xVar4 = (qr.x) getMViewBinding();
            if (xVar4 == null || (space2 = xVar4.f70194e) == null) {
                return;
            }
            ViewGroup.LayoutParams layoutParams4 = space2.getLayoutParams();
            if (layoutParams4 == null) {
                throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            }
            ConstraintLayout.b bVar4 = (ConstraintLayout.b) layoutParams4;
            ((ViewGroup.MarginLayoutParams) bVar4).height = 0;
            space2.setLayoutParams(bVar4);
            return;
        }
        int i10 = Q0() ? 0 : this.statusBarHeight;
        qr.x xVar5 = (qr.x) getMViewBinding();
        if (xVar5 != null && (view = xVar5.f70195f) != null) {
            ViewGroup.LayoutParams layoutParams5 = view.getLayoutParams();
            if (layoutParams5 == null) {
                throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            }
            ConstraintLayout.b bVar5 = (ConstraintLayout.b) layoutParams5;
            ((ViewGroup.MarginLayoutParams) bVar5).height = i10;
            view.setLayoutParams(bVar5);
        }
        qr.x xVar6 = (qr.x) getMViewBinding();
        if (xVar6 == null || (space = xVar6.f70194e) == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams6 = space.getLayoutParams();
        if (layoutParams6 == null) {
            throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        }
        ConstraintLayout.b bVar6 = (ConstraintLayout.b) layoutParams6;
        ((ViewGroup.MarginLayoutParams) bVar6).height = 0;
        space.setLayoutParams(bVar6);
    }

    private final void showLoading() {
        showLoadingView();
    }

    private final void t1() {
        ShortTVFavoriteView shortTVFavoriteView = this.favoriteHeaderView;
        if (shortTVFavoriteView == null) {
            return;
        }
        com.transsion.shorttv.ui.adapter.h hVar = this.listAdapter;
        if (hVar != null) {
            Intrinsics.e(shortTVFavoriteView);
            hVar.J0(shortTVFavoriteView);
        }
        this.favoriteHeaderView = null;
    }

    private final void v1(List data) {
        View view;
        View view2;
        if (this.bannerBinding != null) {
            wf.a.C0922a c0922a = wf.a.f74274a;
            String TAG = this.TAG;
            Intrinsics.g(TAG, "TAG");
            wf.a.C0922a.f(c0922a, TAG, "set banner data", false, 4, null);
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(data);
            ShortTVBannerAdapter shortTVBannerAdapter = this.bannerAdapter;
            if (shortTVBannerAdapter != null) {
                shortTVBannerAdapter.setData(arrayList);
                return;
            }
            return;
        }
        wf.a.C0922a c0922a2 = wf.a.f74274a;
        String TAG2 = this.TAG;
        Intrinsics.g(TAG2, "TAG");
        wf.a.C0922a.f(c0922a2, TAG2, "add banner HeaderView", false, 4, null);
        if (getContext() != null) {
            q0 q0VarC = q0.c(LayoutInflater.from(getContext()));
            this.bannerBinding = q0VarC;
            ViewGroup.LayoutParams layoutParams = (q0VarC == null || (view2 = q0VarC.f70145e) == null) ? null : view2.getLayoutParams();
            if (this.subTabScrollListener != null) {
                if (layoutParams != null) {
                    layoutParams.height = this.statusBarHeight + com.blankj.utilcode.util.a0.a(50.0f);
                }
            } else if (layoutParams != null) {
                layoutParams.height = this.statusBarHeight + com.blankj.utilcode.util.a0.a(10.0f);
            }
            q0 q0Var = this.bannerBinding;
            if (q0Var != null && (view = q0Var.f70145e) != null) {
                view.setLayoutParams(layoutParams);
            }
            q0 q0Var2 = this.bannerBinding;
            Intrinsics.e(q0Var2);
            ShortTVBannerView shortTVBannerView = q0Var2.f70142b;
            shortTVBannerView.getWindowVisibility();
            ShortTVBannerAdapter shortTVBannerAdapter2 = new ShortTVBannerAdapter();
            shortTVBannerAdapter2.k(new Function3() {
                @Override
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return ShortTVDiscoverFragment.w1(this.f51399a, (View) obj, ((Integer) obj2).intValue(), (BannerData) obj3);
                }
            });
            this.bannerAdapter = shortTVBannerAdapter2;
            shortTVBannerView.setAutoTurningTime(4000L);
            shortTVBannerView.setPagerScrollDuration(1000L);
            Context contextRequireContext = requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            shortTVBannerView.setPageMargin(com.blankj.utilcode.util.a0.a((hr.a.a(contextRequireContext) ? 3 : 1) * 44.0f), com.blankj.utilcode.util.a0.a(16.0f));
            shortTVBannerView.addPageTransformer(new com.to.aboomy.pager2banner.b());
            shortTVBannerView.setOuterPageChangeListener(new j());
            shortTVBannerView.setAdapter(this.bannerAdapter);
            ArrayList arrayList2 = new ArrayList();
            arrayList2.addAll(data);
            ShortTVBannerAdapter shortTVBannerAdapter3 = this.bannerAdapter;
            Intrinsics.e(shortTVBannerAdapter3);
            shortTVBannerAdapter3.setData(arrayList2);
            shortTVBannerView.post(new Runnable() {
                @Override
                public final void run() {
                    ShortTVDiscoverFragment.x1(this.f51401a);
                }
            });
            com.transsion.shorttv.ui.adapter.h hVar = this.listAdapter;
            if (hVar != null) {
                q0 q0Var3 = this.bannerBinding;
                Intrinsics.e(q0Var3);
                ConstraintLayout root = q0Var3.f70143c;
                Intrinsics.g(root, "root");
                BaseQuickAdapter.y(hVar, root, 0, 0, 4, null);
            }
            this.hasAddedBanner = true;
        }
    }

    public static final Unit w1(ShortTVDiscoverFragment shortTVDiscoverFragment, View view, int i10, BannerData item) {
        Intrinsics.h(view, "<unused var>");
        Intrinsics.h(item, "item");
        shortTVDiscoverFragment.m1(i10, item);
        return Unit.f64096a;
    }

    public static final void x1(ShortTVDiscoverFragment shortTVDiscoverFragment) {
        shortTVDiscoverFragment.n1(0, 0, 0.0f);
    }

    private final void z1(OperatingResp data) {
        SwipeRefreshLayout swipeRefreshLayout;
        SwipeRefreshLayout swipeRefreshLayout2;
        SwipeRefreshLayout swipeRefreshLayout3;
        OperateItem operateItem;
        SwipeRefreshLayout swipeRefreshLayout4;
        SwipeRefreshLayout swipeRefreshLayout5;
        SwipeRefreshLayout swipeRefreshLayout6;
        List<OperateItem> items;
        OperateItem operateItem2;
        com.transsion.shorttv.ui.adapter.h hVar;
        List<Object> data2;
        if (!isAdded() || isDetached() || isRemoving()) {
            return;
        }
        if (data == null) {
            if (this.bannerBinding == null && this.headerViewList.isEmpty() && (hVar = this.listAdapter) != null && (data2 = hVar.getData()) != null && data2.isEmpty()) {
                D1();
                return;
            }
            return;
        }
        OperatingResp operatingResp = this.curOperatingResp;
        if (Intrinsics.c(operatingResp != null ? operatingResp.getVersion() : null, data.getVersion())) {
            wf.a.C0922a c0922a = wf.a.f74274a;
            String TAG = this.TAG;
            Intrinsics.g(TAG, "TAG");
            wf.a.C0922a.r(c0922a, TAG, new String[]{"setOperationListData, version same:" + data.getVersion()}, false, 4, null);
        } else {
            wf.a.C0922a c0922a2 = wf.a.f74274a;
            String TAG2 = this.TAG;
            Intrinsics.g(TAG2, "TAG");
            OperatingResp operatingResp2 = this.curOperatingResp;
            String version = operatingResp2 != null ? operatingResp2.getVersion() : null;
            wf.a.C0922a.r(c0922a2, TAG2, new String[]{"setOperationListData oldVs:" + version + ", newVs:" + data.getVersion()}, false, 4, null);
            List<OperateItem> items2 = data.getItems();
            if (items2 != null && (operateItem = (OperateItem) CollectionsKt.l0(items2, 0)) != null) {
                OperatingResp operatingResp3 = this.curOperatingResp;
                String md5 = (operatingResp3 == null || (items = operatingResp3.getItems()) == null || (operateItem2 = (OperateItem) CollectionsKt.l0(items, 0)) == null) ? null : operateItem2.getMd5();
                wg.a.C0924a c0924a = wg.a.f74277a;
                String strJ = com.blankj.utilcode.util.o.j(operateItem);
                Intrinsics.g(strJ, "toJson(...)");
                String strD = c0924a.d(strJ);
                operateItem.setMd5(strD);
                String TAG3 = this.TAG;
                Intrinsics.g(TAG3, "TAG");
                List<BannerData> banners = data.getBanners();
                wf.a.C0922a.f(c0922a2, TAG3, "banner size: " + (banners != null ? Integer.valueOf(banners.size()) : null), false, 4, null);
                List<BannerData> banners2 = data.getBanners();
                if (banners2 == null || !(!banners2.isEmpty())) {
                    L0(false);
                    Function1 function1 = this.listener;
                    if (function1 != null) {
                        function1.invoke(Boolean.FALSE);
                    }
                    s1(false);
                    if (Q0() && pq.c.f69249a.b().d().a()) {
                        int iN0 = this.statusBarHeight + N0();
                        qr.x xVar = (qr.x) getMViewBinding();
                        if (xVar != null && (swipeRefreshLayout5 = xVar.f70192c) != null) {
                            ViewGroup.LayoutParams layoutParams = swipeRefreshLayout5.getLayoutParams();
                            if (layoutParams == null) {
                                throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
                            }
                            ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
                            bVar.setMargins(0, iN0, 0, 0);
                            swipeRefreshLayout5.setLayoutParams(bVar);
                        }
                    } else {
                        int i10 = Q0() ? 0 : this.statusBarHeight;
                        qr.x xVar2 = (qr.x) getMViewBinding();
                        if (xVar2 != null && (swipeRefreshLayout4 = xVar2.f70192c) != null) {
                            ViewGroup.LayoutParams layoutParams2 = swipeRefreshLayout4.getLayoutParams();
                            if (layoutParams2 == null) {
                                throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
                            }
                            ConstraintLayout.b bVar2 = (ConstraintLayout.b) layoutParams2;
                            bVar2.setMargins(0, i10, 0, 0);
                            swipeRefreshLayout4.setLayoutParams(bVar2);
                        }
                    }
                } else if (!Intrinsics.c(md5, strD)) {
                    List<BannerData> banners3 = data.getBanners();
                    Intrinsics.e(banners3);
                    v1(banners3);
                    L0(true);
                    s1(true);
                    Function1 function2 = this.listener;
                    if (function2 != null) {
                        function2.invoke(Boolean.TRUE);
                    }
                    qr.x xVar3 = (qr.x) getMViewBinding();
                    if (xVar3 != null && (swipeRefreshLayout6 = xVar3.f70192c) != null) {
                        ViewGroup.LayoutParams layoutParams3 = swipeRefreshLayout6.getLayoutParams();
                        if (layoutParams3 == null) {
                            throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
                        }
                        ConstraintLayout.b bVar3 = (ConstraintLayout.b) layoutParams3;
                        bVar3.setMargins(0, com.blankj.utilcode.util.a0.a(0.0f), 0, 0);
                        swipeRefreshLayout6.setLayoutParams(bVar3);
                    }
                }
            }
            A1(data.getItems());
            this.curOperatingResp = data;
        }
        qr.x xVar4 = (qr.x) getMViewBinding();
        if (xVar4 == null || (swipeRefreshLayout2 = xVar4.f70192c) == null || !swipeRefreshLayout2.isRefreshing()) {
            Function1 function3 = this.subTabLoadSuccessListener;
            if (function3 != null) {
                function3.invoke(Boolean.valueOf(W0()));
            }
        } else {
            qr.x xVar5 = (qr.x) getMViewBinding();
            if (xVar5 != null && (swipeRefreshLayout3 = xVar5.f70192c) != null) {
                swipeRefreshLayout3.setRefreshing(false);
            }
        }
        ShortTVBannerAdapter shortTVBannerAdapter = this.bannerAdapter;
        List data3 = shortTVBannerAdapter != null ? shortTVBannerAdapter.getData() : null;
        if ((data3 == null || data3.isEmpty()) && Q0() && pq.c.f69249a.b().d().a()) {
            int iN1 = this.statusBarHeight + N0();
            qr.x xVar6 = (qr.x) getMViewBinding();
            if (xVar6 == null || (swipeRefreshLayout = xVar6.f70192c) == null) {
                return;
            }
            ViewGroup.LayoutParams layoutParams4 = swipeRefreshLayout.getLayoutParams();
            if (layoutParams4 == null) {
                throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            }
            ConstraintLayout.b bVar4 = (ConstraintLayout.b) layoutParams4;
            bVar4.setMargins(0, iN1, 0, 0);
            swipeRefreshLayout.setLayoutParams(bVar4);
        }
    }

    public final void B1(RecyclerView.r pageScrollListener, Function1 onLoaderSuccess) {
        Intrinsics.h(pageScrollListener, "pageScrollListener");
        Intrinsics.h(onLoaderSuccess, "onLoaderSuccess");
        this.subTabScrollListener = pageScrollListener;
        this.subTabLoadSuccessListener = onLoaderSuccess;
    }

    public void D1() {
        if (yg.l.f76264a.e()) {
            PageStatusFragment.c0(this, false, 1, null);
        } else {
            showNoNetworkView(false);
        }
    }

    public void E1(List list, boolean isRefresh, boolean hasMore) {
        t6.f fVarH0;
        t6.f fVarH1;
        com.transsion.shorttv.ui.adapter.h hVar;
        t6.f fVarH2;
        SwipeRefreshLayout swipeRefreshLayout;
        qr.x xVar;
        SwipeRefreshLayout swipeRefreshLayout2;
        List<Object> data;
        SafeRecyclerView safeRecyclerView;
        List<Object> data2;
        List listL;
        List<Object> data3;
        List<Object> listL2;
        t6.f fVarH3;
        SwipeRefreshLayout swipeRefreshLayout3;
        t6.f fVarH4;
        com.transsion.shorttv.ui.adapter.h hVar2;
        t6.f fVarH5;
        SafeRecyclerView safeRecyclerView2;
        List<Object> data4;
        List listL3;
        List<Object> data5;
        SwipeRefreshLayout swipeRefreshLayout4;
        qr.x xVar2;
        SwipeRefreshLayout swipeRefreshLayout5;
        List<Object> data6;
        Subject subject;
        SwipeRefreshLayout swipeRefreshLayout6;
        qr.x xVar3 = (qr.x) getMViewBinding();
        if (xVar3 != null && (swipeRefreshLayout6 = xVar3.f70192c) != null) {
            swipeRefreshLayout6.setEnabled(true);
        }
        if (isRefresh) {
            BiddingListManager biddingListManager = this.v3ListManager;
            if (biddingListManager != null) {
                biddingListManager.y();
            }
            if (list != null && (subject = (Subject) CollectionsKt.k0(list)) != null) {
                subject.setShowTitle(true);
            }
        }
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            if (isRefresh) {
                qi.b logViewConfig = getLogViewConfig();
                if (logViewConfig != null) {
                    logViewConfig.k(true);
                }
                com.transsion.shorttv.ui.adapter.h hVar3 = this.listAdapter;
                Iterator<Object> it = (hVar3 == null || (data3 = hVar3.getData()) == null) ? null : data3.iterator();
                while (it != null && it.hasNext()) {
                    if (((bs.a) it.next()).d() == 1) {
                        it.remove();
                    }
                }
                com.transsion.shorttv.ui.adapter.h hVar4 = this.listAdapter;
                if (hVar4 != null && (data2 = hVar4.getData()) != null) {
                    if (list != null) {
                        List list3 = list;
                        listL = new ArrayList<>(CollectionsKt.v(list3, 10));
                        Iterator it2 = list3.iterator();
                        while (it2.hasNext()) {
                            listL.add(new bs.a(1, null, (Subject) it2.next(), null, 0, false, 58, null));
                        }
                    } else {
                        listL = CollectionsKt.l();
                    }
                    data2.addAll(listL);
                }
                qr.x xVar4 = (qr.x) getMViewBinding();
                if (xVar4 != null && (safeRecyclerView = xVar4.f70191b) != null) {
                    safeRecyclerView.post(new Runnable() {
                        @Override
                        public final void run() {
                            ShortTVDiscoverFragment.F1(this.f51394a);
                        }
                    });
                }
            }
            com.transsion.shorttv.ui.adapter.h hVar5 = this.listAdapter;
            if (hVar5 == null || (data = hVar5.getData()) == null || !data.isEmpty()) {
                if (hasMore) {
                    com.transsion.shorttv.ui.adapter.h hVar6 = this.listAdapter;
                    if (hVar6 != null && (fVarH1 = hVar6.h0()) != null && fVarH1.r() && (hVar = this.listAdapter) != null && (fVarH2 = hVar.h0()) != null) {
                        fVarH2.s();
                    }
                } else {
                    com.transsion.shorttv.ui.adapter.h hVar7 = this.listAdapter;
                    if (hVar7 != null && (fVarH0 = hVar7.h0()) != null) {
                        t6.f.u(fVarH0, false, 1, null);
                    }
                }
            } else if (isRefresh) {
                Intrinsics.c(getPageName(), "minitv_explore");
            }
            qr.x xVar5 = (qr.x) getMViewBinding();
            if (xVar5 == null || (swipeRefreshLayout = xVar5.f70192c) == null || !swipeRefreshLayout.isRefreshing() || (xVar = (qr.x) getMViewBinding()) == null || (swipeRefreshLayout2 = xVar.f70192c) == null) {
                return;
            }
            swipeRefreshLayout2.setRefreshing(false);
            return;
        }
        com.transsion.shorttv.ui.adapter.h hVar8 = this.listAdapter;
        if ((hVar8 == null || (data6 = hVar8.getData()) == null || !data6.isEmpty()) && !isRefresh) {
            com.transsion.shorttv.ui.adapter.h hVar9 = this.listAdapter;
            if (hVar9 == null || (listL2 = hVar9.getData()) == null) {
                listL2 = CollectionsKt.l();
            }
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                Subject subject2 = (Subject) obj;
                List<Object> list4 = listL2;
                if (!(list4 instanceof Collection) || !list4.isEmpty()) {
                    Iterator<T> it3 = list4.iterator();
                    do {
                        if (it3.hasNext()) {
                        }
                    } while (!Intrinsics.c(((bs.a) it3.next()).b(), subject2));
                }
                arrayList.add(obj);
            }
            if (arrayList.isEmpty()) {
                wf.a.C0922a c0922a = wf.a.f74274a;
                String TAG = this.TAG;
                Intrinsics.g(TAG, "TAG");
                wf.a.C0922a.f(c0922a, TAG, "updateList 全部去重了", false, 4, null);
                return;
            }
            com.transsion.shorttv.ui.adapter.h hVar10 = this.listAdapter;
            if (hVar10 != null) {
                ArrayList arrayList2 = new ArrayList(CollectionsKt.v(arrayList, 10));
                Iterator it4 = arrayList.iterator();
                while (it4.hasNext()) {
                    arrayList2.add(new bs.a(1, null, (Subject) it4.next(), null, 0, false, 58, null));
                }
                hVar10.q(arrayList2);
            }
        } else {
            qr.x xVar6 = (qr.x) getMViewBinding();
            if (xVar6 != null && (swipeRefreshLayout4 = xVar6.f70192c) != null && swipeRefreshLayout4.isRefreshing() && (xVar2 = (qr.x) getMViewBinding()) != null && (swipeRefreshLayout5 = xVar2.f70192c) != null) {
                swipeRefreshLayout5.setRefreshing(false);
            }
            qi.b logViewConfig2 = getLogViewConfig();
            if (logViewConfig2 != null) {
                logViewConfig2.k(true);
            }
            com.transsion.shorttv.ui.adapter.h hVar11 = this.listAdapter;
            Iterator<Object> it5 = (hVar11 == null || (data5 = hVar11.getData()) == null) ? null : data5.iterator();
            while (it5 != null && it5.hasNext()) {
                if (((bs.a) it5.next()).d() == 1) {
                    it5.remove();
                }
            }
            com.transsion.shorttv.ui.adapter.h hVar12 = this.listAdapter;
            if (hVar12 != null && (data4 = hVar12.getData()) != null) {
                if (list != null) {
                    List list5 = list;
                    listL3 = new ArrayList<>(CollectionsKt.v(list5, 10));
                    Iterator it6 = list5.iterator();
                    while (it6.hasNext()) {
                        listL3.add(new bs.a(1, null, (Subject) it6.next(), null, 0, false, 58, null));
                    }
                } else {
                    listL3 = CollectionsKt.l();
                }
                data4.addAll(listL3);
            }
            qr.x xVar7 = (qr.x) getMViewBinding();
            if (xVar7 != null && (safeRecyclerView2 = xVar7.f70191b) != null) {
                safeRecyclerView2.post(new Runnable() {
                    @Override
                    public final void run() {
                        ShortTVDiscoverFragment.G1(this.f51397a);
                    }
                });
            }
        }
        if (hasMore) {
            com.transsion.shorttv.ui.adapter.h hVar13 = this.listAdapter;
            if (hVar13 != null && (fVarH4 = hVar13.h0()) != null && fVarH4.r() && (hVar2 = this.listAdapter) != null && (fVarH5 = hVar2.h0()) != null) {
                fVarH5.s();
            }
        } else {
            com.transsion.shorttv.ui.adapter.h hVar14 = this.listAdapter;
            if (hVar14 != null && (fVarH3 = hVar14.h0()) != null) {
                t6.f.u(fVarH3, false, 1, null);
            }
        }
        if (W0() || Q0()) {
            return;
        }
        L0(false);
        Function1 function1 = this.listener;
        if (function1 != null) {
            function1.invoke(Boolean.FALSE);
        }
        s1(false);
        qr.x xVar8 = (qr.x) getMViewBinding();
        if (xVar8 == null || (swipeRefreshLayout3 = xVar8.f70192c) == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = swipeRefreshLayout3.getLayoutParams();
        if (layoutParams == null) {
            throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        }
        ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
        bVar.setMargins(0, this.statusBarHeight, 0, 0);
        swipeRefreshLayout3.setLayoutParams(bVar);
    }

    public String R0() {
        return "most_trending";
    }

    protected final com.transsion.shorttv.ui.adapter.h getListAdapter() {
        return this.listAdapter;
    }

    public int T0() {
        return R$layout.short_tv_layout_skeleton_drawing_discover;
    }

    @Override
    public qr.x getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        qr.x xVarC = qr.x.c(inflater);
        Intrinsics.g(xVarC, "inflate(...)");
        return xVarC;
    }

    @Override
    public View getEmptyView(boolean isShowTitleLayout) {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        StateView stateView = new StateView(contextRequireContext);
        stateView.retry(new Function0() {
            @Override
            public final Object invoke() {
                return ShortTVDiscoverFragment.P0(this.f51315a);
            }
        });
        stateView.showData(4, getScreenType(), false, getPageStateLayoutTitle(), getEmptyDescText());
        return stateView;
    }

    @Override
    public View getLoadingView() {
        View viewInflate = LayoutInflater.from(requireContext()).inflate(T0(), (ViewGroup) getFlStateView(), false);
        View viewFindViewById = viewInflate.findViewById(R$id.v_bar_space);
        if (this.subTabScrollListener != null) {
            View viewFindViewById2 = viewInflate.findViewById(R$id.v_title);
            Intrinsics.g(viewFindViewById2, "findViewById(...)");
            ViewGroup.LayoutParams layoutParams = viewFindViewById2.getLayoutParams();
            if (layoutParams == null) {
                throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            }
            ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
            ((ViewGroup.MarginLayoutParams) bVar).topMargin = com.blankj.utilcode.util.a0.a(10.0f);
            viewFindViewById2.setLayoutParams(bVar);
            int iA = this.statusBarHeight + com.blankj.utilcode.util.a0.a(32.0f);
            Intrinsics.e(viewFindViewById);
            ViewGroup.LayoutParams layoutParams2 = viewFindViewById.getLayoutParams();
            if (layoutParams2 == null) {
                throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            }
            ConstraintLayout.b bVar2 = (ConstraintLayout.b) layoutParams2;
            ((ViewGroup.MarginLayoutParams) bVar2).height = iA;
            viewFindViewById.setLayoutParams(bVar2);
        } else {
            Intrinsics.e(viewFindViewById);
            ViewGroup.LayoutParams layoutParams3 = viewFindViewById.getLayoutParams();
            if (layoutParams3 == null) {
                throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            }
            ConstraintLayout.b bVar3 = (ConstraintLayout.b) layoutParams3;
            ((ViewGroup.MarginLayoutParams) bVar3).height = this.statusBarHeight;
            viewFindViewById.setLayoutParams(bVar3);
        }
        return viewInflate;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0019  */
    @Override
    public View getNoNetworkView() {
        View noNetworkView;
        ur.l lVarE0;
        ShortTvViewModel shortTvViewModel = this.viewModel;
        if (shortTvViewModel == null || (lVarE0 = shortTvViewModel.E0()) == null) {
            noNetworkView = super.getNoNetworkView();
        } else {
            Context contextRequireContext = requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            noNetworkView = lVarE0.a(contextRequireContext);
            if (noNetworkView == null) {
                noNetworkView = super.getNoNetworkView();
            }
        }
        noNetworkView.setPadding(noNetworkView.getPaddingStart(), noNetworkView.getPaddingTop() + this.statusBarHeight + com.blankj.utilcode.util.a0.a(35.0f), noNetworkView.getPaddingEnd(), noNetworkView.getPaddingBottom());
        return noNetworkView;
    }

    public String getPageName() {
        return "minitv_explore";
    }

    @Override
    public String getPageStateLayoutTitle() {
        return "";
    }

    @Override
    public int getScreenType() {
        return 4;
    }

    @Override
    public void initListener() {
        SafeRecyclerView safeRecyclerView;
        SafeRecyclerView safeRecyclerView2;
        SafeRecyclerView safeRecyclerView3;
        if (this.subTabScrollListener != null) {
            qr.x xVar = (qr.x) getMViewBinding();
            if (xVar != null && (safeRecyclerView3 = xVar.f70191b) != null) {
                RecyclerView.r rVar = this.subTabScrollListener;
                Intrinsics.e(rVar);
                safeRecyclerView3.addOnScrollListener(rVar);
            }
        } else {
            qr.x xVar2 = (qr.x) getMViewBinding();
            if (xVar2 != null && (safeRecyclerView = xVar2.f70191b) != null) {
                safeRecyclerView.addOnScrollListener(new h());
            }
        }
        qr.x xVar3 = (qr.x) getMViewBinding();
        if (xVar3 == null || (safeRecyclerView2 = xVar3.f70191b) == null) {
            return;
        }
        safeRecyclerView2.post(new Runnable() {
            @Override
            public final void run() {
                ShortTVDiscoverFragment.d1(this.f51405a);
            }
        });
    }

    @Override
    public void initViewData() {
        Space space;
        View view;
        Bundle arguments = getArguments();
        this.tabId = arguments != null ? arguments.getInt("tab_id", this.tabId) : this.tabId;
        qr.x xVar = (qr.x) getMViewBinding();
        if (xVar != null && (view = xVar.f70195f) != null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            }
            ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
            ((ViewGroup.MarginLayoutParams) bVar).height = this.statusBarHeight;
            view.setLayoutParams(bVar);
        }
        qr.x xVar2 = (qr.x) getMViewBinding();
        if (xVar2 != null && (space = xVar2.f70194e) != null) {
            ViewGroup.LayoutParams layoutParams2 = space.getLayoutParams();
            if (layoutParams2 == null) {
                throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            }
            ConstraintLayout.b bVar2 = (ConstraintLayout.b) layoutParams2;
            ((ViewGroup.MarginLayoutParams) bVar2).height = 0;
            space.setLayoutParams(bVar2);
        }
        Y0();
        initAd();
    }

    @Override
    public void initViewModel() {
        ShortTvViewModel shortTvViewModel;
        ShortTvViewModel shortTvViewModel2;
        androidx.p009lifecycle.b0 b0VarC0;
        androidx.p009lifecycle.b0 b0VarK0;
        androidx.p009lifecycle.b0 b0VarI0;
        wf.a.C0922a c0922a = wf.a.f74274a;
        String TAG = this.TAG;
        Intrinsics.g(TAG, "TAG");
        wf.a.C0922a.f(c0922a, TAG, "initViewModel " + this, false, 4, null);
        ShortTvViewModel shortTvViewModel3 = (ShortTvViewModel) new v0(this).a(ShortTvViewModel.class);
        this.viewModel = shortTvViewModel3;
        if (shortTvViewModel3 != null && (b0VarI0 = shortTvViewModel3.i0()) != null) {
            b0VarI0.j(this, new i(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return ShortTVDiscoverFragment.e1(this.f51418a, (OperatingResp) obj);
                }
            }));
        }
        ShortTvViewModel shortTvViewModel4 = this.viewModel;
        if (shortTvViewModel4 != null && (b0VarK0 = shortTvViewModel4.K0()) != null) {
            b0VarK0.j(this, new i(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return ShortTVDiscoverFragment.f1(this.f51419a, (ShortTVRespData) obj);
                }
            }));
        }
        if (pq.c.f69249a.b().c() && (shortTvViewModel2 = this.viewModel) != null && (b0VarC0 = shortTvViewModel2.c0()) != null) {
            b0VarC0.j(this, new i(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return ShortTVDiscoverFragment.g1(this.f51311a, (ShortTVRespData) obj);
                }
            }));
        }
        t1();
        showLoading();
        Context context = getContext();
        if (context != null && (shortTvViewModel = this.viewModel) != null) {
            shortTvViewModel.P0(context);
        }
        r1();
    }

    @Override
    public qi.b newLogViewConfig() {
        return new qi.b(getPageName(), false, 2, null);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        BiddingListManager biddingListManager = this.v3ListManager;
        if (biddingListManager != null) {
            biddingListManager.o();
        }
    }

    @Override
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (isResumed() && hidden) {
            this.exposureHelper.e();
            qr.x xVar = (qr.x) getMViewBinding();
            K0(xVar != null ? xVar.f70191b : null);
        }
        if (isResumed()) {
            if (hidden) {
                logPause();
            } else {
                logResume();
            }
        }
    }

    @Override
    public void onPause() {
        ShortTVBannerView shortTVBannerView;
        ShortTVBannerView shortTVBannerView2;
        super.onPause();
        l1();
        this.exposureHelper.e();
        qr.x xVar = (qr.x) getMViewBinding();
        K0(xVar != null ? xVar.f70191b : null);
        q0 q0Var = this.bannerBinding;
        if (q0Var == null || (shortTVBannerView = q0Var.f70142b) == null || !shortTVBannerView.isAttachedToWindow()) {
            return;
        }
        wf.a.C0922a c0922a = wf.a.f74274a;
        String TAG = this.TAG;
        Intrinsics.g(TAG, "TAG");
        wf.a.C0922a.f(c0922a, TAG, "onPause banner stopTurning", false, 4, null);
        q0 q0Var2 = this.bannerBinding;
        if (q0Var2 == null || (shortTVBannerView2 = q0Var2.f70142b) == null) {
            return;
        }
        shortTVBannerView2.stopTurning();
    }

    @Override
    public void onResume() {
        ShortTVBannerView shortTVBannerView;
        ShortTVBannerView shortTVBannerView2;
        super.onResume();
        this.bannerBrowseTime = System.currentTimeMillis();
        q0 q0Var = this.bannerBinding;
        if (q0Var == null || (shortTVBannerView = q0Var.f70142b) == null || !shortTVBannerView.isAttachedToWindow()) {
            return;
        }
        wf.a.C0922a c0922a = wf.a.f74274a;
        String TAG = this.TAG;
        Intrinsics.g(TAG, "TAG");
        wf.a.C0922a.f(c0922a, TAG, "onResume banner startTurning", false, 4, null);
        q0 q0Var2 = this.bannerBinding;
        if (q0Var2 == null || (shortTVBannerView2 = q0Var2.f70142b) == null) {
            return;
        }
        shortTVBannerView2.startTurning();
    }

    @Override
    public void onStart() {
        ShortTvViewModel shortTvViewModel;
        super.onStart();
        if (isVisible()) {
            if (this.isFirstStart) {
                this.isFirstStart = false;
            } else {
                if (!pq.c.f69249a.b().c() || (shortTvViewModel = this.viewModel) == null) {
                    return;
                }
                shortTvViewModel.o0();
            }
        }
    }

    public void r1() {
        ShortTvViewModel shortTvViewModel;
        j1();
        if (pq.c.f69249a.b().c() && (shortTvViewModel = this.viewModel) != null) {
            shortTvViewModel.o0();
        }
        this.nextPage = "1";
    }

    @Override
    public void retryLoadData() {
        List<Object> data;
        com.transsion.shorttv.ui.adapter.h hVar = this.listAdapter;
        if (hVar != null && (data = hVar.getData()) != null && data.size() == 0) {
            showLoading();
            r1();
            return;
        }
        com.transsion.shorttv.ui.adapter.h hVar2 = this.listAdapter;
        if (hVar2 == null || hVar2.h0().i() != LoadMoreStatus.Fail) {
            return;
        }
        hVar2.h0().w();
    }

    public final void u1() {
        SafeRecyclerView safeRecyclerView;
        qr.x xVar = (qr.x) getMViewBinding();
        if (xVar == null || (safeRecyclerView = xVar.f70191b) == null) {
            return;
        }
        safeRecyclerView.smoothScrollToPosition(0);
    }

    public final void y1(boolean z10) {
        this.hasSlideOutBanner = z10;
    }
}
