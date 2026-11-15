package com.transsion.shorttv.ui.fragment.download;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.activity.result.ActivityResult;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.Group;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.c0;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.NetworkUtils;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.a0;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.android.flexbox.FlexboxLayoutManager;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.google.android.material.tabs.TabLayout;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.noober.background.view.BLFrameLayout;
import com.noober.background.view.BLImageView;
import com.noober.background.view.BLView;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.ad.bidding.video.BiddingVideoManager;
import com.transsion.shorttv.R$color;
import com.transsion.shorttv.R$drawable;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv.R$mipmap;
import com.transsion.shorttv.R$string;
import com.transsion.shorttv.ad.common.STCommonVideoAdHelper;
import com.transsion.shorttv.base.widget.DefaultView;
import com.transsion.shorttv.bean.Cover;
import com.transsion.shorttv.bean.DownloadItem;
import com.transsion.shorttv.bean.DownloadListBean;
import com.transsion.shorttv.bean.ShortTVFavInfo;
import com.transsion.shorttv.bean.ShortTVItem;
import com.transsion.shorttv.bean.ShortTvInnerPlayBean;
import com.transsion.shorttv.bean.SkuInfo;
import com.transsion.shorttv.bean.Subject;
import com.transsion.shorttv.order.bean.CreatePaynicornOrderReqBean;
import com.transsion.shorttv.order.bean.GetPaynicornOrderStatusRespEntity;
import com.transsion.shorttv.ui.adapter.ShortTvDownloadEpListAdapter;
import com.transsion.shorttv.ui.dialog.ShortTvAlertDialog;
import com.transsion.shorttv.ui.widget.ShortTvDownloadInfoExtendView;
import com.transsion.shorttv.viewmodel.ShortTvDownloadViewModel;
import com.transsion.shorttv.viewmodel.ShortTvViewModel;
import com.transsion.web.api.WebConstants;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlin.reflect.KClass;
import kotlin.text.StringsKt;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;
import qr.z;

