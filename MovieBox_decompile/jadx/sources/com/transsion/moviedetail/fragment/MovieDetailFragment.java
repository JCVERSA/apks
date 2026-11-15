package com.transsion.moviedetail.fragment;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.Lifecycle;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.bubbleview.BubbleTextView;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.fragment.PageStatusFragment;
import com.transsion.baseui.widget.GradientTextView;
import com.transsion.bean.GameInfoType;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.moviedetail.R$id;
import com.transsion.moviedetail.R$layout;
import com.transsion.moviedetail.R$string;
import com.transsion.moviedetail.activity.MovieDetailActivity;
import com.transsion.moviedetail.viewmodel.MovieDetailViewModel;
import com.transsion.moviedetailapi.DownloadItem;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.DubsInfo;
import com.transsion.moviedetailapi.bean.PreVideoAddress;
import com.transsion.moviedetailapi.bean.ResourceDetectors;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.moviedetailapi.bean.SubjectGameInfo;
import com.transsion.moviedetailapi.bean.Trailer;
import com.transsion.player.longvideo.constants.LongVodPageType;
import com.transsion.player.longvideo.ui.LongVodPlayerView;
import com.transsion.player.longvideo.ui.LongVodUiType;
import com.transsion.player.p007enum.PlayMimeType;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.push.PushConstants;
import com.transsion.usercenter.setting.labelsfeedback.model.FbTvData;
import com.transsion.videofloat.bean.FloatActionType;
import com.transsion.videofloat.bean.FloatPlayType;
import com.transsnet.downloader.DownloadManagerApi;
import com.transsnet.downloader.bean.DownloadListBean;
import com.transsnet.downloader.widget.DownloadView;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.flow.event.sync.event.AddToDownloadEvent;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import net.lucode.hackware.magicindicator.MagicIndicator;
import org.mvel2.ast.ASTNode;

