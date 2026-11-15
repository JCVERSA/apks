package com.transsion.subroom.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Color;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.Group;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.Fragment;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.v0;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.google.android.material.tabs.TabLayout;
import com.gyf.immersionbar.ImmersionBar;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.tencent.mmkv.MMKV;
import com.therouter.TheRouter;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$dimen;
import com.tn.lib.widget.TnTextView;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.home.R$id;
import com.transsion.home.bean.AppTab;
import com.transsion.home.bean.Badge;
import com.transsion.home.bean.BottomTabItem;
import com.transsion.home.bean.Icon;
import com.transsion.home.bean.Text;
import com.transsion.home.fragment.bottom.BottomOpFragment;
import com.transsion.home.fragment.bottom.BottomRoomFragment;
import com.transsion.home.fragment.home.HomeFragment;
import com.transsion.home.fragment.subscription.SubscriptionBottomOpFragment;
import com.transsion.home.p004enum.BottomTabType;
import com.transsion.home.p004enum.HomeTabId;
import com.transsion.home.preload.MainXMLPreloadControlImp;
import com.transsion.home.viewmodel.preload.PreloadTrendingData;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.player.config.RenderType;
import com.transsion.postdetail.helper.ShortTvImmVideoHelper;
import com.transsion.push.notification.permission.NoticePermissionFrom;
import com.transsion.shorttv.ui.fragment.ShortTVDiscoverFragment;
import com.transsion.startup.StartupManager;
import com.transsion.startup.pref.consume.AppStartDotState;
import com.transsion.startup.pref.consume.AppStartReport;
import com.transsion.subroom.R$layout;
import com.transsion.subroom.R$string;
import com.transsion.usercenter.me.MeFragment;
import com.transsion.usercenter.profile.report.ReportDialog;
import com.transsion.web.api.WebConstants;
import com.transsion.web.fragment.WebFragmentV2;
import com.transsnet.downloader.R$drawable;
import com.transsnet.downloader.R$mipmap;
import com.transsnet.downloader.fragment.DownloadMainFragment;
import com.transsnet.downloader.manager.DownloadStatusIconManager;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