@Metadata(d1 = {"\u0000¸\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u001b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010%\n\u0002\b\u001f\n\u0002\u0018\u0002\n\u0002\b\u0010\b\u0016\u0018\u0000 Ã\u00012\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002Ä\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J%\u0010\n\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u00052\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\bH\u0002¢\u0006\u0004\b\f\u0010\u0004J\u000f\u0010\r\u001a\u00020\bH\u0002¢\u0006\u0004\b\r\u0010\u0004J\u000f\u0010\u000e\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000e\u0010\u0004J\u0017\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0013\u0010\u0012J\u0017\u0010\u0014\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0014\u0010\u0012J\u0017\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0019\u0010\u0004J\u000f\u0010\u001a\u001a\u00020\bH\u0002¢\u0006\u0004\b\u001a\u0010\u0004J\u0017\u0010\u001d\u001a\u00020\b2\u0006\u0010\u001c\u001a\u00020\u001bH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010!\u001a\u00020\b2\u0006\u0010 \u001a\u00020\u001fH\u0002¢\u0006\u0004\b!\u0010\"J\u000f\u0010#\u001a\u00020\u0015H\u0002¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\bH\u0002¢\u0006\u0004\b%\u0010\u0004J\u000f\u0010'\u001a\u00020&H\u0002¢\u0006\u0004\b'\u0010(J\u0017\u0010*\u001a\u00020\b2\u0006\u0010)\u001a\u00020&H\u0002¢\u0006\u0004\b*\u0010+J\u0017\u0010.\u001a\u00020\b2\u0006\u0010-\u001a\u00020,H\u0002¢\u0006\u0004\b.\u0010/J\u0017\u00101\u001a\u00020\b2\u0006\u00100\u001a\u00020\u0015H\u0002¢\u0006\u0004\b1\u0010\u0018J\u0019\u00104\u001a\u00020\b2\b\u00103\u001a\u0004\u0018\u000102H\u0002¢\u0006\u0004\b4\u00105J\u0017\u00106\u001a\u00020\b2\u0006\u0010-\u001a\u00020,H\u0002¢\u0006\u0004\b6\u0010/J/\u0010<\u001a\u00020\b2\u000e\u00109\u001a\n\u0012\u0004\u0012\u000208\u0018\u0001072\u0006\u0010:\u001a\u00020\u00152\u0006\u0010;\u001a\u00020\u0015H\u0002¢\u0006\u0004\b<\u0010=J\u0017\u0010>\u001a\u00020\b2\u0006\u0010;\u001a\u00020\u0015H\u0002¢\u0006\u0004\b>\u0010\u0018J\u000f\u0010?\u001a\u00020\bH\u0002¢\u0006\u0004\b?\u0010\u0004J\u000f\u0010@\u001a\u00020\bH\u0002¢\u0006\u0004\b@\u0010\u0004J\u000f\u0010A\u001a\u00020\bH\u0002¢\u0006\u0004\bA\u0010\u0004J\u000f\u0010B\u001a\u00020\bH\u0002¢\u0006\u0004\bB\u0010\u0004J\u000f\u0010C\u001a\u00020\u000fH\u0002¢\u0006\u0004\bC\u0010DJ\u000f\u0010E\u001a\u00020\u000fH\u0002¢\u0006\u0004\bE\u0010DJ)\u0010K\u001a\u00020\u000f2\u0006\u0010G\u001a\u00020F2\u0006\u0010I\u001a\u00020H2\b\b\u0002\u0010J\u001a\u00020\u001bH\u0002¢\u0006\u0004\bK\u0010LJ\u0011\u0010M\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0004\bM\u0010DJ\u000f\u0010N\u001a\u00020\bH\u0002¢\u0006\u0004\bN\u0010\u0004J\u0017\u0010P\u001a\u00020\b2\u0006\u0010O\u001a\u00020\u001bH\u0002¢\u0006\u0004\bP\u0010\u001eJ\u0017\u0010Q\u001a\u00020\b2\u0006\u0010O\u001a\u00020\u001bH\u0002¢\u0006\u0004\bQ\u0010\u001eJ\u000f\u0010R\u001a\u00020\u001bH\u0002¢\u0006\u0004\bR\u0010SJ\u0017\u0010U\u001a\u00020\b2\u0006\u0010T\u001a\u00020\u001bH\u0002¢\u0006\u0004\bU\u0010\u001eJ\u0017\u0010V\u001a\u00020\b2\u0006\u0010T\u001a\u00020\u001bH\u0002¢\u0006\u0004\bV\u0010\u001eJ\u0017\u0010W\u001a\u00020\b2\u0006\u0010 \u001a\u00020\u001fH\u0002¢\u0006\u0004\bW\u0010\"JQ\u0010_\u001a\u00020\b2\b\u0010X\u001a\u0004\u0018\u00010H2\u0006\u0010Y\u001a\u00020H2\b\u0010Z\u001a\u0004\u0018\u00010H2\b\u0010[\u001a\u0004\u0018\u00010H2\b\u0010\\\u001a\u0004\u0018\u00010H2\b\u0010]\u001a\u0004\u0018\u00010H2\u0006\u0010^\u001a\u00020HH\u0002¢\u0006\u0004\b_\u0010`J\u000f\u0010a\u001a\u00020\bH\u0002¢\u0006\u0004\ba\u0010\u0004J\u000f\u0010b\u001a\u00020\bH\u0002¢\u0006\u0004\bb\u0010\u0004J/\u0010g\u001a\u00020\b2\b\u0010c\u001a\u0004\u0018\u00010H2\n\b\u0002\u0010e\u001a\u0004\u0018\u00010d2\b\b\u0002\u0010f\u001a\u00020\u0015H\u0002¢\u0006\u0004\bg\u0010hJ\u000f\u0010i\u001a\u00020\bH\u0016¢\u0006\u0004\bi\u0010\u0004J\u0019\u0010l\u001a\u00020\b2\b\u0010k\u001a\u0004\u0018\u00010jH\u0016¢\u0006\u0004\bl\u0010mJ\u0017\u0010p\u001a\u00020\u00022\u0006\u0010o\u001a\u00020nH\u0016¢\u0006\u0004\bp\u0010qJ\u000f\u0010r\u001a\u00020HH\u0016¢\u0006\u0004\br\u0010sJ\u000f\u0010t\u001a\u00020\u001bH\u0016¢\u0006\u0004\bt\u0010SJ\u000f\u0010u\u001a\u00020\u001bH\u0016¢\u0006\u0004\bu\u0010SJ\u000f\u0010v\u001a\u00020\bH\u0016¢\u0006\u0004\bv\u0010\u0004J\u000f\u0010w\u001a\u00020\bH\u0016¢\u0006\u0004\bw\u0010\u0004J\u000f\u0010x\u001a\u00020\bH\u0016¢\u0006\u0004\bx\u0010\u0004J\u000f\u0010y\u001a\u00020\bH\u0016¢\u0006\u0004\by\u0010\u0004J\u000f\u0010z\u001a\u00020\bH\u0016¢\u0006\u0004\bz\u0010\u0004R\u001e\u0010}\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b{\u0010|R&\u0010\u0083\u0001\u001a\u0011\u0012\r\u0012\u000b \u0080\u0001*\u0004\u0018\u00010\u007f0\u007f0~8\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0081\u0001\u0010\u0082\u0001R\u0017\u0010\u0086\u0001\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0084\u0001\u0010\u0085\u0001R!\u0010\u008c\u0001\u001a\u00030\u0087\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u0088\u0001\u0010\u0089\u0001\u001a\u0006\b\u008a\u0001\u0010\u008b\u0001R\u0019\u0010\u008f\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008d\u0001\u0010\u008e\u0001R\u001c\u0010\u0093\u0001\u001a\u0005\u0018\u00010\u0090\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0091\u0001\u0010\u0092\u0001R\u0018\u00100\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0094\u0001\u0010\u0085\u0001R$\u0010\u0098\u0001\u001a\u000f\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u0002080\u0095\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0096\u0001\u0010\u0097\u0001R$\u0010\u009a\u0001\u001a\u000f\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u0002080\u0095\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0099\u0001\u0010\u0097\u0001R\u0019\u0010\u009c\u0001\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009b\u0001\u0010\u0085\u0001R\u0019\u0010\u009e\u0001\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009d\u0001\u0010\u0085\u0001R\u0019\u0010 \u0001\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009f\u0001\u0010\u0085\u0001R\u0018\u0010Y\u001a\u00020H8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¡\u0001\u0010¢\u0001R\u0019\u0010¤\u0001\u001a\u00020H8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b£\u0001\u0010¢\u0001R\u001b\u0010§\u0001\u001a\u0004\u0018\u00010d8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¥\u0001\u0010¦\u0001R\u001a\u0010Z\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¨\u0001\u0010¢\u0001R\u001a\u0010\\\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b©\u0001\u0010¢\u0001R\u001b\u0010«\u0001\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bª\u0001\u0010¢\u0001R\u0019\u0010\u00ad\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¬\u0001\u0010\u008e\u0001R\u0019\u0010¯\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b®\u0001\u0010\u008e\u0001R\u0019\u0010±\u0001\u001a\u00020H8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b°\u0001\u0010¢\u0001R\u0019\u0010´\u0001\u001a\u00020&8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b²\u0001\u0010³\u0001R\u001c\u0010·\u0001\u001a\u0005\u0018\u00010µ\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0085\u0001\u0010¶\u0001R\u0019\u0010¹\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¸\u0001\u0010\u008e\u0001R \u0010»\u0001\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bº\u0001\u0010|R\u001a\u0010-\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¼\u0001\u0010½\u0001R\u0019\u0010¿\u0001\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¾\u0001\u0010\u0085\u0001R\u001b\u0010Â\u0001\u001a\u00020\u00158\u0006¢\u0006\u000f\n\u0006\bÀ\u0001\u0010\u0085\u0001\u001a\u0005\bÁ\u0001\u0010$¨\u0006Å\u0001"}, d2 = {"Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;", "Lcom/transsion/shorttv/ui/fragment/download/ShortTvDownloadReBaseFragment;", "Lqr/z;", "<init>", "()V", "Lur/i;", "loginProvider", "Lkotlin/Function0;", "", "onSuccess", "x1", "(Lur/i;Lkotlin/jvm/functions/Function0;)V", "J1", "initHistory", "initView", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "F1", "(Landroid/view/View;)V", "D1", "I1", "", RequestParameters.POSITION, "E1", "(I)V", "X0", "V0", "", "onlyEpisodeList", "y1", "(Z)V", "", "totalSize", "H1", "(J)V", "Y0", "()I", "U1", "Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$a$a;", "L1", "()Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$a$a;", "state", "V1", "(Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$a$a;)V", "Lcom/transsion/shorttv/bean/DownloadListBean;", "listBean", "T1", "(Lcom/transsion/shorttv/bean/DownloadListBean;)V", "totalEpisode", "Q0", "Lcom/google/android/material/tabs/TabLayout$Tab;", "tab", "C1", "(Lcom/google/android/material/tabs/TabLayout$Tab;)V", "R0", "", "Lcom/transsion/shorttv/bean/DownloadItem;", "list", "start", TtmlNode.END, "W1", "(Ljava/util/List;II)V", "W0", "showNotNetError", "S1", "showLoading", "K1", "f1", "()Landroid/view/View;", "e1", "Landroid/content/Context;", "context", "", "desText", "showRightBtn", "b1", "(Landroid/content/Context;Ljava/lang/String;Z)Landroid/view/View;", "a1", "G1", "selectAll", "M1", "O1", "w1", "()Z", "isSelected", "Q1", "P1", "A1", "pageName", "pageFrom", "subjectId", "miniId", "ops", "resourceId", "taskId", "Z0", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "X1", "S0", "userId", "Lcom/transsion/shorttv/bean/Subject;", "dotSubject", "dotEp", "U0", "(Ljava/lang/String;Lcom/transsion/shorttv/bean/Subject;I)V", "initViewData", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "h1", "(Landroid/view/LayoutInflater;)Lqr/z;", "getPageStateLayoutTitle", "()Ljava/lang/String;", "isAudioShowNoNetworkLayout", "isMonitorNetworkState", "initViewModel", "initListener", "retryLoadData", TmcConstants.NAVIGATION_ON_START, "onDestroy", "m", "Lkotlin/jvm/functions/Function0;", "loginSuccessCallback", "Landroidx/activity/result/b;", "Landroid/content/Intent;", "kotlin.jvm.PlatformType", "n", "Landroidx/activity/result/b;", "loginLauncher", "o", "I", "padding", "Lcom/transsion/shorttv/utils/b;", TtmlNode.TAG_P, "Lkotlin/Lazy;", "g1", "()Lcom/transsion/shorttv/utils/b;", "shortTVReporter", CampaignEx.JSON_KEY_AD_Q, "Z", "isContentDataRequested", "Lcom/transsion/shorttv/ui/adapter/ShortTvDownloadEpListAdapter;", CampaignEx.JSON_KEY_AD_R, "Lcom/transsion/shorttv/ui/adapter/ShortTvDownloadEpListAdapter;", "shortTVEpAdapter", "s", "", "t", "Ljava/util/Map;", "episodeResourceMap", TmcStartParams.KEY_URL_SHORT, "inDownloadStatusMap", "v", "startPosition", "w", "endPosition", "x", "curDownloadTabPosition", "y", "Ljava/lang/String;", "z", "lastPageFrom", "A", "Lcom/transsion/shorttv/bean/Subject;", "subject", "B", "C", "D", "moduleName", "E", "scroll2Download", "F", "isSelectAll", "G", "formatSize", "H", "Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$a$a;", "downloadBtnState", "Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;", "Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;", "downloadVideoAdHelper", "J", "isRequestingData", "K", "selectAllCallback", "L", "Lcom/transsion/shorttv/bean/DownloadListBean;", "M", "prevSelectedLockedCount", "N", "getAdUnlockEpLimitForDownload", "adUnlockEpLimitForDownload", "O", "a", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public class ShortTVDownloadReFragment extends ShortTvDownloadReBaseFragment<z> {

    public static final Companion INSTANCE = new Companion(null);

    private Subject subject;

    private String subjectId;

    private String ops;

    private String moduleName;

    private boolean scroll2Download;

    private boolean isSelectAll;

    private String formatSize;

    private Companion.AbstractC0637a downloadBtnState;

    private STCommonVideoAdHelper downloadVideoAdHelper;

    private boolean isRequestingData;

    private Function0 selectAllCallback;

    private DownloadListBean listBean;

    private int prevSelectedLockedCount;

    private final int adUnlockEpLimitForDownload;

    private Function0 loginSuccessCallback;

    private final androidx.activity.result.b loginLauncher;

    private final int padding;

    private final Lazy shortTVReporter;

    private boolean isContentDataRequested;

    private ShortTvDownloadEpListAdapter shortTVEpAdapter;

    private int totalEpisode;

    private final Map episodeResourceMap;

    private final Map inDownloadStatusMap;

    private int startPosition;

    private int endPosition;

    private int curDownloadTabPosition;

    private String pageFrom;

    private String lastPageFrom;

    public static final class Companion {

        private static abstract class AbstractC0637a {

            public static final class C0638a extends AbstractC0637a {

                public static final C0638a f51333a = new C0638a();

                private C0638a() {
                    super(null);
                }
            }

            public static final class b extends AbstractC0637a {

                public static final b f51334a = new b();

                private b() {
                    super(null);
                }
            }

            public static final class c extends AbstractC0637a {

                public static final c f51335a = new c();

                private c() {
                    super(null);
                }
            }

            public static final class d extends AbstractC0637a {

                private final boolean f51336a;

                public d(boolean z10) {
                    super(null);
                    this.f51336a = z10;
                }

                public final boolean a() {
                    return this.f51336a;
                }

                public boolean equals(Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return (obj instanceof d) && this.f51336a == ((d) obj).f51336a;
                }

                public int hashCode() {
                    return androidx.compose.foundation.e.a(this.f51336a);
                }

                public String toString() {
                    return "WatchAd(unlockAll=" + this.f51336a + ")";
                }
            }

            public AbstractC0637a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private AbstractC0637a() {
            }
        }

        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ShortTVDownloadReFragment a(String str, String str2, Subject subject, String str3, String str4, boolean z10) {
            ShortTVDownloadReFragment shortTVDownloadReFragment = new ShortTVDownloadReFragment();
            shortTVDownloadReFragment.setArguments(androidx.core.os.d.b(TuplesKt.a(WebConstants.PAGE_FROM, str), TuplesKt.a("last_page_from", str2), TuplesKt.a("subject", subject), TuplesKt.a("ops", str3), TuplesKt.a("module_name", str4), TuplesKt.a("download_scroll_to_download", Boolean.valueOf(z10))));
            return shortTVDownloadReFragment;
        }

        private Companion() {
        }
    }

    public static final class b implements TabLayout.OnTabSelectedListener {
        b() {
        }

        @Override
        public void onTabReselected(TabLayout.Tab tab) {
        }

        @Override
        public void onTabSelected(TabLayout.Tab tab) {
            ShortTVDownloadReFragment.this.C1(tab);
        }

        @Override
        public void onTabUnselected(TabLayout.Tab tab) {
        }
    }

    public static final class c implements c0 {

        final ur.i f51339b;

        final Subject f51340c;

        final int f51341d;

        c(ur.i iVar, Subject subject, int i10) {
            this.f51339b = iVar;
            this.f51340c = subject;
            this.f51341d = i10;
        }

        @Override
        public void onChanged(Unit unit) {
            b0 b0VarR;
            Long l10;
            b0 b0VarP;
            b0 b0VarJ;
            b0 b0VarJ2;
            ShortTVDownloadReFragment.this.K1();
            ShortTvDownloadViewModel shortTvDownloadViewModelH0 = ShortTVDownloadReFragment.this.getViewModel();
            if (shortTvDownloadViewModelH0 != null && (b0VarJ2 = shortTvDownloadViewModelH0.j()) != null) {
                b0VarJ2.o(this);
            }
            ShortTvDownloadViewModel shortTvDownloadViewModelH1 = ShortTVDownloadReFragment.this.getViewModel();
            Subject subject = null;
            if (shortTvDownloadViewModelH1 != null && (b0VarJ = shortTvDownloadViewModelH1.j()) != null) {
                b0VarJ.q(null);
            }
            ShortTvDownloadViewModel shortTvDownloadViewModelH2 = ShortTVDownloadReFragment.this.getViewModel();
            if (shortTvDownloadViewModelH2 != null && (b0VarP = shortTvDownloadViewModelH2.p()) != null) {
                subject = (Subject) b0VarP.f();
            }
            if (subject == null || subject.getIsPaid() != 1) {
                ShortTVDownloadReFragment.this.U0(this.f51339b.getUserId(), this.f51340c, this.f51341d);
                return;
            }
            ShortTVDownloadReFragment.this.g0().R0(1);
            ShortTVDownloadReFragment.this.g0().S0();
            ShortTVDownloadReFragment.this.U1();
            ShortTVDownloadReFragment shortTVDownloadReFragment = ShortTVDownloadReFragment.this;
            ShortTvDownloadViewModel shortTvDownloadViewModelH3 = shortTVDownloadReFragment.getViewModel();
            shortTVDownloadReFragment.A1((shortTvDownloadViewModelH3 == null || (b0VarR = shortTvDownloadViewModelH3.r()) == null || (l10 = (Long) b0VarR.f()) == null) ? 0L : l10.longValue());
        }
    }

    public static final class d implements com.transsion.shorttv.order.b {

        final Subject f51343b;

        final int f51344c;

        final Context f51345d;

        final String f51346e;

        d(Subject subject, int i10, Context context, String str) {
            this.f51343b = subject;
            this.f51344c = i10;
            this.f51345d = context;
            this.f51346e = str;
        }

        public static final Unit d(ShortTVDownloadReFragment shortTVDownloadReFragment, String str, Subject subject, int i10) {
            shortTVDownloadReFragment.U0(str, subject, i10);
            return Unit.f64096a;
        }

        @Override
        public void a(String errorCode, String errorMsg) {
            Intrinsics.h(errorCode, "errorCode");
            Intrinsics.h(errorMsg, "errorMsg");
            com.transsion.shorttv.order.b.a.a(this, errorCode, errorMsg);
            wf.a.C0922a c0922a = wf.a.f74274a;
            String tag = ShortTVDownloadReFragment.this.getTAG();
            Intrinsics.g(tag, "<get-TAG>(...)");
            wf.a.C0922a.l(c0922a, tag, "callPayMethod onPayFail, errorCode=" + errorCode + ", errorMsg=" + errorMsg, false, 4, null);
            wr.b.f74733a.j(this.f51343b, this.f51344c, "fail", errorMsg, errorCode, "download");
            ShortTvAlertDialog.Companion companion = ShortTvAlertDialog.INSTANCE;
            String string = this.f51345d.getString(R$string.short_tv_pay_failed_title);
            Intrinsics.g(string, "getString(...)");
            String string2 = this.f51345d.getString(R$string.short_tv_pay_failed_message);
            Intrinsics.g(string2, "getString(...)");
            String string3 = this.f51345d.getString(R$string.short_tv_payment_retry);
            Intrinsics.g(string3, "getString(...)");
            final ShortTVDownloadReFragment shortTVDownloadReFragment = ShortTVDownloadReFragment.this;
            final String str = this.f51346e;
            final Subject subject = this.f51343b;
            final int i10 = this.f51344c;
            companion.a(string, string2, string3, (32 & 8) != 0 ? null : new Function0() {
                @Override
                public final Object invoke() {
                    return ShortTVDownloadReFragment.d.d(shortTVDownloadReFragment, str, subject, i10);
                }
            }, (32 & 16) != 0 ? null : this.f51345d.getString(R$string.short_tv_payment_cancel), (32 & 32) != 0 ? null : null).i0(this.f51345d, "ShortTvAlertDialog");
        }

        @Override
        public void b(GetPaynicornOrderStatusRespEntity getPaynicornOrderStatusRespEntity) {
            String description;
            String string;
            b0 b0VarR;
            Long l10;
            String orderStatus;
            com.transsion.shorttv.order.b.a.b(this, getPaynicornOrderStatusRespEntity);
            Integer numV = (getPaynicornOrderStatusRespEntity == null || (orderStatus = getPaynicornOrderStatusRespEntity.getOrderStatus()) == null) ? null : StringsKt.v(orderStatus);
            if (numV != null && numV.intValue() == 2) {
                wr.b.f74733a.j(this.f51343b, this.f51344c, NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, "", "0", "download");
                ShortTvDownloadViewModel shortTvDownloadViewModelH0 = ShortTVDownloadReFragment.this.getViewModel();
                if (shortTvDownloadViewModelH0 != null) {
                    shortTvDownloadViewModelH0.s(1);
                }
                ShortTVDownloadReFragment.this.g0().R0(1);
                ShortTVDownloadReFragment.this.g0().S0();
                ShortTVDownloadReFragment.this.U1();
                ShortTVDownloadReFragment shortTVDownloadReFragment = ShortTVDownloadReFragment.this;
                ShortTvDownloadViewModel shortTvDownloadViewModelH1 = shortTVDownloadReFragment.getViewModel();
                shortTVDownloadReFragment.A1((shortTvDownloadViewModelH1 == null || (b0VarR = shortTvDownloadViewModelH1.r()) == null || (l10 = (Long) b0VarR.f()) == null) ? 0L : l10.longValue());
                return;
            }
            if (numV != null && numV.intValue() == 3) {
                wr.b.f74733a.j(this.f51343b, this.f51344c, "cancel", "", "0", "download");
                return;
            }
            wr.b bVar = wr.b.f74733a;
            Subject subject = this.f51343b;
            int i10 = this.f51344c;
            if (getPaynicornOrderStatusRespEntity == null || (description = getPaynicornOrderStatusRespEntity.getDescription()) == null) {
                description = "";
            }
            String str = description;
            if (numV == null || (string = numV.toString()) == null) {
                string = TmcConstants.COLD_OPEN_TYPE;
            }
            bVar.j(subject, i10, "fail", str, string, "download");
        }
    }

    public static final class e extends RecyclerView.r {
        e() {
        }

        @Override
        public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
            z zVar;
            TabLayout tabLayout;
            TabLayout.Tab tabAt;
            Intrinsics.h(recyclerView, "recyclerView");
            super.onScrolled(recyclerView, i10, i11);
            RecyclerView.m layoutManager = recyclerView.getLayoutManager();
            GridLayoutManager gridLayoutManager = layoutManager instanceof GridLayoutManager ? (GridLayoutManager) layoutManager : null;
            int iFindFirstVisibleItemPosition = ((gridLayoutManager != null ? gridLayoutManager.findFirstVisibleItemPosition() : 0) + 24) / 25;
            if (iFindFirstVisibleItemPosition == ShortTVDownloadReFragment.this.curDownloadTabPosition || (zVar = (z) ShortTVDownloadReFragment.this.getMViewBinding()) == null || (tabLayout = zVar.f70224u) == null || (tabAt = tabLayout.getTabAt(iFindFirstVisibleItemPosition)) == null) {
                return;
            }
            tabAt.select();
        }
    }

    static final class f implements c0, FunctionAdapter {

        private final Function1 f51348a;

        f(Function1 function) {
            Intrinsics.h(function, "function");
            this.f51348a = function;
        }

        @Override
        public final Function a() {
            return this.f51348a;
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
            this.f51348a.invoke(obj);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.shorttv.ui.fragment.download.ShortTVDownloadReFragment$initHistory$1", f = "ShortTVDownloadReFragment.kt", l = {231, 233}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        Object L$0;
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ShortTVDownloadReFragment.this.new AnonymousClass1(continuation);
        }

        /* JADX WARN: Code duplicated, block: B:21:0x005c A[RETURN] */
        @Override
        public final Object invokeSuspend(Object obj) {
            ShortTVDownloadReFragment shortTVDownloadReFragment;
            ShortTvInnerPlayBean shortTvInnerPlayBean;
            a2 a2VarC;
            ShortTVDownloadReFragment$initHistory$1$1$1 shortTVDownloadReFragment$initHistory$1$1$1;
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.b(obj);
                String str = ShortTVDownloadReFragment.this.subjectId;
                if (str != null) {
                    shortTVDownloadReFragment = ShortTVDownloadReFragment.this;
                    ur.h hVarA0 = shortTVDownloadReFragment.g0().A0();
                    if (hVarA0 != null) {
                        this.L$0 = shortTVDownloadReFragment;
                        this.label = 1;
                        obj = hVarA0.c(str, this);
                        if (obj == objF) {
                            return objF;
                        }
                        shortTvInnerPlayBean = (ShortTvInnerPlayBean) obj;
                    } else {
                        shortTvInnerPlayBean = null;
                    }
                    a2VarC = y0.c();
                    shortTVDownloadReFragment$initHistory$1$1$1 = new ShortTVDownloadReFragment$initHistory$1$1$1(shortTVDownloadReFragment, shortTvInnerPlayBean, null);
                    this.L$0 = null;
                    this.label = 2;
                    if (kotlinx.coroutines.i.g(a2VarC, shortTVDownloadReFragment$initHistory$1$1$1, this) == objF) {
                        return objF;
                    }
                }
            } else if (i10 == 1) {
                shortTVDownloadReFragment = (ShortTVDownloadReFragment) this.L$0;
                ResultKt.b(obj);
                shortTvInnerPlayBean = (ShortTvInnerPlayBean) obj;
                a2VarC = y0.c();
                shortTVDownloadReFragment$initHistory$1$1$1 = new ShortTVDownloadReFragment$initHistory$1$1$1(shortTVDownloadReFragment, shortTvInnerPlayBean, null);
                this.L$0 = null;
                this.label = 2;
                if (kotlinx.coroutines.i.g(a2VarC, shortTVDownloadReFragment$initHistory$1$1$1, this) == objF) {
                    return objF;
                }
            } else {
                if (i10 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:38:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:39:0x00de  */
    public ShortTVDownloadReFragment() {
        Object objM453constructorimpl;
        Integer num;
        int iIntValue;
        Integer numValueOf;
        androidx.activity.result.b bVarRegisterForActivityResult = registerForActivityResult(new f.j(), new androidx.activity.result.a() {
            @Override
            public final void a(Object obj) {
                ShortTVDownloadReFragment.z1(this.f51357a, (ActivityResult) obj);
            }
        });
        Intrinsics.g(bVarRegisterForActivityResult, "registerForActivityResult(...)");
        this.loginLauncher = bVarRegisterForActivityResult;
        this.padding = a0.a(12.0f);
        this.shortTVReporter = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return ShortTVDownloadReFragment.R1();
            }
        });
        this.episodeResourceMap = new LinkedHashMap();
        this.inDownloadStatusMap = new LinkedHashMap();
        this.startPosition = 1;
        this.endPosition = 20;
        this.pageFrom = "";
        this.lastPageFrom = "";
        this.formatSize = "";
        this.downloadBtnState = Companion.AbstractC0637a.c.f51335a;
        yq.a aVar = yq.a.f76390a;
        try {
            Result.Companion companion = Result.INSTANCE;
            JsonObject jsonObjectB = com.transsion.ad.scene.d.f41155a.b("ShortTvPlayerUnlockDownloadScene");
            JsonElement jsonElement = jsonObjectB != null ? jsonObjectB.get("adUnlockEpLimitForDownload") : null;
            KClass kClassB = Reflection.b(Integer.class);
            if (Intrinsics.c(kClassB, Reflection.b(String.class))) {
                if (jsonElement != null) {
                    jsonElement.getAsString();
                }
            } else {
                if (Intrinsics.c(kClassB, Reflection.b(Integer.TYPE))) {
                    numValueOf = jsonElement != null ? Integer.valueOf(jsonElement.getAsInt()) : null;
                    if (!(numValueOf instanceof Integer)) {
                    }
                    objM453constructorimpl = Result.m453constructorimpl(numValueOf);
                    num = (Integer) (Result.m456exceptionOrNullimpl(objM453constructorimpl) == null ? objM453constructorimpl : null);
                    if (num != null) {
                        iIntValue = num.intValue();
                    } else {
                        iIntValue = 10;
                    }
                    this.adUnlockEpLimitForDownload = iIntValue;
                }
                if (Intrinsics.c(kClassB, Reflection.b(Long.TYPE))) {
                    if (jsonElement != null) {
                        jsonElement.getAsLong();
                    }
                } else if (Intrinsics.c(kClassB, Reflection.b(Boolean.TYPE)) && jsonElement != null) {
                    jsonElement.getAsBoolean();
                }
            }
            numValueOf = null;
            objM453constructorimpl = Result.m453constructorimpl(numValueOf);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        num = (Integer) (Result.m456exceptionOrNullimpl(objM453constructorimpl) == null ? objM453constructorimpl : null);
        if (num != null) {
            iIntValue = num.intValue();
        } else {
            iIntValue = 10;
        }
        this.adUnlockEpLimitForDownload = iIntValue;
    }

    public final void A1(long totalSize) {
        final ArrayList arrayList;
        ProgressBar progressBar;
        BLFrameLayout bLFrameLayout;
        ProgressBar progressBar2;
        AppCompatTextView appCompatTextView;
        AppCompatImageView appCompatImageView;
        View view;
        b0 b0VarQ;
        Map map;
        DownloadItem downloadItem;
        b0 b0VarP;
        b0 b0VarP2;
        Companion.AbstractC0637a abstractC0637a = this.downloadBtnState;
        int i10 = 0;
        Subject subject = null;
        if (abstractC0637a instanceof Companion.AbstractC0637a.d) {
            ShortTvDownloadViewModel shortTvDownloadViewModelH0 = getViewModel();
            if (shortTvDownloadViewModelH0 != null && (b0VarP2 = shortTvDownloadViewModelH0.p()) != null) {
                subject = (Subject) b0VarP2.f();
            }
            Integer num = (Integer) g0().j0().f();
            wr.b.f74733a.d(subject, num != null ? num.intValue() : 0, "minitv_ad");
            X1();
            return;
        }
        if (abstractC0637a instanceof Companion.AbstractC0637a.C0638a) {
            ShortTvDownloadViewModel shortTvDownloadViewModelH1 = getViewModel();
            if (shortTvDownloadViewModelH1 != null && (b0VarP = shortTvDownloadViewModelH1.p()) != null) {
                subject = (Subject) b0VarP.f();
            }
            Integer num2 = (Integer) g0().j0().f();
            wr.b.f74733a.d(subject, num2 != null ? num2.intValue() : 0, "minitv_pay");
            S0();
            return;
        }
        if (abstractC0637a instanceof Companion.AbstractC0637a.b) {
            jr.b.f63248a.e(getString(R$string.short_tv_no_unlock_method_available));
            return;
        }
        if (!(abstractC0637a instanceof Companion.AbstractC0637a.c)) {
            throw new NoWhenBranchMatchedException();
        }
        ur.d dVarS0 = g0().s0();
        if (dVarS0 == null || !dVarS0.e(totalSize)) {
            ArrayList arrayList2 = new ArrayList();
            ShortTvDownloadViewModel shortTvDownloadViewModelH2 = getViewModel();
            if (shortTvDownloadViewModelH2 != null && (b0VarQ = shortTvDownloadViewModelH2.q()) != null && (map = (Map) b0VarQ.f()) != null) {
                for (Map.Entry entry : map.entrySet()) {
                    if (this.episodeResourceMap.containsKey(entry.getKey()) && (downloadItem = (DownloadItem) this.episodeResourceMap.get(entry.getKey())) != null) {
                        arrayList2.add(downloadItem);
                    }
                }
            }
            wf.a.C0922a c0922a = wf.a.f74274a;
            String tag = getTAG();
            Intrinsics.g(tag, "<get-TAG>(...)");
            wf.a.C0922a.f(c0922a, tag, "onDownload ", false, 4, null);
            z zVar = (z) getMViewBinding();
            if (zVar != null && (view = zVar.G) != null) {
                cr.b.e(view);
            }
            z zVar2 = (z) getMViewBinding();
            if (zVar2 != null && (appCompatImageView = zVar2.f70214k) != null) {
                cr.b.b(appCompatImageView);
            }
            z zVar3 = (z) getMViewBinding();
            if (zVar3 != null && (appCompatTextView = zVar3.f70226w) != null) {
                cr.b.b(appCompatTextView);
            }
            z zVar4 = (z) getMViewBinding();
            if (zVar4 != null && (progressBar2 = zVar4.f70220q) != null) {
                cr.b.e(progressBar2);
            }
            z zVar5 = (z) getMViewBinding();
            if (zVar5 != null && (bLFrameLayout = zVar5.f70210g) != null) {
                cr.b.e(bLFrameLayout);
            }
            DownloadItem downloadItem2 = null;
            for (Object obj : arrayList2) {
                int i11 = i10 + 1;
                if (i10 < 0) {
                    CollectionsKt.u();
                }
                DownloadItem downloadItem3 = (DownloadItem) obj;
                String string = UUID.randomUUID().toString();
                Intrinsics.g(string, "toString(...)");
                downloadItem3.setTaskId(string);
                DownloadItem downloadItem4 = (downloadItem2 == null || downloadItem3.getEp() < downloadItem2.getEp()) ? downloadItem3 : downloadItem2;
                Z0(this.pageFrom, this.lastPageFrom, this.subjectId, downloadItem3.getResourceId(), this.ops, downloadItem3.getResourceId(), string);
                wf.a.f74274a.p("Download", new String[]{"剧集多资源，下载点击，开始下载: subjectId = " + this.subjectId + ",resourceId = " + downloadItem3.getResourceId()}, true);
                i10 = i11;
                downloadItem2 = downloadItem4;
            }
            ur.d dVarS1 = g0().s0();
            if (dVarS1 != null) {
                arrayList = arrayList2;
                dVarS1.g(this.listBean, this.subject, this.ops, this.pageFrom, this.lastPageFrom, arrayList);
            } else {
                arrayList = arrayList2;
            }
            ShortTvDownloadViewModel shortTvDownloadViewModelH3 = getViewModel();
            if (shortTvDownloadViewModelH3 != null) {
                shortTvDownloadViewModelH3.w(this.subjectId, arrayList);
            }
            kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new ShortTVDownloadReFragment$onDownload$3(this, null), 3, null);
            long size = ((long) ((arrayList.size() / 20) * 100)) + 300;
            z zVar6 = (z) getMViewBinding();
            if (zVar6 == null || (progressBar = zVar6.f70220q) == null) {
                return;
            }
            progressBar.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    ShortTVDownloadReFragment.B1(this.f51359a, arrayList);
                }
            }, size);
        }
    }

    public static final void B1(ShortTVDownloadReFragment shortTVDownloadReFragment, List list) {
        FragmentActivity activity = shortTVDownloadReFragment.getActivity();
        if (activity == null || activity.isFinishing() || activity.isDestroyed() || list.isEmpty()) {
            return;
        }
        ur.d dVarS0 = shortTVDownloadReFragment.g0().s0();
        if (dVarS0 != null) {
            dVarS0.h(activity, (DownloadItem) CollectionsKt.i0(list), list.size(), shortTVDownloadReFragment.formatSize);
        }
        shortTVDownloadReFragment.f0();
    }

    public final void C1(TabLayout.Tab tab) {
        RecyclerView recyclerView;
        if (tab == null || !tab.isSelected()) {
            return;
        }
        this.curDownloadTabPosition = tab.getPosition();
        int position = tab.getPosition() * 25;
        z zVar = (z) getMViewBinding();
        RecyclerView.m layoutManager = (zVar == null || (recyclerView = zVar.f70222s) == null) ? null : recyclerView.getLayoutManager();
        GridLayoutManager gridLayoutManager = layoutManager instanceof GridLayoutManager ? (GridLayoutManager) layoutManager : null;
        if (gridLayoutManager != null) {
            gridLayoutManager.scrollToPositionWithOffset(position, 0);
        }
    }

    private final void D1(View view) {
        ShortTVFavInfo shortTVFavInfo;
        if (hr.d.f61483a.a(view.getId(), 500L)) {
            return;
        }
        if (!yg.l.f76264a.e()) {
            jr.b.f63248a.d(R$string.short_tv_no_network_toast);
            return;
        }
        com.transsion.shorttv.utils.b bVarG1 = g1();
        String str = this.subjectId;
        Subject subject = this.subject;
        bVarG1.c(str, "", (subject == null || (shortTVFavInfo = subject.getShortTVFavInfo()) == null) ? false : shortTVFavInfo.getHasFavorite(), "minitv_download");
        ShortTvDownloadViewModel shortTvDownloadViewModelH0 = getViewModel();
        if (shortTvDownloadViewModelH0 != null) {
            shortTvDownloadViewModelH0.g(this.subject);
        }
    }

    private final void E1(int position) {
        b0 b0VarR;
        b0 b0VarR2;
        b0 b0VarR3;
        Long l10;
        Long size;
        ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter = this.shortTVEpAdapter;
        Intrinsics.e(shortTvDownloadEpListAdapter);
        List data = shortTvDownloadEpListAdapter.getData();
        if (position >= data.size()) {
            return;
        }
        nr.d dVar = (nr.d) data.get(position);
        if (dVar.c()) {
            return;
        }
        ShortTvDownloadViewModel shortTvDownloadViewModelH0 = getViewModel();
        if (shortTvDownloadViewModelH0 != null) {
            shortTvDownloadViewModelH0.v(dVar);
        }
        DownloadItem downloadItem = (DownloadItem) this.episodeResourceMap.get(Integer.valueOf(position));
        long jLongValue = 0;
        long jLongValue2 = (downloadItem == null || (size = downloadItem.getSize()) == null) ? 0L : size.longValue();
        ShortTvDownloadViewModel shortTvDownloadViewModelH1 = getViewModel();
        if (shortTvDownloadViewModelH1 != null && (b0VarR3 = shortTvDownloadViewModelH1.r()) != null && (l10 = (Long) b0VarR3.f()) != null) {
            jLongValue = l10.longValue();
        }
        if (dVar.d()) {
            dVar.g(false);
            ShortTvDownloadViewModel shortTvDownloadViewModelH2 = getViewModel();
            if (shortTvDownloadViewModelH2 != null && (b0VarR2 = shortTvDownloadViewModelH2.r()) != null) {
                b0VarR2.q(Long.valueOf(jLongValue - jLongValue2));
            }
        } else {
            dVar.g(true);
            ShortTvDownloadViewModel shortTvDownloadViewModelH3 = getViewModel();
            if (shortTvDownloadViewModelH3 != null && (b0VarR = shortTvDownloadViewModelH3.r()) != null) {
                b0VarR.q(Long.valueOf(jLongValue + jLongValue2));
            }
        }
        ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter2 = this.shortTVEpAdapter;
        if (shortTvDownloadEpListAdapter2 != null) {
            shortTvDownloadEpListAdapter2.notifyItemChanged(position, dVar);
        }
    }

    private final void F1(View view) {
        if (hr.d.f61483a.a(view.getId(), 500L)) {
            return;
        }
        Navigator navigatorC = TheRouter.c(pr.a.f69252a.b());
        Subject subject = this.subject;
        Navigator.x(navigatorC.K("id", subject != null ? subject.getSubjectId() : null), getContext(), null, 2, null);
        f0();
    }

    private final void G1() {
        AppCompatImageView appCompatImageView;
        if (hr.d.f61483a.a(-912345, 1000L)) {
            return;
        }
        if (!w1()) {
            jr.b.f63248a.d(R$string.short_tv_download_no_options_toast);
            return;
        }
        z zVar = (z) getMViewBinding();
        if (zVar == null || (appCompatImageView = zVar.f70215l) == null) {
            return;
        }
        boolean z10 = !appCompatImageView.isSelected();
        this.isSelectAll = z10;
        M1(z10);
    }

    private final void H1(long totalSize) {
        String strB;
        if (totalSize > 0) {
            wf.a.C0922a c0922a = wf.a.f74274a;
            String tag = getTAG();
            Intrinsics.g(tag, "<get-TAG>(...)");
            wf.a.C0922a.v(c0922a, tag, "observe totalSize:" + totalSize, false, 4, null);
            strB = com.blankj.utilcode.util.i.b(totalSize, 1);
            Intrinsics.e(strB);
        } else {
            strB = "";
        }
        this.formatSize = strB;
        U1();
    }

    private final void I1(View view) {
        if (hr.d.f61483a.a(view.getId(), 500L)) {
            return;
        }
        com.transsion.shorttv.utils.b.e(g1(), this.subjectId, null, 2, null);
        ur.k kVarC0 = g0().C0();
        if (kVarC0 != null) {
            String str = this.subjectId;
            Subject subject = this.subject;
            kVarC0.a(this, str, subject != null ? subject.getTitle() : null, this.pageFrom);
        }
    }

    private final void J1() {
        BiddingVideoManager.Companion.b(BiddingVideoManager.f41022t, "ShortTvPlayerUnlockDownloadScene", null, 2, null);
    }

    public final void K1() {
        FrameLayout frameLayout;
        z zVar = (z) getMViewBinding();
        if (zVar == null || (frameLayout = zVar.f70212i) == null) {
            return;
        }
        frameLayout.removeAllViews();
        frameLayout.setVisibility(8);
    }

    private final Companion.AbstractC0637a L1() {
        b0 b0VarP;
        ShortTvDownloadViewModel shortTvDownloadViewModelH0 = getViewModel();
        Subject subject = (shortTvDownloadViewModelH0 == null || (b0VarP = shortTvDownloadViewModelH0.p()) == null) ? null : (Subject) b0VarP.f();
        int iY0 = Y0();
        if (iY0 == 0) {
            return Companion.AbstractC0637a.c.f51335a;
        }
        List<Integer> unlockType = subject != null ? subject.getUnlockType() : null;
        boolean z10 = unlockType != null && unlockType.contains(1);
        boolean z11 = unlockType != null && unlockType.contains(2);
        if (subject != null && subject.getMiniTvType() == 2) {
            if (z10 || z11) {
                return z10 ? Companion.AbstractC0637a.C0638a.f51333a : new Companion.AbstractC0637a.d(true);
            }
            return Companion.AbstractC0637a.b.f51334a;
        }
        if (!z10 && !z11) {
            return Companion.AbstractC0637a.b.f51334a;
        }
        if (iY0 <= this.adUnlockEpLimitForDownload) {
            if (z11) {
                return new Companion.AbstractC0637a.d(false);
            }
            return z10 ? Companion.AbstractC0637a.C0638a.f51333a : Companion.AbstractC0637a.b.f51334a;
        }
        if (z10) {
            return Companion.AbstractC0637a.C0638a.f51333a;
        }
        return z11 ? new Companion.AbstractC0637a.d(false) : Companion.AbstractC0637a.b.f51334a;
    }

    private final void M1(final boolean selectAll) {
        FrameLayout frameLayout;
        wf.a.C0922a c0922a = wf.a.f74274a;
        String tag = getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        wf.a.C0922a.f(c0922a, tag, "selectAll click, selectAll = " + selectAll + " ", false, 4, null);
        this.isSelectAll = selectAll;
        if (!this.isRequestingData) {
            O1(selectAll);
            return;
        }
        z zVar = (z) getMViewBinding();
        if (zVar != null && (frameLayout = zVar.f70211h) != null) {
            cr.b.e(frameLayout);
        }
        this.selectAllCallback = new Function0() {
            @Override
            public final Object invoke() {
                return ShortTVDownloadReFragment.N1(this.f51361a, selectAll);
            }
        };
    }

    public static final Unit N1(ShortTVDownloadReFragment shortTVDownloadReFragment, boolean z10) {
        shortTVDownloadReFragment.O1(z10);
        shortTVDownloadReFragment.selectAllCallback = null;
        return Unit.f64096a;
    }

    private final void O1(boolean selectAll) {
        List data;
        ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter = this.shortTVEpAdapter;
        if (((shortTvDownloadEpListAdapter == null || (data = shortTvDownloadEpListAdapter.getData()) == null) ? 0 : data.size()) > 30) {
            Q1(selectAll);
        } else {
            P1(selectAll);
        }
    }

    private final void P1(boolean isSelected) {
        b0 b0VarR;
        b0 b0VarQ;
        List data;
        nr.d dVar;
        Long size;
        List data2;
        b0 b0VarQ2;
        ShortTvDownloadViewModel shortTvDownloadViewModelH0 = getViewModel();
        Map linkedHashMap = (shortTvDownloadViewModelH0 == null || (b0VarQ2 = shortTvDownloadViewModelH0.q()) == null) ? null : (Map) b0VarQ2.f();
        if (linkedHashMap == null) {
            linkedHashMap = new LinkedHashMap();
        }
        linkedHashMap.clear();
        ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter = this.shortTVEpAdapter;
        int size2 = (shortTvDownloadEpListAdapter == null || (data2 = shortTvDownloadEpListAdapter.getData()) == null) ? 0 : data2.size();
        long jLongValue = 0;
        for (int i10 = 0; i10 < size2; i10++) {
            ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter2 = this.shortTVEpAdapter;
            if (shortTvDownloadEpListAdapter2 != null && (data = shortTvDownloadEpListAdapter2.getData()) != null && (dVar = (nr.d) CollectionsKt.l0(data, i10)) != null && !dVar.c()) {
                dVar.g(isSelected);
                if (isSelected) {
                    DownloadItem downloadItem = (DownloadItem) this.episodeResourceMap.get(Integer.valueOf(i10));
                    jLongValue += (downloadItem == null || (size = downloadItem.getSize()) == null) ? 0L : size.longValue();
                    linkedHashMap.put(Integer.valueOf(i10), dVar);
                } else {
                    linkedHashMap.remove(Integer.valueOf(i10));
                }
            }
        }
        ShortTvDownloadViewModel shortTvDownloadViewModelH1 = getViewModel();
        if (shortTvDownloadViewModelH1 != null && (b0VarQ = shortTvDownloadViewModelH1.q()) != null) {
            b0VarQ.q(linkedHashMap);
        }
        ShortTvDownloadViewModel shortTvDownloadViewModelH2 = getViewModel();
        if (shortTvDownloadViewModelH2 != null && (b0VarR = shortTvDownloadViewModelH2.r()) != null) {
            b0VarR.q(Long.valueOf(jLongValue));
        }
        ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter3 = this.shortTVEpAdapter;
        if (shortTvDownloadEpListAdapter3 != null) {
            shortTvDownloadEpListAdapter3.notifyItemRangeChanged(0, size2);
        }
    }

    private final void Q0(int totalEpisode) {
        TabLayout tabLayout;
        TabLayout tabLayout2;
        TabLayout tabLayout3;
        int i10 = (totalEpisode + 24) / 25;
        if (i10 <= 1) {
            z zVar = (z) getMViewBinding();
            if (zVar == null || (tabLayout3 = zVar.f70224u) == null) {
                return;
            }
            cr.b.b(tabLayout3);
            return;
        }
        z zVar2 = (z) getMViewBinding();
        if (zVar2 != null && (tabLayout2 = zVar2.f70224u) != null) {
            tabLayout2.removeAllTabs();
            tabLayout2.addOnTabSelectedListener((TabLayout.OnTabSelectedListener) new b());
        }
        for (int i11 = 0; i11 < i10; i11++) {
            int i12 = i11 * 25;
            int i13 = i12 + 1;
            int iH = RangesKt.h(i12 + 25, totalEpisode);
            z zVar3 = (z) getMViewBinding();
            if (zVar3 != null && (tabLayout = zVar3.f70224u) != null) {
                tabLayout.addTab(tabLayout.newTab().setText(i13 + "-" + iH));
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v5, types: [T, java.util.LinkedHashMap] */
    private final void Q1(boolean isSelected) {
        b0 b0VarQ;
        FrameLayout frameLayout;
        z zVar = (z) getMViewBinding();
        if (zVar != null && (frameLayout = zVar.f70211h) != null) {
            cr.b.e(frameLayout);
        }
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        ShortTvDownloadViewModel shortTvDownloadViewModelH0 = getViewModel();
        T t10 = (shortTvDownloadViewModelH0 == null || (b0VarQ = shortTvDownloadViewModelH0.q()) == null) ? 0 : (Map) b0VarQ.f();
        objectRef.element = t10;
        if (t10 == 0) {
            objectRef.element = new LinkedHashMap();
        }
        ((Map) objectRef.element).clear();
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1(this, isSelected, objectRef, null), 3, null);
    }

    private final void R0(DownloadListBean listBean) {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        List<String> tags = listBean.getTags();
        if (tags == null || tags.isEmpty()) {
            z zVar = (z) getMViewBinding();
            if (zVar == null || (recyclerView = zVar.f70223t) == null) {
                return;
            }
            cr.b.b(recyclerView);
            return;
        }
        List<String> tags2 = listBean.getTags();
        Intrinsics.e(tags2);
        com.transsion.shorttv.ui.adapter.s sVar = new com.transsion.shorttv.ui.adapter.s(tags2);
        z zVar2 = (z) getMViewBinding();
        if (zVar2 == null || (recyclerView2 = zVar2.f70223t) == null) {
            return;
        }
        FlexboxLayoutManager flexboxLayoutManager = new FlexboxLayoutManager(recyclerView2.getContext());
        flexboxLayoutManager.c0(0);
        flexboxLayoutManager.d0(1);
        flexboxLayoutManager.e0(0);
        recyclerView2.setLayoutManager(flexboxLayoutManager);
        com.google.android.flexbox.d dVar = new com.google.android.flexbox.d(recyclerView2.getContext());
        dVar.l(3);
        dVar.i(androidx.core.content.b.getDrawable(Utils.a(), R$drawable.short_tv_space_tag_decoration));
        recyclerView2.addItemDecoration(dVar);
        recyclerView2.setAdapter(sVar);
    }

    public static final com.transsion.shorttv.utils.b R1() {
        return new com.transsion.shorttv.utils.b();
    }

    private final void S0() {
        b0 b0VarP;
        final ur.i iVarB0 = g0().B0();
        if (iVarB0 == null) {
            return;
        }
        ShortTvDownloadViewModel shortTvDownloadViewModelH0 = getViewModel();
        final Subject subject = (shortTvDownloadViewModelH0 == null || (b0VarP = shortTvDownloadViewModelH0.p()) == null) ? null : (Subject) b0VarP.f();
        Integer num = (Integer) g0().j0().f();
        final int iIntValue = num != null ? num.intValue() : 0;
        if (iVarB0.a()) {
            U0(iVarB0.getUserId(), subject, iIntValue);
        } else {
            x1(iVarB0, new Function0() {
                @Override
                public final Object invoke() {
                    return ShortTVDownloadReFragment.T0(this.f51366a, iVarB0, subject, iIntValue);
                }
            });
        }
    }

    private final void S1() {
        FrameLayout frameLayout;
        z zVar = (z) getMViewBinding();
        if (zVar == null || (frameLayout = zVar.f70212i) == null) {
            return;
        }
        frameLayout.removeAllViews();
        frameLayout.setVisibility(0);
        frameLayout.addView(e1());
    }

    public static final Unit T0(ShortTVDownloadReFragment shortTVDownloadReFragment, ur.i iVar, Subject subject, int i10) {
        b0 b0VarJ;
        shortTVDownloadReFragment.isContentDataRequested = false;
        ShortTvViewModel shortTvViewModelG0 = shortTVDownloadReFragment.g0();
        String str = shortTVDownloadReFragment.subjectId;
        if (str == null) {
            str = "";
        }
        shortTvViewModelG0.M(str);
        shortTVDownloadReFragment.startPosition = 1;
        shortTVDownloadReFragment.endPosition = 20;
        c cVar = shortTVDownloadReFragment.new c(iVar, subject, i10);
        ShortTvDownloadViewModel shortTvDownloadViewModelH0 = shortTVDownloadReFragment.getViewModel();
        if (shortTvDownloadViewModelH0 != null && (b0VarJ = shortTvDownloadViewModelH0.j()) != null) {
            b0VarJ.j(shortTVDownloadReFragment.getViewLifecycleOwner(), cVar);
        }
        shortTVDownloadReFragment.showLoading();
        ShortTvDownloadViewModel shortTvDownloadViewModelH1 = shortTVDownloadReFragment.getViewModel();
        if (shortTvDownloadViewModelH1 != null) {
            String str2 = shortTVDownloadReFragment.subjectId;
            if (str2 == null) {
                str2 = "";
            }
            shortTvDownloadViewModelH1.n(str2, true);
        }
        ShortTvDownloadViewModel shortTvDownloadViewModelH2 = shortTVDownloadReFragment.getViewModel();
        if (shortTvDownloadViewModelH2 != null) {
            String str3 = shortTVDownloadReFragment.subjectId;
            shortTvDownloadViewModelH2.i(str3 != null ? str3 : "", shortTVDownloadReFragment.startPosition, shortTVDownloadReFragment.endPosition);
        }
        return Unit.f64096a;
    }

    private final void T1(DownloadListBean listBean) {
        List data;
        String subjectId;
        ShortTvDownloadInfoExtendView shortTvDownloadInfoExtendView;
        BLImageView bLImageView;
        AppCompatTextView appCompatTextView;
        ShapeableImageView shapeableImageView;
        String thumbnail;
        String url;
        AppCompatTextView appCompatTextView2;
        AppCompatTextView appCompatTextView3;
        this.listBean = listBean;
        if (this.isContentDataRequested) {
            return;
        }
        Integer totalEpisode = listBean.getTotalEpisode();
        if (totalEpisode != null && totalEpisode.intValue() == 0) {
            return;
        }
        this.isContentDataRequested = true;
        z zVar = (z) getMViewBinding();
        if (zVar != null && (appCompatTextView3 = zVar.E) != null) {
            appCompatTextView3.setText(listBean.getSubjectTitle());
        }
        z zVar2 = (z) getMViewBinding();
        if (zVar2 != null && (appCompatTextView2 = zVar2.D) != null) {
            appCompatTextView2.setText(listBean.getSubjectTitle());
        }
        z zVar3 = (z) getMViewBinding();
        if (zVar3 != null && (shapeableImageView = zVar3.f70217n) != null) {
            er.b.a aVar = er.b.f59791a;
            Context contextRequireContext = requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            Cover cover = listBean.getCover();
            String str = (cover == null || (url = cover.getUrl()) == null) ? "" : url;
            int i10 = R$color.short_tv_module_04;
            int width = shapeableImageView.getWidth();
            int height = shapeableImageView.getHeight();
            Cover cover2 = listBean.getCover();
            aVar.i(contextRequireContext, shapeableImageView, str, (32448 & 8) != 0 ? R$color.image_skeleton : i10, (32448 & 16) != 0 ? aVar.c() : width, (32448 & 32) != 0 ? aVar.b() : height, (32448 & 64) != 0 ? 0 : 0, (32448 & 128) != 0, (32448 & 256) != 0 ? "" : (cover2 == null || (thumbnail = cover2.getThumbnail()) == null) ? "" : thumbnail, (32448 & 512) != 0, (32448 & 1024) != 0, (32448 & 2048) != 0 ? false : false, (32448 & 4096) != 0 ? false : false, (32448 & 8192) != 0 ? false : false, (32448 & 16384) != 0 ? 25 : 0);
        }
        R0(listBean);
        String genre = listBean.getGenre();
        if (genre != null && genre.length() != 0) {
            StringBuffer stringBuffer = new StringBuffer();
            String releaseDate = listBean.getReleaseDate();
            if (releaseDate != null && releaseDate.length() > 0) {
                Date dateL = com.blankj.utilcode.util.c0.l(listBean.getReleaseDate(), "yyyy-MM-dd");
                Calendar calendar = Calendar.getInstance();
                calendar.setTime(dateL);
                stringBuffer.append(String.valueOf(calendar.get(1)));
            }
            String genre2 = listBean.getGenre();
            if (genre2 != null && genre2.length() > 0) {
                if (stringBuffer.length() > 0) {
                    stringBuffer.append(" • ");
                }
                String genre3 = listBean.getGenre();
                stringBuffer.append(genre3 != null ? StringsKt.Q(genre3, "，", " • ", false, 4, null) : null);
            }
            String countryName = listBean.getCountryName();
            if (countryName != null && countryName.length() > 0) {
                if (stringBuffer.length() > 0) {
                    stringBuffer.append(" • ");
                }
                stringBuffer.append(listBean.getCountryName());
            }
            z zVar4 = (z) getMViewBinding();
            if (zVar4 != null && (appCompatTextView = zVar4.f70229z) != null) {
                appCompatTextView.setText(stringBuffer);
            }
        }
        z zVar5 = (z) getMViewBinding();
        if (zVar5 != null && (bLImageView = zVar5.f70218o) != null) {
            ShortTVFavInfo shortTVFavInfo = listBean.getShortTVFavInfo();
            bLImageView.setSelected(shortTVFavInfo != null ? shortTVFavInfo.getHasFavorite() : false);
        }
        z zVar6 = (z) getMViewBinding();
        if (zVar6 != null && (shortTvDownloadInfoExtendView = zVar6.f70213j) != null) {
            String description = listBean.getDescription();
            if (description == null) {
                description = "";
            }
            shortTvDownloadInfoExtendView.showData(description);
        }
        Subject subject = this.subject;
        int totalEpisode2 = subject != null ? subject.getTotalEpisode() : 0;
        Integer totalEpisode3 = listBean.getTotalEpisode();
        int iMax = Math.max(totalEpisode2, totalEpisode3 != null ? totalEpisode3.intValue() : 0);
        this.totalEpisode = iMax;
        if (iMax > 0) {
            Q0(iMax);
            int i11 = this.totalEpisode;
            for (int i12 = 0; i12 < i11; i12++) {
                ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter = this.shortTVEpAdapter;
                if (shortTvDownloadEpListAdapter != null && (data = shortTvDownloadEpListAdapter.getData()) != null) {
                    Subject subject2 = this.subject;
                    data.add(new nr.d((subject2 == null || (subjectId = subject2.getSubjectId()) == null) ? "" : subjectId, i12, false, this.inDownloadStatusMap.containsKey(Integer.valueOf(i12)), null, 20, null));
                }
            }
            ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter2 = this.shortTVEpAdapter;
            if (shortTvDownloadEpListAdapter2 != null) {
                shortTvDownloadEpListAdapter2.notifyItemRangeChanged(0, this.totalEpisode);
            }
        }
    }

    public final void U0(String userId, Subject dotSubject, int dotEp) {
        b0 b0VarP;
        Subject subject;
        Context context;
        if (!yg.l.f76264a.e()) {
            jr.b.f63248a.e(Utils.a().getString(R$string.short_tv_no_network_toast));
            return;
        }
        if (userId != null) {
            String str = userId.length() > 0 ? userId : null;
            if (str != null) {
                ShortTvDownloadViewModel shortTvDownloadViewModelH0 = getViewModel();
                if (shortTvDownloadViewModelH0 == null || (b0VarP = shortTvDownloadViewModelH0.p()) == null || (subject = (Subject) b0VarP.f()) == null) {
                    return;
                }
                SkuInfo skuInfo = subject.getSkuInfo();
                if (skuInfo == null) {
                    wf.a.C0922a c0922a = wf.a.f74274a;
                    String tag = getTAG();
                    Intrinsics.g(tag, "<get-TAG>(...)");
                    wf.a.C0922a.l(c0922a, tag, "callPayMethod failed, no sku info.", false, 4, null);
                    return;
                }
                String skuId = skuInfo.getSkuId();
                if (skuId != null) {
                    String str2 = skuId.length() > 0 ? skuId : null;
                    if (str2 != null) {
                        String subjectId = subject.getSubjectId();
                        if (subjectId != null) {
                            String str3 = subjectId.length() > 0 ? subjectId : null;
                            if (str3 == null || (context = getContext()) == null) {
                                return;
                            }
                            com.transsion.shorttv.order.d.f51037a.d(context, new CreatePaynicornOrderReqBean("MovieBox", str2, str, null, null, null, MapsKt.f(TuplesKt.a("subject_id", str3)), false, null, Sdk$SDKError.Reason.DEEPLINK_OPEN_FAILED_VALUE, null), new d(dotSubject, dotEp, context, str));
                            return;
                        }
                        return;
                    }
                }
                wf.a.C0922a c0922a2 = wf.a.f74274a;
                String tag2 = getTAG();
                Intrinsics.g(tag2, "<get-TAG>(...)");
                wf.a.C0922a.l(c0922a2, tag2, "callPayMethod failed, skuId is empty.", false, 4, null);
                return;
            }
        }
        wf.a.C0922a c0922a3 = wf.a.f74274a;
        String tag3 = getTAG();
        Intrinsics.g(tag3, "<get-TAG>(...)");
        wf.a.C0922a.l(c0922a3, tag3, "callPayMethod failed, userId is empty.", false, 4, null);
    }

    public final void U1() {
        Companion.AbstractC0637a abstractC0637aL1 = L1();
        this.downloadBtnState = abstractC0637aL1;
        V1(abstractC0637aL1);
    }

    private final void V0() {
        b0 b0VarP;
        Subject subject;
        ShortTvDownloadViewModel shortTvDownloadViewModelH0 = getViewModel();
        if (shortTvDownloadViewModelH0 == null || (b0VarP = shortTvDownloadViewModelH0.p()) == null || (subject = (Subject) b0VarP.f()) == null) {
            return;
        }
        if (!subject.getUnlockType().contains(1)) {
            this.prevSelectedLockedCount = Y0();
            return;
        }
        int iY0 = Y0();
        if (iY0 > this.adUnlockEpLimitForDownload && iY0 > this.prevSelectedLockedCount) {
            jr.b.f63248a.e(getString(R$string.short_tv_download_ad_unlock_limit_reached));
        }
        this.prevSelectedLockedCount = iY0;
    }

    private final void V1(Companion.AbstractC0637a state) {
        LinearLayoutCompat linearLayoutCompat;
        AppCompatTextView appCompatTextView;
        AppCompatImageView appCompatImageView;
        AppCompatTextView appCompatTextView2;
        AppCompatImageView appCompatImageView2;
        AppCompatTextView appCompatTextView3;
        AppCompatImageView appCompatImageView3;
        String string;
        AppCompatTextView appCompatTextView4;
        AppCompatImageView appCompatImageView4;
        z zVar = (z) getMViewBinding();
        if (zVar == null || (linearLayoutCompat = zVar.f70207d) == null) {
            return;
        }
        if (state instanceof Companion.AbstractC0637a.c) {
            linearLayoutCompat.setBackgroundResource(R$drawable.short_tv_btn_normal);
            z zVar2 = (z) getMViewBinding();
            if (zVar2 != null && (appCompatImageView4 = zVar2.f70214k) != null) {
                appCompatImageView4.setVisibility(8);
            }
            if (this.formatSize.length() > 0) {
                string = getString(R$string.short_tv_download) + " · " + this.formatSize;
            } else {
                string = getString(R$string.short_tv_download);
                Intrinsics.e(string);
            }
            z zVar3 = (z) getMViewBinding();
            if (zVar3 == null || (appCompatTextView4 = zVar3.f70226w) == null) {
                return;
            }
            appCompatTextView4.setText(string);
            return;
        }
        if (state instanceof Companion.AbstractC0637a.b) {
            linearLayoutCompat.setBackgroundResource(R$drawable.short_tv_locked_btn_buy_bg);
            z zVar4 = (z) getMViewBinding();
            if (zVar4 != null && (appCompatImageView3 = zVar4.f70214k) != null) {
                appCompatImageView3.setVisibility(8);
            }
            z zVar5 = (z) getMViewBinding();
            if (zVar5 == null || (appCompatTextView3 = zVar5.f70226w) == null) {
                return;
            }
            appCompatTextView3.setText(getString(R$string.short_tv_download));
            return;
        }
        if (state instanceof Companion.AbstractC0637a.d) {
            linearLayoutCompat.setBackgroundResource(R$drawable.short_tv_locked_btn_buy_bg);
            z zVar6 = (z) getMViewBinding();
            if (zVar6 != null && (appCompatImageView2 = zVar6.f70214k) != null) {
                appCompatImageView2.setImageResource(R$mipmap.short_tv_ic_lock_watch_ad);
                appCompatImageView2.setVisibility(0);
            }
            z zVar7 = (z) getMViewBinding();
            if (zVar7 == null || (appCompatTextView2 = zVar7.f70226w) == null) {
                return;
            }
            appCompatTextView2.setText(getString(R$string.short_tv_download_watch_ad_to_download));
            return;
        }
        if (!(state instanceof Companion.AbstractC0637a.C0638a)) {
            throw new NoWhenBranchMatchedException();
        }
        linearLayoutCompat.setBackgroundResource(R$drawable.short_tv_locked_btn_buy_bg);
        z zVar8 = (z) getMViewBinding();
        if (zVar8 != null && (appCompatImageView = zVar8.f70214k) != null) {
            appCompatImageView.setVisibility(8);
        }
        z zVar9 = (z) getMViewBinding();
        if (zVar9 == null || (appCompatTextView = zVar9.f70226w) == null) {
            return;
        }
        appCompatTextView.setText(getString(R$string.short_tv_download_buy_full_series_to_download));
    }

    private final void W0(int end) {
        int i10 = this.totalEpisode;
        if (end >= i10) {
            this.isRequestingData = false;
            Function0 function0 = this.selectAllCallback;
            if (function0 != null) {
                function0.invoke();
                return;
            }
            return;
        }
        int i11 = i10 - end;
        if (i11 > 20) {
            this.startPosition = end + 1;
            this.endPosition = end + 20;
        } else {
            int i12 = end + 1;
            this.startPosition = i12;
            this.endPosition = (i12 + i11) - 1;
        }
        y1(true);
    }

    private final void W1(List list, int start, int end) {
        HashMap mapG;
        b0 b0VarR;
        DownloadItem downloadItemF;
        List data;
        List data2;
        List data3;
        nr.d dVar;
        b0 b0VarR2;
        Long l10;
        wf.a.C0922a c0922a = wf.a.f74274a;
        String tag = getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        wf.a.C0922a.f(c0922a, tag, "updateList ,  size = " + (list != null ? Integer.valueOf(list.size()) : null), false, 4, null);
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            this.isRequestingData = false;
            Function0 function0 = this.selectAllCallback;
            if (function0 != null) {
                function0.invoke();
                return;
            }
            return;
        }
        ShortTvDownloadViewModel shortTvDownloadViewModelH0 = getViewModel();
        long jLongValue = (shortTvDownloadViewModelH0 == null || (b0VarR2 = shortTvDownloadViewModelH0.r()) == null || (l10 = (Long) b0VarR2.f()) == null) ? 0L : l10.longValue();
        String tag2 = getTAG();
        Intrinsics.g(tag2, "<get-TAG>(...)");
        wf.a.C0922a.f(c0922a, tag2, "before curTotalSize:" + jLongValue, false, 4, null);
        int size = list2.size();
        long jLongValue2 = jLongValue;
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            int i12 = (start + i11) - 1;
            DownloadItem downloadItem = (DownloadItem) list.get(i11);
            ur.d dVarS0 = g0().s0();
            if (dVarS0 != null) {
                String resourceId = downloadItem.getResourceId();
                if (resourceId == null) {
                    resourceId = downloadItem.getUrl();
                }
                downloadItemF = dVarS0.f(resourceId);
            } else {
                downloadItemF = null;
            }
            if (this.isSelectAll) {
                if (downloadItemF != null) {
                    downloadItemF.setCheck(true);
                }
                downloadItem.setCheck(true);
                Long size2 = downloadItem.getSize();
                jLongValue2 += size2 != null ? size2.longValue() : 0L;
            }
            if (downloadItemF != null) {
                downloadItemF.setUploadBy(downloadItem.getUploadBy());
                i10++;
                downloadItemF.setPosition(i12);
                this.episodeResourceMap.put(Integer.valueOf(i12), downloadItemF);
                wf.a.C0922a c0922a2 = wf.a.f74274a;
                String tag3 = getTAG();
                Intrinsics.g(tag3, "<get-TAG>(...)");
                wf.a.C0922a.f(c0922a2, tag3, "in download ep:" + downloadItemF.getEp() + ", status:" + downloadItemF.getStatus(), false, 4, null);
            } else {
                downloadItem.setPosition(i12);
                i10++;
                this.episodeResourceMap.put(Integer.valueOf(i12), downloadItem);
            }
            ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter = this.shortTVEpAdapter;
            if (shortTvDownloadEpListAdapter != null && (data3 = shortTvDownloadEpListAdapter.getData()) != null && (dVar = (nr.d) CollectionsKt.l0(data3, i12)) != null) {
                dVar.f(downloadItem.getEpisodeItem());
            }
            if (downloadItemF != null && downloadItemF.isAvailable()) {
                this.inDownloadStatusMap.put(Integer.valueOf(i12), downloadItemF);
                wf.a.C0922a c0922a3 = wf.a.f74274a;
                String tag4 = getTAG();
                Intrinsics.g(tag4, "<get-TAG>(...)");
                wf.a.C0922a.v(c0922a3, tag4, "unable index:" + i12, false, 4, null);
                ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter2 = this.shortTVEpAdapter;
                if (i12 < ((shortTvDownloadEpListAdapter2 == null || (data2 = shortTvDownloadEpListAdapter2.getData()) == null) ? 0 : data2.size())) {
                    ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter3 = this.shortTVEpAdapter;
                    nr.d dVar2 = (shortTvDownloadEpListAdapter3 == null || (data = shortTvDownloadEpListAdapter3.getData()) == null) ? null : (nr.d) CollectionsKt.l0(data, i12);
                    if (dVar2 != null) {
                        dVar2.e(true);
                    }
                }
            }
        }
        ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter4 = this.shortTVEpAdapter;
        if (shortTvDownloadEpListAdapter4 != null) {
            shortTvDownloadEpListAdapter4.notifyItemRangeChanged(start - 1, list.size());
        }
        wf.a.C0922a c0922a4 = wf.a.f74274a;
        String tag5 = getTAG();
        Intrinsics.g(tag5, "<get-TAG>(...)");
        wf.a.C0922a.v(c0922a4, tag5, "update data curTotalSize:" + jLongValue2, false, 4, null);
        ShortTvDownloadViewModel shortTvDownloadViewModelH1 = getViewModel();
        if (shortTvDownloadViewModelH1 != null && (b0VarR = shortTvDownloadViewModelH1.r()) != null) {
            b0VarR.q(Long.valueOf(jLongValue2));
        }
        qi.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.k(true);
        }
        qi.b logViewConfig2 = getLogViewConfig();
        if (logViewConfig2 != null && (mapG = logViewConfig2.g()) != null) {
            mapG.put("size", String.valueOf(i10));
        }
        W0(end);
    }

    private final void X0() {
        AppCompatTextView appCompatTextView;
        AppCompatImageView appCompatImageView;
        List data;
        b0 b0VarQ;
        Map map;
        ShortTvDownloadViewModel shortTvDownloadViewModelH0 = getViewModel();
        int size = (shortTvDownloadViewModelH0 == null || (b0VarQ = shortTvDownloadViewModelH0.q()) == null || (map = (Map) b0VarQ.f()) == null) ? 0 : map.size();
        ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter = this.shortTVEpAdapter;
        int size2 = ((shortTvDownloadEpListAdapter == null || (data = shortTvDownloadEpListAdapter.getData()) == null) ? 0 : data.size()) - this.inDownloadStatusMap.size();
        wf.a.C0922a c0922a = wf.a.f74274a;
        String tag = getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        wf.a.C0922a.f(c0922a, tag, "checkSelectAll, selectedCount: " + size + ", totalSelectable:" + size2, false, 4, null);
        this.isSelectAll = size == size2;
        z zVar = (z) getMViewBinding();
        if (zVar != null && (appCompatImageView = zVar.f70215l) != null) {
            appCompatImageView.setSelected(this.isSelectAll);
        }
        z zVar2 = (z) getMViewBinding();
        if (zVar2 == null || (appCompatTextView = zVar2.f70227x) == null) {
            return;
        }
        appCompatTextView.setVisibility(size > 0 ? 0 : 8);
        appCompatTextView.setText(Utils.a().getString(R$string.short_tv_download_ep_selected_count, String.valueOf(size)));
    }

    private final void X1() {
        b0 b0VarP;
        if (!yg.l.f76264a.e()) {
            jr.b.f63248a.e(Utils.a().getString(R$string.short_tv_no_network_toast));
            return;
        }
        final FragmentActivity activity = getActivity();
        if (activity == null) {
            return;
        }
        z zVar = (z) getMViewBinding();
        Subject subject = null;
        final LinearLayoutCompat linearLayoutCompat = zVar != null ? zVar.f70207d : null;
        if (linearLayoutCompat != null) {
            linearLayoutCompat.setEnabled(false);
        }
        STCommonVideoAdHelper sTCommonVideoAdHelper = this.downloadVideoAdHelper;
        if (sTCommonVideoAdHelper != null) {
            STCommonVideoAdHelper.q(sTCommonVideoAdHelper, 0, 1, null);
        }
        this.downloadVideoAdHelper = new STCommonVideoAdHelper("ShortTvPlayerUnlockDownloadScene", androidx.p009lifecycle.v.a(this));
        ShortTvDownloadViewModel shortTvDownloadViewModelH0 = getViewModel();
        if (shortTvDownloadViewModelH0 != null && (b0VarP = shortTvDownloadViewModelH0.p()) != null) {
            subject = (Subject) b0VarP.f();
        }
        final Subject subject2 = subject;
        Integer num = (Integer) g0().j0().f();
        final int iIntValue = num != null ? num.intValue() : 0;
        STCommonVideoAdHelper sTCommonVideoAdHelper2 = this.downloadVideoAdHelper;
        if (sTCommonVideoAdHelper2 != null) {
            sTCommonVideoAdHelper2.t(new Function3() {
                @Override
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return ShortTVDownloadReFragment.Y1(this.f51370a, activity, subject2, iIntValue, linearLayoutCompat, ((Boolean) obj).booleanValue(), (String) obj2, (String) obj3);
                }
            });
        }
    }

    private final int Y0() {
        b0 b0VarQ;
        Map map;
        b0 b0VarP;
        ShortTvDownloadViewModel shortTvDownloadViewModelH0 = getViewModel();
        Subject subject = (shortTvDownloadViewModelH0 == null || (b0VarP = shortTvDownloadViewModelH0.p()) == null) ? null : (Subject) b0VarP.f();
        ShortTvDownloadViewModel shortTvDownloadViewModelH1 = getViewModel();
        int i10 = 0;
        if (shortTvDownloadViewModelH1 != null && (b0VarQ = shortTvDownloadViewModelH1.q()) != null && (map = (Map) b0VarQ.f()) != null) {
            Iterator it = map.entrySet().iterator();
            while (it.hasNext()) {
                if (dr.b.f59061a.c(subject, ((nr.d) ((Map.Entry) it.next()).getValue()).a())) {
                    i10++;
                }
            }
        }
        return i10;
    }

    public static final Unit Y1(final ShortTVDownloadReFragment shortTVDownloadReFragment, FragmentActivity fragmentActivity, final Subject subject, final int i10, final LinearLayoutCompat linearLayoutCompat, boolean z10, String errorCode, String errorMessage) {
        Intrinsics.h(errorCode, "errorCode");
        Intrinsics.h(errorMessage, "errorMessage");
        if (z10) {
            STCommonVideoAdHelper sTCommonVideoAdHelper = shortTVDownloadReFragment.downloadVideoAdHelper;
            if (sTCommonVideoAdHelper != null) {
                sTCommonVideoAdHelper.u(fragmentActivity, new Function0() {
                    @Override
                    public final Object invoke() {
                        return ShortTVDownloadReFragment.Z1(this.f51375a);
                    }
                }, new Function1() {
                    @Override
                    public final Object invoke(Object obj) {
                        return ShortTVDownloadReFragment.a2(this.f51376a, linearLayoutCompat, subject, i10, ((Boolean) obj).booleanValue());
                    }
                });
            }
        } else {
            wr.b.f74733a.l(subject, i10, "fail", errorMessage, errorCode, "download");
            jr.b.f63248a.d(R$string.short_tv_ad_unlocked_get_ad_failed);
            shortTVDownloadReFragment.downloadVideoAdHelper = null;
            if (linearLayoutCompat != null) {
                linearLayoutCompat.setEnabled(true);
            }
        }
        return Unit.f64096a;
    }

    private final void Z0(String pageName, String pageFrom, String subjectId, String miniId, String ops, String resourceId, String taskId) {
        HashMap map = new HashMap();
        map.put(WebConstants.PAGE_FROM, pageFrom);
        map.put("subject_id", subjectId);
        map.put("mini_id", miniId);
        map.put("ops", ops);
        map.put("resource_id", resourceId);
        map.put("task_id", taskId);
        map.put("module_name", this.moduleName);
        map.put("is_select_all", this.isSelectAll ? "1" : "0");
        qi.h hVar = qi.h.f69682a;
        if (pageName == null) {
            pageName = "download_click";
        }
        hVar.q(pageName, "download_click", map);
        Bundle bundle = new Bundle();
        bundle.putString("resource_id", resourceId);
        bundle.putString("subject_id", subjectId);
        ur.f fVarY0 = g0().y0();
        if (fVarY0 != null) {
            fVarY0.b("download_click", bundle, getContext());
        }
    }

    public static final Unit Z1(ShortTVDownloadReFragment shortTVDownloadReFragment) {
        b0 b0VarP;
        Subject subject;
        b0 b0VarQ;
        Map map;
        Collection collectionValues;
        ShortTvDownloadViewModel shortTvDownloadViewModelH0;
        ShortTvDownloadViewModel shortTvDownloadViewModelH1 = shortTVDownloadReFragment.getViewModel();
        if (shortTvDownloadViewModelH1 == null || (b0VarP = shortTvDownloadViewModelH1.p()) == null || (subject = (Subject) b0VarP.f()) == null) {
            return Unit.f64096a;
        }
        Companion.AbstractC0637a abstractC0637a = shortTVDownloadReFragment.downloadBtnState;
        Companion.AbstractC0637a.d dVar = abstractC0637a instanceof Companion.AbstractC0637a.d ? (Companion.AbstractC0637a.d) abstractC0637a : null;
        if (dVar != null ? dVar.a() : false) {
            dr.b.f59061a.f(subject);
        } else {
            ShortTvDownloadViewModel shortTvDownloadViewModelH2 = shortTVDownloadReFragment.getViewModel();
            if (shortTvDownloadViewModelH2 != null && (b0VarQ = shortTvDownloadViewModelH2.q()) != null && (map = (Map) b0VarQ.f()) != null && (collectionValues = map.values()) != null) {
                ArrayList arrayList = new ArrayList();
                for (Object obj : collectionValues) {
                    if (dr.b.f59061a.c(subject, ((nr.d) obj).a())) {
                        arrayList.add(obj);
                    }
                }
                ArrayList arrayList2 = new ArrayList();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ShortTVItem shortTVItemA = ((nr.d) it.next()).a();
                    if (shortTVItemA != null) {
                        arrayList2.add(shortTVItemA);
                    }
                }
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    dr.b.f59061a.g(subject, (ShortTVItem) it2.next(), 1);
                }
            }
        }
        shortTVDownloadReFragment.g0().Q0(subject.getAdUnlockedEps());
        String subjectId = subject.getSubjectId();
        if (subjectId != null && (shortTvDownloadViewModelH0 = shortTVDownloadReFragment.getViewModel()) != null) {
            shortTvDownloadViewModelH0.t(subjectId);
        }
        return Unit.f64096a;
    }

    private final View a1() {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(requireContext());
        int i10 = R$layout.short_tv_layout_download_loading;
        z zVar = (z) getMViewBinding();
        return layoutInflaterFrom.inflate(i10, (ViewGroup) (zVar != null ? zVar.f70212i : null), false);
    }

    public static final Unit a2(ShortTVDownloadReFragment shortTVDownloadReFragment, LinearLayoutCompat linearLayoutCompat, Subject subject, int i10, boolean z10) {
        b0 b0VarR;
        Long l10;
        shortTVDownloadReFragment.downloadVideoAdHelper = null;
        if (linearLayoutCompat != null) {
            linearLayoutCompat.setEnabled(true);
        }
        if (z10) {
            wr.b.f74733a.l(subject, i10, NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, "", "0", "download");
            shortTVDownloadReFragment.g0().S0();
            shortTVDownloadReFragment.U1();
            ShortTvDownloadViewModel shortTvDownloadViewModelH0 = shortTVDownloadReFragment.getViewModel();
            shortTVDownloadReFragment.A1((shortTvDownloadViewModelH0 == null || (b0VarR = shortTvDownloadViewModelH0.r()) == null || (l10 = (Long) b0VarR.f()) == null) ? 0L : l10.longValue());
            jr.b.f63248a.d(R$string.short_tv_locked_episode_unlocked);
        } else {
            wr.b.f74733a.l(subject, i10, "cancel", "", "0", "download");
        }
        return Unit.f64096a;
    }

    private final View b1(Context context, String desText, boolean showRightBtn) {
        final DefaultView defaultView = new DefaultView(context, DefaultView.ModelStyle.MODEL_STYLE_NIGHT);
        defaultView.setStyle(DefaultView.DefaultViewStyle.STYLE_DES_BTN);
        defaultView.setDescText(desText);
        defaultView.setDescTextColor(-1);
        defaultView.setStyle(DefaultView.DefaultViewStyle.STYLE_NO_IMAGE);
        defaultView.setBtnVisibility(showRightBtn ? 0 : 8);
        String string = context.getString(R$string.short_tv_go_to_setting);
        Intrinsics.g(string, "getString(...)");
        defaultView.setBtnText(string);
        defaultView.setTipOperationVisibility(8);
        defaultView.setBtnBg(androidx.core.content.b.getDrawable(Utils.a(), R$drawable.short_tv_download_empty_btn_bg));
        defaultView.setBtnTextColor(-1);
        defaultView.setBackgroundColor(0);
        defaultView.setBtnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                ShortTVDownloadReFragment.c1(view);
            }
        });
        defaultView.setLeftBtnVisibility(0);
        String string2 = context.getString(R$string.short_tv_Retry);
        Intrinsics.g(string2, "getString(...)");
        defaultView.setLeftBtnText(string2);
        defaultView.setLeftBtnBg(androidx.core.content.b.getDrawable(Utils.a(), R$drawable.short_tv_download_empty_btn_bg));
        defaultView.setLeftBtnTextColor(-1);
        defaultView.setLeftBtnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                ShortTVDownloadReFragment.d1(this.f51363a, defaultView, view);
            }
        });
        defaultView.setTitleViewVisibility(8);
        int iA = a0.a(16.0f);
        defaultView.setPadding(iA, a0.a(110.0f), iA, 0);
        defaultView.setVisibility(0);
        return defaultView;
    }

    public static final void c1(View view) {
        NetworkUtils.v();
    }

    public static final void d1(ShortTVDownloadReFragment shortTVDownloadReFragment, DefaultView defaultView, View view) {
        shortTVDownloadReFragment.showLoading();
        if (shortTVDownloadReFragment.startPosition == 1) {
            shortTVDownloadReFragment.y1(false);
        } else {
            shortTVDownloadReFragment.y1(true);
        }
        defaultView.setVisibility(8);
    }

    private final View e1() {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        String string = Utils.a().getString(R$string.short_tv_error_load_failed);
        Intrinsics.g(string, "getString(...)");
        return b1(contextRequireContext, string, false);
    }

    private final View f1() {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        String string = Utils.a().getString(R$string.short_tv_no_network_title);
        Intrinsics.g(string, "getString(...)");
        return b1(contextRequireContext, string, true);
    }

    private final com.transsion.shorttv.utils.b g1() {
        return (com.transsion.shorttv.utils.b) this.shortTVReporter.getValue();
    }

    public static final void i1(ShortTVDownloadReFragment shortTVDownloadReFragment, View view) {
        shortTVDownloadReFragment.f0();
    }

    private final void initHistory() {
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new AnonymousClass1(null), 3, null);
    }

    private final void initView() {
        z zVar;
        Group group;
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        AppBarLayout appBarLayout;
        AppBarLayout appBarLayout2;
        AppCompatTextView appCompatTextView;
        z zVar2 = (z) getMViewBinding();
        if (zVar2 != null && (appCompatTextView = zVar2.D) != null) {
            Subject subject = this.subject;
            appCompatTextView.setText(subject != null ? subject.getTitle() : null);
        }
        z zVar3 = (z) getMViewBinding();
        if (zVar3 != null && (appBarLayout2 = zVar3.f70205b) != null) {
            appBarLayout2.setExpanded(!this.scroll2Download);
        }
        z zVar4 = (z) getMViewBinding();
        ViewGroup.LayoutParams layoutParams = (zVar4 == null || (appBarLayout = zVar4.f70205b) == null) ? null : appBarLayout.getLayoutParams();
        CoordinatorLayout.f fVar = layoutParams instanceof CoordinatorLayout.f ? (CoordinatorLayout.f) layoutParams : null;
        AppBarLayout.Behavior behavior = new AppBarLayout.Behavior() {

            public static final class a extends AppBarLayout.Behavior.a {
                a() {
                }

                @Override
                public boolean a(AppBarLayout appBarLayout) {
                    Intrinsics.h(appBarLayout, "appBarLayout");
                    return true;
                }
            }

            {
                u0(new a());
            }

            @Override
            public void q(CoordinatorLayout coordinatorLayout, AppBarLayout child, View target, int dx2, int dy2, int[] consumed, int type) {
                Intrinsics.h(coordinatorLayout, "coordinatorLayout");
                Intrinsics.h(child, "child");
                Intrinsics.h(target, "target");
                Intrinsics.h(consumed, "consumed");
                if (target instanceof RecyclerView) {
                    if (dy2 > 0 && target.canScrollVertically(1)) {
                        return;
                    }
                    if (dy2 < 0 && target.canScrollVertically(-1)) {
                        return;
                    }
                }
                super.q(coordinatorLayout, child, target, dx2, dy2, consumed, type);
            }
        };
        if (fVar != null) {
            fVar.o(behavior);
        }
        z zVar5 = (z) getMViewBinding();
        if (zVar5 != null && (recyclerView2 = zVar5.f70222s) != null) {
            int i10 = this.padding;
            recyclerView2.setPadding(i10, 0, i10, 0);
            recyclerView2.setLayoutManager(new GridLayoutManager(recyclerView2.getContext(), 5, 1, false));
            recyclerView2.addOnScrollListener(new e());
        }
        ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter = new ShortTvDownloadEpListAdapter();
        shortTvDownloadEpListAdapter.l(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return ShortTVDownloadReFragment.p1(this.f51358a, ((Integer) obj).intValue());
            }
        });
        this.shortTVEpAdapter = shortTvDownloadEpListAdapter;
        z zVar6 = (z) getMViewBinding();
        if (zVar6 != null && (recyclerView = zVar6.f70222s) != null) {
            recyclerView.setAdapter(this.shortTVEpAdapter);
        }
        if (!pq.c.f69249a.b().d().b() || (zVar = (z) getMViewBinding()) == null || (group = zVar.f70208e) == null) {
            return;
        }
        cr.b.b(group);
    }

    public static final void j1(ShortTVDownloadReFragment shortTVDownloadReFragment, View view) {
        Intrinsics.e(view);
        shortTVDownloadReFragment.F1(view);
    }

    public static final void k1(ShortTVDownloadReFragment shortTVDownloadReFragment, View view) {
        Intrinsics.e(view);
        shortTVDownloadReFragment.D1(view);
    }

    public static final void l1(ShortTVDownloadReFragment shortTVDownloadReFragment, View view) {
        Intrinsics.e(view);
        shortTVDownloadReFragment.I1(view);
    }

    public static final void m1(ShortTVDownloadReFragment shortTVDownloadReFragment, View view) {
        shortTVDownloadReFragment.G1();
    }

    public static final void n1(ShortTVDownloadReFragment shortTVDownloadReFragment, View view) {
        shortTVDownloadReFragment.G1();
    }

    public static final void o1(ShortTVDownloadReFragment shortTVDownloadReFragment, View view) {
        b0 b0VarR;
        Long l10;
        b0 b0VarQ;
        FrameLayout frameLayout;
        if (hr.d.f61483a.a(view.getId(), 500L)) {
            return;
        }
        if (!yg.l.f76264a.e()) {
            jr.b.f63248a.d(R$string.short_tv_no_network_toast);
            return;
        }
        z zVar = (z) shortTVDownloadReFragment.getMViewBinding();
        if (zVar != null && (frameLayout = zVar.f70211h) != null && frameLayout.getVisibility() == 0) {
            wf.a.f74274a.p("Download", new String[]{"DownloadReDetectorGroupMainFragment --> onDownload() --> 当前正在全选中"}, true);
            return;
        }
        ShortTvDownloadViewModel shortTvDownloadViewModelH0 = shortTVDownloadReFragment.getViewModel();
        Map map = (shortTvDownloadViewModelH0 == null || (b0VarQ = shortTvDownloadViewModelH0.q()) == null) ? null : (Map) b0VarQ.f();
        if (map == null || map.isEmpty()) {
            jr.b.f63248a.e(Utils.a().getString(R$string.download_short_tv_unselected_toast));
        } else {
            ShortTvDownloadViewModel shortTvDownloadViewModelH1 = shortTVDownloadReFragment.getViewModel();
            shortTVDownloadReFragment.A1((shortTvDownloadViewModelH1 == null || (b0VarR = shortTvDownloadViewModelH1.r()) == null || (l10 = (Long) b0VarR.f()) == null) ? 0L : l10.longValue());
        }
    }

    public static final Unit p1(ShortTVDownloadReFragment shortTVDownloadReFragment, int i10) {
        shortTVDownloadReFragment.E1(i10);
        return Unit.f64096a;
    }

    public static final Unit q1(ShortTVDownloadReFragment shortTVDownloadReFragment, DownloadListBean downloadListBean) {
        List data;
        shortTVDownloadReFragment.K1();
        if (downloadListBean == null) {
            ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter = shortTVDownloadReFragment.shortTVEpAdapter;
            if (shortTvDownloadEpListAdapter != null && (data = shortTvDownloadEpListAdapter.getData()) != null && data.size() == 0) {
                shortTVDownloadReFragment.S1();
            }
            return Unit.f64096a;
        }
        wf.a.C0922a c0922a = wf.a.f74274a;
        String tag = shortTVDownloadReFragment.getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        List<DownloadItem> items = downloadListBean.getItems();
        wf.a.C0922a.f(c0922a, tag, "get data from  net, size = " + (items != null ? Integer.valueOf(items.size()) : null), false, 4, null);
        Integer totalEpisode = downloadListBean.getTotalEpisode();
        if (totalEpisode != null && totalEpisode.intValue() == 0) {
            Subject subject = shortTVDownloadReFragment.subject;
            downloadListBean.setTotalEpisode(Integer.valueOf(subject != null ? subject.getTotalEpisode() : 0));
        }
        shortTVDownloadReFragment.T1(downloadListBean);
        shortTVDownloadReFragment.W1(downloadListBean.getItems(), downloadListBean.getStartPosition(), downloadListBean.getEndPosition());
        return Unit.f64096a;
    }

    public static final Unit r1(ShortTVDownloadReFragment shortTVDownloadReFragment, Subject subject) {
        if (subject != null) {
            shortTVDownloadReFragment.subject = subject;
            ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter = shortTVDownloadReFragment.shortTVEpAdapter;
            if (shortTvDownloadEpListAdapter != null) {
                shortTvDownloadEpListAdapter.m(subject);
            }
            shortTVDownloadReFragment.U1();
        }
        return Unit.f64096a;
    }

    public static final Unit s1(ShortTVDownloadReFragment shortTVDownloadReFragment, Map map) {
        shortTVDownloadReFragment.X0();
        shortTVDownloadReFragment.V0();
        return Unit.f64096a;
    }

    private final void showLoading() {
        FrameLayout frameLayout;
        z zVar = (z) getMViewBinding();
        if (zVar == null || (frameLayout = zVar.f70212i) == null) {
            return;
        }
        frameLayout.removeAllViews();
        frameLayout.setVisibility(0);
        frameLayout.addView(a1());
    }

    private final void showNotNetError() {
        FrameLayout frameLayout;
        z zVar = (z) getMViewBinding();
        if (zVar == null || (frameLayout = zVar.f70212i) == null) {
            return;
        }
        frameLayout.removeAllViews();
        frameLayout.setVisibility(0);
        frameLayout.addView(f1());
    }

    public static final Unit t1(ShortTVDownloadReFragment shortTVDownloadReFragment, Long l10) {
        Intrinsics.e(l10);
        shortTVDownloadReFragment.H1(l10.longValue());
        return Unit.f64096a;
    }

    public static final Unit u1(Integer num) {
        int i10;
        if (num != null && num.intValue() == 0) {
            i10 = R$string.short_tv_error_load_failed;
        } else {
            i10 = (num != null && num.intValue() == 2) ? R$string.short_tv_favorite_remove_toast : R$string.short_tv_favorite_toast;
        }
        jr.b.f63248a.d(i10);
        return Unit.f64096a;
    }

    public static final Unit v1(ShortTVDownloadReFragment shortTVDownloadReFragment, hx.c value) {
        BLImageView bLImageView;
        ShortTVFavInfo shortTVFavInfo;
        Intrinsics.h(value, "value");
        try {
            if (!TextUtils.equals(value.c(), shortTVDownloadReFragment.subjectId)) {
                return Unit.f64096a;
            }
            Subject subject = shortTVDownloadReFragment.subject;
            if (subject != null && (shortTVFavInfo = subject.getShortTVFavInfo()) != null) {
                shortTVFavInfo.setFavoriteNum(value.b());
                shortTVFavInfo.setHasFavorite(value.a());
            }
            z zVar = (z) shortTVDownloadReFragment.getMViewBinding();
            if (zVar != null && (bLImageView = zVar.f70218o) != null) {
                bLImageView.setSelected(value.a());
            }
            return Unit.f64096a;
        } catch (Exception unused) {
            wf.a.C0922a.g(wf.a.f74274a, " callback change data fail", false, 2, null);
        }
    }

    private final boolean w1() {
        List data;
        int size = this.inDownloadStatusMap.size();
        ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter = this.shortTVEpAdapter;
        return size < ((shortTvDownloadEpListAdapter == null || (data = shortTvDownloadEpListAdapter.getData()) == null) ? 0 : data.size());
    }

    private final void x1(ur.i loginProvider, Function0 onSuccess) {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        Intent intentB = loginProvider.b(contextRequireContext);
        if (intentB == null) {
            return;
        }
        this.loginSuccessCallback = onSuccess;
        this.loginLauncher.a(intentB);
    }

    private final void y1(boolean onlyEpisodeList) {
        if (!yg.l.f76264a.e()) {
            showNotNetError();
            return;
        }
        wf.a.C0922a c0922a = wf.a.f74274a;
        String tag = getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        wf.a.C0922a.f(c0922a, tag, "loadData ,  startPosition:" + this.startPosition + ", endPosition:" + this.endPosition, false, 4, null);
        this.isRequestingData = true;
        if (onlyEpisodeList) {
            ShortTvDownloadViewModel shortTvDownloadViewModelH0 = getViewModel();
            if (shortTvDownloadViewModelH0 != null) {
                String str = this.subjectId;
                shortTvDownloadViewModelH0.i(str != null ? str : "", this.startPosition, this.endPosition);
                return;
            }
            return;
        }
        ShortTvDownloadViewModel shortTvDownloadViewModelH1 = getViewModel();
        if (shortTvDownloadViewModelH1 != null) {
            String str2 = this.subjectId;
            if (str2 == null) {
                str2 = "";
            }
            ShortTvDownloadViewModel.o(shortTvDownloadViewModelH1, str2, false, 2, null);
        }
        ShortTvDownloadViewModel shortTvDownloadViewModelH2 = getViewModel();
        if (shortTvDownloadViewModelH2 != null) {
            String str3 = this.subjectId;
            shortTvDownloadViewModelH2.i(str3 != null ? str3 : "", this.startPosition, this.endPosition);
        }
    }

    public static final void z1(ShortTVDownloadReFragment shortTVDownloadReFragment, ActivityResult activityResult) {
        Function0 function0;
        if (activityResult.getResultCode() == -1 && (function0 = shortTVDownloadReFragment.loginSuccessCallback) != null) {
            function0.invoke();
        }
        shortTVDownloadReFragment.loginSuccessCallback = null;
    }

    @Override
    public String getPageStateLayoutTitle() {
        return "";
    }

    @Override
    public z getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        z zVarC = z.c(inflater);
        Intrinsics.g(zVarC, "inflate(...)");
        return zVarC;
    }

    @Override
    public void initListener() {
        LinearLayoutCompat linearLayoutCompat;
        AppCompatImageView appCompatImageView;
        AppCompatTextView appCompatTextView;
        BLImageView bLImageView;
        BLImageView bLImageView2;
        BLView bLView;
        ImageView imageView;
        z zVar = (z) getMViewBinding();
        if (zVar != null && (imageView = zVar.f70216m) != null) {
            imageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    ShortTVDownloadReFragment.i1(this.f51353a, view);
                }
            });
        }
        z zVar2 = (z) getMViewBinding();
        if (zVar2 != null && (bLView = zVar2.H) != null) {
            bLView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    ShortTVDownloadReFragment.j1(this.f51365a, view);
                }
            });
        }
        z zVar3 = (z) getMViewBinding();
        if (zVar3 != null && (bLImageView2 = zVar3.f70218o) != null) {
            bLImageView2.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    ShortTVDownloadReFragment.k1(this.f51380a, view);
                }
            });
        }
        z zVar4 = (z) getMViewBinding();
        if (zVar4 != null && (bLImageView = zVar4.f70219p) != null) {
            bLImageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    ShortTVDownloadReFragment.l1(this.f51381a, view);
                }
            });
        }
        z zVar5 = (z) getMViewBinding();
        if (zVar5 != null && (appCompatTextView = zVar5.B) != null) {
            appCompatTextView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    ShortTVDownloadReFragment.m1(this.f51382a, view);
                }
            });
        }
        z zVar6 = (z) getMViewBinding();
        if (zVar6 != null && (appCompatImageView = zVar6.f70215l) != null) {
            appCompatImageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    ShortTVDownloadReFragment.n1(this.f51383a, view);
                }
            });
        }
        z zVar7 = (z) getMViewBinding();
        if (zVar7 == null || (linearLayoutCompat = zVar7.f70207d) == null) {
            return;
        }
        linearLayoutCompat.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                ShortTVDownloadReFragment.o1(this.f51384a, view);
            }
        });
    }

    @Override
    public void initViewData() {
        initView();
        J1();
    }

    @Override
    public void initViewModel() {
        b0 b0VarP;
        b0 b0VarL;
        b0 b0VarM;
        b0 b0VarR;
        b0 b0VarQ;
        String str = this.subjectId;
        if (str == null || str.length() == 0) {
            wf.a.C0922a c0922a = wf.a.f74274a;
            String tag = getTAG();
            Intrinsics.g(tag, "<get-TAG>(...)");
            wf.a.C0922a.l(c0922a, tag, "subjectId is null", false, 4, null);
            return;
        }
        Fragment parentFragment = getParentFragment();
        if (parentFragment != null) {
            ShortTvDownloadViewModel shortTvDownloadViewModelH0 = getViewModel();
            if (shortTvDownloadViewModelH0 != null && (b0VarQ = shortTvDownloadViewModelH0.q()) != null) {
                b0VarQ.j(parentFragment, new f(new Function1() {
                    @Override
                    public final Object invoke(Object obj) {
                        return ShortTVDownloadReFragment.s1(this.f51385a, (Map) obj);
                    }
                }));
            }
            ShortTvDownloadViewModel shortTvDownloadViewModelH1 = getViewModel();
            if (shortTvDownloadViewModelH1 != null && (b0VarR = shortTvDownloadViewModelH1.r()) != null) {
                b0VarR.j(parentFragment, new f(new Function1() {
                    @Override
                    public final Object invoke(Object obj) {
                        return ShortTVDownloadReFragment.t1(this.f51386a, (Long) obj);
                    }
                }));
            }
            ShortTvDownloadViewModel shortTvDownloadViewModelH2 = getViewModel();
            if (shortTvDownloadViewModelH2 != null && (b0VarM = shortTvDownloadViewModelH2.m()) != null) {
                b0VarM.j(parentFragment, new f(new Function1() {
                    @Override
                    public final Object invoke(Object obj) {
                        return ShortTVDownloadReFragment.u1((Integer) obj);
                    }
                }));
            }
        }
        androidx.p009lifecycle.u viewLifecycleOwner = getViewLifecycleOwner();
        Intrinsics.g(viewLifecycleOwner, "getViewLifecycleOwner(...)");
        Function1 function1 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return ShortTVDownloadReFragment.v1(this.f51354a, (hx.c) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = hx.c.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(viewLifecycleOwner, name, Lifecycle.State.CREATED, y0.c().r(), false, function1);
        Fragment parentFragment2 = getParentFragment();
        if (parentFragment2 != null && getViewModel() != null) {
            ShortTvDownloadViewModel shortTvDownloadViewModelH3 = getViewModel();
            if (shortTvDownloadViewModelH3 != null && (b0VarL = shortTvDownloadViewModelH3.l()) != null) {
                b0VarL.j(parentFragment2, new f(new Function1() {
                    @Override
                    public final Object invoke(Object obj) {
                        return ShortTVDownloadReFragment.q1(this.f51355a, (DownloadListBean) obj);
                    }
                }));
            }
            ShortTvDownloadViewModel shortTvDownloadViewModelH4 = getViewModel();
            if (shortTvDownloadViewModelH4 != null && (b0VarP = shortTvDownloadViewModelH4.p()) != null) {
                b0VarP.j(parentFragment2, new f(new Function1() {
                    @Override
                    public final Object invoke(Object obj) {
                        return ShortTVDownloadReFragment.r1(this.f51356a, (Subject) obj);
                    }
                }));
            }
        }
        wf.a.C0922a c0922a2 = wf.a.f74274a;
        String tag2 = getTAG();
        Intrinsics.g(tag2, "<get-TAG>(...)");
        wf.a.C0922a.f(c0922a2, tag2, "initViewModel ,loadData", false, 4, null);
        showLoading();
        y1(false);
    }

    @Override
    public boolean isAudioShowNoNetworkLayout() {
        return false;
    }

    @Override
    public boolean isMonitorNetworkState() {
        return true;
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        String string;
        String string2;
        String string3;
        HashMap mapG;
        HashMap mapG2;
        HashMap mapG3;
        HashMap mapG4;
        HashMap mapG5;
        String string4;
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        String str = "";
        if (arguments == null || (string = arguments.getString(WebConstants.PAGE_FROM)) == null) {
            string = "";
        }
        this.pageFrom = string;
        Bundle arguments2 = getArguments();
        if (arguments2 == null || (string2 = arguments2.getString("last_page_from")) == null) {
            string2 = "";
        }
        this.lastPageFrom = string2;
        Bundle arguments3 = getArguments();
        this.subject = (Subject) (arguments3 != null ? arguments3.getSerializable("subject") : null);
        Bundle arguments4 = getArguments();
        if (arguments4 == null || (string3 = arguments4.getString("ops")) == null) {
            string3 = "";
        }
        this.ops = string3;
        Bundle arguments5 = getArguments();
        if (arguments5 != null && (string4 = arguments5.getString("module_name")) != null) {
            str = string4;
        }
        this.moduleName = str;
        Bundle arguments6 = getArguments();
        this.scroll2Download = arguments6 != null ? arguments6.getBoolean("download_scroll_to_download") : false;
        Subject subject = this.subject;
        this.subjectId = subject != null ? subject.getSubjectId() : null;
        wf.a.C0922a c0922a = wf.a.f74274a;
        String tag = getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        wf.a.C0922a.f(c0922a, tag, "ShortTv download init subjectId:" + this.subjectId, false, 4, null);
        qi.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null && (mapG5 = logViewConfig.g()) != null) {
            mapG5.put(WebConstants.PAGE_FROM, this.pageFrom);
        }
        qi.b logViewConfig2 = getLogViewConfig();
        if (logViewConfig2 != null && (mapG4 = logViewConfig2.g()) != null) {
            mapG4.put("last_page_from", this.lastPageFrom);
        }
        qi.b logViewConfig3 = getLogViewConfig();
        if (logViewConfig3 != null && (mapG3 = logViewConfig3.g()) != null) {
            Subject subject2 = this.subject;
            mapG3.put("subject_id", subject2 != null ? subject2.getSubjectId() : null);
        }
        qi.b logViewConfig4 = getLogViewConfig();
        if (logViewConfig4 != null && (mapG2 = logViewConfig4.g()) != null) {
            mapG2.put("ops", this.ops);
        }
        qi.b logViewConfig5 = getLogViewConfig();
        if (logViewConfig5 != null && (mapG = logViewConfig5.g()) != null) {
            mapG.put(NativeComponentConstants.KEY_COMPONENT_TYPE, "2");
        }
        com.transsion.shorttv.utils.b.b(g1(), this.subjectId, "dialog_minitv_download", null, 4, null);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        STCommonVideoAdHelper sTCommonVideoAdHelper = this.downloadVideoAdHelper;
        if (sTCommonVideoAdHelper != null) {
            STCommonVideoAdHelper.q(sTCommonVideoAdHelper, 0, 1, null);
        }
        this.downloadVideoAdHelper = null;
    }

    @Override
    public void onStart() {
        super.onStart();
        initHistory();
    }

    @Override
    public void retryLoadData() {
        List data;
        ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter = this.shortTVEpAdapter;
        if (shortTvDownloadEpListAdapter == null || (data = shortTvDownloadEpListAdapter.getData()) == null || data.size() != 0) {
            return;
        }
        showLoading();
        y1(false);
    }
}