@Metadata(d1 = {"\u0000æ\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\"\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 À\u00012\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001fB\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\u0005J\u0017\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\f\u0010\u0005J\u0019\u0010\u000e\u001a\u00020\u00062\b\u0010\r\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0004\b\u000e\u0010\u000bJ\u0017\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u001d\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0017\u0010\u0005J\u000f\u0010\u0018\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0018\u0010\u0005J\u000f\u0010\u001a\u001a\u00020\u0019H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001c\u0010\u0005J\u000f\u0010\u001d\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001d\u0010\u0005J\u000f\u0010\u001e\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001e\u0010\u0005J\u000f\u0010\u001f\u001a\u00020\u0019H\u0002¢\u0006\u0004\b\u001f\u0010\u001bJ\u000f\u0010 \u001a\u00020\u0006H\u0002¢\u0006\u0004\b \u0010\u0005J\u000f\u0010!\u001a\u00020\u0006H\u0002¢\u0006\u0004\b!\u0010\u0005J\u000f\u0010\"\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\"\u0010\u0005J\u000f\u0010#\u001a\u00020\u0006H\u0002¢\u0006\u0004\b#\u0010\u0005J\u000f\u0010$\u001a\u00020\u0006H\u0002¢\u0006\u0004\b$\u0010\u0005J\u0019\u0010'\u001a\u00020\u00062\b\b\u0002\u0010&\u001a\u00020%H\u0002¢\u0006\u0004\b'\u0010(J\u0017\u0010*\u001a\u00020\u00062\u0006\u0010)\u001a\u00020\u0019H\u0002¢\u0006\u0004\b*\u0010+J\u000f\u0010,\u001a\u00020\u0006H\u0002¢\u0006\u0004\b,\u0010\u0005J\u0017\u0010/\u001a\u00020\u00192\u0006\u0010.\u001a\u00020-H\u0002¢\u0006\u0004\b/\u00100J\u0011\u00102\u001a\u0004\u0018\u000101H\u0002¢\u0006\u0004\b2\u00103J\u000f\u00104\u001a\u00020\u0006H\u0002¢\u0006\u0004\b4\u0010\u0005J\u0017\u00107\u001a\u00020\u00062\u0006\u00106\u001a\u000205H\u0002¢\u0006\u0004\b7\u00108J\u000f\u00109\u001a\u00020\u0006H\u0002¢\u0006\u0004\b9\u0010\u0005J\u0017\u0010:\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b:\u0010\u000bJ\u0019\u0010=\u001a\u00020\u00062\b\u0010<\u001a\u0004\u0018\u00010;H\u0002¢\u0006\u0004\b=\u0010>J\u0019\u0010A\u001a\u00020\u00062\b\u0010@\u001a\u0004\u0018\u00010?H\u0016¢\u0006\u0004\bA\u0010BJ\u000f\u0010C\u001a\u00020\u0006H\u0016¢\u0006\u0004\bC\u0010\u0005J\u0017\u0010F\u001a\u00020\u00022\u0006\u0010E\u001a\u00020DH\u0016¢\u0006\u0004\bF\u0010GJ\u000f\u0010I\u001a\u00020HH\u0016¢\u0006\u0004\bI\u0010JJ\u000f\u0010K\u001a\u00020\u0019H\u0016¢\u0006\u0004\bK\u0010\u001bJ\u000f\u0010L\u001a\u00020\u0006H\u0016¢\u0006\u0004\bL\u0010\u0005J\u000f\u0010M\u001a\u00020\u0006H\u0016¢\u0006\u0004\bM\u0010\u0005J\u000f\u0010N\u001a\u00020\u0006H\u0016¢\u0006\u0004\bN\u0010\u0005J\u000f\u0010O\u001a\u00020\u0006H\u0016¢\u0006\u0004\bO\u0010\u0005J\u000f\u0010Q\u001a\u00020PH\u0016¢\u0006\u0004\bQ\u0010RJ\u000f\u0010S\u001a\u00020\u0006H\u0016¢\u0006\u0004\bS\u0010\u0005J\u0011\u0010U\u001a\u0004\u0018\u00010TH\u0016¢\u0006\u0004\bU\u0010VJ\u000f\u0010W\u001a\u00020\u0006H\u0016¢\u0006\u0004\bW\u0010\u0005J\u000f\u0010X\u001a\u00020\u0006H\u0016¢\u0006\u0004\bX\u0010\u0005J\u000f\u0010Y\u001a\u00020\u0006H\u0016¢\u0006\u0004\bY\u0010\u0005J\u000f\u0010Z\u001a\u00020\u0006H\u0016¢\u0006\u0004\bZ\u0010\u0005J\r\u0010[\u001a\u00020\u0006¢\u0006\u0004\b[\u0010\u0005J\u000f\u0010\\\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\\\u0010\u0005J\u0017\u0010^\u001a\u00020\u00062\u0006\u0010]\u001a\u00020\u0019H\u0016¢\u0006\u0004\b^\u0010+J\u000f\u0010_\u001a\u00020\u0006H\u0016¢\u0006\u0004\b_\u0010\u0005J\u000f\u0010`\u001a\u00020\u0006H\u0016¢\u0006\u0004\b`\u0010\u0005J\u001f\u0010c\u001a\u00020\u00062\u000e\u0010b\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010aH\u0016¢\u0006\u0004\bc\u0010dR\u0018\u0010h\u001a\u0004\u0018\u00010e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bf\u0010gR\u0018\u0010l\u001a\u0004\u0018\u00010i8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bj\u0010kR\u0018\u0010o\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bm\u0010nR\u001b\u0010u\u001a\u00020p8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bq\u0010r\u001a\u0004\bs\u0010tR\u001b\u0010z\u001a\u00020v8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bw\u0010r\u001a\u0004\bx\u0010yR\u001d\u0010\u007f\u001a\u0004\u0018\u00010{8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b|\u0010r\u001a\u0004\b}\u0010~R\u001b\u0010\u0082\u0001\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0080\u0001\u0010\u0081\u0001R\u0019\u0010\u0085\u0001\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0083\u0001\u0010\u0084\u0001R\u001b\u0010\u0087\u0001\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0086\u0001\u0010\u0081\u0001R\u0019\u0010\u008a\u0001\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0088\u0001\u0010\u0089\u0001R\u001b\u0010\u008c\u0001\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008b\u0001\u0010\u0081\u0001R\u0019\u0010\u008e\u0001\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008d\u0001\u0010\u0089\u0001R\u0019\u0010\u0090\u0001\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008f\u0001\u0010\u0089\u0001R\u001b\u0010\u0092\u0001\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0091\u0001\u0010\u0081\u0001R(\u0010\u0097\u0001\u001a\u00020%8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0006\b\u0093\u0001\u0010\u0084\u0001\u001a\u0006\b\u0094\u0001\u0010\u0095\u0001\"\u0005\b\u0096\u0001\u0010(R\u0019\u0010\u0099\u0001\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0098\u0001\u0010\u0089\u0001R\u0019\u0010\u009b\u0001\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009a\u0001\u0010\u0084\u0001R\u001b\u0010\u009d\u0001\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009c\u0001\u0010\u0081\u0001R\u001c\u0010¡\u0001\u001a\u0005\u0018\u00010\u009e\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009f\u0001\u0010 \u0001R\u0019\u0010£\u0001\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¢\u0001\u0010\u0089\u0001R\u001b\u0010¦\u0001\u001a\u0004\u0018\u00010T8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¤\u0001\u0010¥\u0001R\u0019\u0010¨\u0001\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b§\u0001\u0010\u0089\u0001R\u001c\u0010¬\u0001\u001a\u0005\u0018\u00010©\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bª\u0001\u0010«\u0001R\"\u0010±\u0001\u001a\u0005\u0018\u00010\u00ad\u00018BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\b®\u0001\u0010r\u001a\u0006\b¯\u0001\u0010°\u0001R\u001a\u0010µ\u0001\u001a\u00030²\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b³\u0001\u0010´\u0001R\u0019\u0010¸\u0001\u001a\u0002058\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¶\u0001\u0010·\u0001R!\u0010»\u0001\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¹\u0001\u0010º\u0001R\u001c\u0010¿\u0001\u001a\u0005\u0018\u00010¼\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b½\u0001\u0010¾\u0001¨\u0006Á\u0001"}, d2 = {"Lcom/transsion/moviedetail/fragment/MovieDetailFragment;", "Lcom/transsion/baseui/fragment/PageStatusFragment;", "Llm/h;", "Len/a;", "<init>", "()V", "", "H1", "Lcom/transsion/moviedetailapi/bean/Subject;", "movieDetailBean", "L1", "(Lcom/transsion/moviedetailapi/bean/Subject;)V", "y1", "subject", "B1", "Lcom/transsion/moviedetailapi/bean/Trailer;", "trailer", "v1", "(Lcom/transsion/moviedetailapi/bean/Trailer;)V", "", "Lln/c;", "X0", "(Lcom/transsion/moviedetailapi/bean/Trailer;)Ljava/util/List;", "G1", "a1", "", "o1", "()Z", "f1", "M0", "P0", "L0", "Y0", "O0", "I1", "Q0", "q1", "", "visible", "J1", "(I)V", PushConstants.PUSH_SERVICE_TYPE_SHOW, "s1", "(Z)V", "i1", "Lcom/transsion/videofloat/bean/FloatActionType;", "actionType", "C1", "(Lcom/transsion/videofloat/bean/FloatActionType;)Z", "Ldw/a;", "R0", "()Ldw/a;", "c1", "Lcom/transsion/player/longvideo/ui/LongVodUiType;", "uiType", "t1", "(Lcom/transsion/player/longvideo/ui/LongVodUiType;)V", "F1", "g1", "Lln/a;", "bean", "u1", "(Lln/a;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "receiveArguments", "Landroid/view/LayoutInflater;", "inflater", "W0", "(Landroid/view/LayoutInflater;)Llm/h;", "", "getPageStateLayoutTitle", "()Ljava/lang/String;", "isRegisteDeviceKeyMonitor", "initViewData", "initViewModel", "initListener", "retryLoadData", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "loadDefaultData", "Landroid/view/View;", "getLoadingView", "()Landroid/view/View;", "onDestroyView", "onResume", "onPause", "onStop", "x1", "onDestroy", "isInPictureInPictureMode", "onPictureInPictureModeChanged", "onHomeClick", "onRecentClick", "Lkotlin/Function0;", "callback", "S", "(Lkotlin/jvm/functions/Function0;)V", "Lcom/transsnet/downloader/widget/DownloadView;", "a", "Lcom/transsnet/downloader/widget/DownloadView;", "downloadViewFloat", "Lzm/e;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lzm/e;", "bottomRecHelper", "c", "Lcom/transsion/moviedetailapi/bean/Subject;", "mMovieDetailBean", "Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lkotlin/Lazy;", "U0", "()Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;", "movieDetailViewModel", "Lcom/transsnet/downloader/viewmodel/k0;", "e", "getDownloadViewModel", "()Lcom/transsnet/downloader/viewmodel/k0;", "downloadViewModel", "Ljo/a;", "f", "V0", "()Ljo/a;", "publishedApi", "g", "Ljava/lang/String;", "mSubjectId", "h", "I", "mSubjectType", "i", "ops", "j", "Z", "netResultSuccess", CampaignEx.JSON_KEY_AD_K, "moduleName", "l", "autoDownload", "m", "autoPlay", "n", "autoPlayResourceId", "o", "getPreloadId", "()I", "setPreloadId", "preloadId", TtmlNode.TAG_P, "fetchDownloadFinish", CampaignEx.JSON_KEY_AD_Q, "curSeason", CampaignEx.JSON_KEY_AD_R, "lastPageFrom", "Lkn/a;", "s", "Lkn/a;", "playerControl", "t", "hasClickedActivityTip", TmcStartParams.KEY_URL_SHORT, "Landroid/view/View;", "gameResView", "v", "isGameResInit", "Lkk/a;", "w", "Lkk/a;", "palmPayApi", "Lim/b;", "x", "T0", "()Lim/b;", "memberProvider", "", "y", "J", "curAudioTrackPlayProgress", "z", "Lcom/transsion/player/longvideo/ui/LongVodUiType;", "curPlayerUiType", "A", "Lkotlin/jvm/functions/Function0;", "backPressedCallback", "Landroidx/fragment/app/Fragment;", "B", "Landroidx/fragment/app/Fragment;", "coverFragment", "C", "MovieDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class MovieDetailFragment extends PageStatusFragment<lm.h> implements en.a {

    public static final Companion INSTANCE = new Companion(null);

    private Function0 backPressedCallback;

    private Fragment coverFragment;

    private DownloadView downloadViewFloat;

    private zm.e bottomRecHelper;

    private Subject mMovieDetailBean;

    private String mSubjectId;

    private String ops;

    private boolean netResultSuccess;

    private String moduleName;

    private boolean autoDownload;

    private boolean autoPlay;

    private String autoPlayResourceId;

    private int preloadId;

    private boolean fetchDownloadFinish;

    private String lastPageFrom;

    private kn.a playerControl;

    private boolean hasClickedActivityTip;

    private View gameResView;

    private boolean isGameResInit;

    private long curAudioTrackPlayProgress;

    private final Lazy movieDetailViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(MovieDetailViewModel.class), new Function0<androidx.p009lifecycle.x0>() {
        {
            super(0);
        }

        @Override
        public final androidx.p009lifecycle.x0 invoke() {
            androidx.p009lifecycle.x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<androidx.lifecycle.v0.c>() {
        {
            super(0);
        }

        @Override
        public final androidx.lifecycle.v0.c invoke() {
            androidx.lifecycle.v0.c defaultViewModelProviderFactory = this.requireActivity().getDefaultViewModelProviderFactory();
            Intrinsics.g(defaultViewModelProviderFactory, "requireActivity().defaultViewModelProviderFactory");
            return defaultViewModelProviderFactory;
        }
    });

    private final Lazy downloadViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(com.transsnet.downloader.viewmodel.k0.class), new Function0<androidx.p009lifecycle.x0>() {
        {
            super(0);
        }

        @Override
        public final androidx.p009lifecycle.x0 invoke() {
            androidx.p009lifecycle.x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<androidx.lifecycle.v0.c>() {
        {
            super(0);
        }

        @Override
        public final androidx.lifecycle.v0.c invoke() {
            androidx.lifecycle.v0.c defaultViewModelProviderFactory = this.requireActivity().getDefaultViewModelProviderFactory();
            Intrinsics.g(defaultViewModelProviderFactory, "requireActivity().defaultViewModelProviderFactory");
            return defaultViewModelProviderFactory;
        }
    });

    private final Lazy publishedApi = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return MovieDetailFragment.w1();
        }
    });

    private int mSubjectType = SubjectType.MOVIE.getValue();

    private int curSeason = 1;

    private kk.a palmPayApi = (kk.a) TheRouter.d(kk.a.class, new Object[0]);

    private final Lazy memberProvider = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return MovieDetailFragment.p1();
        }
    });

    private LongVodUiType curPlayerUiType = LongVodUiType.MIDDLE;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final MovieDetailFragment a() {
            return new MovieDetailFragment();
        }

        private Companion() {
        }
    }

    public static final class b implements ViewTreeObserver.OnGlobalLayoutListener {
        b() {
        }

        @Override
        public void onGlobalLayout() {
            BubbleTextView bubbleTextView;
            ViewTreeObserver viewTreeObserver;
            lm.h mViewBinding = MovieDetailFragment.this.getMViewBinding();
            if (mViewBinding != null && (bubbleTextView = mViewBinding.f65774b) != null && (viewTreeObserver = bubbleTextView.getViewTreeObserver()) != null) {
                viewTreeObserver.removeOnGlobalLayoutListener(this);
            }
            lm.h mViewBinding2 = MovieDetailFragment.this.getMViewBinding();
            BubbleTextView bubbleTextView2 = mViewBinding2 != null ? mViewBinding2.f65774b : null;
            if (bubbleTextView2 == null || bubbleTextView2.getMeasuredWidth() == 0) {
                return;
            }
            float measuredWidth = (bubbleTextView2.getMeasuredWidth() / 2) - (com.blankj.utilcode.util.a0.a(16.0f) / 2);
            bubbleTextView2.setArrowPosition(measuredWidth);
            wf.a.C0922a.f(wf.a.f74274a, "movie_detail", "activity tip width: " + bubbleTextView2.getMeasuredWidth() + ", arrowPosition: " + measuredWidth, false, 4, null);
        }
    }

    public static final class c extends androidx.activity.u {
        c() {
            super(true);
        }

        @Override
        public void handleOnBackPressed() {
            Function0 function0 = MovieDetailFragment.this.backPressedCallback;
            if (function0 == null || !((Boolean) function0.invoke()).booleanValue()) {
                if (MovieDetailFragment.this.playerControl != null) {
                    kn.a aVar = MovieDetailFragment.this.playerControl;
                    if (aVar != null) {
                        aVar.onBackPressed();
                        return;
                    }
                    return;
                }
                FragmentActivity activity = MovieDetailFragment.this.getActivity();
                if (activity != null) {
                    activity.finish();
                }
            }
        }
    }

    static final class d implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f45309a;

        d(Function1 function) {
            Intrinsics.h(function, "function");
            this.f45309a = function;
        }

        @Override
        public final Function a() {
            return this.f45309a;
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
            this.f45309a.invoke(obj);
        }
    }

    public static final class e implements gw.a {
        e() {
        }

        @Override
        public boolean a(dw.a aVar) {
            return false;
        }

        @Override
        public void b(dw.a aVar) {
        }

        @Override
        public void c(dw.a aVar) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse("oneroom://com.community.oneroom?type=/movie/detail&id=" + (aVar != null ? aVar.r() : null)));
            intent.setFlags(ASTNode.DEOP);
            Utils.a().startActivity(intent);
        }
    }

    public static final class f implements kn.a.b {
        f() {
        }

        @Override
        public void a() {
        }

        @Override
        public boolean b() {
            return false;
        }

        @Override
        public boolean c(FloatActionType actionType) {
            Intrinsics.h(actionType, "actionType");
            return MovieDetailFragment.this.C1(actionType);
        }

        @Override
        public void d(LongVodUiType uiType) {
            Intrinsics.h(uiType, "uiType");
            MovieDetailFragment.this.curPlayerUiType = uiType;
            MovieDetailFragment.this.t1(uiType);
            zm.e eVar = MovieDetailFragment.this.bottomRecHelper;
            if (eVar != null) {
                eVar.x(uiType != LongVodUiType.MIDDLE);
            }
        }

        @Override
        public View e() {
            return MovieDetailFragment.this.gameResView;
        }

        @Override
        public void f(boolean z10) {
            AppCompatImageView appCompatImageView;
            lm.h mViewBinding = MovieDetailFragment.this.getMViewBinding();
            if (mViewBinding == null || (appCompatImageView = mViewBinding.f65782j) == null) {
                return;
            }
            appCompatImageView.setVisibility(z10 ? 0 : 8);
        }

        @Override
        public void g(ln.a aVar) {
            MovieDetailFragment.this.u1(aVar);
        }

        @Override
        public void onCompletion() {
        }
    }

    public static final void A1(MovieDetailFragment movieDetailFragment, Subject subject, View view) {
        String url;
        jo.a aVarV0 = movieDetailFragment.V0();
        if (aVarV0 != null) {
            Context context = view.getContext();
            Intrinsics.g(context, "getContext(...)");
            String str = movieDetailFragment.mSubjectId;
            if (str == null) {
                str = "";
            }
            Cover cover = subject.getCover();
            if (cover == null || (url = cover.getUrl()) == null) {
                url = "";
            }
            String title = subject.getTitle();
            if (title == null) {
                title = "";
            }
            String description = subject.getDescription();
            if (description == null) {
                description = "";
            }
            aVarV0.e(context, str, url, title, description, 3);
        }
        com.transsion.baselib.helper.a.f42121a.h("subjectdetail", "post", (60 & 4) != 0 ? "" : null, (60 & 8) != 0 ? "" : null, (60 & 16) != 0 ? "" : null, (60 & 32) != 0 ? null : null);
    }

    /* JADX WARN: Code duplicated, block: B:68:0x0176  */
    /* JADX WARN: Code duplicated, block: B:70:0x0180  */
    /* JADX WARN: Code duplicated, block: B:76:0x0196  */
    /* JADX WARN: Code duplicated, block: B:77:0x01a0  */
    /* JADX WARN: Code duplicated, block: B:87:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:88:? A[RETURN, SYNTHETIC] */
    private final void B1(Subject subject) {
        StillsFragment stillsFragmentA;
        List<DownloadItem> items;
        int iF;
        lm.h mViewBinding;
        lm.h mViewBinding2;
        FrameLayout frameLayout;
        FrameLayout frameLayout2;
        if (this.coverFragment != null || subject == null) {
            return;
        }
        ResourceDetectors resourceDetector = subject.getResourceDetector();
        bVar = null;
        ViewGroup.LayoutParams bVar = null;
        String downloadUrl = resourceDetector != null ? resourceDetector.getDownloadUrl() : null;
        Integer subjectType = subject.getSubjectType();
        SubjectType subjectType2 = SubjectType.MUSIC;
        int value = subjectType2.getValue();
        if (subjectType == null || subjectType.intValue() != value || downloadUrl == null || downloadUrl.length() == 0) {
            Integer subjectType3 = subject.getSubjectType();
            SubjectType subjectType4 = SubjectType.EDUCATION;
            int value2 = subjectType4.getValue();
            if (subjectType3 == null || subjectType3.intValue() != value2) {
                Trailer trailer = subject.getTrailer();
                if (trailer != null) {
                    v1(trailer);
                    return;
                }
                Cover stills = subject.getStills();
                if (stills == null) {
                    stills = subject.getCover();
                }
                if (stills != null) {
                    stillsFragmentA = StillsFragment.INSTANCE.a(stills);
                }
            } else if (this.fetchDownloadFinish) {
                DownloadListBean downloadListBean = (DownloadListBean) U0().y().f();
                DownloadItem downloadItem = (downloadListBean == null || (items = downloadListBean.getItems()) == null) ? null : (DownloadItem) CollectionsKt.k0(items);
                if (downloadItem != null) {
                    Trailer trailer2 = new Trailer(0, null, null, null, null, 31, null);
                    Cover stills2 = subject.getStills();
                    if (stills2 == null) {
                        stills2 = subject.getCover();
                    }
                    trailer2.setCover(stills2);
                    trailer2.setSubjectType(subjectType4.getValue());
                    trailer2.setSubjectId(subject.getSubjectId());
                    Long duration = downloadItem.getDuration();
                    trailer2.setVideoAddress(new PreVideoAddress(0, null, duration != null ? Integer.valueOf((int) duration.longValue()) : null, 0, 0, downloadItem.getSize(), 0, downloadItem.getUrl(), null, 0));
                    v1(trailer2);
                    return;
                }
                Trailer trailer3 = subject.getTrailer();
                if (trailer3 != null) {
                    v1(trailer3);
                    return;
                }
                Cover stills3 = subject.getStills();
                if (stills3 == null) {
                    stills3 = subject.getCover();
                }
                if (stills3 != null) {
                    stillsFragmentA = StillsFragment.INSTANCE.a(stills3);
                }
            }
            if (stillsFragmentA != null) {
                this.coverFragment = stillsFragmentA;
                if (getMViewBinding() != null) {
                    iF = com.transsion.core.utils.e.f();
                    mViewBinding = getMViewBinding();
                    if (mViewBinding != null && (frameLayout2 = mViewBinding.f65780h) != null) {
                        bVar = frameLayout2.getLayoutParams();
                    }
                    if (bVar == null) {
                        bVar = new ConstraintLayout.b(iF, (iF * 9) / 16);
                    } else {
                        bVar.height = (iF * 9) / 16;
                    }
                    mViewBinding2 = getMViewBinding();
                    if (mViewBinding2 != null && (frameLayout = mViewBinding2.f65780h) != null) {
                        frameLayout.setLayoutParams(bVar);
                    }
                    FragmentManager childFragmentManager = getChildFragmentManager();
                    Intrinsics.g(childFragmentManager, "getChildFragmentManager(...)");
                    androidx.fragment.app.w wVarP = childFragmentManager.p();
                    Intrinsics.g(wVarP, "beginTransaction()");
                    int i10 = R$id.fl_player;
                    Fragment fragment = this.coverFragment;
                    Intrinsics.e(fragment);
                    wVarP.s(i10, fragment);
                    wVarP.j();
                }
            }
        }
        Integer durationSeconds = subject.getDurationSeconds();
        PreVideoAddress preVideoAddress = new PreVideoAddress(0, null, Integer.valueOf(durationSeconds != null ? durationSeconds.intValue() : 0), 0, 0, 0L, 0, downloadUrl, "", 0);
        Cover stills4 = subject.getStills();
        if (stills4 == null) {
            stills4 = subject.getCover();
        }
        Trailer trailer4 = new Trailer(subjectType2.getValue(), preVideoAddress, stills4, null, null, 24, null);
        trailer4.setSubjectId(subject.getSubjectId());
        trailer4.setMusicName(subject.getTitle());
        v1(trailer4);
        stillsFragmentA = null;
        if (stillsFragmentA != null) {
            this.coverFragment = stillsFragmentA;
            if (getMViewBinding() != null) {
                iF = com.transsion.core.utils.e.f();
                mViewBinding = getMViewBinding();
                if (mViewBinding != null) {
                    bVar = frameLayout2.getLayoutParams();
                }
                if (bVar == null) {
                    bVar = new ConstraintLayout.b(iF, (iF * 9) / 16);
                } else {
                    bVar.height = (iF * 9) / 16;
                }
                mViewBinding2 = getMViewBinding();
                if (mViewBinding2 != null) {
                    frameLayout.setLayoutParams(bVar);
                }
                FragmentManager childFragmentManager2 = getChildFragmentManager();
                Intrinsics.g(childFragmentManager2, "getChildFragmentManager(...)");
                androidx.fragment.app.w wVarP2 = childFragmentManager2.p();
                Intrinsics.g(wVarP2, "beginTransaction()");
                int i11 = R$id.fl_player;
                Fragment fragment2 = this.coverFragment;
                Intrinsics.e(fragment2);
                wVarP2.s(i11, fragment2);
                wVarP2.j();
            }
        }
    }

    public final boolean C1(final FloatActionType actionType) {
        final FragmentActivity activity;
        ConstraintLayout constraintLayoutB;
        Integer subjectType;
        Subject subject = this.mMovieDetailBean;
        if (((subject == null || (subjectType = subject.getSubjectType()) == null) ? SubjectType.MOVIE.getValue() : subjectType.intValue()) != SubjectType.MUSIC.getValue() && (activity = getActivity()) != null && !activity.isDestroyed() && !activity.isFinishing()) {
            FloatActionType floatActionType = FloatActionType.ICON;
            if (actionType != floatActionType && !com.transsion.baselib.report.launch.b.f42221a.b().getBoolean("k_pip_enable", true)) {
                wf.a.f74274a.c("VideoFloat", "设置页pip开关被关闭了", true);
                return false;
            }
            final dw.a aVarR0 = R0();
            if (aVarR0 != null) {
                if (actionType != floatActionType && !aVarR0.f().isPlaying()) {
                    wf.a.f74274a.c("VideoFloat-pip", "movie 视频暂停，无需触发画中画", true);
                    return false;
                }
                cw.e.a aVar = cw.e.f58665a;
                if (aVar.b().c()) {
                    wf.a.f74274a.c("VideoFloat-pip", "movie 当前可用画中画，使用画中画播放", true);
                    if (Build.VERSION.SDK_INT < 31 || actionType != FloatActionType.HOME) {
                        aVar.b().d(activity, aVarR0, actionType, this.curPlayerUiType == LongVodUiType.LAND);
                    } else {
                        lm.h mViewBinding = getMViewBinding();
                        if (mViewBinding != null && (constraintLayoutB = mViewBinding.getRoot()) != null) {
                            constraintLayoutB.postDelayed(new Runnable() {
                                @Override
                                public final void run() {
                                    MovieDetailFragment.D1(activity, aVarR0, actionType, this);
                                }
                            }, 1000L);
                        }
                    }
                    return true;
                }
                cw.b.f58659a.c().e(activity, aVarR0, actionType == floatActionType, this.curPlayerUiType == LongVodUiType.LAND, new Function1() {
                    @Override
                    public final Object invoke(Object obj) {
                        return MovieDetailFragment.E1(activity, ((Boolean) obj).booleanValue());
                    }
                }, new e());
            }
        }
        return false;
    }

    public static final void D1(FragmentActivity fragmentActivity, dw.a aVar, FloatActionType floatActionType, MovieDetailFragment movieDetailFragment) {
        cw.e.f58665a.b().d(fragmentActivity, aVar, floatActionType, movieDetailFragment.curPlayerUiType == LongVodUiType.LAND);
    }

    public static final Unit E1(FragmentActivity fragmentActivity, boolean z10) {
        if (z10 && fragmentActivity != null) {
            fragmentActivity.finish();
        }
        return Unit.f64096a;
    }

    private final void F1() {
        FrameLayout frameLayout;
        FrameLayout frameLayout2;
        FrameLayout frameLayout3;
        View view = this.gameResView;
        ViewParent parent = view != null ? view.getParent() : null;
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup != null) {
            viewGroup.removeView(this.gameResView);
        }
        KeyEvent.Callback callback = this.gameResView;
        wj.c cVar = callback instanceof wj.c ? (wj.c) callback : null;
        if (cVar != null) {
            cVar.setPageStyle("detail");
        }
        lm.h mViewBinding = getMViewBinding();
        if (mViewBinding != null && (frameLayout3 = mViewBinding.f65781i) != null) {
            uf.c.k(frameLayout3);
        }
        lm.h mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (frameLayout2 = mViewBinding2.f65781i) != null) {
            frameLayout2.removeAllViews();
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        lm.h mViewBinding3 = getMViewBinding();
        if (mViewBinding3 == null || (frameLayout = mViewBinding3.f65781i) == null) {
            return;
        }
        frameLayout.addView(this.gameResView, layoutParams);
    }

    private final void G1() {
        Context context;
        Integer subjectType;
        if (this.playerControl == null && (context = getContext()) != null) {
            Subject subject = this.mMovieDetailBean;
            LongVodPageType longVodPageType = ((subject == null || (subjectType = subject.getSubjectType()) == null) ? SubjectType.MOVIE.getValue() : subjectType.intValue()) == SubjectType.MUSIC.getValue() ? LongVodPageType.MUSIC : LongVodPageType.TRAILER;
            lm.h mViewBinding = getMViewBinding();
            if (mViewBinding != null) {
                LongVodPlayerView longVodPlayerView = new LongVodPlayerView(context);
                String strName = longVodPageType.name();
                Subject subject2 = this.mMovieDetailBean;
                kn.a.C0796a.a(longVodPlayerView, "subjectdetail", longVodPageType, strName + (subject2 != null ? subject2.getSubjectId() : null), mViewBinding.f65779g, mViewBinding.f65784l.f66560f, null, null, 96, null);
                Subject subject3 = this.mMovieDetailBean;
                longVodPlayerView.initAdHelper(subject3 != null ? subject3.getGenre() : null);
                longVodPlayerView.setFeedBackVisible(true);
                this.playerControl = longVodPlayerView;
                mViewBinding.f65780h.addView(longVodPlayerView);
            }
            Subject subject4 = this.mMovieDetailBean;
            if (subject4 != null) {
                g1(subject4);
            }
            kn.a aVar = this.playerControl;
            if (aVar != null) {
                aVar.setCallback(new f());
            }
        }
    }

    private final void H1() {
        new zm.g(this, R$id.subjectDetailLayout, this.mMovieDetailBean, "subjectdetail", this.moduleName, false, false, 96, null);
    }

    private final void I1() {
        BubbleTextView bubbleTextView;
        DownloadView downloadView;
        DownloadView downloadView2;
        BubbleTextView bubbleTextView2;
        if (L0() && (downloadView = this.downloadViewFloat) != null && downloadView.getVisibility() == 0 && (downloadView2 = this.downloadViewFloat) != null && downloadView2.getCom.cloud.tmc.kernel.minicover.NativeComponentConstants.KEY_COMPONENT_TYPE java.lang.String() == 0) {
            lm.h mViewBinding = getMViewBinding();
            if (mViewBinding != null && (bubbleTextView2 = mViewBinding.f65774b) != null) {
                uf.c.k(bubbleTextView2);
            }
            O0();
            return;
        }
        lm.h mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (bubbleTextView = mViewBinding2.f65774b) == null) {
            return;
        }
        uf.c.g(bubbleTextView);
    }

    private final void J1(int visible) {
        HashMap mapG;
        ResourceDetectors resourceDetector;
        List<ResourceDetectors> resourceDetectors;
        DownloadView downloadView = this.downloadViewFloat;
        if (downloadView != null) {
            downloadView.setVisibility(visible);
        }
        Subject subject = this.mMovieDetailBean;
        if (subject != null && (resourceDetectors = subject.getResourceDetectors()) != null && !resourceDetectors.isEmpty()) {
            resourceDetectors.get(0).getResourceId();
            resourceDetectors.get(0).isMultiResolution();
        }
        Subject subject2 = this.mMovieDetailBean;
        if (subject2 != null && (resourceDetector = subject2.getResourceDetector()) != null) {
            resourceDetector.getResourceId();
            resourceDetector.isMultiResolution();
        }
        qi.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
        }
        I1();
    }

    static void K1(MovieDetailFragment movieDetailFragment, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 0;
        }
        movieDetailFragment.J1(i10);
    }

    private final boolean L0() {
        kk.a aVar;
        if (this.hasClickedActivityTip || (aVar = this.palmPayApi) == null) {
            return false;
        }
        return aVar.g();
    }

    private final void L1(Subject movieDetailBean) {
        Subject subject;
        View view;
        View view2;
        FrameLayout frameLayout;
        this.mMovieDetailBean = movieDetailBean;
        if (!this.isGameResInit) {
            c1();
            s1(true);
        }
        Subject subject2 = this.mMovieDetailBean;
        String ops = subject2 != null ? subject2.getOps() : null;
        if ((ops == null || ops.length() == 0) && (subject = this.mMovieDetailBean) != null) {
            subject.setOps(this.ops);
        }
        Subject subject3 = this.mMovieDetailBean;
        if (subject3 == null || !subject3.isFamilyModeIntercept()) {
            B1(this.mMovieDetailBean);
        } else {
            lm.h mViewBinding = getMViewBinding();
            if (mViewBinding != null && (frameLayout = mViewBinding.f65780h) != null) {
                ViewGroup.LayoutParams layoutParams = frameLayout.getLayoutParams();
                if (layoutParams == null) {
                    throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
                }
                ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
                ((ViewGroup.MarginLayoutParams) bVar).height = lj.a.b(48);
                frameLayout.setLayoutParams(bVar);
            }
            lm.h mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (view2 = mViewBinding2.f65791s) != null) {
                uf.c.g(view2);
            }
            lm.h mViewBinding3 = getMViewBinding();
            if (mViewBinding3 != null && (view = mViewBinding3.f65792t) != null) {
                view.setBackgroundResource(R$color.bg_01);
            }
        }
        if (this.downloadViewFloat == null) {
            M0();
            K1(this, 0, 1, null);
        }
        a1();
        f1();
        if (this.autoDownload) {
            this.autoDownload = false;
            DownloadView downloadView = this.downloadViewFloat;
            if (downloadView != null) {
                downloadView.post(new Runnable() {
                    @Override
                    public final void run() {
                        MovieDetailFragment.M1(this.f45470a);
                    }
                });
            }
        }
        y1();
    }

    private final void M0() {
        if (o1()) {
            Subject subject = this.mMovieDetailBean;
            if (subject == null || !subject.isFamilyModeIntercept()) {
                lm.h mViewBinding = getMViewBinding();
                DownloadView downloadView = mViewBinding != null ? mViewBinding.f65776d : null;
                this.downloadViewFloat = downloadView;
                if (downloadView != null) {
                    downloadView.setPageFrom("subjectdetail");
                }
                DownloadView downloadView2 = this.downloadViewFloat;
                if (downloadView2 != null) {
                    DownloadView.setAttrs$default(downloadView2, null, Float.valueOf(com.transsion.core.utils.e.g(16.0f)), null, 5, null);
                }
                DownloadView downloadView3 = this.downloadViewFloat;
                if (downloadView3 != null) {
                    downloadView3.setOnClickListener(new View.OnClickListener() {
                        @Override
                        public final void onClick(View view) {
                            MovieDetailFragment.N0(this.f45473a, view);
                        }
                    });
                }
            }
        }
    }

    public static final void M1(MovieDetailFragment movieDetailFragment) {
        movieDetailFragment.P0();
    }

    public static final void N0(MovieDetailFragment movieDetailFragment, View view) {
        ResourceDetectors resourceDetector;
        List<DownloadItem> resolutionList;
        Subject subject;
        ResourceDetectors resourceDetector2;
        ResourceDetectors resourceDetector3;
        List<DownloadItem> resolutionList2;
        Subject subject2 = movieDetailFragment.mMovieDetailBean;
        if (subject2 != null && (resourceDetector = subject2.getResourceDetector()) != null && (resolutionList = resourceDetector.getResolutionList()) != null && (!resolutionList.isEmpty())) {
            Subject subject3 = movieDetailFragment.mMovieDetailBean;
            Integer numValueOf = (subject3 == null || (resourceDetector3 = subject3.getResourceDetector()) == null || (resolutionList2 = resourceDetector3.getResolutionList()) == null) ? null : Integer.valueOf(resolutionList2.size());
            Intrinsics.e(numValueOf);
            if (numValueOf.intValue() > 1 && (subject = movieDetailFragment.mMovieDetailBean) != null && (resourceDetector2 = subject.getResourceDetector()) != null) {
                resourceDetector2.setType(1);
            }
        }
        movieDetailFragment.P0();
    }

    private final void O0() {
        BubbleTextView bubbleTextView;
        ViewTreeObserver viewTreeObserver;
        lm.h mViewBinding = getMViewBinding();
        if (mViewBinding == null || (bubbleTextView = mViewBinding.f65774b) == null || (viewTreeObserver = bubbleTextView.getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnGlobalLayoutListener(new b());
    }

    private final void P0() {
        List<ResourceDetectors> resourceDetectors;
        if (getContext() == null) {
            return;
        }
        Q0();
        Subject subject = this.mMovieDetailBean;
        String str = "";
        if (subject != null && (resourceDetectors = subject.getResourceDetectors()) != null && !resourceDetectors.isEmpty()) {
            String resourceLink = resourceDetectors.get(0).getResourceLink();
            str = resourceLink != null ? resourceLink : "";
            resourceDetectors.get(0).getResourceId();
            resourceDetectors.get(0).isMultiResolution();
        }
        String str2 = str;
        Subject subject2 = this.mMovieDetailBean;
        String ops = null;
        if (subject2 != null) {
            Integer subjectType = subject2.getSubjectType();
            int value = SubjectType.SHORT_TV.getValue();
            if (subjectType != null && subjectType.intValue() == value) {
                DownloadManagerApi downloadManagerApiA = DownloadManagerApi.f56187j.a();
                Context context = getContext();
                Intrinsics.f(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
                FragmentActivity fragmentActivity = (FragmentActivity) context;
                String str3 = this.ops;
                if (str3 == null || str3.length() == 0) {
                    Subject subject3 = this.mMovieDetailBean;
                    if (subject3 != null) {
                        ops = subject3.getOps();
                    }
                } else {
                    ops = this.ops;
                }
                downloadManagerApiA.d0(fragmentActivity, "subjectdetail", (384 & 4) != 0 ? "" : "", ops, (384 & 16) != 0 ? null : "download_subject", (384 & 32) != 0 ? false : true, (384 & 64) != 0 ? null : this.mMovieDetailBean, (384 & 128) != 0 ? null : null, (384 & 256) != 0 ? Boolean.FALSE : null);
                return;
            }
        }
        DownloadManagerApi downloadManagerApiA2 = DownloadManagerApi.f56187j.a();
        Context context2 = getContext();
        Intrinsics.f(context2, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        FragmentActivity fragmentActivity2 = (FragmentActivity) context2;
        Subject subject4 = this.mMovieDetailBean;
        String str4 = this.ops;
        if (str4 == null || str4.length() == 0) {
            Subject subject5 = this.mMovieDetailBean;
            if (subject5 != null) {
                ops = subject5.getOps();
            }
        } else {
            ops = this.ops;
        }
        DownloadManagerApi.N(downloadManagerApiA2, fragmentActivity2, subject4, "subjectdetail", "", ops, str2, null, this.moduleName, null, false, this.curSeason, false, 832, null);
    }

    private final void Q0() {
        BubbleTextView bubbleTextView;
        this.hasClickedActivityTip = true;
        lm.h mViewBinding = getMViewBinding();
        if (mViewBinding == null || (bubbleTextView = mViewBinding.f65774b) == null) {
            return;
        }
        uf.c.g(bubbleTextView);
    }

    private final dw.a R0() {
        String subjectId;
        kn.a aVar = this.playerControl;
        com.transsion.player.orplayer.f player = aVar != null ? aVar.getPlayer() : null;
        kn.a aVar2 = this.playerControl;
        ORPlayerView playerView = aVar2 != null ? aVar2.getOrPlayerView() : null;
        if (playerView == null || player == null) {
            return null;
        }
        wf.a.C0922a c0922a = wf.a.f74274a;
        Subject subject = this.mMovieDetailBean;
        c0922a.c("VideoFloat", "trailer--showFloat, title:" + (subject != null ? subject.getTitle() : null), true);
        FloatPlayType floatPlayType = FloatPlayType.TRAILER;
        Subject subject2 = this.mMovieDetailBean;
        if (subject2 == null || (subjectId = subject2.getSubjectId()) == null) {
            subjectId = "";
        }
        return new dw.a(playerView, player, null, floatPlayType, subjectId, 0, 0, "", "subjectdetail");
    }

    public static final void S0(MovieDetailFragment movieDetailFragment, View view) {
        movieDetailFragment.requireActivity().finish();
    }

    private final im.b T0() {
        return (im.b) this.memberProvider.getValue();
    }

    private final MovieDetailViewModel U0() {
        return (MovieDetailViewModel) this.movieDetailViewModel.getValue();
    }

    private final jo.a V0() {
        return (jo.a) this.publishedApi.getValue();
    }

    private final List X0(Trailer trailer) {
        Integer duration;
        String string;
        Long size;
        String string2;
        String url;
        String videoId;
        ArrayList arrayList = new ArrayList();
        PlayMimeType playMimeType = PlayMimeType.DEFAULT;
        PreVideoAddress videoAddress = trailer.getVideoAddress();
        String str = (videoAddress == null || (videoId = videoAddress.getVideoId()) == null) ? "" : videoId;
        PreVideoAddress videoAddress2 = trailer.getVideoAddress();
        String str2 = (videoAddress2 == null || (url = videoAddress2.getUrl()) == null) ? "" : url;
        PreVideoAddress videoAddress3 = trailer.getVideoAddress();
        String str3 = (videoAddress3 == null || (size = videoAddress3.getSize()) == null || (string2 = size.toString()) == null) ? "" : string2;
        PreVideoAddress videoAddress4 = trailer.getVideoAddress();
        arrayList.add(new ln.c(playMimeType, str, str2, "", str3, (videoAddress4 == null || (duration = videoAddress4.getDuration()) == null || (string = duration.toString()) == null) ? "" : string, "", null, 128, null));
        return arrayList;
    }

    private final void Y0() {
        BubbleTextView bubbleTextView;
        lm.h mViewBinding = getMViewBinding();
        if (mViewBinding == null || (bubbleTextView = mViewBinding.f65774b) == null) {
            return;
        }
        bubbleTextView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                MovieDetailFragment.Z0(this.f45519a, view);
            }
        });
    }

    public static final void Z0(MovieDetailFragment movieDetailFragment, View view) {
        wf.a.C0922a.f(wf.a.f74274a, "movie_detail", "Click activity tip", false, 4, null);
        movieDetailFragment.hasClickedActivityTip = true;
        Intrinsics.e(view);
        uf.c.g(view);
    }

    private final void a1() {
        Subject subject = this.mMovieDetailBean;
        lm.h mViewBinding = getMViewBinding();
        MagicIndicator magicIndicator = mViewBinding != null ? mViewBinding.f65785m : null;
        lm.h mViewBinding2 = getMViewBinding();
        this.bottomRecHelper = new zm.e(this, subject, magicIndicator, mViewBinding2 != null ? mViewBinding2.f65786n : null, "subjectdetail", false, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return MovieDetailFragment.b1(this.f45484a, ((Integer) obj).intValue());
            }
        }, 96, null);
    }

    public static final Unit b1(MovieDetailFragment movieDetailFragment, int i10) {
        GradientTextView gradientTextView;
        DownloadView downloadView = movieDetailFragment.downloadViewFloat;
        if (downloadView != null && downloadView != null) {
            downloadView.setVisibility(i10 != 1 ? 0 : 8);
        }
        lm.h mViewBinding = movieDetailFragment.getMViewBinding();
        if (mViewBinding != null && (gradientTextView = mViewBinding.f65790r) != null) {
            gradientTextView.setVisibility(i10 == 1 ? 0 : 8);
        }
        return Unit.f64096a;
    }

    private final void c1() {
        String genre;
        wj.b bVar;
        SubjectGameInfo gameInfo;
        SubjectGameInfo gameInfo2;
        SubjectGameInfo gameInfo3;
        SubjectGameInfo gameInfo4;
        this.isGameResInit = true;
        Subject subject = this.mMovieDetailBean;
        String itemId = null;
        String type = (subject == null || (gameInfo4 = subject.getGameInfo()) == null) ? null : gameInfo4.getType();
        if (type != null && type.length() != 0) {
            Subject subject2 = this.mMovieDetailBean;
            String itemId2 = (subject2 == null || (gameInfo3 = subject2.getGameInfo()) == null) ? null : gameInfo3.getItemId();
            if (itemId2 != null && itemId2.length() != 0) {
                wf.a.C0922a.f(wf.a.f74274a, "GameResLoader", "sub detail game initGameRes", false, 4, null);
                Context context = getContext();
                if (context == null || (bVar = (wj.b) TheRouter.d(wj.b.class, new Object[0])) == null) {
                    return;
                }
                Subject subject3 = this.mMovieDetailBean;
                GameInfoType gameInfoType = (subject3 == null || (gameInfo2 = subject3.getGameInfo()) == null) ? null : gameInfo2.getGameInfoType();
                Intrinsics.e(gameInfoType);
                Subject subject4 = this.mMovieDetailBean;
                if (subject4 != null && (gameInfo = subject4.getGameInfo()) != null) {
                    itemId = gameInfo.getItemId();
                }
                String str = itemId;
                Intrinsics.e(str);
                bVar.a(context, "subjectdetail", gameInfoType, str, new Function1() {
                    @Override
                    public final Object invoke(Object obj) {
                        return MovieDetailFragment.d1(this.f45488a, (View) obj);
                    }
                });
                return;
            }
        }
        Subject subject5 = this.mMovieDetailBean;
        if (subject5 == null || (genre = subject5.getGenre()) == null) {
            return;
        }
        String lowerCase = genre.toLowerCase(Locale.ROOT);
        Intrinsics.g(lowerCase, "toLowerCase(...)");
        if (lowerCase == null || !StringsKt.c0(lowerCase, "game", false, 2, null)) {
            return;
        }
        wf.a.C0922a.l(wf.a.f74274a, "GameResLoader", "sub detail,  game is null", false, 4, null);
    }

    public static final Unit d1(MovieDetailFragment movieDetailFragment, View view) {
        FrameLayout frameLayout;
        FrameLayout frameLayout2;
        movieDetailFragment.gameResView = view;
        if (view == null) {
            lm.h mViewBinding = movieDetailFragment.getMViewBinding();
            if (mViewBinding != null && (frameLayout2 = mViewBinding.f65781i) != null) {
                uf.c.g(frameLayout2);
            }
            lm.h mViewBinding2 = movieDetailFragment.getMViewBinding();
            if (mViewBinding2 != null && (frameLayout = mViewBinding2.f65781i) != null) {
                frameLayout.removeAllViews();
            }
        } else {
            movieDetailFragment.F1();
        }
        return Unit.f64096a;
    }

    public static final void e1(MovieDetailFragment movieDetailFragment, View view) {
        FragmentActivity activity;
        if (movieDetailFragment.playerControl != null) {
            if (movieDetailFragment.C1(FloatActionType.BACK) || (activity = movieDetailFragment.getActivity()) == null) {
                return;
            }
            activity.finish();
            return;
        }
        FragmentActivity activity2 = movieDetailFragment.getActivity();
        if (activity2 != null) {
            activity2.finish();
        }
    }

    private final void f1() {
        FragmentManager childFragmentManager = getChildFragmentManager();
        Intrinsics.g(childFragmentManager, "getChildFragmentManager(...)");
        androidx.fragment.app.w wVarP = childFragmentManager.p();
        Intrinsics.g(wVarP, "beginTransaction()");
        Subject subject = this.mMovieDetailBean;
        if (subject != null && subject.isFamilyModeIntercept()) {
            ResourceDetectorFamilyModeFragment resourceDetectorFamilyModeFragment = new ResourceDetectorFamilyModeFragment();
            resourceDetectorFamilyModeFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("data_key_resource_detectors", this.mMovieDetailBean)));
            wVarP.s(R$id.resourceDetectorGroup, resourceDetectorFamilyModeFragment);
        } else if (o1()) {
            ResourceDetectorFragment resourceDetectorFragment = new ResourceDetectorFragment();
            Bundle bundle = new Bundle();
            bundle.putSerializable("data_key_resource_detectors", this.mMovieDetailBean);
            bundle.putString("ops", this.ops);
            bundle.putBoolean("auto_play", this.autoPlay);
            bundle.putString("auto_play_resource_id", this.autoPlayResourceId);
            bundle.putString("module_name", this.moduleName);
            bundle.putInt("season", this.curSeason);
            resourceDetectorFragment.setArguments(bundle);
            wVarP.s(R$id.resourceDetectorGroup, resourceDetectorFragment);
        } else {
            ResourceDetectorEmptyFragment resourceDetectorEmptyFragment = new ResourceDetectorEmptyFragment();
            Bundle bundle2 = new Bundle();
            bundle2.putSerializable("data_key_resource_detectors", this.mMovieDetailBean);
            resourceDetectorEmptyFragment.setArguments(bundle2);
            wVarP.s(R$id.resourceDetectorGroup, resourceDetectorEmptyFragment);
        }
        wVarP.j();
    }

    private final void g1(Subject movieDetailBean) {
        String restrictLevel = movieDetailBean.getRestrictLevel();
        if (restrictLevel == null || restrictLevel.length() == 0 || !com.transsion.baselib.report.launch.b.f42221a.b().getBoolean("restrict_tips_dialog_again", true)) {
            return;
        }
        kn.a aVar = this.playerControl;
        if (aVar != null) {
            aVar.onHandlePause();
        }
        ConfigBean configBeanD = cm.f.d(cm.f.f17019c.a(), "sa_restrict_tips", false, 2, null);
        String value = configBeanD != null ? configBeanD.getValue() : null;
        if (value == null || value.length() == 0) {
            value = Utils.a().getString(R$string.movie_detail_restrict_tips);
        }
        final RestrictTipsDialog restrictTipsDialogA = RestrictTipsDialog.INSTANCE.a(value, "subjectdetail", movieDetailBean.getSubjectId());
        restrictTipsDialogA.l0(this, "RestrictTipsDialog");
        restrictTipsDialogA.y0(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return MovieDetailFragment.h1(restrictTipsDialogA, this, ((Boolean) obj).booleanValue());
            }
        });
    }

    public static final Unit h1(RestrictTipsDialog restrictTipsDialog, MovieDetailFragment movieDetailFragment, boolean z10) {
        if (z10) {
            kn.a aVar = movieDetailFragment.playerControl;
            if (aVar != null) {
                aVar.onHandlePlay();
            }
        } else {
            FragmentActivity activity = restrictTipsDialog.getActivity();
            if (activity != null) {
                activity.finish();
            }
        }
        return Unit.f64096a;
    }

    private final void i1() {
        ConstraintLayout constraintLayoutB;
        lm.h mViewBinding = getMViewBinding();
        if (mViewBinding == null || (constraintLayoutB = mViewBinding.getRoot()) == null) {
            return;
        }
        constraintLayoutB.post(new Runnable() {
            @Override
            public final void run() {
                MovieDetailFragment.j1(this.f45422a);
            }
        });
    }

    public static final void j1(MovieDetailFragment movieDetailFragment) {
        Subject subject;
        String subjectId;
        String ops;
        FragmentActivity activity = movieDetailFragment.getActivity();
        if (activity == null || (subject = movieDetailFragment.mMovieDetailBean) == null || (subjectId = subject.getSubjectId()) == null) {
            return;
        }
        cw.b bVarC = cw.b.f58659a.c();
        Subject subject2 = movieDetailFragment.mMovieDetailBean;
        bVarC.f(activity, subjectId, null, "subjectdetail", (subject2 == null || (ops = subject2.getOps()) == null) ? movieDetailFragment.ops : ops);
    }

    public static final Unit k1(MovieDetailFragment movieDetailFragment, Pair pair) {
        HashMap mapG;
        HashMap mapG2;
        HashMap mapG3;
        Subject subject = (Subject) pair.getSecond();
        MovieDetailActivity.INSTANCE.a("movie_detail get movie detail data --> it = " + subject);
        if (subject == null) {
            if (Intrinsics.c(pair.getFirst(), "404")) {
                com.tn.lib.widget.toast.core.h.f40484a.k(R$string.movie_lost_content);
                kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(movieDetailFragment), null, null, new MovieDetailFragment$initViewModel$1$1$1(movieDetailFragment, null), 3, null);
            }
            if (yg.l.f76264a.e()) {
                PageStatusFragment.showEmptyView$default(movieDetailFragment, false, 1, null);
            } else {
                PageStatusFragment.showNoNetworkView$default(movieDetailFragment, false, 1, null);
            }
        } else {
            if (subject.getIsRefreshViewOnly()) {
                movieDetailFragment.L1(subject);
                return Unit.f64096a;
            }
            MovieDetailViewModel movieDetailViewModelU0 = movieDetailFragment.U0();
            String subjectId = subject.getSubjectId();
            Integer subjectType = subject.getSubjectType();
            Context context = movieDetailFragment.getContext();
            MovieDetailViewModel.u(movieDetailViewModelU0, subjectId, subjectType, 0, context != null && com.transsion.baseui.util.b.a(context), 4, null);
            Integer subjectType2 = subject.getSubjectType();
            movieDetailFragment.mSubjectType = subjectType2 != null ? subjectType2.intValue() : movieDetailFragment.mSubjectType;
            movieDetailFragment.showContentView();
            movieDetailFragment.netResultSuccess = true;
            movieDetailFragment.L1(subject);
            movieDetailFragment.H1();
            qi.b logViewConfig = movieDetailFragment.getLogViewConfig();
            if (logViewConfig != null) {
                logViewConfig.k(true);
            }
            qi.b logViewConfig2 = movieDetailFragment.getLogViewConfig();
            if (logViewConfig2 != null) {
                logViewConfig2.n(movieDetailFragment.ops);
            }
            qi.b logViewConfig3 = movieDetailFragment.getLogViewConfig();
            if (logViewConfig3 != null && (mapG3 = logViewConfig3.g()) != null) {
                String subjectId2 = subject.getSubjectId();
                if (subjectId2 == null) {
                    subjectId2 = "";
                }
                mapG3.put("subject_id", subjectId2);
            }
            qi.b logViewConfig4 = movieDetailFragment.getLogViewConfig();
            if (logViewConfig4 != null && (mapG2 = logViewConfig4.g()) != null) {
                mapG2.put("has_resource", String.valueOf(subject.getHasResource()));
            }
            qi.b logViewConfig5 = movieDetailFragment.getLogViewConfig();
            if (logViewConfig5 != null && (mapG = logViewConfig5.g()) != null) {
                mapG.put("module_name", movieDetailFragment.moduleName);
            }
        }
        return Unit.f64096a;
    }

    public static final Unit l1(MovieDetailFragment movieDetailFragment, DownloadListBean downloadListBean) {
        movieDetailFragment.fetchDownloadFinish = true;
        Subject subject = movieDetailFragment.mMovieDetailBean;
        if (subject != null) {
            Integer subjectType = subject.getSubjectType();
            int value = SubjectType.EDUCATION.getValue();
            if (subjectType != null && subjectType.intValue() == value) {
                movieDetailFragment.B1(movieDetailFragment.mMovieDetailBean);
            }
        }
        return Unit.f64096a;
    }

    public static final Unit m1(MovieDetailFragment movieDetailFragment, Integer num) {
        int i10 = movieDetailFragment.curSeason;
        if (num != null && i10 == num.intValue()) {
            return Unit.f64096a;
        }
        Intrinsics.e(num);
        movieDetailFragment.curSeason = num.intValue();
        String str = movieDetailFragment.mSubjectId;
        if (str != null) {
            movieDetailFragment.U0().D(str, Integer.valueOf(movieDetailFragment.curSeason), true);
        }
        return Unit.f64096a;
    }

    public static final Unit n1(MovieDetailFragment movieDetailFragment, DubsInfo dubsInfo) {
        kn.a aVar = movieDetailFragment.playerControl;
        movieDetailFragment.curAudioTrackPlayProgress = aVar != null ? aVar.currentPosition() : 0L;
        movieDetailFragment.mSubjectId = dubsInfo.getSubjectId();
        movieDetailFragment.mMovieDetailBean = null;
        MovieDetailViewModel movieDetailViewModelU0 = movieDetailFragment.U0();
        int i10 = movieDetailFragment.preloadId;
        String str = movieDetailFragment.mSubjectId;
        if (str == null) {
            str = "";
        }
        movieDetailViewModelU0.S(i10, str, Integer.valueOf(movieDetailFragment.curSeason));
        movieDetailFragment.loadDefaultData();
        return Unit.f64096a;
    }

    private final boolean o1() {
        Boolean hasResource;
        Subject subject = this.mMovieDetailBean;
        if (subject == null || (hasResource = subject.getHasResource()) == null) {
            return false;
        }
        return hasResource.booleanValue();
    }

    public static final im.b p1() {
        return (im.b) TheRouter.d(im.b.class, new Object[0]);
    }

    private final void q1() {
        Context context = getContext();
        Intrinsics.f(context, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        Function1 function1 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return MovieDetailFragment.r1(this.f45515a, (AddToDownloadEvent) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = AddToDownloadEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent((AppCompatActivity) context, name, Lifecycle.State.CREATED, kotlinx.coroutines.y0.c().r(), false, function1);
    }

    public static final Unit r1(MovieDetailFragment movieDetailFragment, AddToDownloadEvent value) {
        Intrinsics.h(value, "value");
        try {
            if (!TextUtils.equals(value.getSubjectId(), movieDetailFragment.mSubjectId)) {
                return Unit.f64096a;
            }
            if (movieDetailFragment.downloadViewFloat != null) {
                K1(movieDetailFragment, 0, 1, null);
            }
            return Unit.f64096a;
        } catch (Exception unused) {
            wf.a.C0922a.g(wf.a.f74274a, " callback change data fail", false, 2, null);
        }
    }

    private final void s1(boolean show) {
        String genre;
        Subject subject = this.mMovieDetailBean;
        if (subject == null || (genre = subject.getGenre()) == null) {
            return;
        }
        String lowerCase = genre.toLowerCase(Locale.ROOT);
        Intrinsics.g(lowerCase, "toLowerCase(...)");
        if (lowerCase == null || !StringsKt.c0(lowerCase, "game", false, 2, null)) {
            return;
        }
        if (show) {
            im.b bVarT0 = T0();
            if (bVarT0 != null) {
                bVarT0.h();
                return;
            }
            return;
        }
        im.b bVarT1 = T0();
        if (bVarT1 != null) {
            bVarT1.q();
        }
    }

    public final void t1(LongVodUiType uiType) {
        if (this.gameResView == null || uiType != LongVodUiType.MIDDLE) {
            return;
        }
        F1();
    }

    public final void u1(ln.a bean) {
        Navigator navigatorK = TheRouter.c("/profile/user_center_labels_feedback").K("feedback_from_page", "SUBJECT_PLAY").K("subject_id", this.mSubjectId);
        Subject subject = this.mMovieDetailBean;
        if (subject != null && subject.getType() == 3 && bean != null) {
            navigatorK.I("TV_DATA", new FbTvData(bean.o(), bean.l(), bean.e()));
        }
        Navigator.x(navigatorK, requireContext(), null, 2, null);
    }

    private final void v1(Trailer trailer) {
        Subject subject;
        String averageHueLight;
        String thumbnail;
        String url;
        Subject subject2 = this.mMovieDetailBean;
        if (subject2 == null || !subject2.isFamilyModeIntercept()) {
            G1();
            String str = this.mSubjectId;
            if (str == null || (subject = this.mMovieDetailBean) == null) {
                return;
            }
            PlayMimeType playMimeType = PlayMimeType.DEFAULT;
            long j10 = this.curAudioTrackPlayProgress;
            String title = subject.getTitle();
            String str2 = title == null ? "" : title;
            String str3 = this.lastPageFrom;
            String str4 = str3 == null ? "" : str3;
            List listX0 = X0(trailer);
            Cover cover = trailer.getCover();
            String str5 = (cover == null || (url = cover.getUrl()) == null) ? "" : url;
            Cover cover2 = trailer.getCover();
            String str6 = (cover2 == null || (thumbnail = cover2.getThumbnail()) == null) ? "" : thumbnail;
            Cover cover3 = subject.getCover();
            String str7 = (cover3 == null || (averageHueLight = cover3.getAverageHueLight()) == null) ? "" : averageHueLight;
            Integer durationSeconds = subject.getDurationSeconds();
            int iIntValue = durationSeconds != null ? durationSeconds.intValue() : 0;
            Integer subjectType = subject.getSubjectType();
            ln.a aVar = new ln.a(str, playMimeType, j10, 0, 0, str2, null, str4, "subjectdetail", listX0, str5, str6, str7, iIntValue, Integer.valueOf(subjectType != null ? subjectType.intValue() : 1), false, subject.getTitle(), subject.getOps(), 32832, null);
            aVar.z(this.mMovieDetailBean);
            wf.a.f74274a.c("movie_detail", "playTrailer  addDataSource:" + aVar + "  playerControl:" + this.playerControl, true);
            kn.a aVar2 = this.playerControl;
            if (aVar2 != null) {
                aVar2.setDataSource(aVar);
            }
        }
    }

    public static final jo.a w1() {
        return (jo.a) TheRouter.d(jo.a.class, new Object[0]);
    }

    private final void y1() {
        GradientTextView gradientTextView;
        AppCompatImageView appCompatImageView;
        final Subject subject = this.mMovieDetailBean;
        if (subject != null) {
            lm.h mViewBinding = getMViewBinding();
            if (mViewBinding != null && (appCompatImageView = mViewBinding.f65783k) != null) {
                appCompatImageView.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        MovieDetailFragment.z1(this.f45494a, subject, view);
                    }
                });
            }
            lm.h mViewBinding2 = getMViewBinding();
            if (mViewBinding2 == null || (gradientTextView = mViewBinding2.f65790r) == null) {
                return;
            }
            gradientTextView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    MovieDetailFragment.A1(this.f45499a, subject, view);
                }
            });
        }
    }

    public static final void z1(MovieDetailFragment movieDetailFragment, Subject subject, View view) {
        String url;
        jo.a aVarV0 = movieDetailFragment.V0();
        if (aVarV0 != null) {
            Context context = view.getContext();
            Intrinsics.g(context, "getContext(...)");
            String str = movieDetailFragment.mSubjectId;
            if (str == null) {
                str = "";
            }
            Cover cover = subject.getCover();
            if (cover == null || (url = cover.getUrl()) == null) {
                url = "";
            }
            String title = subject.getTitle();
            if (title == null) {
                title = "";
            }
            String description = subject.getDescription();
            if (description == null) {
                description = "";
            }
            aVarV0.e(context, str, url, title, description, 3);
        }
        com.transsion.baselib.helper.a.f42121a.h("subjectdetail", "post", (60 & 4) != 0 ? "" : null, (60 & 8) != 0 ? "" : null, (60 & 16) != 0 ? "" : null, (60 & 32) != 0 ? null : null);
    }

    @Override
    public void S(Function0 callback) {
        this.backPressedCallback = callback;
    }

    @Override
    public lm.h getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        lm.h hVarC = lm.h.c(inflater);
        Intrinsics.g(hVarC, "inflate(...)");
        return hVarC;
    }

    @Override
    public View getLoadingView() {
        View viewInflate = LayoutInflater.from(requireContext()).inflate(R$layout.default_movie_detail_skeleton_drawing_layout_2, (ViewGroup) getFlStateView(), false);
        ((AppCompatImageView) viewInflate.findViewById(R$id.ivBack)).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                MovieDetailFragment.S0(this.f45523a, view);
            }
        });
        return viewInflate;
    }

    @Override
    public String getPageStateLayoutTitle() {
        return "";
    }

    @Override
    public void initListener() {
        lm.h mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            mViewBinding.f65782j.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    MovieDetailFragment.e1(this.f45527a, view);
                }
            });
        }
    }

    @Override
    public void initViewData() {
        View view;
        lm.h mViewBinding = getMViewBinding();
        if (mViewBinding != null && (view = mViewBinding.f65792t) != null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            }
            ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
            ((ViewGroup.MarginLayoutParams) bVar).height = com.blankj.utilcode.util.d.c();
            view.setLayoutParams(bVar);
        }
        requireActivity().getOnBackPressedDispatcher().i(this, new c());
        q1();
        Y0();
        i1();
    }

    @Override
    public void initViewModel() {
        MovieDetailViewModel movieDetailViewModelU0 = U0();
        movieDetailViewModelU0.F().j(this, new d(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return MovieDetailFragment.k1(this.f45427a, (Pair) obj);
            }
        }));
        movieDetailViewModelU0.y().j(this, new d(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return MovieDetailFragment.l1(this.f45457a, (DownloadListBean) obj);
            }
        }));
        movieDetailViewModelU0.K().j(this, new d(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return MovieDetailFragment.m1(this.f45461a, (Integer) obj);
            }
        }));
        movieDetailViewModelU0.P().j(this, new d(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return MovieDetailFragment.n1(this.f45466a, (DubsInfo) obj);
            }
        }));
    }

    @Override
    public boolean isRegisteDeviceKeyMonitor() {
        return true;
    }

    @Override
    public void loadDefaultData() {
        HashMap mapG;
        MovieDetailActivity.INSTANCE.a("movie_detail start load data ....");
        qi.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
            String str = this.mSubjectId;
            if (str == null) {
                str = "";
            }
            mapG.put("subject_id", str);
        }
        Bundle arguments = getArguments();
        this.ops = arguments != null ? arguments.getString("ops") : null;
        if (yg.l.f76264a.e()) {
            showLoadingView();
            String str2 = this.mSubjectId;
            if (str2 != null) {
                MovieDetailViewModel.E(U0(), str2, Integer.valueOf(this.curSeason), false, 4, null);
            }
        }
    }

    @Override
    public qi.b newLogViewConfig() {
        return new qi.b("subjectdetail", false, 2, null);
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        MovieDetailActivity.INSTANCE.a("movie_detail------- onCreate ------");
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        kn.a aVar = this.playerControl;
        if (aVar != null) {
            aVar.onPageDestroy();
        }
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
    }

    @Override
    public void onHomeClick() {
        super.onHomeClick();
        wf.a.C0922a.f(wf.a.f74274a, "VideoFloat", "MovieDetailFragment onHomeClick", false, 4, null);
        C1(FloatActionType.HOME);
    }

    @Override
    public void onPause() {
        super.onPause();
        cw.c cVar = cw.c.f58664a;
        kn.a aVar = this.playerControl;
        cVar.c(aVar != null ? aVar.getPlayer() : null);
        s1(false);
    }

    @Override
    public void onPictureInPictureModeChanged(boolean isInPictureInPictureMode) {
        super.onPictureInPictureModeChanged(isInPictureInPictureMode);
        if (isInPictureInPictureMode) {
            FragmentActivity activity = getActivity();
            if (activity == null || activity.isDestroyed() || activity.isFinishing()) {
                return;
            }
            dw.a aVarR0 = R0();
            if (aVarR0 != null && Build.VERSION.SDK_INT >= 31) {
                cw.e.f58665a.b().h(activity, aVarR0);
            }
        }
        cw.e.f58665a.b().onPipModeChanged(isInPictureInPictureMode);
    }

    @Override
    public void onRecentClick() {
        super.onRecentClick();
        wf.a.C0922a.f(wf.a.f74274a, "VideoFloat", "MovieDetailFragment onRecentClick", false, 4, null);
        C1(FloatActionType.HOME);
    }

    @Override
    public void onResume() {
        super.onResume();
        kn.a aVar = this.playerControl;
        if (aVar != null) {
            aVar.onViewResume();
        }
        s1(true);
    }

    @Override
    public void onStop() {
        kn.a aVar;
        super.onStop();
        cw.c cVar = cw.c.f58664a;
        kn.a aVar2 = this.playerControl;
        if (cVar.c(aVar2 != null ? aVar2.getPlayer() : null) || (aVar = this.playerControl) == null) {
            return;
        }
        aVar.onViewPause();
    }

    @Override
    public void receiveArguments() {
        this.lastPageFrom = qi.h.f69682a.h();
        Bundle arguments = getArguments();
        this.ops = arguments != null ? arguments.getString("ops") : null;
        Bundle arguments2 = getArguments();
        this.mSubjectId = arguments2 != null ? arguments2.getString("id") : null;
        Bundle arguments3 = getArguments();
        this.mSubjectType = arguments3 != null ? arguments3.getInt("subject_type", this.mSubjectType) : this.mSubjectType;
        Bundle arguments4 = getArguments();
        this.autoDownload = arguments4 != null ? arguments4.getBoolean("auto_download") : false;
        Bundle arguments5 = getArguments();
        this.autoPlay = arguments5 != null ? arguments5.getBoolean("auto_play") : false;
        Bundle arguments6 = getArguments();
        this.autoPlayResourceId = arguments6 != null ? arguments6.getString("auto_play_resource_id") : null;
        Bundle arguments7 = getArguments();
        this.preloadId = arguments7 != null ? arguments7.getInt("yy_preload_id") : 0;
        Bundle arguments8 = getArguments();
        this.moduleName = arguments8 != null ? arguments8.getString("module_name") : null;
        Bundle arguments9 = getArguments();
        this.curSeason = arguments9 != null ? arguments9.getInt("season") : 1;
        MovieDetailViewModel movieDetailViewModelU0 = U0();
        int i10 = this.preloadId;
        String str = this.mSubjectId;
        if (str == null) {
            str = "";
        }
        movieDetailViewModelU0.S(i10, str, Integer.valueOf(this.curSeason));
        qi.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.j(this.lastPageFrom);
        }
    }

    @Override
    public void retryLoadData() {
        if (this.mMovieDetailBean == null) {
            loadDefaultData();
        }
    }

    public final void x1() {
        kn.a aVar;
        cw.c cVar = cw.c.f58664a;
        kn.a aVar2 = this.playerControl;
        if (!cVar.c(aVar2 != null ? aVar2.getPlayer() : null) && (aVar = this.playerControl) != null) {
            aVar.release();
        }
        kn.a aVar3 = this.playerControl;
        if (aVar3 != null) {
            aVar3.onPageDestroy();
        }
    }
}