@Metadata(d1 = {"\u0000\u0092\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\t\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 ÷\u00012\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u0004:\u0002¡\u0001B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0014¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0011\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0012\u0010\u0010J\u000f\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u0016H\u0014¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\tH\u0016¢\u0006\u0004\b\u001a\u0010\u0006J\u000f\u0010\u001b\u001a\u00020\tH\u0016¢\u0006\u0004\b\u001b\u0010\u0006J\u0017\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\u001cH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\tH\u0014¢\u0006\u0004\b \u0010\u0006J\u0011\u0010\"\u001a\u0004\u0018\u00010!H\u0016¢\u0006\u0004\b\"\u0010#J\u001f\u0010&\u001a\u00020\t2\u0006\u0010$\u001a\u00020\u000e2\u0006\u0010%\u001a\u00020\u000eH\u0016¢\u0006\u0004\b&\u0010'J)\u0010+\u001a\u00020\t2\u0006\u0010(\u001a\u00020\u00132\u0006\u0010)\u001a\u00020\u00132\b\u0010*\u001a\u0004\u0018\u00010\u0016H\u0014¢\u0006\u0004\b+\u0010,J/\u00102\u001a\u00020\t2\u0006\u0010(\u001a\u00020\u00132\u000e\u0010/\u001a\n\u0012\u0006\b\u0001\u0012\u00020.0-2\u0006\u00101\u001a\u000200H\u0016¢\u0006\u0004\b2\u00103J\u0017\u00105\u001a\u00020\t2\u0006\u00104\u001a\u00020\u0007H\u0014¢\u0006\u0004\b5\u0010\u000bJ\u0019\u00108\u001a\u00020\u000e2\b\u00107\u001a\u0004\u0018\u000106H\u0016¢\u0006\u0004\b8\u00109J\u000f\u0010:\u001a\u00020\u000eH\u0016¢\u0006\u0004\b:\u0010\u0010J\r\u0010;\u001a\u00020\t¢\u0006\u0004\b;\u0010\u0006J\u000f\u0010<\u001a\u00020\tH\u0016¢\u0006\u0004\b<\u0010\u0006J\u000f\u0010=\u001a\u00020\u000eH\u0016¢\u0006\u0004\b=\u0010\u0010J'\u0010B\u001a\u00020\t2\u0006\u0010>\u001a\u00020.2\u0006\u0010@\u001a\u00020?2\u0006\u0010A\u001a\u00020?H\u0016¢\u0006\u0004\bB\u0010CJ4\u0010I\u001a\u00020\t2#\u0010H\u001a\u001f\u0012\u0013\u0012\u00110.¢\u0006\f\bE\u0012\b\bF\u0012\u0004\b\b(G\u0012\u0004\u0012\u00020\t\u0018\u00010DH\u0016¢\u0006\u0004\bI\u0010JJ\u000f\u0010K\u001a\u00020\u0013H\u0016¢\u0006\u0004\bK\u0010\u0015J\u000f\u0010L\u001a\u00020\tH\u0002¢\u0006\u0004\bL\u0010\u0006J\u000f\u0010M\u001a\u00020\tH\u0002¢\u0006\u0004\bM\u0010\u0006J\u000f\u0010N\u001a\u00020\tH\u0002¢\u0006\u0004\bN\u0010\u0006J\u000f\u0010O\u001a\u00020\tH\u0002¢\u0006\u0004\bO\u0010\u0006J\u000f\u0010P\u001a\u00020\tH\u0002¢\u0006\u0004\bP\u0010\u0006J\u0019\u0010S\u001a\u00020\t2\b\u0010R\u001a\u0004\u0018\u00010QH\u0002¢\u0006\u0004\bS\u0010TJ\u001f\u0010X\u001a\u00020\t2\u000e\u0010W\u001a\n\u0012\u0004\u0012\u00020V\u0018\u00010UH\u0002¢\u0006\u0004\bX\u0010YJ\u001f\u0010\\\u001a\u00020\t2\u000e\u0010[\u001a\n\u0012\u0004\u0012\u00020V\u0018\u00010ZH\u0002¢\u0006\u0004\b\\\u0010YJ\u001f\u0010]\u001a\u00020\u000e2\u000e\u0010W\u001a\n\u0012\u0004\u0012\u00020V\u0018\u00010ZH\u0002¢\u0006\u0004\b]\u0010^J-\u0010e\u001a\u00020d2\u0006\u0010_\u001a\u00020V2\n\u0010b\u001a\u00060`R\u00020a2\b\u0010c\u001a\u0004\u0018\u00010VH\u0002¢\u0006\u0004\be\u0010fJ-\u0010i\u001a\u00020\t2\b\u0010g\u001a\u0004\u0018\u00010V2\b\u0010h\u001a\u0004\u0018\u00010d2\b\u0010c\u001a\u0004\u0018\u00010VH\u0002¢\u0006\u0004\bi\u0010jJ\u001f\u0010l\u001a\u00020\t2\u000e\u0010k\u001a\n\u0012\u0004\u0012\u00020V\u0018\u00010UH\u0002¢\u0006\u0004\bl\u0010YJ\u001f\u0010p\u001a\u00020\t2\u0006\u0010n\u001a\u00020m2\u0006\u0010o\u001a\u00020.H\u0002¢\u0006\u0004\bp\u0010qJ\u0019\u0010s\u001a\u00020\t2\b\u0010_\u001a\u0004\u0018\u00010rH\u0002¢\u0006\u0004\bs\u0010tJ\u0019\u0010u\u001a\u00020\t2\b\u0010c\u001a\u0004\u0018\u00010VH\u0002¢\u0006\u0004\bu\u0010vJ\u0017\u0010x\u001a\u00020\u00132\u0006\u0010w\u001a\u00020.H\u0002¢\u0006\u0004\bx\u0010yJ\u0017\u0010{\u001a\u00020\u00132\u0006\u0010z\u001a\u00020.H\u0002¢\u0006\u0004\b{\u0010yJ\u000f\u0010|\u001a\u00020\tH\u0002¢\u0006\u0004\b|\u0010\u0006J\u000f\u0010}\u001a\u00020\tH\u0002¢\u0006\u0004\b}\u0010\u0006J\"\u0010\u0080\u0001\u001a\u00020\t2\u0006\u0010~\u001a\u00020\u00132\u0006\u0010\u007f\u001a\u00020\u0013H\u0002¢\u0006\u0006\b\u0080\u0001\u0010\u0081\u0001J\u0011\u0010\u0082\u0001\u001a\u00020\tH\u0002¢\u0006\u0005\b\u0082\u0001\u0010\u0006J\u0011\u0010\u0083\u0001\u001a\u00020\tH\u0002¢\u0006\u0005\b\u0083\u0001\u0010\u0006J=\u0010\u0089\u0001\u001a\u00020\t2\t\u0010\u0084\u0001\u001a\u0004\u0018\u00010d2\n\u0010\u0086\u0001\u001a\u0005\u0018\u00010\u0085\u00012\n\u0010\u0088\u0001\u001a\u0005\u0018\u00010\u0087\u00012\u0006\u0010\u007f\u001a\u00020\u0013H\u0002¢\u0006\u0006\b\u0089\u0001\u0010\u008a\u0001J\u0011\u0010\u008b\u0001\u001a\u00020\tH\u0002¢\u0006\u0005\b\u008b\u0001\u0010\u0006J\u0011\u0010\u008c\u0001\u001a\u00020\tH\u0002¢\u0006\u0005\b\u008c\u0001\u0010\u0006J\u001b\u0010\u008e\u0001\u001a\u00020\t2\u0007\u0010\u008d\u0001\u001a\u00020\u0013H\u0002¢\u0006\u0006\b\u008e\u0001\u0010\u008f\u0001J\u0011\u0010\u0090\u0001\u001a\u00020\tH\u0002¢\u0006\u0005\b\u0090\u0001\u0010\u0006J%\u0010\u0092\u0001\u001a\u00020\u00132\b\u0010z\u001a\u0004\u0018\u00010.2\u0007\u0010\u0091\u0001\u001a\u00020\u0013H\u0002¢\u0006\u0006\b\u0092\u0001\u0010\u0093\u0001J\u0011\u0010\u0094\u0001\u001a\u00020\tH\u0002¢\u0006\u0005\b\u0094\u0001\u0010\u0006J\u001d\u0010\u0096\u0001\u001a\u00020\t2\t\b\u0002\u0010\u0095\u0001\u001a\u00020?H\u0002¢\u0006\u0006\b\u0096\u0001\u0010\u0097\u0001J%\u0010\u0099\u0001\u001a\u00020\t2\b\u0010g\u001a\u0004\u0018\u00010V2\u0007\u0010\u0098\u0001\u001a\u00020\u000eH\u0002¢\u0006\u0006\b\u0099\u0001\u0010\u009a\u0001J\u0011\u0010\u009b\u0001\u001a\u00020\tH\u0002¢\u0006\u0005\b\u009b\u0001\u0010\u0006J\u0011\u0010\u009c\u0001\u001a\u00020\tH\u0002¢\u0006\u0005\b\u009c\u0001\u0010\u0006J\u0011\u0010\u009d\u0001\u001a\u00020\tH\u0002¢\u0006\u0005\b\u009d\u0001\u0010\u0006J\u0016\u0010\u009e\u0001\u001a\u00020\t*\u00020dH\u0002¢\u0006\u0006\b\u009e\u0001\u0010\u009f\u0001R\u001c\u0010£\u0001\u001a\u0005\u0018\u00010 \u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¡\u0001\u0010¢\u0001R\u001c\u0010§\u0001\u001a\u0005\u0018\u00010¤\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¥\u0001\u0010¦\u0001R\u001f\u0010ª\u0001\u001a\b\u0012\u0004\u0012\u00020m0Z8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¨\u0001\u0010©\u0001R\u001a\u0010¬\u0001\u001a\u0004\u0018\u00010m8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\"\u0010«\u0001R\u0019\u0010¯\u0001\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u00ad\u0001\u0010®\u0001R\u0019\u0010±\u0001\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b°\u0001\u0010®\u0001R\u0018\u0010³\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b:\u0010²\u0001R\u0019\u0010µ\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b´\u0001\u0010²\u0001R\u0019\u0010·\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¶\u0001\u0010²\u0001R#\u0010½\u0001\u001a\u0005\u0018\u00010¸\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b¹\u0001\u0010º\u0001\u001a\u0006\b»\u0001\u0010¼\u0001R\u0019\u0010À\u0001\u001a\u00020.8\u0006@\u0006X\u0087\u000e¢\u0006\b\n\u0006\b¾\u0001\u0010¿\u0001R\u0019\u0010Â\u0001\u001a\u00020.8\u0006@\u0006X\u0087\u000e¢\u0006\b\n\u0006\bÁ\u0001\u0010¿\u0001R\u0019\u0010Ä\u0001\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e¢\u0006\b\n\u0006\bÃ\u0001\u0010®\u0001R\u0019\u0010Æ\u0001\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e¢\u0006\b\n\u0006\bÅ\u0001\u0010®\u0001R\u001a\u0010Ê\u0001\u001a\u00030Ç\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÈ\u0001\u0010É\u0001R\u001b\u0010Í\u0001\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bË\u0001\u0010Ì\u0001R\u001b\u0010Ð\u0001\u001a\u0004\u0018\u00010Q8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÎ\u0001\u0010Ï\u0001R\u0019\u0010Ò\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÑ\u0001\u0010²\u0001R\u0019\u0010Ô\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÓ\u0001\u0010²\u0001R\u001b\u0010Ö\u0001\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÕ\u0001\u0010¿\u0001R!\u0010Û\u0001\u001a\u00030×\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bØ\u0001\u0010º\u0001\u001a\u0006\bÙ\u0001\u0010Ú\u0001R\u0019\u0010Ý\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÜ\u0001\u0010²\u0001R\u0019\u0010ß\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÞ\u0001\u0010²\u0001R\u0019\u0010á\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bà\u0001\u0010²\u0001R!\u0010æ\u0001\u001a\u00030â\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bã\u0001\u0010º\u0001\u001a\u0006\bä\u0001\u0010å\u0001R\u001e\u0010ê\u0001\u001a\t\u0012\u0004\u0012\u00020\t0ç\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bè\u0001\u0010é\u0001R\u001a\u0010ì\u0001\u001a\u00030Ç\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bë\u0001\u0010É\u0001R\u001a\u0010ð\u0001\u001a\u00030í\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bî\u0001\u0010ï\u0001R\u001c\u0010ô\u0001\u001a\u0005\u0018\u00010ñ\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bò\u0001\u0010ó\u0001R\u0019\u0010ö\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bõ\u0001\u0010²\u0001¨\u0006ø\u0001"}, d2 = {"Lcom/transsion/subroom/activity/MainActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Ldt/a;", "Lcom/transsion/home/preload/a;", "Ldl/b;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "O0", "()Ldt/a;", "", "isTranslucent", "()Z", "isChangeStatusBar", "isStatusDark", "", "statusColor", "()I", "Landroid/content/Intent;", "intent", "onNewIntent", "(Landroid/content/Intent;)V", "onResume", "onBackPressed", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "(Landroid/content/res/Configuration;)V", "onDestroy", "Lcom/transsion/home/preload/b;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "()Lcom/transsion/home/preload/b;", "isWhiteFont", "isHomeFragment", "changeStatusFontColor", "(ZZ)V", "requestCode", "resultCode", "data", "onActivityResult", "(IILandroid/content/Intent;)V", "", "", "permissions", "", "grantResults", "onRequestPermissionsResult", "(I[Ljava/lang/String;[I)V", "outState", "onSaveInstanceState", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "dispatchTouchEvent", "(Landroid/view/MotionEvent;)Z", "g", "P0", "loadTwoLevelAd", "hasAd", EventConstants.KEY_ACTION, "", "distance", NotificationCompat.CATEGORY_PROGRESS, "onAction", "(Ljava/lang/String;FF)V", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "state", "callback", "setStateCallback", "(Lkotlin/jvm/functions/Function1;)V", "getTipViewBottomMargin", "C0", "H0", "p1", "a1", "s1", "Lcom/transsion/home/bean/AppTab;", "homeTab", "y1", "(Lcom/transsion/home/bean/AppTab;)V", "", "Lcom/transsion/home/bean/BottomTabItem;", "bottomTabs", "B0", "(Ljava/util/List;)V", "", "notEmptyBottomTabs", "Q0", "D0", "(Ljava/util/List;)Z", "tab", "Lcom/google/android/material/tabs/TabLayout$TabView;", "Lcom/google/android/material/tabs/TabLayout;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "selectedTabItem", "Landroid/view/View;", "I1", "(Lcom/transsion/home/bean/BottomTabItem;Lcom/google/android/material/tabs/TabLayout$TabView;Lcom/transsion/home/bean/BottomTabItem;)Landroid/view/View;", "tabItem", "tabView", "D1", "(Lcom/transsion/home/bean/BottomTabItem;Landroid/view/View;Lcom/transsion/home/bean/BottomTabItem;)V", "tabs", "X0", "Landroidx/fragment/app/Fragment;", "fragment", "tag", "F1", "(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V", "Lcom/google/android/material/tabs/TabLayout$Tab;", "r1", "(Lcom/google/android/material/tabs/TabLayout$Tab;)V", "t1", "(Lcom/transsion/home/bean/BottomTabItem;)V", "tabType", "N0", "(Ljava/lang/String;)I", "tabCode", "M0", "initPlayer", "R0", NotificationCompat.CATEGORY_STATUS, "size", "E1", "(II)V", "z1", "B1", "vTips", "Landroidx/appcompat/widget/AppCompatTextView;", "tvStatus", "Landroidx/appcompat/widget/AppCompatImageView;", "ivDownloadFail", "G1", "(Landroid/view/View;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatImageView;I)V", "G0", "H1", "routerPosition", "x1", "(I)V", "w1", "tabId", "L0", "(Ljava/lang/String;I)I", "d1", "bottomMargin", "E0", "(F)V", "isUserAction", "v1", "(Lcom/transsion/home/bean/BottomTabItem;Z)V", "u1", "S0", "Y0", "A0", "(Landroid/view/View;)V", "Lzw/e;", "a", "Lzw/e;", "onDownloadIconStatusListener", "Lcom/transsion/home/fragment/home/HomeFragment;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/home/fragment/home/HomeFragment;", "homeFragment", "c", "Ljava/util/List;", "mFragments", "Landroidx/fragment/app/Fragment;", "currentFragment", "e", "I", "defaultIndex", "f", "currentFragmentIndex", "Z", "mVideoTabIsWhite", "h", "kidsDialogShown", "i", "widgetDialogShowing", "Lqx/a;", "j", "Lkotlin/Lazy;", "I0", "()Lqx/a;", "mLoginApi", CampaignEx.JSON_KEY_AD_K, "Ljava/lang/String;", "mTopTabCode", "l", "mBottomTabCode", "m", "mInitTabId", "n", "mSecondTabIndex", "", "o", "J", "mBackTime", TtmlNode.TAG_P, "Lcom/transsion/home/preload/b;", "xmlPreload", CampaignEx.JSON_KEY_AD_Q, "Lcom/transsion/home/bean/AppTab;", "mCurrentHomeTab", CampaignEx.JSON_KEY_AD_R, "runOnce", "s", "isShowHotTips", "t", "showHotTabCode", "Lgt/b;", TmcStartParams.KEY_URL_SHORT, "J0", "()Lgt/b;", "mbUpdateManager", "v", "mHomeStatusWhite", "w", "isBottomTabLargeType", "x", "isUserBottomTabClickAction", "Lcom/transsion/usercenter/profile/f;", "y", "K0", "()Lcom/transsion/usercenter/profile/f;", "noticeViewModel", "Lkotlin/Function0;", "z", "Lkotlin/jvm/functions/Function0;", "onConfigLoadedCallback", "A", "lastClickTime", "Lcom/transsion/subroom/activity/MainDialogAdManager;", "B", "Lcom/transsion/subroom/activity/MainDialogAdManager;", "mainDialogAdManager", "Lcom/transsion/subroom/activity/SecondFloorHelper;", "C", "Lcom/transsion/subroom/activity/SecondFloorHelper;", "secondFloorHelper", "D", "shouldShowGuide", "E", "app_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class MainActivity extends BaseActivity<dt.a> implements com.transsion.home.preload.a, dl.b {

    private long lastClickTime;

    private SecondFloorHelper secondFloorHelper;

    private zw.e onDownloadIconStatusListener;

    private HomeFragment homeFragment;

    private Fragment currentFragment;

    private boolean mVideoTabIsWhite;

    private boolean kidsDialogShown;

    private boolean widgetDialogShowing;

    private long mBackTime;

    private com.transsion.home.preload.b xmlPreload;

    private AppTab mCurrentHomeTab;

    private boolean runOnce;

    private boolean isBottomTabLargeType;

    private List mFragments = new ArrayList();

    private int defaultIndex;

    private int currentFragmentIndex = this.defaultIndex;

    private final Lazy mLoginApi = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return MainActivity.g1();
        }
    });

    public String mTopTabCode = "UgcTrending";

    public String mBottomTabCode = BottomTabType.TAB_CODE_HOME;

    public int mInitTabId = -1;

    public int mSecondTabIndex = -1;

    private boolean isShowHotTips = true;

    private String showHotTabCode = "";

    private final Lazy mbUpdateManager = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return MainActivity.h1();
        }
    });

    private boolean mHomeStatusWhite = true;

    private boolean isUserBottomTabClickAction = true;

    private final Lazy noticeViewModel = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return MainActivity.i1(this.f52629a);
        }
    });

    private final Function0 onConfigLoadedCallback = new Function0() {
        @Override
        public final Object invoke() {
            return MainActivity.j1(this.f52630a);
        }
    };

    private MainDialogAdManager mainDialogAdManager = new MainDialogAdManager();

    private boolean shouldShowGuide = true;

    public static final class b extends AbstractCoroutineContextElement implements j0 {
        public b(j0.a aVar) {
            super(aVar);
        }

        @Override
        public void m(CoroutineContext coroutineContext, Throwable th2) {
            wf.a.f74274a.i("MainActivity", "coroutineExceptionHandler " + th2.getMessage(), true);
            th2.printStackTrace();
        }
    }

    public static final class c implements zw.e {
        c() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void a(int i10, int i11) {
            if (((dt.a) MainActivity.this.getMViewBinding()).f59079m.getTabCount() > 3) {
                MainActivity.this.E1(i10, i11);
            }
        }
    }

    public static final class d implements TabLayout.OnTabSelectedListener {
        d() {
        }

        @Override
        public void onTabReselected(TabLayout.Tab tab) {
            wf.a.C0922a.f(wf.a.f74274a, "MainActivity", "onTabReselected", false, 4, null);
        }

        @Override
        public void onTabSelected(TabLayout.Tab tab) {
            wf.a.C0922a.f(wf.a.f74274a, "MainActivity", "onTabSelected --> tag = " + (tab != null ? tab.getTag() : null), false, 4, null);
            MainActivity.this.r1(tab);
        }

        @Override
        public void onTabUnselected(TabLayout.Tab tab) {
            wf.a.C0922a.f(wf.a.f74274a, "MainActivity", "onTabUnselected", false, 4, null);
        }
    }

    static final class e implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f52565a;

        e(Function1 function) {
            Intrinsics.h(function, "function");
            this.f52565a = function;
        }

        @Override
        public final Function a() {
            return this.f52565a;
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
            this.f52565a.invoke(obj);
        }
    }

    private final void A0(View view) {
        Integer num;
        if (view.getId() == R$id.image_red_tips && !com.transsion.baselib.report.launch.b.f42221a.b().getBoolean("k_is_family_mode_badge", true) && (num = (Integer) K0().h().f()) != null && num.intValue() == 0) {
            view.setVisibility(8);
        }
    }

    public static final void A1(MainActivity mainActivity, int i10, View view) {
        if (mainActivity.currentFragmentIndex != i10) {
            return;
        }
        if (System.currentTimeMillis() - mainActivity.lastClickTime >= 500) {
            mainActivity.lastClickTime = System.currentTimeMillis();
            return;
        }
        HomeFragment homeFragment = mainActivity.homeFragment;
        if (homeFragment != null) {
            homeFragment.b1();
        }
        mainActivity.lastClickTime = 0L;
    }

    private final void B0(List bottomTabs) {
        List<BottomTabItem> listU0 = bottomTabs != null ? CollectionsKt.U0(bottomTabs) : null;
        List list = bottomTabs;
        if (list == null || list.isEmpty()) {
            wf.a.f74274a.c("MainActivity", "bottom tabs 异常兜底", true);
            y1(PreloadTrendingData.f44531n.a().A(this));
            AppTab appTab = this.mCurrentHomeTab;
            listU0 = appTab != null ? appTab.getBottomTabs() : null;
        }
        u1();
        X0(listU0);
        Q0(listU0);
        R0();
        z1();
        B1();
        d1();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void B1() {
        TabLayout.TabView tabView;
        final int iM0 = M0(BottomTabType.TAB_CODE_COMMUNITY);
        TabLayout.Tab tabAt = ((dt.a) getMViewBinding()).f59079m.getTabAt(iM0);
        if (tabAt == null || (tabView = tabAt.view) == null) {
            return;
        }
        tabView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                MainActivity.C1(this.f52625a, iM0, view);
            }
        });
    }

    private final void C0() {
        ConfigBean configBeanC = cm.f.f17019c.a().c("sa_key_kid_mode_feature_enable", true);
        StartupManager.a aVar = StartupManager.f52494g;
        if (aVar.a().d0() || configBeanC != null) {
            H0();
        } else {
            wf.a.C0922a.f(wf.a.f74274a, "MainActivity", "config not loaded yet, wait for config callback.", false, 4, null);
            aVar.a().z(this.onConfigLoadedCallback);
        }
    }

    public static final void C1(MainActivity mainActivity, int i10, View view) {
        if (mainActivity.currentFragmentIndex == i10 && !com.transsion.baseui.util.c.f42332a.a(view.getId(), 1000L)) {
            try {
                Result.Companion companion = Result.INSTANCE;
                Object obj = mainActivity.mFragments.get(i10);
                Unit unit = null;
                BottomRoomFragment bottomRoomFragment = obj instanceof BottomRoomFragment ? (BottomRoomFragment) obj : null;
                if (bottomRoomFragment != null) {
                    bottomRoomFragment.b0();
                    unit = Unit.f64096a;
                }
                Result.m453constructorimpl(unit);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m453constructorimpl(ResultKt.a(th2));
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final boolean D0(List bottomTabs) {
        int size = bottomTabs != null ? bottomTabs.size() : 0;
        BottomTabItem bottomTabItem = null;
        if (bottomTabs != null) {
            int size2 = bottomTabs.size() / 2;
            int i10 = 0;
            BottomTabItem bottomTabItem2 = null;
            for (Object obj : bottomTabs) {
                int i11 = i10 + 1;
                if (i10 < 0) {
                    CollectionsKt.u();
                }
                BottomTabItem bottomTabItem3 = (BottomTabItem) obj;
                if (bottomTabItem3.isLargeUiType()) {
                    if (i10 != size2) {
                        Icon icon = bottomTabItem3.getIcon();
                        if (icon != null) {
                            icon.setDefaultBigIcon(null);
                        }
                        Icon icon2 = bottomTabItem3.getIcon();
                        if (icon2 != null) {
                            icon2.setSelectBigIcon(null);
                        }
                    } else {
                        bottomTabItem2 = bottomTabItem3;
                    }
                }
                i10 = i11;
            }
            bottomTabItem = bottomTabItem2;
        }
        this.isBottomTabLargeType = bottomTabItem != null && size % 2 == 1;
        Group largeBottomBg = ((dt.a) getMViewBinding()).f59071e;
        Intrinsics.g(largeBottomBg, "largeBottomBg");
        largeBottomBg.setVisibility(this.isBottomTabLargeType ? 0 : 8);
        ImageView tabBg = ((dt.a) getMViewBinding()).f59078l;
        Intrinsics.g(tabBg, "tabBg");
        tabBg.setVisibility(this.isBottomTabLargeType ? 8 : 0);
        return bottomTabItem != null;
    }

    private final void D1(BottomTabItem tabItem, View tabView, BottomTabItem selectedTabItem) {
        int iA;
        Typeface typefaceD;
        int color;
        Text text;
        Text text2;
        String defaultIcon;
        String text3;
        Text text4;
        Text text5;
        String selectIcon;
        List<BottomTabItem> bottomTabs;
        if (tabView != null) {
            AppTab appTab = this.mCurrentHomeTab;
            int size = (appTab == null || (bottomTabs = appTab.getBottomTabs()) == null) ? 5 : bottomTabs.size();
            if (size >= 4) {
                tabView.setMinimumWidth(com.blankj.utilcode.util.y.e() / size);
            }
            TnTextView tnTextView = (TnTextView) tabView.findViewById(R$id.tv_tab);
            Unit unit = null;
            if (tnTextView != null) {
                tnTextView.setText(tabItem != null ? tabItem.getName() : null);
            }
            String str = "";
            if (Intrinsics.c(selectedTabItem, tabItem)) {
                if (tabItem != null && (selectIcon = tabItem.getSelectIcon()) != null) {
                    str = selectIcon;
                }
                iA = a.f52607a.b(tabItem);
                Context context = tabView.getContext();
                Intrinsics.g(context, "getContext(...)");
                typefaceD = uf.a.c(context);
                String selectColor = (tabItem == null || (text5 = tabItem.getText()) == null) ? null : text5.getSelectColor();
                if (selectColor == null || selectColor.length() == 0) {
                    color = androidx.core.content.b.getColor(this, R$color.text_01);
                } else {
                    color = Color.parseColor((tabItem == null || (text4 = tabItem.getText()) == null) ? null : text4.getSelectColor());
                }
            } else {
                if (tabItem != null && (defaultIcon = tabItem.getDefaultIcon()) != null) {
                    str = defaultIcon;
                }
                iA = a.f52607a.a(tabItem);
                Context context2 = tabView.getContext();
                Intrinsics.g(context2, "getContext(...)");
                typefaceD = uf.a.d(context2);
                String defaultColor = (tabItem == null || (text2 = tabItem.getText()) == null) ? null : text2.getDefaultColor();
                if (defaultColor == null || defaultColor.length() == 0) {
                    color = androidx.core.content.b.getColor(this, R$color.text_02);
                } else {
                    color = Color.parseColor((tabItem == null || (text = tabItem.getText()) == null) ? null : text.getDefaultColor());
                }
            }
            AppCompatTextView appCompatTextView = (AppCompatTextView) tabView.findViewById(R$id.tv_tab);
            if (appCompatTextView != null) {
                appCompatTextView.setTextColor(color);
                appCompatTextView.setTypeface(typefaceD);
            }
            AppCompatImageView appCompatImageView = (AppCompatImageView) tabView.findViewById(R$id.image_tab_icon);
            if (appCompatImageView != null) {
                float f10 = (tabItem == null || !tabItem.isLargeUiType()) ? 24.0f : 72.0f;
                wf.a.C0922a.f(wf.a.f74274a, "MainActivity", "setTabUI() -->name:" + (tabItem != null ? tabItem.getName() : null) + " drawableUrl = " + str + ", width = " + f10, false, 4, null);
                ni.f.a aVar = ni.f.f67269a;
                Context context3 = appCompatImageView.getContext();
                Intrinsics.g(context3, "getContext(...)");
                aVar.m(context3).g(str).i(iA).m(com.blankj.utilcode.util.a0.a(f10)).d(appCompatImageView);
            }
            AppCompatImageView appCompatImageView2 = (AppCompatImageView) tabView.findViewById(R$id.iv_download_fail);
            if (appCompatImageView2 != null) {
                appCompatImageView2.setImageResource(R$mipmap.ic_download_status_fail_dark);
            }
            AppCompatTextView appCompatTextView2 = (AppCompatTextView) tabView.findViewById(R$id.tv_download_status);
            if (appCompatTextView2 != null) {
                appCompatTextView2.setBackgroundResource(R$drawable.shape_download_icon_status_dark);
            }
            AppCompatTextView appCompatTextView3 = (AppCompatTextView) tabView.findViewById(R$id.tv_red_tips);
            if ((tabItem != null ? tabItem.getBadge() : null) == null || !this.isShowHotTips || com.transsion.baselib.report.launch.b.f42221a.b().getBoolean("tab_hot_tips_is_show", false)) {
                if (appCompatTextView3 != null) {
                    uf.c.g(appCompatTextView3);
                    return;
                }
                return;
            }
            if (appCompatTextView3 != null) {
                uf.c.k(appCompatTextView3);
            }
            if (appCompatTextView3 != null) {
                appCompatTextView3.setText(Utils.a().getString(R$string.bottom_tab_tips_hot));
            }
            try {
                Result.Companion companion = Result.INSTANCE;
                if (appCompatTextView3 != null) {
                    Badge badge = tabItem.getBadge();
                    if (badge == null || (text3 = badge.getText()) == null) {
                        text3 = "Hot";
                    }
                    appCompatTextView3.setText(text3);
                }
                if (appCompatTextView3 != null) {
                    Badge badge2 = tabItem.getBadge();
                    appCompatTextView3.setBackgroundColor(Color.parseColor(badge2 != null ? badge2.getBgHue() : null));
                    unit = Unit.f64096a;
                }
                Result.m453constructorimpl(unit);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m453constructorimpl(ResultKt.a(th2));
            }
            this.showHotTabCode = tabItem.getBtTabCode();
        }
    }

    private final void E0(float bottomMargin) {
        im.b bVar = (im.b) TheRouter.d(im.b.class, new Object[0]);
        if (bVar != null) {
            bVar.w(bottomMargin);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void E1(int status, int size) {
        TabLayout.TabView tabView;
        TabLayout.TabView tabView2;
        TabLayout.TabView tabView3;
        TabLayout.Tab tabAt = ((dt.a) getMViewBinding()).f59079m.getTabAt(N0(BottomTabType.DOWNLOAD.getValue()));
        AppCompatImageView appCompatImageView = null;
        View viewFindViewById = (tabAt == null || (tabView3 = tabAt.view) == null) ? null : tabView3.findViewById(R$id.image_red_tips);
        AppCompatTextView appCompatTextView = (tabAt == null || (tabView2 = tabAt.view) == null) ? null : (AppCompatTextView) tabView2.findViewById(R$id.tv_download_status);
        if (tabAt != null && (tabView = tabAt.view) != null) {
            appCompatImageView = (AppCompatImageView) tabView.findViewById(R$id.iv_download_fail);
        }
        if (status == 0) {
            if (viewFindViewById != null) {
                A0(viewFindViewById);
            }
            if (appCompatTextView != null) {
                uf.c.g(appCompatTextView);
            }
            if (appCompatImageView != null) {
                uf.c.g(appCompatImageView);
                return;
            }
            return;
        }
        if (status == 1) {
            if (viewFindViewById != null) {
                A0(viewFindViewById);
            }
            if (appCompatTextView != null) {
                uf.c.g(appCompatTextView);
            }
            if (appCompatImageView != null) {
                uf.c.g(appCompatImageView);
                return;
            }
            return;
        }
        if (status == 2) {
            if (appCompatImageView != null) {
                uf.c.k(appCompatImageView);
            }
            if (viewFindViewById != null) {
                A0(viewFindViewById);
            }
            if (appCompatTextView != null) {
                uf.c.g(appCompatTextView);
                return;
            }
            return;
        }
        if (status == 4) {
            G1(viewFindViewById, appCompatTextView, appCompatImageView, size);
            return;
        }
        if (status == 5) {
            G1(viewFindViewById, appCompatTextView, appCompatImageView, size);
        } else if (status == 6 && viewFindViewById != null && uf.c.i(viewFindViewById)) {
            A0(viewFindViewById);
        }
    }

    static void F0(MainActivity mainActivity, float f10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = 50.0f;
        }
        mainActivity.E0(f10);
    }

    private final void F1(Fragment fragment, String tag) {
        if (Intrinsics.c(this.currentFragment, fragment)) {
            return;
        }
        wf.a.f74274a.c("MainActivity", "current add fragment:" + tag + " isAdded: " + fragment.isAdded() + " fragment:" + fragment, true);
        androidx.fragment.app.w wVarP = getSupportFragmentManager().p();
        Fragment fragment2 = this.currentFragment;
        if (fragment2 != null) {
            wVarP.p(fragment2);
        }
        this.currentFragment = fragment;
        if (fragment.isAdded()) {
            wVarP.y(fragment);
            wVarP.l();
        } else {
            wVarP.c(com.transsion.subroom.R$id.container, fragment, tag);
            wVarP.y(fragment);
            wVarP.l();
        }
    }

    private final void G0() {
        if (this.runOnce) {
            return;
        }
        this.runOnce = true;
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), new b(j0.f64923l1), null, new MainActivity$createDelayTask$1(this, null), 2, null);
    }

    private final void G1(View vTips, AppCompatTextView tvStatus, AppCompatImageView ivDownloadFail, int size) {
        if (vTips != null) {
            A0(vTips);
        }
        if (ivDownloadFail != null) {
            uf.c.g(ivDownloadFail);
        }
        if (size <= 0) {
            if (tvStatus != null) {
                uf.c.g(tvStatus);
            }
        } else {
            String strValueOf = size > 99 ? "99+" : String.valueOf(size);
            if (tvStatus != null) {
                uf.c.k(tvStatus);
            }
            if (tvStatus != null) {
                tvStatus.setText(strValueOf);
            }
        }
    }

    private final void H0() {
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new MainActivity$doShowKidsDialog$1(this, null), 3, null);
    }

    private final void H1() {
        HomeFragment homeFragment;
        List<BottomTabItem> bottomTabs;
        BottomTabItem bottomTabItem;
        int iL0 = L0(this.mBottomTabCode, this.mInitTabId);
        if (iL0 >= this.mFragments.size() || iL0 < 0) {
            return;
        }
        if (iL0 != this.currentFragmentIndex) {
            x1(iL0);
        }
        AppTab appTab = this.mCurrentHomeTab;
        if (!Intrinsics.c((appTab == null || (bottomTabs = appTab.getBottomTabs()) == null || (bottomTabItem = bottomTabs.get(iL0)) == null) ? null : bottomTabItem.getBtTabCode(), BottomTabType.TAB_CODE_HOME) || (homeFragment = this.homeFragment) == null) {
            return;
        }
        homeFragment.t1(this.mTopTabCode, this.mSecondTabIndex);
    }

    private final qx.a I0() {
        return (qx.a) this.mLoginApi.getValue();
    }

    private final View I1(BottomTabItem tab, TabLayout.TabView view, BottomTabItem selectedTabItem) {
        View viewInflate = LayoutInflater.from(this).inflate(tab.isLargeUiType() ? R$layout.layout_center_bottom_tab : com.transsion.home.R$layout.tab_bottom, (ViewGroup) view, false);
        D1(tab, viewInflate, selectedTabItem);
        Intrinsics.g(viewInflate, "apply(...)");
        return viewInflate;
    }

    private final gt.b J0() {
        return (gt.b) this.mbUpdateManager.getValue();
    }

    private final com.transsion.usercenter.profile.f K0() {
        return (com.transsion.usercenter.profile.f) this.noticeViewModel.getValue();
    }

    public final int L0(String tabCode, int tabId) {
        List<BottomTabItem> bottomTabs;
        if (tabId >= 0 && tabId < 5) {
            tabCode = BottomTabType.TAB_CODE_HOME;
            if (tabId != 0 && tabId != 1) {
                if (tabId == 2) {
                    tabCode = BottomTabType.TAB_CODE_SHORT_TV;
                } else if (tabId == 3) {
                    tabCode = BottomTabType.TAB_CODE_ME;
                } else if (tabId == 4) {
                    tabCode = BottomTabType.TAB_CODE_PREMIUM;
                } else if (tabId == 5) {
                    tabCode = BottomTabType.TAB_CODE_MUSIC;
                }
            }
        }
        AppTab appTab = this.mCurrentHomeTab;
        int i10 = 0;
        if (appTab != null && (bottomTabs = appTab.getBottomTabs()) != null) {
            int i11 = 0;
            for (Object obj : bottomTabs) {
                int i12 = i11 + 1;
                if (i11 < 0) {
                    CollectionsKt.u();
                }
                if (Intrinsics.c(((BottomTabItem) obj).getBtTabCode(), tabCode)) {
                    i10 = i11;
                }
                i11 = i12;
            }
        }
        return i10;
    }

    private final int M0(String tabCode) {
        List<BottomTabItem> bottomTabs;
        AppTab appTab = this.mCurrentHomeTab;
        int i10 = -1;
        if (appTab != null && (bottomTabs = appTab.getBottomTabs()) != null) {
            int i11 = 0;
            for (Object obj : bottomTabs) {
                int i12 = i11 + 1;
                if (i11 < 0) {
                    CollectionsKt.u();
                }
                if (Intrinsics.c(((BottomTabItem) obj).getBtTabCode(), tabCode)) {
                    i10 = i11;
                }
                i11 = i12;
            }
        }
        return i10;
    }

    private final int N0(String tabType) {
        List<BottomTabItem> bottomTabs;
        AppTab appTab = this.mCurrentHomeTab;
        int i10 = 0;
        if (appTab != null && (bottomTabs = appTab.getBottomTabs()) != null) {
            int i11 = 0;
            for (Object obj : bottomTabs) {
                int i12 = i11 + 1;
                if (i11 < 0) {
                    CollectionsKt.u();
                }
                if (Intrinsics.c(((BottomTabItem) obj).getBtTabType(), tabType)) {
                    i10 = i11;
                }
                i11 = i12;
            }
        }
        return i10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void Q0(List notEmptyBottomTabs) {
        ((dt.a) getMViewBinding()).f59079m.removeAllTabs();
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f42221a;
        String string = bVar.b().getString("tab_hot_tips_version", "");
        AppTab appTab = this.mCurrentHomeTab;
        if (appTab != null && !TextUtils.equals(string, appTab.getBadgeVer())) {
            bVar.b().putBoolean("tab_hot_tips_is_show", false);
        }
        D0(notEmptyBottomTabs);
        this.isUserBottomTabClickAction = false;
        if (this.currentFragmentIndex >= (notEmptyBottomTabs != null ? notEmptyBottomTabs.size() : 0)) {
            this.currentFragmentIndex = this.defaultIndex;
        }
        if (notEmptyBottomTabs != null) {
            int i10 = 0;
            for (Object obj : notEmptyBottomTabs) {
                int i11 = i10 + 1;
                if (i10 < 0) {
                    CollectionsKt.u();
                }
                BottomTabItem bottomTabItem = (BottomTabItem) obj;
                TabLayout tabLayout = ((dt.a) getMViewBinding()).f59079m;
                TabLayout.Tab tabNewTab = ((dt.a) getMViewBinding()).f59079m.newTab();
                tabNewTab.setTag(bottomTabItem.getBtTabCode());
                TabLayout.TabView view = tabNewTab.view;
                Intrinsics.g(view, "view");
                tabNewTab.setCustomView(I1(bottomTabItem, view, (BottomTabItem) notEmptyBottomTabs.get(this.currentFragmentIndex)));
                tabLayout.addTab(tabNewTab, this.currentFragmentIndex == i10);
                i10 = i11;
            }
        }
        this.isUserBottomTabClickAction = true;
        Y0();
    }

    private final void R0() {
        this.onDownloadIconStatusListener = new c();
        DownloadStatusIconManager.a aVar = DownloadStatusIconManager.f57244h;
        DownloadStatusIconManager downloadStatusIconManagerA = aVar.a();
        zw.e eVar = this.onDownloadIconStatusListener;
        Intrinsics.f(eVar, "null cannot be cast to non-null type com.transsnet.downloader.callback.OnDownloadIconStatusListener");
        downloadStatusIconManagerA.o(eVar);
        aVar.a().r();
    }

    private final void S0() {
        Function1 function1 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return MainActivity.T0(this.f52631a, (ep.i) obj);
            }
        };
        AppScopeVMlProvider appScopeVMlProvider = AppScopeVMlProvider.INSTANCE;
        FlowEventBus flowEventBus = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
        String name = ep.i.class.getName();
        Intrinsics.g(name, "getName(...)");
        Lifecycle.State state = Lifecycle.State.CREATED;
        flowEventBus.observeEvent(this, name, state, y0.c().r(), false, function1);
        Function1 function2 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return MainActivity.U0(this.f52632a, (qv.a) obj);
            }
        };
        FlowEventBus flowEventBus2 = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
        String name2 = qv.a.class.getName();
        Intrinsics.g(name2, "getName(...)");
        flowEventBus2.observeEvent(this, name2, state, y0.c().r(), false, function2);
        Function1 function3 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return MainActivity.V0(this.f52633a, (ij.n) obj);
            }
        };
        FlowEventBus flowEventBus3 = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
        String name3 = ij.n.class.getName();
        Intrinsics.g(name3, "getName(...)");
        flowEventBus3.observeEvent(this, name3, state, y0.c().r(), false, function3);
        Function1 function4 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return MainActivity.W0(this.f52634a, (dl.a) obj);
            }
        };
        FlowEventBus flowEventBus4 = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
        String name4 = dl.a.class.getName();
        Intrinsics.g(name4, "getName(...)");
        flowEventBus4.observeEvent(this, name4, state, y0.c().r(), false, function4);
    }

    public static final Unit T0(MainActivity mainActivity, ep.i it) {
        Intrinsics.h(it, "it");
        com.transsion.room.helper.n.f49628a.c(mainActivity);
        return Unit.f64096a;
    }

    public static final Unit U0(MainActivity mainActivity, qv.a it) {
        Intrinsics.h(it, "it");
        mainActivity.currentFragmentIndex = mainActivity.defaultIndex;
        PreloadTrendingData.a aVar = PreloadTrendingData.f44531n;
        aVar.a().z();
        aVar.a().Q("");
        return Unit.f64096a;
    }

    public static final Unit V0(MainActivity mainActivity, ij.n it) {
        Intrinsics.h(it, "it");
        mainActivity.currentFragmentIndex = mainActivity.defaultIndex;
        PreloadTrendingData.a aVar = PreloadTrendingData.f44531n;
        aVar.a().z();
        aVar.a().G();
        return Unit.f64096a;
    }

    public static final Unit W0(MainActivity mainActivity, dl.a it) {
        Intrinsics.h(it, "it");
        mainActivity.currentFragmentIndex = mainActivity.defaultIndex;
        PreloadTrendingData.a aVar = PreloadTrendingData.f44531n;
        aVar.a().z();
        aVar.a().Q("");
        return Unit.f64096a;
    }

    /* JADX WARN: Code duplicated, block: B:43:0x014a  */
    /* JADX WARN: Code duplicated, block: B:45:0x0154  */
    /* JADX WARN: Code duplicated, block: B:46:0x015a  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v7, types: [im.b] */
    /* JADX WARN: Type inference failed for: r9v11, types: [com.transsion.home.fragment.bottom.BottomRoomFragment] */
    /* JADX WARN: Type inference failed for: r9v12, types: [com.transsion.home.fragment.bottom.BottomRoomFragment] */
    /* JADX WARN: Type inference failed for: r9v16, types: [com.transsion.usercenter.me.MeFragment] */
    /* JADX WARN: Type inference failed for: r9v17, types: [com.transsion.usercenter.me.MeFragment] */
    /* JADX WARN: Type inference failed for: r9v22, types: [androidx.fragment.app.Fragment, com.transsion.web.fragment.WebFragmentV2] */
    /* JADX WARN: Type inference failed for: r9v23, types: [com.transsion.web.fragment.WebFragmentV2] */
    /* JADX WARN: Type inference failed for: r9v27, types: [com.transsnet.downloader.fragment.DownloadMainFragment] */
    /* JADX WARN: Type inference failed for: r9v28, types: [com.transsnet.downloader.fragment.DownloadMainFragment] */
    /* JADX WARN: Type inference failed for: r9v3, types: [androidx.fragment.app.Fragment, com.transsion.web.fragment.WebFragmentV2] */
    /* JADX WARN: Type inference failed for: r9v30, types: [androidx.fragment.app.Fragment] */
    /* JADX WARN: Type inference failed for: r9v34 */
    /* JADX WARN: Type inference failed for: r9v35, types: [androidx.fragment.app.Fragment] */
    /* JADX WARN: Type inference failed for: r9v40, types: [com.transsion.home.fragment.bottom.BottomOpFragment] */
    /* JADX WARN: Type inference failed for: r9v41, types: [com.transsion.home.fragment.bottom.BottomOpFragment] */
    /* JADX WARN: Type inference failed for: r9v45, types: [com.transsion.shorttv.ui.fragment.ShortTVDiscoverFragment] */
    /* JADX WARN: Type inference failed for: r9v46, types: [com.transsion.shorttv.ui.fragment.ShortTVDiscoverFragment] */
    /* JADX WARN: Type inference failed for: r9v47, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v50, types: [com.transsion.home.fragment.home.HomeFragment, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v54, types: [com.transsion.home.fragment.home.HomeFragment, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v56 */
    /* JADX WARN: Type inference failed for: r9v57 */
    /* JADX WARN: Type inference failed for: r9v7, types: [com.transsion.home.fragment.subscription.SubscriptionBottomOpFragment] */
    /* JADX WARN: Type inference failed for: r9v8, types: [com.transsion.home.fragment.subscription.SubscriptionBottomOpFragment] */
    private final void X0(List tabs) {
        BottomTabItem bottomTabItem;
        String btTabCode;
        ?? B;
        im.b bVar;
        wf.a.C0922a.f(wf.a.f74274a, "MainActivity", "initFragment() --> 开始创建Fragment了", false, 4, null);
        getSupportFragmentManager().l1(null, 1);
        this.mFragments.clear();
        String str = "";
        if (tabs != null) {
            Iterator it = tabs.iterator();
            while (it.hasNext()) {
                BottomTabItem bottomTabItem2 = (BottomTabItem) it.next();
                String btTabType = bottomTabItem2.getBtTabType();
                if (Intrinsics.c(btTabType, BottomTabType.HOME.getValue())) {
                    wf.a.C0922a.f(wf.a.f74274a, "MainActivity", "initFragment() --> 开始创建Fragment了 --> homeFragment", false, 4, null);
                    B = this.homeFragment;
                    if (B != 0) {
                        Intrinsics.e(B);
                    } else {
                        Fragment fragmentK0 = getSupportFragmentManager().k0(bottomTabItem2.getBtTabCode());
                        B = fragmentK0 instanceof HomeFragment ? (HomeFragment) fragmentK0 : new HomeFragment();
                        this.homeFragment = B;
                        Intrinsics.e(B);
                    }
                } else if (Intrinsics.c(btTabType, BottomTabType.SHORT_TV.getValue())) {
                    wf.a.C0922a.f(wf.a.f74274a, "MainActivity", "initFragment() --> 开始创建Fragment了 --> immersionVideoFragment", false, 4, null);
                    Fragment fragmentK1 = getSupportFragmentManager().k0(bottomTabItem2.getBtTabCode());
                    B = fragmentK1 instanceof ShortTVDiscoverFragment ? (ShortTVDiscoverFragment) fragmentK1 : ShortTVDiscoverFragment.Companion.b(ShortTVDiscoverFragment.INSTANCE, false, null, 2, null);
                } else if (Intrinsics.c(btTabType, BottomTabType.OPERATION.getValue())) {
                    wf.a.C0922a.f(wf.a.f74274a, "MainActivity", "initFragment() --> 开始创建Fragment了 --> operateTab:" + bottomTabItem2.getOperateTabId(), false, 4, null);
                    Fragment fragmentK2 = getSupportFragmentManager().k0(bottomTabItem2.getBtTabCode());
                    if (fragmentK2 instanceof BottomOpFragment) {
                        B = (BottomOpFragment) fragmentK2;
                    } else {
                        BottomOpFragment.Companion aVar = BottomOpFragment.INSTANCE;
                        Integer operateTabId = bottomTabItem2.getOperateTabId();
                        B = aVar.a(operateTabId != null ? operateTabId.intValue() : HomeTabId.INSTANCE.e(), bottomTabItem2.getBtTabCode());
                    }
                } else if (Intrinsics.c(btTabType, BottomTabType.PREMIUM.getValue())) {
                    wf.a.C0922a.f(wf.a.f74274a, "MainActivity", "initFragment() --> 开始创建Fragment了 --> memberFragment", false, 4, null);
                    B = getSupportFragmentManager().k0(bottomTabItem2.getBtTabCode());
                    if (B == 0) {
                        bVar = (im.b) TheRouter.d(im.b.class, new Object[0]);
                        if (bVar != null) {
                            B = bVar.r();
                        } else {
                            B = 0;
                        }
                    } else {
                        ?? r11 = (im.b) TheRouter.d(im.b.class, new Object[0]);
                        if (!(r11 != 0 ? r11.i(B) : false)) {
                            bVar = (im.b) TheRouter.d(im.b.class, new Object[0]);
                            if (bVar != null) {
                                B = bVar.r();
                            } else {
                                B = 0;
                            }
                        }
                    }
                } else if (Intrinsics.c(btTabType, BottomTabType.DOWNLOAD.getValue())) {
                    wf.a.C0922a.f(wf.a.f74274a, "MainActivity", "initFragment() --> 开始创建Fragment了 --> fileManagerFragment", false, 4, null);
                    Fragment fragmentK3 = getSupportFragmentManager().k0(bottomTabItem2.getBtTabCode());
                    B = fragmentK3 instanceof DownloadMainFragment ? (DownloadMainFragment) fragmentK3 : DownloadMainFragment.INSTANCE.a(0);
                } else if (Intrinsics.c(btTabType, BottomTabType.H5TAB.getValue())) {
                    wf.a.C0922a.f(wf.a.f74274a, "MainActivity", "initFragment() --> 开始创建Fragment了 --> h5fragment --> " + bottomTabItem2.getUrl(), false, 4, null);
                    Fragment fragmentK4 = getSupportFragmentManager().k0(bottomTabItem2.getBtTabCode());
                    if (fragmentK4 instanceof WebFragmentV2) {
                        B = (WebFragmentV2) fragmentK4;
                    } else {
                        B = WebFragmentV2.INSTANCE.b();
                        B.setArguments(androidx.core.os.d.b(TuplesKt.a("url", bottomTabItem2.getUrl()), TuplesKt.a(WebConstants.FIELD_TOOL_BAR_HIDDEN, Boolean.TRUE), TuplesKt.a(WebConstants.TAB_CODE, bottomTabItem2.getBtTabCode()), TuplesKt.a(WebConstants.BOTTOM_MARGIN, Integer.valueOf((int) getResources().getDimension(R$dimen.tab_bottom_show_height)))));
                    }
                } else if (Intrinsics.c(btTabType, BottomTabType.ME.getValue())) {
                    wf.a.C0922a.f(wf.a.f74274a, "MainActivity", "initFragment() --> 开始创建Fragment了 --> profileFragment", false, 4, null);
                    Fragment fragmentK5 = getSupportFragmentManager().k0(bottomTabItem2.getBtTabCode());
                    B = fragmentK5 instanceof MeFragment ? (MeFragment) fragmentK5 : MeFragment.INSTANCE.a();
                } else if (Intrinsics.c(btTabType, BottomTabType.ROOM.getValue())) {
                    wf.a.C0922a.f(wf.a.f74274a, "MainActivity", "initFragment() --> 开始创建Fragment了 --> BottomRoomFragment", false, 4, null);
                    Fragment fragmentK6 = getSupportFragmentManager().k0(bottomTabItem2.getBtTabCode());
                    B = fragmentK6 instanceof BottomRoomFragment ? (BottomRoomFragment) fragmentK6 : new BottomRoomFragment();
                } else if (Intrinsics.c(btTabType, BottomTabType.SUBSCRIPTION.getValue())) {
                    wf.a.C0922a.f(wf.a.f74274a, "MainActivity", "initFragment() --> 开始创建Fragment了 --> SubscriptionFragment", false, 4, null);
                    Fragment fragmentK7 = getSupportFragmentManager().k0(bottomTabItem2.getBtTabCode());
                    B = fragmentK7 instanceof SubscriptionBottomOpFragment ? (SubscriptionBottomOpFragment) fragmentK7 : SubscriptionBottomOpFragment.INSTANCE.a(0, "");
                } else {
                    B = WebFragmentV2.INSTANCE.b();
                    B.setArguments(androidx.core.os.d.b(TuplesKt.a("url", "https://moviebox.ng/home"), TuplesKt.a(WebConstants.FIELD_TOOL_BAR_HIDDEN, Boolean.TRUE)));
                }
                if (B != 0) {
                    this.mFragments.add(B);
                }
                if (Intrinsics.c(bottomTabItem2.getBtTabType(), BottomTabType.NOVEL.getValue())) {
                    dj.a.f59043a.d(this);
                }
            }
        }
        if (this.currentFragmentIndex < this.mFragments.size()) {
            if (this.currentFragmentIndex < (tabs != null ? tabs.size() : 0)) {
                BottomTabItem bottomTabItem3 = tabs != null ? (BottomTabItem) tabs.get(this.currentFragmentIndex) : null;
                if (!(bottomTabItem3 != null && bottomTabItem3.isOpenLandPage())) {
                    Fragment fragment = (Fragment) this.mFragments.get(this.currentFragmentIndex);
                    if (tabs != null && (bottomTabItem = (BottomTabItem) tabs.get(this.currentFragmentIndex)) != null && (btTabCode = bottomTabItem.getBtTabCode()) != null) {
                        str = btTabCode;
                    }
                    F1(fragment, str);
                    return;
                }
                String url = bottomTabItem3.getUrl();
                if (url != null) {
                    ij.k.h(url, null, 1, null);
                }
                TabLayout tabLayout = ((dt.a) getMViewBinding()).f59079m;
                this.isUserBottomTabClickAction = false;
                tabLayout.selectTab(tabLayout.getTabAt(this.currentFragmentIndex));
                this.isUserBottomTabClickAction = true;
                return;
            }
        }
        wf.a.f74274a.i("MainActivity", "showFragment index error : " + this.currentFragmentIndex + ", ", true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void Y0() {
        TabLayout.Tab tabAt;
        TabLayout.TabView tabView;
        final ImageView imageView;
        int iN0 = N0(BottomTabType.ME.getValue());
        if (!com.transsion.baselib.report.launch.b.f42221a.b().getBoolean("k_is_family_mode_badge", true) || (tabAt = ((dt.a) getMViewBinding()).f59079m.getTabAt(iN0)) == null || (tabView = tabAt.view) == null || (imageView = (ImageView) tabView.findViewById(R$id.image_red_tips)) == null) {
            return;
        }
        uf.c.k(imageView);
        Function1 function1 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return MainActivity.Z0(this.f52623a, imageView, (qv.b) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = qv.b.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(this, name, Lifecycle.State.CREATED, y0.c().r(), false, function1);
    }

    public static final Unit Z0(MainActivity mainActivity, ImageView imageView, qv.b it) {
        Intrinsics.h(it, "it");
        mainActivity.A0(imageView);
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void a1() {
        wf.a.C0922a.f(wf.a.f74274a, "MainActivity", "initTabs() --> 开始创建Tab了", false, 4, null);
        ((dt.a) getMViewBinding()).f59079m.addOnTabSelectedListener((TabLayout.OnTabSelectedListener) new d());
        s1();
        PreloadTrendingData.a aVar = PreloadTrendingData.f44531n;
        aVar.a().C().j(this, new e(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return MainActivity.b1(this.f52616a, (AppTab) obj);
            }
        }));
        aVar.a().D().j(this, new e(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return MainActivity.c1(this.f52617a, (AppTab) obj);
            }
        }));
        if (aVar.a().M()) {
            return;
        }
        aVar.a().z();
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0023  */
    /* JADX WARN: Code duplicated, block: B:16:0x002c  */
    /* JADX WARN: Code duplicated, block: B:17:0x0031  */
    /* JADX WARN: Code duplicated, block: B:20:0x0036  */
    /* JADX WARN: Code duplicated, block: B:21:0x003f  */
    /* JADX WARN: Code duplicated, block: B:24:0x0061  */
    public static final Unit b1(MainActivity mainActivity, AppTab appTab) {
        AppTab appTab2;
        String version;
        AppTab appTab3;
        Boolean boolValueOf;
        if (mainActivity.mCurrentHomeTab == null) {
            mainActivity.y1(appTab);
            wf.a.C0922a c0922a = wf.a.f74274a;
            appTab2 = mainActivity.mCurrentHomeTab;
            if (appTab2 != null) {
                version = appTab2.getVersion();
            } else {
                version = null;
            }
            appTab3 = mainActivity.mCurrentHomeTab;
            if (appTab3 != null) {
                boolValueOf = Boolean.valueOf(appTab3.isUgcEnabled());
            } else {
                boolValueOf = null;
            }
            c0922a.c("PreloadTrending", "bottomTab build from cache2: " + version + " ugcMode " + boolValueOf, true);
            mainActivity.B0(appTab != null ? appTab.getBottomTabs() : null);
        } else {
            if ((appTab != null ? appTab.getVersion() : null) != null) {
                String version2 = appTab.getVersion();
                AppTab appTab4 = mainActivity.mCurrentHomeTab;
                if (!Intrinsics.c(version2, appTab4 != null ? appTab4.getVersion() : null)) {
                    mainActivity.y1(appTab);
                    wf.a.C0922a c0922a2 = wf.a.f74274a;
                    appTab2 = mainActivity.mCurrentHomeTab;
                    if (appTab2 != null) {
                        version = appTab2.getVersion();
                    } else {
                        version = null;
                    }
                    appTab3 = mainActivity.mCurrentHomeTab;
                    if (appTab3 != null) {
                        boolValueOf = Boolean.valueOf(appTab3.isUgcEnabled());
                    } else {
                        boolValueOf = null;
                    }
                    c0922a2.c("PreloadTrending", "bottomTab build from cache2: " + version + " ugcMode " + boolValueOf, true);
                    mainActivity.B0(appTab != null ? appTab.getBottomTabs() : null);
                }
            }
        }
        return Unit.f64096a;
    }

    public static final Unit c1(MainActivity mainActivity, AppTab appTab) {
        List<BottomTabItem> bottomTabs;
        wf.a.C0922a c0922a = wf.a.f74274a;
        c0922a.c("PreloadTrending", "bottomTab has observed " + (appTab != null ? appTab.getVersion() : null) + " " + (appTab != null ? appTab.getBottomTabs() : null) + " ugcMode" + (appTab != null ? Boolean.valueOf(appTab.isUgcEnabled()) : null), true);
        if ((appTab != null ? appTab.getVersion() : null) != null) {
            String version = appTab.getVersion();
            AppTab appTab2 = mainActivity.mCurrentHomeTab;
            if (!Intrinsics.c(version, appTab2 != null ? appTab2.getVersion() : null) && (bottomTabs = appTab.getBottomTabs()) != null && !bottomTabs.isEmpty()) {
                mainActivity.y1(appTab);
                AppTab appTab3 = mainActivity.mCurrentHomeTab;
                wf.a.C0922a.f(c0922a, "PreloadTrending", "bottomTab build from net:" + (appTab3 != null ? appTab3.getBottomTabs() : null), false, 4, null);
                mainActivity.B0(appTab.getBottomTabs());
            }
        }
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void d1() {
        TabLayout.Tab tabAt = ((dt.a) getMViewBinding()).f59079m.getTabAt(N0(BottomTabType.ME.getValue()));
        final TabLayout.TabView tabView = tabAt != null ? tabAt.view : null;
        if (tabView != null) {
            tabView.post(new Runnable() {
                @Override
                public final void run() {
                    MainActivity.e1(this.f52619a, tabView);
                }
            });
        }
    }

    public static final void e1(final MainActivity mainActivity, final TabLayout.TabView tabView) {
        mainActivity.K0().h().j(mainActivity, new e(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return MainActivity.f1(tabView, mainActivity, (Integer) obj);
            }
        }));
        mainActivity.K0().d();
    }

    public static final Unit f1(TabLayout.TabView tabView, MainActivity mainActivity, Integer num) {
        View viewFindViewById = tabView.findViewById(R$id.image_red_tips);
        if (viewFindViewById != null) {
            if (num.intValue() > 0) {
                uf.c.k(viewFindViewById);
            } else {
                mainActivity.A0(viewFindViewById);
            }
        }
        return Unit.f64096a;
    }

    public static final qx.a g1() {
        return (qx.a) TheRouter.d(qx.a.class, new Object[0]);
    }

    public static final gt.b h1() {
        return new gt.b();
    }

    public static final com.transsion.usercenter.profile.f i1(MainActivity mainActivity) {
        return (com.transsion.usercenter.profile.f) new v0(mainActivity).a(com.transsion.usercenter.profile.f.class);
    }

    private final void initPlayer() {
        hn.b.f61411a.d(new hn.d(RenderType.SURFACE_VIEW, false, 0, 0, 0, 0, 0, 0, 0L, 0, 0, false, false, false, false, false, null, 131070, null));
    }

    public static final Unit j1(final MainActivity mainActivity) {
        mainActivity.runOnUiThread(new Runnable() {
            @Override
            public final void run() {
                MainActivity.k1(this.f52635a);
            }
        });
        return Unit.f64096a;
    }

    public static final void k1(MainActivity mainActivity) {
        if (mainActivity.isDestroyed() || mainActivity.isFinishing()) {
            return;
        }
        mainActivity.H0();
    }

    public static final void l1(MainActivity mainActivity) {
        final qx.a aVarI0 = mainActivity.I0();
        lq.a aVar = lq.a.f66097a;
        String string = mainActivity.getString(com.transsion.baseui.R$string.base_app_name);
        Intrinsics.g(string, "getString(...)");
        aVar.d(string, new Function0() {
            @Override
            public final Object invoke() {
                return MainActivity.m1(aVarI0);
            }
        }, new Function4() {
            @Override
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                return MainActivity.n1((Context) obj, (String) obj2, (String) obj3, (com.transsion.share.share.a) obj4);
            }
        }, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return MainActivity.o1((String) obj);
            }
        });
    }

    public static final String m1(qx.a aVar) {
        UserInfo userInfoI;
        if (aVar == null || (userInfoI = aVar.i()) == null) {
            return null;
        }
        return userInfoI.getUserId();
    }

    public static final Unit n1(Context content, String str, String mSubjectId, com.transsion.share.share.a aVar) {
        Intrinsics.h(content, "content");
        Intrinsics.h(mSubjectId, "mSubjectId");
        ReportDialog reportDialogA = ReportDialog.INSTANCE.a(str, mSubjectId);
        reportDialogA.A0(aVar);
        reportDialogA.k0(content, "report");
        return Unit.f64096a;
    }

    public static final Unit o1(String it) {
        Intrinsics.h(it, "it");
        com.tn.lib.widget.toast.core.h.f40484a.l(it);
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void p1() {
        wf.a.C0922a.f(wf.a.f74274a, "MainActivity", "onCreateNext() --> 首页开始初始化了", false, 4, null);
        a1();
        initPlayer();
        ((dt.a) getMViewBinding()).f59070d.setBackgroundResource(R$color.bg_04);
        w1();
        if (!vo.e.f73683a.f(this, NoticePermissionFrom.APP_START)) {
            this.widgetDialogShowing = com.transsion.mbwidget.d.f44872a.i(new Function0() {
                @Override
                public final Object invoke() {
                    return MainActivity.q1(this.f52611a);
                }
            });
        }
        im.b bVar = (im.b) TheRouter.d(im.b.class, new Object[0]);
        if (bVar != null) {
            bVar.f();
        }
        cw.e.f58665a.b().f();
    }

    public static final Unit q1(MainActivity mainActivity) {
        mainActivity.widgetDialogShowing = false;
        if (!mainActivity.kidsDialogShown) {
            mainActivity.kidsDialogShown = true;
            mainActivity.C0();
        }
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void r1(TabLayout.Tab tab) {
        String btTabCode;
        List<BottomTabItem> bottomTabs;
        if (tab == null) {
            return;
        }
        im.b bVar = (im.b) TheRouter.d(im.b.class, new Object[0]);
        if (bVar != null) {
            bVar.E();
        }
        int size = this.mFragments.size();
        int position = tab.getPosition();
        if (position < 0 || position >= size) {
            return;
        }
        AppTab appTab = this.mCurrentHomeTab;
        BottomTabItem bottomTabItem = (appTab == null || (bottomTabs = appTab.getBottomTabs()) == null) ? null : (BottomTabItem) CollectionsKt.l0(bottomTabs, tab.getPosition());
        v1(bottomTabItem, this.isUserBottomTabClickAction);
        if (bottomTabItem != null && bottomTabItem.isOpenLandPage()) {
            String url = bottomTabItem.getUrl();
            if (url != null) {
                ij.k.h(url, null, 1, null);
            }
            TabLayout tabLayout = ((dt.a) getMViewBinding()).f59079m;
            this.isUserBottomTabClickAction = false;
            tabLayout.selectTab(tabLayout.getTabAt(this.currentFragmentIndex));
            this.isUserBottomTabClickAction = true;
            return;
        }
        if (Intrinsics.c(bottomTabItem != null ? bottomTabItem.getBtTabCode() : null, this.showHotTabCode)) {
            this.isShowHotTips = false;
            com.transsion.baselib.report.launch.b bVar2 = com.transsion.baselib.report.launch.b.f42221a;
            MMKV mmkvB = bVar2.b();
            AppTab appTab2 = this.mCurrentHomeTab;
            mmkvB.putString("tab_hot_tips_version", appTab2 != null ? appTab2.getBadgeVer() : null);
            bVar2.b().putBoolean("tab_hot_tips_is_show", true);
        }
        t1(bottomTabItem);
        int position2 = tab.getPosition();
        this.currentFragmentIndex = position2;
        if (position2 >= this.mFragments.size()) {
            return;
        }
        Fragment fragment = (Fragment) this.mFragments.get(tab.getPosition());
        if (bottomTabItem == null || (btTabCode = bottomTabItem.getBtTabCode()) == null) {
            btTabCode = "";
        }
        F1(fragment, btTabCode);
        String btTabType = bottomTabItem != null ? bottomTabItem.getBtTabType() : null;
        BottomTabType bottomTabType = BottomTabType.HOME;
        if (Intrinsics.c(btTabType, bottomTabType.getValue())) {
            BaseActivity.changeStatusFontColor$default(this, this.mHomeStatusWhite, false, 2, null);
        } else {
            BaseActivity.changeStatusFontColor$default(this, bottomTabItem != null && bottomTabItem.getStatusWhite(), false, 2, null);
        }
        if (!Intrinsics.c(bottomTabItem != null ? bottomTabItem.getBtTabType() : null, bottomTabType.getValue())) {
            if (!Intrinsics.c(bottomTabItem != null ? bottomTabItem.getBtTabType() : null, BottomTabType.PREMIUM.getValue())) {
                F0(this, 0.0f, 1, null);
            }
        }
        if (Intrinsics.c(bottomTabItem != null ? bottomTabItem.getBtTabType() : null, BottomTabType.DOWNLOAD.getValue())) {
            E1(6, 0);
        }
    }

    private final void s1() {
        List<BottomTabItem> bottomTabs;
        y1(PreloadTrendingData.f44531n.a().F());
        AppTab appTab = this.mCurrentHomeTab;
        if (appTab == null || (bottomTabs = appTab.getBottomTabs()) == null) {
            return;
        }
        wf.a.C0922a c0922a = wf.a.f74274a;
        AppTab appTab2 = this.mCurrentHomeTab;
        String version = appTab2 != null ? appTab2.getVersion() : null;
        AppTab appTab3 = this.mCurrentHomeTab;
        c0922a.c("PreloadTrending", "bottomTab build from cache1 " + version + " ugcMode " + (appTab3 != null ? Boolean.valueOf(appTab3.isUgcEnabled()) : null), true);
        B0(bottomTabs);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void t1(BottomTabItem selectedTabItem) {
        List<BottomTabItem> bottomTabs;
        TabLayout tabLayout = ((dt.a) getMViewBinding()).f59079m;
        int tabCount = tabLayout.getTabCount();
        for (int i10 = 0; i10 < tabCount; i10++) {
            try {
                Result.Companion companion = Result.INSTANCE;
                AppTab appTab = this.mCurrentHomeTab;
                BottomTabItem bottomTabItem = (appTab == null || (bottomTabs = appTab.getBottomTabs()) == null) ? null : (BottomTabItem) CollectionsKt.l0(bottomTabs, i10);
                TabLayout.Tab tabAt = tabLayout.getTabAt(i10);
                D1(bottomTabItem, tabAt != null ? tabAt.view : null, selectedTabItem);
                Result.m453constructorimpl(Unit.f64096a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m453constructorimpl(ResultKt.a(th2));
            }
        }
    }

    private final void u1() {
        List<BottomTabItem> bottomTabs;
        AppTab appTab = this.mCurrentHomeTab;
        if (appTab == null || (bottomTabs = appTab.getBottomTabs()) == null) {
            return;
        }
        for (BottomTabItem bottomTabItem : bottomTabs) {
            qi.h.f69682a.z("main_page", MapsKt.m(TuplesKt.a(WebConstants.TAB_CODE, bottomTabItem.getBtTabCode()), TuplesKt.a("tab_type", bottomTabItem.getBtTabType()), TuplesKt.a("tab_name", bottomTabItem.getName())));
        }
    }

    private final void v1(BottomTabItem tabItem, boolean isUserAction) {
        qi.h.f69682a.o("main_page", MapsKt.m(TuplesKt.a(WebConstants.TAB_CODE, tabItem != null ? tabItem.getBtTabCode() : null), TuplesKt.a("tab_type", tabItem != null ? tabItem.getBtTabType() : null), TuplesKt.a("tab_name", tabItem != null ? tabItem.getName() : null), TuplesKt.a("tab_user_click", String.valueOf(isUserAction))));
    }

    private final void w1() {
        if (yg.l.f76264a.e()) {
            return;
        }
        kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new MainActivity$routerToDownloadsFragment$1(this, null), 3, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void x1(int routerPosition) {
        TabLayout tabLayout = ((dt.a) getMViewBinding()).f59079m;
        this.isUserBottomTabClickAction = false;
        tabLayout.selectTab(tabLayout.getTabAt(routerPosition));
        this.isUserBottomTabClickAction = true;
    }

    private final void y1(AppTab homeTab) {
        this.mCurrentHomeTab = homeTab;
        wf.a.f74274a.c("MainActivity", "setCurrentHomeTab :" + homeTab, true);
        ij.g.f62108a.e(homeTab != null ? homeTab.isUgcEnabled() : false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void z1() {
        TabLayout.TabView tabView;
        final int iM0 = M0(BottomTabType.TAB_CODE_HOME);
        TabLayout.Tab tabAt = ((dt.a) getMViewBinding()).f59079m.getTabAt(iM0);
        if (tabAt == null || (tabView = tabAt.view) == null) {
            return;
        }
        tabView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                MainActivity.A1(this.f52621a, iM0, view);
            }
        });
    }

    @Override
    public dt.a getViewBinding() {
        dt.a aVarC = dt.a.c(getLayoutInflater());
        Intrinsics.g(aVarC, "inflate(...)");
        return aVarC;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void P0() {
        this.secondFloorHelper = new SecondFloorHelper((dt.a) getMViewBinding());
    }

    @Override
    public void changeStatusFontColor(boolean isWhiteFont, boolean isHomeFragment) {
        if (isHomeFragment) {
            this.mHomeStatusWhite = isWhiteFont;
        }
        super.changeStatusFontColor(isWhiteFont, isHomeFragment);
    }

    @Override
    public com.transsion.home.preload.b getXmlPreload() {
        return this.xmlPreload;
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent event) {
        if (event != null && event.getAction() == 0) {
            com.transsion.home.view.g gVar = com.transsion.home.view.g.f44435a;
            if (!gVar.a()) {
                gVar.e(true);
            }
        }
        return super.dispatchTouchEvent(event);
    }

    @Override
    public boolean getIsBottomTabLargeType() {
        return this.isBottomTabLargeType;
    }

    @Override
    public int getTipViewBottomMargin() {
        return ImmersionBar.hasNavigationBar((Activity) this) ? com.blankj.utilcode.util.a0.a(68.0f) + ImmersionBar.getNavigationBarHeight((Activity) this) : com.blankj.utilcode.util.a0.a(68.0f);
    }

    @Override
    public boolean hasAd() {
        SecondFloorHelper secondFloorHelper = this.secondFloorHelper;
        if (secondFloorHelper != null) {
            return secondFloorHelper.K();
        }
        return false;
    }

    @Override
    public boolean isChangeStatusBar() {
        return false;
    }

    @Override
    public boolean isStatusDark() {
        return false;
    }

    @Override
    public boolean isTranslucent() {
        return true;
    }

    @Override
    public void loadTwoLevelAd() {
        SecondFloorHelper secondFloorHelper = this.secondFloorHelper;
        if (secondFloorHelper != null) {
            SecondFloorHelper.N(secondFloorHelper, this.shouldShowGuide, false, 2, null);
        }
        this.shouldShowGuide = false;
    }

    @Override
    public void onAction(String action, float distance, float progress) {
        Intrinsics.h(action, "action");
        SecondFloorHelper secondFloorHelper = this.secondFloorHelper;
        if (secondFloorHelper != null) {
            secondFloorHelper.O(action, distance, progress);
        }
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        J0().a(requestCode, resultCode, data);
    }

    @Override
    public void onBackPressed() {
        HomeFragment homeFragment;
        HomeFragment homeFragment2;
        com.transsion.subroom.deeplink.b bVar = com.transsion.subroom.deeplink.b.f52645a;
        if (bVar.a()) {
            bVar.b(false);
            super.onBackPressed();
            return;
        }
        Fragment fragment = this.currentFragment;
        if (fragment instanceof WebFragmentV2) {
            Intrinsics.f(fragment, "null cannot be cast to non-null type com.transsion.web.fragment.WebFragmentV2");
            if (((WebFragmentV2) fragment).h1()) {
                return;
            }
        }
        Fragment fragment2 = this.currentFragment;
        if (fragment2 instanceof HomeFragment) {
            Intrinsics.f(fragment2, "null cannot be cast to non-null type com.transsion.home.fragment.home.HomeFragment");
            if (((HomeFragment) fragment2).Y0()) {
                return;
            }
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.mBackTime <= TimeUnit.SECONDS.toMillis(3L)) {
            super.onBackPressed();
            return;
        }
        this.mBackTime = jCurrentTimeMillis;
        fh.b.f60176a.d(com.transsion.baseui.R$string.tap_again_to_exit);
        if (!yg.l.f76264a.e() || (homeFragment = this.homeFragment) == null || !homeFragment.isVisible() || (homeFragment2 = this.homeFragment) == null) {
            return;
        }
        homeFragment2.u1();
    }

    @Override
    public void onConfigurationChanged(Configuration newConfig) {
        Intrinsics.h(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        HomeFragment homeFragment = this.homeFragment;
        if (homeFragment != null) {
            homeFragment.onConfigurationChanged(newConfig);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    protected void onCreate(Bundle savedInstanceState) throws IllegalAccessException, InvocationTargetException {
        AppStartReport.f52508a.e(new AppStartDotState(AppStartDotState.MAIN_CREATE, 0L, 2, null));
        if (Build.VERSION.SDK_INT > 28) {
            this.xmlPreload = new MainXMLPreloadControlImp(this);
        }
        TheRouter.l(this);
        super.onCreate(savedInstanceState);
        this.currentFragmentIndex = savedInstanceState != null ? savedInstanceState.getInt("current_fragment_index") : this.defaultIndex;
        this.mVideoTabIsWhite = savedInstanceState != null ? savedInstanceState.getBoolean("video_tab_is_white") : false;
        com.transsion.startup.pref.consume.c.f52518a.k(this);
        p1();
        wf.a.C0922a.f(wf.a.f74274a, "MainActivity", "MainActivity onCreate " + com.transsion.home.view.g.f44435a.a(), false, 4, null);
        changeStatusFontColor(false, true);
        ((dt.a) getMViewBinding()).getRoot().post(new Runnable() {
            @Override
            public final void run() {
                MainActivity.l1(this.f52609a);
            }
        });
        fitAndroidV(((dt.a) getMViewBinding()).f59074h);
        P0();
        S0();
        ev.c.f59822a.b();
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        com.transsion.home.preload.b bVar = this.xmlPreload;
        if (bVar != null) {
            bVar.reset();
        }
        this.runOnce = false;
        AppStartReport.f52508a.j();
        J0().b();
        zw.e eVar = this.onDownloadIconStatusListener;
        if (eVar != null) {
            DownloadStatusIconManager.f57244h.a().v(eVar);
        }
        StartupManager.f52494g.a().k0(this.onConfigLoadedCallback);
        com.transsion.subtitle.h.f52857a.b().destroy();
        ShortTvImmVideoHelper.f46849k.a().y();
        com.transsion.home.view.g.f44435a.d();
        ff.c.f60168a.a();
        wj.a aVar = (wj.a) TheRouter.d(wj.a.class, new Object[0]);
        if (aVar != null) {
            aVar.onDestroy();
        }
        lq.a.f66097a.a();
        SecondFloorHelper secondFloorHelper = this.secondFloorHelper;
        if (secondFloorHelper != null) {
            secondFloorHelper.A();
        }
    }

    @Override
    protected void onNewIntent(Intent intent) {
        Intrinsics.h(intent, "intent");
        super.onNewIntent(intent);
        try {
            setIntent(intent);
            TheRouter.l(this);
            H1();
        } catch (Exception unused) {
        }
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        Intrinsics.h(permissions, "permissions");
        Intrinsics.h(grantResults, "grantResults");
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
    }

    @Override
    public void onResume() {
        super.onResume();
        G0();
        this.mainDialogAdManager.z(this);
        if (this.kidsDialogShown || this.widgetDialogShowing) {
            return;
        }
        this.kidsDialogShown = true;
        C0();
    }

    @Override
    protected void onSaveInstanceState(Bundle outState) {
        Intrinsics.h(outState, "outState");
        super.onSaveInstanceState(outState);
        outState.putInt("current_fragment_index", this.currentFragmentIndex);
        outState.putBoolean("video_tab_is_white", this.mVideoTabIsWhite);
    }

    @Override
    public void setStateCallback(Function1 callback) {
        SecondFloorHelper secondFloorHelper = this.secondFloorHelper;
        if (secondFloorHelper != null) {
            secondFloorHelper.Q(callback);
        }
    }

    @Override
    public int statusColor() {
        return R$color.text_01;
    }
}
