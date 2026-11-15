package com.transsion.postdetail.ui.fragment;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.LiveData;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.net.bean.BaseDto;
import com.tn.lib.view.layoutmanager.NpaLinearLayoutManager;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$string;
import com.tn.lib.widget.dialog.TRDialog;
import com.tn.lib.widget.dialog.TRDialogListener;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baseui.fragment.LazyFragment;
import com.transsion.baseui.fragment.PageStatusFragment;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.moviedetail.fragment.SubjectListFragment;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Group;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.MediaType;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.moviedetailapi.bean.PostSubjectBean;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.ResourceDetectors;
import com.transsion.moviedetailapi.bean.RoomTabItem;
import com.transsion.moviedetailapi.bean.Stat;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.moviedetailapi.bean.User;
import com.transsion.moviedetailapi.bean.Video;
import com.transsion.ninegridview.helper.FileHelper;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;
import com.transsion.postdetail.ui.adapter.PostAdapterFrom;
import com.transsion.postdetail.ui.view.PostListLoadMoreView;
import com.transsion.postdetail.util.PostSaveHelper;
import com.transsion.postdetail.viewmodel.PostDetailViewModel;
import com.transsion.postdetail.viewmodel.RoomPostViewModel;
import com.transsion.share.bean.PostType;
import com.transsion.share.share.ShareDialogFragment;
import com.transsion.user.action.sync.event.CommentEvent;
import com.transsion.usercenterapi.ReportType;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.DownloadManagerApi;
import com.transsnet.downloader.manager.DownloadEsHelper;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.flow.event.sync.event.LikeEvent;
import com.transsnet.flow.event.sync.event.PublishEvent;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import okhttp3.internal.http2.Settings;

@Metadata(d1 = {"\u0000\u0084\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b&\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u0004B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\u0006J\u000f\u0010\t\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\t\u0010\u0006J\u000f\u0010\n\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u0006J\u000f\u0010\u000b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000b\u0010\u0006J\u000f\u0010\f\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\f\u0010\u0006J\u001f\u0010\u0010\u001a\u00020\u00072\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0019\u0010\u0014\u001a\u00020\u00072\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0019\u0010\u0016\u001a\u00020\u00072\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0002¢\u0006\u0004\b\u0016\u0010\u0015J\u0019\u0010\u0017\u001a\u00020\u00072\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0002¢\u0006\u0004\b\u0017\u0010\u0015J\u000f\u0010\u0018\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0018\u0010\u0006J\u000f\u0010\u0019\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0019\u0010\u0006J#\u0010\u001c\u001a\u00020\u00072\b\u0010\u0013\u001a\u0004\u0018\u00010\u00122\b\b\u0002\u0010\u001b\u001a\u00020\u001aH\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u0019\u0010\u001e\u001a\u00020\u00072\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0002¢\u0006\u0004\b\u001e\u0010\u0015J\u0017\u0010!\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u001fH\u0002¢\u0006\u0004\b!\u0010\"J\u0019\u0010$\u001a\u00020\u00072\b\u0010#\u001a\u0004\u0018\u00010\u000eH\u0002¢\u0006\u0004\b$\u0010%J\u000f\u0010&\u001a\u00020\u0007H\u0002¢\u0006\u0004\b&\u0010\u0006J\u000f\u0010(\u001a\u00020'H\u0002¢\u0006\u0004\b(\u0010)J\u000f\u0010*\u001a\u00020\u0007H\u0002¢\u0006\u0004\b*\u0010\u0006J\u000f\u0010+\u001a\u00020\u0007H\u0002¢\u0006\u0004\b+\u0010\u0006J\u0017\u0010.\u001a\u00020\u00022\u0006\u0010-\u001a\u00020,H\u0016¢\u0006\u0004\b.\u0010/J\u0019\u00102\u001a\u00020\u00072\b\u00101\u001a\u0004\u0018\u000100H\u0016¢\u0006\u0004\b2\u00103J\u000f\u00104\u001a\u00020\u0007H\u0016¢\u0006\u0004\b4\u0010\u0006J\u000f\u00105\u001a\u00020\u000eH\u0016¢\u0006\u0004\b5\u00106J\u000f\u00107\u001a\u00020\u001aH\u0016¢\u0006\u0004\b7\u00108J\u000f\u00109\u001a\u00020\u001aH\u0016¢\u0006\u0004\b9\u00108J\u000f\u0010:\u001a\u00020\u000eH\u0016¢\u0006\u0004\b:\u00106J\u0015\u0010=\u001a\u00020\u00072\u0006\u0010<\u001a\u00020;¢\u0006\u0004\b=\u0010>J\u000f\u0010?\u001a\u00020\u0007H\u0016¢\u0006\u0004\b?\u0010\u0006J\u000f\u0010@\u001a\u00020\u0007H\u0016¢\u0006\u0004\b@\u0010\u0006J\u000f\u0010A\u001a\u00020\u0007H\u0016¢\u0006\u0004\bA\u0010\u0006J\u001f\u0010D\u001a\u00020\u00072\u000e\u0010C\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010BH\u0016¢\u0006\u0004\bD\u0010EJ\u0017\u0010H\u001a\u00020\u00072\u0006\u0010G\u001a\u00020FH\u0016¢\u0006\u0004\bH\u0010IJ\u0017\u0010J\u001a\u00020\u00072\u0006\u0010G\u001a\u00020FH\u0016¢\u0006\u0004\bJ\u0010IJ1\u0010Q\u001a\u00020\u00072\u0006\u0010L\u001a\u00020K2\u0010\u0010N\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u000e0M2\u0006\u0010P\u001a\u00020OH\u0016¢\u0006\u0004\bQ\u0010RJ\u0011\u0010T\u001a\u0004\u0018\u00010SH\u0016¢\u0006\u0004\bT\u0010UJ\u000f\u0010V\u001a\u00020\u0007H\u0016¢\u0006\u0004\bV\u0010\u0006J\u000f\u0010W\u001a\u00020\u0007H\u0016¢\u0006\u0004\bW\u0010\u0006J\u0017\u0010Y\u001a\u00020\u00072\u0006\u0010X\u001a\u00020\u001aH\u0016¢\u0006\u0004\bY\u0010ZJ\u000f\u0010[\u001a\u00020\u0007H\u0016¢\u0006\u0004\b[\u0010\u0006J\u000f\u0010]\u001a\u00020\\H\u0016¢\u0006\u0004\b]\u0010^J\u0019\u0010a\u001a\u00020\u00072\b\u0010`\u001a\u0004\u0018\u00010_H\u0016¢\u0006\u0004\ba\u0010bJ!\u0010d\u001a\u00020\u00072\u0006\u0010c\u001a\u00020K2\b\u0010`\u001a\u0004\u0018\u00010_H\u0016¢\u0006\u0004\bd\u0010eJ\u000f\u0010f\u001a\u00020\u0007H\u0016¢\u0006\u0004\bf\u0010\u0006J\u0019\u0010h\u001a\u00020\u00072\b\u0010g\u001a\u0004\u0018\u00010\u0012H\u0016¢\u0006\u0004\bh\u0010\u0015J\u0019\u0010i\u001a\u00020\u00072\b\u0010g\u001a\u0004\u0018\u00010\u0012H\u0016¢\u0006\u0004\bi\u0010\u0015J\u0019\u0010j\u001a\u00020\u00072\b\u0010g\u001a\u0004\u0018\u00010\u0012H\u0016¢\u0006\u0004\bj\u0010\u0015J\u000f\u0010l\u001a\u00020kH&¢\u0006\u0004\bl\u0010mJ\u0019\u0010n\u001a\u00020\u00072\b\u0010g\u001a\u0004\u0018\u00010\u0012H&¢\u0006\u0004\bn\u0010\u0015J\u000f\u0010o\u001a\u00020\u000eH&¢\u0006\u0004\bo\u00106J#\u0010r\u001a\u00020\u00072\b\b\u0002\u0010p\u001a\u00020\u001a2\b\b\u0002\u0010q\u001a\u00020\u001aH&¢\u0006\u0004\br\u0010sJ\u000f\u0010t\u001a\u00020\u000eH&¢\u0006\u0004\bt\u00106J\u000f\u0010u\u001a\u00020\u000eH&¢\u0006\u0004\bu\u00106J\u000f\u0010v\u001a\u00020\u001aH&¢\u0006\u0004\bv\u00108J\u000f\u0010w\u001a\u00020\u001aH&¢\u0006\u0004\bw\u00108J\u000f\u0010x\u001a\u00020KH&¢\u0006\u0004\bx\u0010yJ\u000f\u0010z\u001a\u00020\u001aH&¢\u0006\u0004\bz\u00108R\u0014\u0010{\u001a\u00020\u000e8\u0002X\u0083D¢\u0006\u0006\n\u0004\b{\u0010|R\u001a\u0010}\u001a\u00020\u000e8\u0004X\u0084\u0004¢\u0006\f\n\u0004\b}\u0010|\u001a\u0004\b~\u00106R+\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u007f8\u0004@\u0004X\u0084\u000e¢\u0006\u0018\n\u0006\b\u0080\u0001\u0010\u0081\u0001\u001a\u0006\b\u0082\u0001\u0010\u0083\u0001\"\u0006\b\u0084\u0001\u0010\u0085\u0001R,\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0086\u00018\u0004@\u0004X\u0084\u000e¢\u0006\u0018\n\u0006\b\u0087\u0001\u0010\u0088\u0001\u001a\u0006\b\u0089\u0001\u0010\u008a\u0001\"\u0006\b\u008b\u0001\u0010\u008c\u0001R,\u0010\u008e\u0001\u001a\u0005\u0018\u00010\u008d\u00018\u0004@\u0004X\u0084\u000e¢\u0006\u0018\n\u0006\b\u008e\u0001\u0010\u008f\u0001\u001a\u0006\b\u0090\u0001\u0010\u0091\u0001\"\u0006\b\u0092\u0001\u0010\u0093\u0001R,\u0010\u0095\u0001\u001a\u0005\u0018\u00010\u0094\u00018\u0004@\u0004X\u0084\u000e¢\u0006\u0018\n\u0006\b\u0095\u0001\u0010\u0096\u0001\u001a\u0006\b\u0097\u0001\u0010\u0098\u0001\"\u0006\b\u0099\u0001\u0010\u009a\u0001R(\u0010\u009b\u0001\u001a\u0004\u0018\u00010\u000e8\u0004@\u0004X\u0084\u000e¢\u0006\u0015\n\u0005\b\u009b\u0001\u0010|\u001a\u0005\b\u009c\u0001\u00106\"\u0005\b\u009d\u0001\u0010%R\u001e\u0010\u009e\u0001\u001a\u00020K8\u0004X\u0084D¢\u0006\u000f\n\u0006\b\u009e\u0001\u0010\u009f\u0001\u001a\u0005\b \u0001\u0010yR(\u0010¡\u0001\u001a\u0004\u0018\u00010\u000e8\u0004@\u0004X\u0084\u000e¢\u0006\u0015\n\u0005\b¡\u0001\u0010|\u001a\u0005\b¢\u0001\u00106\"\u0005\b£\u0001\u0010%R(\u0010¤\u0001\u001a\u00020K8\u0004@\u0004X\u0084\u000e¢\u0006\u0017\n\u0006\b¤\u0001\u0010\u009f\u0001\u001a\u0005\b¥\u0001\u0010y\"\u0006\b¦\u0001\u0010§\u0001R\u001c\u0010©\u0001\u001a\u0005\u0018\u00010¨\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b©\u0001\u0010ª\u0001R\u0019\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0013\u0010«\u0001R\u001c\u0010\u00ad\u0001\u001a\u0005\u0018\u00010¬\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u00ad\u0001\u0010®\u0001R(\u0010¯\u0001\u001a\u0004\u0018\u00010\u000e8\u0004@\u0004X\u0084\u000e¢\u0006\u0015\n\u0005\b¯\u0001\u0010|\u001a\u0005\b°\u0001\u00106\"\u0005\b±\u0001\u0010%R(\u0010²\u0001\u001a\u0004\u0018\u00010\u000e8\u0004@\u0004X\u0084\u000e¢\u0006\u0015\n\u0005\b²\u0001\u0010|\u001a\u0005\b³\u0001\u00106\"\u0005\b´\u0001\u0010%R!\u0010µ\u0001\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010B8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bµ\u0001\u0010¶\u0001R,\u0010¸\u0001\u001a\u0005\u0018\u00010·\u00018\u0004@\u0004X\u0084\u000e¢\u0006\u0018\n\u0006\b¸\u0001\u0010¹\u0001\u001a\u0006\bº\u0001\u0010»\u0001\"\u0006\b¼\u0001\u0010½\u0001R\u001c\u0010¿\u0001\u001a\u0005\u0018\u00010¾\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¿\u0001\u0010À\u0001R\u001b\u0010Á\u0001\u001a\u0004\u0018\u00010S8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÁ\u0001\u0010Â\u0001R!\u0010È\u0001\u001a\u00030Ã\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÄ\u0001\u0010Å\u0001\u001a\u0006\bÆ\u0001\u0010Ç\u0001R#\u0010Í\u0001\u001a\u0005\u0018\u00010É\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÊ\u0001\u0010Å\u0001\u001a\u0006\bË\u0001\u0010Ì\u0001R2\u0010Ó\u0001\u001a\u0014\u0012\u0004\u0012\u00020\u000e0Î\u0001j\t\u0012\u0004\u0012\u00020\u000e`Ï\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÐ\u0001\u0010Å\u0001\u001a\u0006\bÑ\u0001\u0010Ò\u0001R\u0019\u0010Ô\u0001\u001a\u00020K8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÔ\u0001\u0010\u009f\u0001R\u0019\u0010Õ\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÕ\u0001\u0010Ö\u0001¨\u0006×\u0001"}, d2 = {"Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;", "Lcom/transsion/baseui/fragment/LazyFragment;", "Lwn/p;", "Lio/c;", "Lcom/tn/lib/widget/dialog/TRDialogListener;", "<init>", "()V", "", "observePublish", "initExposureHelper", "observeComment", "observeDelete", "observeLike", "Lcom/tn/lib/net/bean/BaseDto;", "", "data", "updateDeletePost", "(Lcom/tn/lib/net/bean/BaseDto;)V", "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", "postItem", "onLikeClick", "(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V", "onCommentClick", "onDownloadClick", "requestPermission", "showSettingDialog", "", "navigateToComment", "openPostDetail", "(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Z)V", "onShareClick", "Lcom/transsion/baselib/db/download/DownloadBean;", "download", "saveBuiltInVideo", "(Lcom/transsion/baselib/db/download/DownloadBean;)V", "id", "removePost", "(Ljava/lang/String;)V", "localLogPause", "", "getPostExposurePercent", "()F", "initFeedVideo", "checkShowRefreshPopGuide", "Landroid/view/LayoutInflater;", "inflater", "getViewBinding", "(Landroid/view/LayoutInflater;)Lwn/p;", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "lazyLoadData", "getPageStateLayoutTitle", "()Ljava/lang/String;", "isShowPageStateLayoutTitle", "()Z", "isAudioShowNoNetworkLayout", "getEmptyDescText", "Lij/q;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setOnNumNotExposureListener", "(Lij/q;)V", "initViewData", "initListener", "retryLoadData", "Lkotlin/Function0;", "resultCallback", "doRefresh", "(Lkotlin/jvm/functions/Function0;)V", "Lcom/tn/lib/widget/dialog/TRDialog;", "dialog", "onLeftButtonClick", "(Lcom/tn/lib/widget/dialog/TRDialog;)V", "onRightButtonClick", "", "requestCode", "", "permissions", "", "grantResults", "onRequestPermissionsResult", "(I[Ljava/lang/String;[I)V", "Landroid/view/View;", "getLoadingView", "()Landroid/view/View;", "onResume", "onPause", "hidden", "onHiddenChanged", "(Z)V", "onDestroy", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "Lcom/transsion/moviedetailapi/bean/PostSubjectBean;", "bean", "updateData", "(Lcom/transsion/moviedetailapi/bean/PostSubjectBean;)V", RequestParameters.POSITION, "updateRoomCacheData", "(ILcom/transsion/moviedetailapi/bean/PostSubjectBean;)V", "checkToShowEmptyView", WebConstants.FIELD_ITEM, "openSubjectDetail", "openRoomDetail", "openUserCenter", "Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;", "postAdapterFrom", "()Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;", "onItemHeaderClick", "onItemHeaderModuleName", "isFirstLoad", "isRefresh", "loadData", "(ZZ)V", "pageName", "subpageName", "isSwipeRefreshEnable", "isNeedInsertPublishPost", "tabIndex", "()I", "isStaggeredPost", "KEY_POST_EXPOSURE_PERCENT", "Ljava/lang/String;", "TAG", "getTAG", "Lcom/transsion/postdetail/ui/adapter/f;", "mAdapter", "Lcom/transsion/postdetail/ui/adapter/f;", "getMAdapter", "()Lcom/transsion/postdetail/ui/adapter/f;", "setMAdapter", "(Lcom/transsion/postdetail/ui/adapter/f;)V", "Lbj/b;", "mExposureHelper", "Lbj/b;", "getMExposureHelper", "()Lbj/b;", "setMExposureHelper", "(Lbj/b;)V", "Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;", "mViewModel", "Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;", "getMViewModel", "()Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;", "setMViewModel", "(Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;)V", "Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;", "mDetailViewModel", "Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;", "getMDetailViewModel", "()Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;", "setMDetailViewModel", "(Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;)V", "mPageFrom", "getMPageFrom", "setMPageFrom", "preLoadNum", "I", "getPreLoadNum", "mPage", "getMPage", "setMPage", "mPerPage", "getMPerPage", "setMPerPage", "(I)V", "Lcom/transsion/moviedetailapi/bean/Subject;", "mSubject", "Lcom/transsion/moviedetailapi/bean/Subject;", "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", "Lcom/transsion/moviedetailapi/bean/Group;", "mGroup", "Lcom/transsion/moviedetailapi/bean/Group;", "mGroupId", "getMGroupId", "setMGroupId", "mParentTypeName", "getMParentTypeName", "setMParentTypeName", "mRefreshResultCallback", "Lkotlin/jvm/functions/Function0;", "Lcom/transsion/moviedetailapi/bean/RoomTabItem;", "mTopTab", "Lcom/transsion/moviedetailapi/bean/RoomTabItem;", "getMTopTab", "()Lcom/transsion/moviedetailapi/bean/RoomTabItem;", "setMTopTab", "(Lcom/transsion/moviedetailapi/bean/RoomTabItem;)V", "Lho/a;", "mFeedVideoManager", "Lho/a;", "mLoadingView", "Landroid/view/View;", "Landroid/os/Handler;", "mHandler$delegate", "Lkotlin/Lazy;", "getMHandler", "()Landroid/os/Handler;", "mHandler", "Lqx/a;", "mLoginApi$delegate", "getMLoginApi", "()Lqx/a;", "mLoginApi", "Ljava/util/HashSet;", "Lkotlin/collections/HashSet;", "mExposureList$delegate", "getMExposureList", "()Ljava/util/HashSet;", "mExposureList", "mExposureCount", "mRefreshShown", "Z", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public abstract class RoomPostBaseFragment extends LazyFragment<wn.p> implements io.c, TRDialogListener {
    private com.transsion.postdetail.ui.adapter.f mAdapter;
    private PostDetailViewModel mDetailViewModel;
    private int mExposureCount;
    private bj.b mExposureHelper;
    private ho.a mFeedVideoManager;
    private Group mGroup;
    private String mGroupId;
    private View mLoadingView;
    private String mPage;
    private String mPageFrom;
    private String mParentTypeName;
    private Function0<Unit> mRefreshResultCallback;
    private boolean mRefreshShown;
    private Subject mSubject;
    private RoomTabItem mTopTab;
    private RoomPostViewModel mViewModel;
    private PostSubjectItem postItem;
    private final String KEY_POST_EXPOSURE_PERCENT = SubjectListFragment.KEY_POST_EXPOSURE_PERCENT;
    private final String TAG = "Post_" + getClass().getSimpleName();
    private final int preLoadNum = 2;
    private int mPerPage = 8;

    private final Lazy mHandler = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return RoomPostBaseFragment.mHandler_delegate$lambda$0();
        }
    });

    private final Lazy mLoginApi = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return RoomPostBaseFragment.mLoginApi_delegate$lambda$1();
        }
    });

    private final Lazy mExposureList = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return RoomPostBaseFragment.mExposureList_delegate$lambda$2();
        }
    });

    public static final class a implements bj.a {
        a() {
        }

        @Override
        public void a(int i10, long j10, View view) {
            PostSubjectItem postSubjectItem;
            RoomPostBaseFragment roomPostBaseFragment = RoomPostBaseFragment.this;
            try {
                Result.Companion companion = Result.INSTANCE;
                com.transsion.postdetail.ui.adapter.f mAdapter = roomPostBaseFragment.getMAdapter();
                if (mAdapter != null && (postSubjectItem = (PostSubjectItem) mAdapter.f0(i10)) != null) {
                    roomPostBaseFragment.checkShowRefreshPopGuide();
                    if (!CollectionsKt.b0(roomPostBaseFragment.getMExposureList(), postSubjectItem.getPostId())) {
                        String postId = postSubjectItem.getPostId();
                        if (postId != null) {
                            roomPostBaseFragment.getMExposureList().add(postId);
                        }
                        com.transsion.postdetail.helper.a.f46861a.v(roomPostBaseFragment.getMPageFrom(), roomPostBaseFragment.pageName(), roomPostBaseFragment.subpageName(), i10, j10, postSubjectItem, roomPostBaseFragment.getMGroupId());
                    }
                    if (roomPostBaseFragment instanceof RoomPostExploreFragment) {
                        ((RoomPostExploreFragment) roomPostBaseFragment).deleteCacheRoom(postSubjectItem);
                    }
                }
                Result.m453constructorimpl(Unit.f64096a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m453constructorimpl(ResultKt.a(th2));
            }
        }
    }

    public static final class b extends DiffUtil.e {
        b() {
        }

        @Override
        public boolean areContentsTheSame(PostSubjectItem oldItem, PostSubjectItem newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            return Intrinsics.c(oldItem.getPostId(), newItem.getPostId());
        }

        @Override
        public boolean areItemsTheSame(PostSubjectItem oldItem, PostSubjectItem newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            return Intrinsics.c(oldItem.getPostId(), newItem.getPostId());
        }
    }

    public static final class c implements com.transsion.share.share.a {

        final ShareDialogFragment f47528a;

        final PostSubjectItem f47529b;

        final RoomPostBaseFragment f47530c;

        c(ShareDialogFragment shareDialogFragment, PostSubjectItem postSubjectItem, RoomPostBaseFragment roomPostBaseFragment) {
            this.f47528a = shareDialogFragment;
            this.f47529b = postSubjectItem;
            this.f47530c = roomPostBaseFragment;
        }

        @Override
        public void a(String id2, PostType postType) {
            Intrinsics.h(id2, "id");
            RoomPostViewModel mViewModel = this.f47530c.getMViewModel();
            if (mViewModel != null) {
                mViewModel.u(id2);
            }
        }

        @Override
        public void b(String str) {
            wf.a.C0922a.f(wf.a.f74274a, this.f47530c.getTAG(), "id" + str, false, 4, null);
            this.f47530c.removePost(str);
        }

        @Override
        public void c(String url, String fileName, String fileSize, String fileImage) {
            Subject subject;
            ResourceDetectors resourceDetector;
            String resourceLink;
            Media media;
            Cover cover;
            Integer size;
            Media media2;
            Cover cover2;
            String url2;
            String url3;
            String url4;
            Media media3;
            Intrinsics.h(url, "url");
            Intrinsics.h(fileName, "fileName");
            Intrinsics.h(fileSize, "fileSize");
            Intrinsics.h(fileImage, "fileImage");
            if (com.transsion.baseui.util.c.f42332a.a(this.f47528a.getId(), 500L)) {
                return;
            }
            PostSubjectItem postSubjectItem = this.f47529b;
            Video videoA = com.transsion.postdetail.util.t.a((postSubjectItem == null || (media3 = postSubjectItem.getMedia()) == null) ? null : media3.getVideo());
            PostSubjectItem postSubjectItem2 = this.f47529b;
            String title = postSubjectItem2 != null ? postSubjectItem2.getTitle() : null;
            if (TextUtils.isEmpty(title)) {
                PostSubjectItem postSubjectItem3 = this.f47529b;
                title = postSubjectItem3 != null ? postSubjectItem3.getContent() : null;
            }
            String str = title;
            String str2 = (videoA == null || (url4 = videoA.getUrl()) == null) ? "" : url4;
            String str3 = (videoA == null || (url3 = videoA.getUrl()) == null) ? "" : url3;
            PostSubjectItem postSubjectItem4 = this.f47529b;
            String str4 = (postSubjectItem4 == null || (media2 = postSubjectItem4.getMedia()) == null || (cover2 = media2.getCover()) == null || (url2 = cover2.getUrl()) == null) ? "" : url2;
            Long lValueOf = (videoA == null || (size = videoA.getSize()) == null) ? null : Long.valueOf(size.intValue());
            PostSubjectItem postSubjectItem5 = this.f47529b;
            String postId = postSubjectItem5 != null ? postSubjectItem5.getPostId() : null;
            PostSubjectItem postSubjectItem6 = this.f47529b;
            DownloadBean downloadBean = new DownloadBean(str2, str3, str, str4, lValueOf, postSubjectItem6 != null ? postSubjectItem6.getPostId() : null, null, null, null, null, 0L, 0, 0, 0, 0L, 0L, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, postId, null, null, null, 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -134217792, -1, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
            PostSubjectItem postSubjectItem7 = this.f47529b;
            downloadBean.setThumbnail((postSubjectItem7 == null || (media = postSubjectItem7.getMedia()) == null || (cover = media.getCover()) == null) ? null : cover.getThumbnail());
            PostSubjectItem postSubjectItem8 = this.f47529b;
            if (postSubjectItem8 == null || !postSubjectItem8.getBuiltIn()) {
                DownloadManagerApi downloadManagerApiA = DownloadManagerApi.f56187j.a();
                Context context = this.f47528a.getContext();
                Intrinsics.f(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
                FragmentActivity fragmentActivity = (FragmentActivity) context;
                PostSubjectItem postSubjectItem9 = this.f47529b;
                String ops = postSubjectItem9 != null ? postSubjectItem9.getOps() : null;
                PostSubjectItem postSubjectItem10 = this.f47529b;
                downloadManagerApiA.O(fragmentActivity, downloadBean, VideoFragment.PAGE_NAME, ops, (postSubjectItem10 == null || (subject = postSubjectItem10.getSubject()) == null || (resourceDetector = subject.getResourceDetector()) == null || (resourceLink = resourceDetector.getResourceLink()) == null) ? "" : resourceLink, (64 & 32) != 0 ? null : null, (64 & 64) != 0 ? null : null);
            } else {
                this.f47530c.saveBuiltInVideo(downloadBean);
            }
            com.transsion.postdetail.helper.a.j(com.transsion.postdetail.helper.a.f46861a, this.f47529b, this.f47530c.subpageName(), null, 4, null);
        }

        @Override
        public void d(String id2) {
            Intrinsics.h(id2, "id");
        }

        @Override
        public void e(String str) {
            com.transsion.share.share.a.C0627a.c(this, str);
        }
    }

    static final class d implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f47531a;

        d(Function1 function) {
            Intrinsics.h(function, "function");
            this.f47531a = function;
        }

        @Override
        public final Function a() {
            return this.f47531a;
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
            this.f47531a.invoke(obj);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.postdetail.ui.fragment.RoomPostBaseFragment$saveBuiltInVideo$1", f = "RoomPostBaseFragment.kt", l = {705, 706}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
        final DownloadBean $download;
        int label;

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
        @DebugMetadata(c = "com.transsion.postdetail.ui.fragment.RoomPostBaseFragment$saveBuiltInVideo$1$1", f = "RoomPostBaseFragment.kt", l = {}, m = "invokeSuspend")
        static final class C06231 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
            int label;

            C06231(Continuation<? super C06231> continuation) {
                super(2, continuation);
            }

            @Override
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C06231(continuation);
            }

            @Override
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.f();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
                fh.b.f60176a.e("download success~");
                return Unit.f64096a;
            }

            @Override
            public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
                return ((C06231) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(DownloadBean downloadBean, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$download = downloadBean;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$download, continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    ResultKt.b(obj);
                } else {
                    if (i10 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                return Unit.f64096a;
            }
            ResultKt.b(obj);
            DownloadBean downloadBean = this.$download;
            downloadBean.setPath(downloadBean.getUrl());
            this.$download.setStatus(5);
            DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f57201m.a();
            DownloadBean downloadBean2 = this.$download;
            this.label = 1;
            if (downloadEsHelperA.T(downloadBean2, this) == objF) {
                return objF;
            }
            kotlinx.coroutines.a2 a2VarC = kotlinx.coroutines.y0.c();
            C06231 c06231 = new C06231(null);
            this.label = 2;
            if (kotlinx.coroutines.i.g(a2VarC, c06231, this) == objF) {
                return objF;
            }
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    public final void checkShowRefreshPopGuide() {
        if (Intrinsics.c(this.mParentTypeName, "BOTTOM_TAB") && !this.mRefreshShown) {
            int i10 = this.mExposureCount + 1;
            this.mExposureCount = i10;
            if (i10 < 9) {
                return;
            }
            com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f42221a;
            boolean z10 = bVar.b().getBoolean("ROOM_POST_REFRESH_GUIDE", false);
            this.mRefreshShown = true;
            if (z10) {
                return;
            }
            wf.a.C0922a.f(wf.a.f74274a, this.TAG, "--ShowRefreshPopGuide", false, 4, null);
            bVar.b().putBoolean("ROOM_POST_REFRESH_GUIDE", true);
            ep.i iVar = new ep.i();
            FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
            String name = ep.i.class.getName();
            Intrinsics.g(name, "getName(...)");
            flowEventBus.postEvent(name, iVar, 0L);
        }
    }

    public final HashSet<String> getMExposureList() {
        return (HashSet) this.mExposureList.getValue();
    }

    private final Handler getMHandler() {
        return (Handler) this.mHandler.getValue();
    }

    private final qx.a getMLoginApi() {
        return (qx.a) this.mLoginApi.getValue();
    }

    private final float getPostExposurePercent() {
        Float fT;
        ConfigBean configBeanD = cm.f.d(cm.f.f17019c.a(), this.KEY_POST_EXPOSURE_PERCENT, false, 2, null);
        String value = configBeanD != null ? configBeanD.getValue() : null;
        if (value == null || value.length() == 0 || (fT = StringsKt.t(value)) == null) {
            return 0.6f;
        }
        return fT.floatValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initExposureHelper() {
        RecyclerView recyclerView;
        float postExposurePercent = getPostExposurePercent();
        wf.a.C0922a.f(wf.a.f74274a, "PostList", "initExposureHelper, postExposurePercent:" + postExposurePercent, false, 4, null);
        bj.b bVar = new bj.b(postExposurePercent, new a(), false, 4, null);
        bVar.n(2);
        wn.p pVar = (wn.p) getMViewBinding();
        if (pVar != null && (recyclerView = pVar.f74519b) != null) {
            recyclerView.addOnScrollListener(bVar);
        }
        this.mExposureHelper = bVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initFeedVideo() {
        ho.a.C0746a c0746a = ho.a.f61431h1;
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        wn.p pVar = (wn.p) getMViewBinding();
        this.mFeedVideoManager = c0746a.a(contextRequireContext, this, pVar != null ? pVar.f74519b : null, this.mAdapter, pageName(), subpageName(), getActivity() instanceof dl.b);
    }

    public static final void initViewData$lambda$12$lambda$11(RoomPostBaseFragment roomPostBaseFragment, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        if (com.transsion.baseui.util.c.f42332a.a(view.getId(), 500L)) {
            return;
        }
        Object item = adapter.getItem(i10);
        String strOnItemHeaderModuleName = null;
        PostSubjectItem postSubjectItem = item instanceof PostSubjectItem ? (PostSubjectItem) item : null;
        int id2 = view.getId();
        if (id2 == R$id.fl_cover || id2 == R$id.tv_room_name || id2 == R$id.iv_user_avatar || id2 == R$id.tv_user_name || id2 == R$id.tv_post_date) {
            roomPostBaseFragment.onItemHeaderClick(postSubjectItem);
            strOnItemHeaderModuleName = roomPostBaseFragment.onItemHeaderModuleName();
        } else {
            if (id2 == R$id.v_post_like) {
                strOnItemHeaderModuleName = postSubjectItem != null ? Intrinsics.c(postSubjectItem.getHasLike(), Boolean.TRUE) : false ? "dislike" : "like";
                roomPostBaseFragment.onLikeClick(postSubjectItem);
            } else if (id2 == R$id.tv_staggered_post_like) {
                strOnItemHeaderModuleName = postSubjectItem != null ? Intrinsics.c(postSubjectItem.getHasLike(), Boolean.TRUE) : false ? "dislike" : "like";
                roomPostBaseFragment.onLikeClick(postSubjectItem);
            } else if (id2 == R$id.v_post_comment) {
                roomPostBaseFragment.onCommentClick(postSubjectItem);
                strOnItemHeaderModuleName = "comment";
            } else if (id2 == R$id.clHotComment) {
                roomPostBaseFragment.onCommentClick(postSubjectItem);
                strOnItemHeaderModuleName = "hot_comment";
            } else if (id2 == R$id.v_post_share) {
                roomPostBaseFragment.onShareClick(postSubjectItem);
                strOnItemHeaderModuleName = "share";
            } else if (id2 == R$id.v_post_download) {
                roomPostBaseFragment.onDownloadClick(postSubjectItem);
                strOnItemHeaderModuleName = "download";
            } else if (id2 == R$id.cl_subject_content) {
                roomPostBaseFragment.openSubjectDetail(postSubjectItem);
                strOnItemHeaderModuleName = "subject";
            } else if (id2 == R$id.tv_room_tag) {
                roomPostBaseFragment.openRoomDetail(postSubjectItem);
                strOnItemHeaderModuleName = "group";
            } else if (id2 == R$id.refresh_more) {
                androidx.p010savedstate.e parentFragment = roomPostBaseFragment.getParentFragment();
                if (parentFragment instanceof ep.g) {
                    ((ep.g) parentFragment).v();
                }
            }
        }
        if (postSubjectItem != null) {
            com.transsion.postdetail.helper.a.f46861a.x(roomPostBaseFragment.mPageFrom, roomPostBaseFragment.pageName(), roomPostBaseFragment.subpageName(), i10, strOnItemHeaderModuleName == null ? "" : strOnItemHeaderModuleName, postSubjectItem, roomPostBaseFragment.mGroupId);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit initViewData$lambda$12$lambda$6$lambda$5(RoomPostBaseFragment roomPostBaseFragment) {
        SwipeRefreshLayout swipeRefreshLayout;
        if (!yg.l.f76264a.e()) {
            fh.b.f60176a.d(R$string.no_network_toast);
            return Unit.f64096a;
        }
        if (roomPostBaseFragment.isSwipeRefreshEnable()) {
            wn.p pVar = (wn.p) roomPostBaseFragment.getMViewBinding();
            if (pVar != null && (swipeRefreshLayout = pVar.f74520c) != null) {
                swipeRefreshLayout.setRefreshing(true);
            }
            io.c.a.a(roomPostBaseFragment, null, 1, null);
        } else {
            androidx.p010savedstate.e parentFragment = roomPostBaseFragment.getParentFragment();
            if (parentFragment instanceof ep.g) {
                ((ep.g) parentFragment).e(false);
            }
        }
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void initViewData$lambda$12$lambda$8(final RoomPostBaseFragment roomPostBaseFragment) {
        RecyclerView recyclerView;
        if (yg.l.f76264a.e()) {
            loadData$default(roomPostBaseFragment, false, false, 1, null);
            return;
        }
        wn.p pVar = (wn.p) roomPostBaseFragment.getMViewBinding();
        if (pVar == null || (recyclerView = pVar.f74519b) == null) {
            return;
        }
        recyclerView.postDelayed(new Runnable() {
            @Override
            public final void run() {
                RoomPostBaseFragment.initViewData$lambda$12$lambda$8$lambda$7(this.f47695a);
            }
        }, 300L);
    }

    public static final void initViewData$lambda$12$lambda$8$lambda$7(RoomPostBaseFragment roomPostBaseFragment) {
        t6.f fVarH0;
        com.transsion.postdetail.ui.adapter.f fVar = roomPostBaseFragment.mAdapter;
        if (fVar == null || (fVarH0 = fVar.h0()) == null) {
            return;
        }
        fVarH0.v();
    }

    public static final void initViewData$lambda$12$lambda$9(RoomPostBaseFragment roomPostBaseFragment, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        if (com.transsion.baseui.util.c.f42332a.a(view.getId(), 500L)) {
            return;
        }
        Object item = adapter.getItem(i10);
        PostSubjectItem postSubjectItem = item instanceof PostSubjectItem ? (PostSubjectItem) item : null;
        if (postSubjectItem == null || postSubjectItem.isRoomCacheListStart() || postSubjectItem.isRoomCacheListEnd()) {
            return;
        }
        com.transsion.postdetail.helper.a.f46861a.x(roomPostBaseFragment.mPageFrom, roomPostBaseFragment.pageName(), roomPostBaseFragment.subpageName(), i10, WebConstants.FIELD_ITEM, postSubjectItem, roomPostBaseFragment.mGroupId);
        openPostDetail$default(roomPostBaseFragment, postSubjectItem, false, 2, null);
    }

    public static final Unit initViewData$lambda$15(RoomPostBaseFragment roomPostBaseFragment, BaseDto baseDto) {
        roomPostBaseFragment.updateDeletePost(baseDto);
        return Unit.f64096a;
    }

    public static final Unit initViewData$lambda$17(final RoomPostBaseFragment roomPostBaseFragment, PostSubjectItem postSubjectItem) {
        wf.a.C0922a.f(wf.a.f74274a, roomPostBaseFragment.TAG, roomPostBaseFragment.getClass().getSimpleName() + "--Publish get detail result,  id:" + (postSubjectItem != null ? postSubjectItem.getPostId() : null), false, 4, null);
        if (postSubjectItem == null) {
            return Unit.f64096a;
        }
        postSubjectItem.setDistanceStr("<1m");
        com.transsion.postdetail.ui.adapter.f fVar = roomPostBaseFragment.mAdapter;
        if (fVar != null) {
            fVar.n(0, postSubjectItem);
        }
        roomPostBaseFragment.getMHandler().post(new Runnable() {
            @Override
            public final void run() {
                RoomPostBaseFragment.initViewData$lambda$17$lambda$16(this.f47778a);
            }
        });
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void initViewData$lambda$17$lambda$16(RoomPostBaseFragment roomPostBaseFragment) {
        RecyclerView recyclerView;
        wn.p pVar = (wn.p) roomPostBaseFragment.getMViewBinding();
        if (pVar == null || (recyclerView = pVar.f74519b) == null) {
            return;
        }
        recyclerView.scrollToPosition(0);
    }

    public static void loadData$default(RoomPostBaseFragment roomPostBaseFragment, boolean z10, boolean z11, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: loadData");
        }
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        if ((i10 & 2) != 0) {
            z11 = true;
        }
        roomPostBaseFragment.loadData(z10, z11);
    }

    private final void localLogPause() {
        bj.b bVar = this.mExposureHelper;
        if (bVar != null) {
            bVar.f();
        }
    }

    public static final HashSet mExposureList_delegate$lambda$2() {
        return new HashSet();
    }

    public static final Handler mHandler_delegate$lambda$0() {
        return new Handler(Looper.getMainLooper());
    }

    public static final qx.a mLoginApi_delegate$lambda$1() {
        return (qx.a) TheRouter.d(qx.a.class, new Object[0]);
    }

    private final void observeComment() {
        Function1 function1 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RoomPostBaseFragment.observeComment$lambda$23(this.f47732a, (CommentEvent) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = CommentEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(this, name, Lifecycle.State.CREATED, kotlinx.coroutines.y0.c().r(), false, function1);
    }

    /* JADX WARN: Code duplicated, block: B:46:0x00a0 A[Catch: Exception -> 0x0036, TRY_LEAVE, TryCatch #1 {Exception -> 0x0036, blocks: (B:3:0x0007, B:5:0x000c, B:7:0x0012, B:8:0x0017, B:10:0x001d, B:13:0x0033, B:17:0x003b, B:19:0x003f, B:21:0x0045, B:24:0x004f, B:43:0x0099, B:42:0x008f, B:44:0x009c, B:46:0x00a0, B:26:0x0055, B:28:0x005f, B:30:0x0065, B:34:0x006e, B:40:0x0085, B:35:0x0074, B:37:0x007a, B:39:0x0080), top: B:53:0x0007, inners: #0 }] */
    public static final Unit observeComment$lambda$23(RoomPostBaseFragment roomPostBaseFragment, CommentEvent value) {
        com.transsion.postdetail.ui.adapter.f fVar;
        Stat stat;
        Object objM453constructorimpl;
        Long lValueOf;
        List<Object> data;
        List<Object> data2;
        Intrinsics.h(value, "value");
        try {
            com.transsion.postdetail.ui.adapter.f fVar2 = roomPostBaseFragment.mAdapter;
            int i10 = -1;
            if (fVar2 != null && (data2 = fVar2.getData()) != null) {
                Iterator<Object> it = data2.iterator();
                int i11 = 0;
                while (it.hasNext()) {
                    if (Intrinsics.c(((PostSubjectItem) it.next()).getPostId(), value.getSubjectId())) {
                        i10 = i11;
                        break;
                    }
                    i11++;
                }
            }
            if (i10 >= 0) {
                com.transsion.postdetail.ui.adapter.f fVar3 = roomPostBaseFragment.mAdapter;
                PostSubjectItem postSubjectItem = (fVar3 == null || (data = fVar3.getData()) == null) ? null : (PostSubjectItem) data.get(i10);
                if (postSubjectItem == null || (stat = postSubjectItem.getStat()) == null) {
                    fVar = roomPostBaseFragment.mAdapter;
                    if (fVar != null) {
                        fVar.notifyItemChanged(i10);
                    }
                } else {
                    try {
                        Result.Companion companion = Result.INSTANCE;
                        if (value.getStatus()) {
                            Long commentCount = stat.getCommentCount();
                            lValueOf = Long.valueOf((commentCount != null ? commentCount.longValue() : 0L) + 1);
                        } else {
                            Long commentCount2 = stat.getCommentCount();
                            lValueOf = Long.valueOf((commentCount2 != null ? commentCount2.longValue() : 1L) - 1);
                        }
                        stat.setCommentCount(lValueOf);
                        objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
                    } catch (Throwable th2) {
                        Result.Companion companion2 = Result.INSTANCE;
                        objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
                    }
                    Result.m452boximpl(objM453constructorimpl);
                    fVar = roomPostBaseFragment.mAdapter;
                    if (fVar != null) {
                        fVar.notifyItemChanged(i10);
                    }
                }
            }
        } catch (Exception e10) {
            wf.a.C0922a.g(wf.a.f74274a, " callback change data fail " + e10.getMessage(), false, 2, null);
        }
        return Unit.f64096a;
    }

    private final void observeDelete() {
        Function1 function1 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RoomPostBaseFragment.observeDelete$lambda$25(this.f47575a, (hx.b) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = hx.b.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(this, name, Lifecycle.State.CREATED, kotlinx.coroutines.y0.c().r(), false, function1);
    }

    public static final Unit observeDelete$lambda$25(RoomPostBaseFragment roomPostBaseFragment, hx.b value) {
        com.transsion.postdetail.ui.adapter.f fVar;
        List<Object> data;
        Intrinsics.h(value, "value");
        try {
            com.transsion.postdetail.ui.adapter.f fVar2 = roomPostBaseFragment.mAdapter;
            int i10 = -1;
            if (fVar2 != null && (data = fVar2.getData()) != null) {
                Iterator<Object> it = data.iterator();
                int i11 = 0;
                while (it.hasNext()) {
                    if (Intrinsics.c(((PostSubjectItem) it.next()).getPostId(), value.a())) {
                        i10 = i11;
                        break;
                    }
                    i11++;
                }
            }
            if (i10 >= 0 && (fVar = roomPostBaseFragment.mAdapter) != null) {
                fVar.G0(i10);
            }
            roomPostBaseFragment.checkToShowEmptyView();
        } catch (Exception unused) {
            wf.a.C0922a.g(wf.a.f74274a, " callback change data fail", false, 2, null);
        }
        return Unit.f64096a;
    }

    private final void observeLike() {
        Function1 function1 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RoomPostBaseFragment.observeLike$lambda$29(this.f47739a, (LikeEvent) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = LikeEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(this, name, Lifecycle.State.CREATED, kotlinx.coroutines.y0.c().r(), false, function1);
    }

    /* JADX WARN: Code duplicated, block: B:43:0x0099 A[Catch: Exception -> 0x00a5, TRY_LEAVE, TryCatch #0 {Exception -> 0x00a5, blocks: (B:3:0x0008, B:5:0x000d, B:7:0x0013, B:8:0x0018, B:10:0x001e, B:16:0x0038, B:18:0x003c, B:20:0x0042, B:23:0x004c, B:25:0x0059, B:40:0x0092, B:39:0x0088, B:41:0x0095, B:43:0x0099, B:13:0x0033, B:27:0x005f, B:29:0x0067, B:33:0x0070, B:37:0x0078), top: B:48:0x0008, inners: #1 }] */
    public static final Unit observeLike$lambda$29(RoomPostBaseFragment roomPostBaseFragment, LikeEvent value) {
        int i10;
        com.transsion.postdetail.ui.adapter.f fVar;
        Stat stat;
        Object objM453constructorimpl;
        List<Object> data;
        List<Object> data2;
        int i11 = 1;
        Intrinsics.h(value, "value");
        try {
            com.transsion.postdetail.ui.adapter.f fVar2 = roomPostBaseFragment.mAdapter;
            if (fVar2 != null && (data2 = fVar2.getData()) != null) {
                Iterator<Object> it = data2.iterator();
                i10 = 0;
                while (true) {
                    if (!it.hasNext()) {
                        i10 = -1;
                        break;
                    }
                    if (Intrinsics.c(((PostSubjectItem) it.next()).getPostId(), value.getSubjectId())) {
                        break;
                    }
                    i10++;
                }
            } else {
                i10 = -1;
                break;
            }
            if (i10 >= 0) {
                com.transsion.postdetail.ui.adapter.f fVar3 = roomPostBaseFragment.mAdapter;
                PostSubjectItem postSubjectItem = (fVar3 == null || (data = fVar3.getData()) == null) ? null : (PostSubjectItem) data.get(i10);
                if (postSubjectItem != null) {
                    postSubjectItem.setHasLike(Boolean.valueOf(value.getLike()));
                }
                if (postSubjectItem == null || (stat = postSubjectItem.getStat()) == null) {
                    fVar = roomPostBaseFragment.mAdapter;
                    if (fVar != null) {
                        fVar.notifyItemChanged(i10, Boolean.valueOf(value.getLike()));
                    }
                } else {
                    try {
                        Result.Companion companion = Result.INSTANCE;
                        Long likeCount = stat.getLikeCount();
                        long jLongValue = likeCount != null ? likeCount.longValue() : 0L;
                        if (!value.getLike()) {
                            i11 = -1;
                        }
                        stat.setLikeCount(Long.valueOf(jLongValue + ((long) i11)));
                        objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
                    } catch (Throwable th2) {
                        Result.Companion companion2 = Result.INSTANCE;
                        objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
                    }
                    Result.m452boximpl(objM453constructorimpl);
                    fVar = roomPostBaseFragment.mAdapter;
                    if (fVar != null) {
                        fVar.notifyItemChanged(i10, Boolean.valueOf(value.getLike()));
                    }
                }
            }
        } catch (Exception unused) {
            wf.a.C0922a.g(wf.a.f74274a, " callback change data fail", false, 2, null);
        }
        return Unit.f64096a;
    }

    private final void observePublish() {
        if (isNeedInsertPublishPost()) {
            wf.a.C0922a.f(wf.a.f74274a, this.TAG, getClass().getSimpleName() + "--observePublish", false, 4, null);
            Function1 function1 = new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return RoomPostBaseFragment.observePublish$lambda$18(this.f47771a, (PublishEvent) obj);
                }
            };
            FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
            String name = PublishEvent.class.getName();
            Intrinsics.g(name, "getName(...)");
            flowEventBus.observeEvent(this, name, Lifecycle.State.CREATED, kotlinx.coroutines.y0.c().r(), false, function1);
        }
    }

    public static final Unit observePublish$lambda$18(RoomPostBaseFragment roomPostBaseFragment, PublishEvent value) {
        PostDetailViewModel postDetailViewModel;
        Intrinsics.h(value, "value");
        androidx.p010savedstate.e parentFragment = roomPostBaseFragment.getParentFragment();
        if (!(parentFragment instanceof ep.g)) {
            return Unit.f64096a;
        }
        int iB = ((ep.g) parentFragment).B();
        wf.a.C0922a.f(wf.a.f74274a, roomPostBaseFragment.TAG, roomPostBaseFragment.getClass().getSimpleName() + "--publishevent curTab:" + iB + ", fTab:" + roomPostBaseFragment.tabIndex(), false, 4, null);
        if (roomPostBaseFragment.tabIndex() == iB && (postDetailViewModel = roomPostBaseFragment.mDetailViewModel) != null) {
            postDetailViewModel.x(value.getPostId());
        }
        return Unit.f64096a;
    }

    private final void onCommentClick(PostSubjectItem postItem) {
        openPostDetail(postItem, true);
    }

    private final void onDownloadClick(PostSubjectItem postItem) {
        this.postItem = postItem;
        if (Build.VERSION.SDK_INT >= 29) {
            PostSaveHelper.f48054a.e(postItem);
            return;
        }
        Context context = getContext();
        if (context == null) {
            context = Utils.a();
        }
        if (androidx.core.content.b.checkSelfPermission(context, "android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
            Context context2 = getContext();
            if (context2 == null) {
                context2 = Utils.a();
            }
            if (androidx.core.content.b.checkSelfPermission(context2, "android.permission.READ_EXTERNAL_STORAGE") == 0) {
                PostSaveHelper.f48054a.e(postItem);
                return;
            }
        }
        requestPermission();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r1v2, types: [com.transsion.postdetail.viewmodel.RoomPostViewModel] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private final void onLikeClick(PostSubjectItem postItem) {
        ?? C = postItem != null ? Intrinsics.c(postItem.getHasLike(), Boolean.TRUE) : 0;
        if (!yg.l.f76264a.e()) {
            fh.b.f60176a.d(R$string.no_network_tips);
            return;
        }
        ?? r10 = this.mViewModel;
        if (r10 != 0) {
            r10.R(postItem != null ? postItem.getPostId() : null, C);
        }
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0034  */
    private final void onShareClick(PostSubjectItem postItem) {
        boolean z10;
        User user;
        User user2;
        qx.a mLoginApi = getMLoginApi();
        UserInfo userInfoI = mLoginApi != null ? mLoginApi.i() : null;
        if ((userInfoI != null ? userInfoI.getUserId() : null) != null) {
            if (Intrinsics.c(userInfoI.getUserId(), (postItem == null || (user2 = postItem.getUser()) == null) ? null : user2.getUserId())) {
                z10 = true;
            } else {
                z10 = false;
            }
        } else {
            z10 = false;
        }
        boolean z11 = z10;
        ShareDialogFragment.Companion companion = ShareDialogFragment.INSTANCE;
        PostType postType = PostType.POST_TYPE;
        String postId = postItem != null ? postItem.getPostId() : null;
        String userId = (postItem == null || (user = postItem.getUser()) == null) ? null : user.getUserId();
        String value = ReportType.POST.getValue();
        String title = postItem != null ? postItem.getTitle() : null;
        Context context = getContext();
        ShareDialogFragment shareDialogFragmentA = companion.a(postType, postId, userId, value, (3328 & 16) != 0 ? "" : title, (3328 & 32) != 0 ? "" : "", (3328 & 64) != 0 ? false : false, (3328 & 128) != 0 ? false : z11, (3328 & 256) != 0 ? false : false, "postdetail", (3328 & 1024) != 0 ? "" : null, (3328 & 2048) != 0 ? "" : context != null ? context.getString(com.transsion.postdetail.R$string.save_video) : null);
        shareDialogFragmentA.G0(new c(shareDialogFragmentA, postItem, this));
        shareDialogFragmentA.show(getChildFragmentManager(), "share");
    }

    private final void openPostDetail(PostSubjectItem postItem, boolean navigateToComment) {
        if (postItem != null) {
            io.b bVar = (io.b) TheRouter.d(io.b.class, new Object[0]);
            if (bVar != null) {
                bVar.i(postItem);
            }
            Media media = postItem.getMedia();
            Navigator navigatorK = TheRouter.c(Intrinsics.c(media != null ? media.getMediaType() : null, MediaType.VIDEO.getValue()) ? "/post/detailVideo" : "/post/detail").K(WebConstants.PAGE_FROM, pageName()).z("from_comment", navigateToComment).J("item_object", postItem).K("id", postItem.getPostId()).K("rec_ops", postItem.getOps()).K("item_type", postItem.getItemType());
            Media media2 = postItem.getMedia();
            Navigator.x(navigatorK.K("media_type", media2 != null ? media2.getMediaType() : null).z("is_build_in", postItem.getBuiltIn()), requireContext(), null, 2, null);
        }
    }

    static void openPostDetail$default(RoomPostBaseFragment roomPostBaseFragment, PostSubjectItem postSubjectItem, boolean z10, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: openPostDetail");
        }
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        roomPostBaseFragment.openPostDetail(postSubjectItem, z10);
    }

    public final void removePost(String id2) {
        List<Object> data;
        com.transsion.postdetail.ui.adapter.f fVar;
        com.transsion.postdetail.ui.adapter.f fVar2 = this.mAdapter;
        if (fVar2 == null || (data = fVar2.getData()) == null) {
            return;
        }
        Iterator<Object> it = data.iterator();
        int i10 = 0;
        while (true) {
            if (!it.hasNext()) {
                i10 = -1;
                break;
            } else if (Intrinsics.c(((PostSubjectItem) it.next()).getPostId(), id2)) {
                break;
            } else {
                i10++;
            }
        }
        if (i10 >= 0 && (fVar = this.mAdapter) != null) {
            fVar.G0(i10);
        }
    }

    private final void requestPermission() {
        requestPermissions(new String[]{"android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE"}, FileHelper.f45804a.l());
    }

    public final void saveBuiltInVideo(DownloadBean download) {
        kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.b()), null, null, new AnonymousClass1(download, null), 3, null);
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

    public static final void updateData$lambda$38(RoomPostBaseFragment roomPostBaseFragment) {
        ho.a aVar = roomPostBaseFragment.mFeedVideoManager;
        if (aVar != null) {
            aVar.a();
        }
    }

    private final void updateDeletePost(BaseDto<String> data) {
        Object objM453constructorimpl;
        List<Object> data2;
        com.transsion.postdetail.ui.adapter.f fVar;
        Unit unit = null;
        if (!Intrinsics.c(data != null ? data.getCode() : null, "0")) {
            fh.b.f60176a.e(getString(com.transsion.postdetail.R$string.delete_post_failed));
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            com.transsion.postdetail.ui.adapter.f fVar2 = this.mAdapter;
            if (fVar2 != null && (data2 = fVar2.getData()) != null) {
                Iterator<Object> it = data2.iterator();
                int i10 = 0;
                while (true) {
                    if (!it.hasNext()) {
                        i10 = -1;
                        break;
                    } else if (Intrinsics.c(((PostSubjectItem) it.next()).getPostId(), data.getData())) {
                        break;
                    } else {
                        i10++;
                    }
                }
                if (i10 >= 0 && (fVar = this.mAdapter) != null) {
                    fVar.G0(i10);
                }
                unit = Unit.f64096a;
            }
            objM453constructorimpl = Result.m453constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Result.m452boximpl(objM453constructorimpl);
    }

    public static final void updateRoomCacheData$lambda$46(RoomPostBaseFragment roomPostBaseFragment) {
        ho.a aVar = roomPostBaseFragment.mFeedVideoManager;
        if (aVar != null) {
            aVar.a();
        }
    }

    public void checkToShowEmptyView() {
        if (getContext() == null) {
            return;
        }
        if (yg.l.f76264a.e()) {
            com.transsion.postdetail.ui.adapter.f fVar = this.mAdapter;
            if (fVar != null) {
                fVar.Y0(getEmptyView(false));
                return;
            }
            return;
        }
        com.transsion.postdetail.ui.adapter.f fVar2 = this.mAdapter;
        if (fVar2 != null) {
            fVar2.Y0(getLocalNoNetworkView(false));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void doRefresh(Function0<Unit> resultCallback) {
        wn.p pVar;
        RecyclerView recyclerView;
        SwipeRefreshLayout swipeRefreshLayout;
        if (!yg.l.f76264a.e()) {
            fh.b.f60176a.d(R$string.no_network_toast);
            wn.p pVar2 = (wn.p) getMViewBinding();
            if (pVar2 == null || (swipeRefreshLayout = pVar2.f74520c) == null) {
                return;
            }
            swipeRefreshLayout.setRefreshing(false);
            return;
        }
        this.mRefreshResultCallback = resultCallback;
        this.mPage = null;
        com.transsion.postdetail.ui.adapter.f fVar = this.mAdapter;
        List<Object> data = fVar != null ? fVar.getData() : null;
        if (data != null && !data.isEmpty() && (pVar = (wn.p) getMViewBinding()) != null && (recyclerView = pVar.f74519b) != null) {
            recyclerView.scrollToPosition(0);
        }
        loadData$default(this, false, false, 3, null);
    }

    @Override
    public String getEmptyDescText() {
        String string = getString(com.transsion.usercenter.R$string.profile_not_content);
        Intrinsics.g(string, "getString(...)");
        return string;
    }

    @Override
    public View getLoadingView() {
        FragmentActivity activity = getActivity();
        if (activity == null || activity.isDestroyed() || activity.isFinishing()) {
            return new View(Utils.a());
        }
        if (this.mLoadingView == null) {
            this.mLoadingView = LayoutInflater.from(activity).inflate(R$layout.layout_room_post_loading, (ViewGroup) getFlStateView(), false);
        }
        return this.mLoadingView;
    }

    protected final com.transsion.postdetail.ui.adapter.f getMAdapter() {
        return this.mAdapter;
    }

    protected final PostDetailViewModel getMDetailViewModel() {
        return this.mDetailViewModel;
    }

    protected final bj.b getMExposureHelper() {
        return this.mExposureHelper;
    }

    protected final String getMGroupId() {
        return this.mGroupId;
    }

    protected final String getMPage() {
        return this.mPage;
    }

    protected final String getMPageFrom() {
        return this.mPageFrom;
    }

    protected final String getMParentTypeName() {
        return this.mParentTypeName;
    }

    protected final int getMPerPage() {
        return this.mPerPage;
    }

    protected final RoomTabItem getMTopTab() {
        return this.mTopTab;
    }

    protected final RoomPostViewModel getMViewModel() {
        return this.mViewModel;
    }

    @Override
    public String getPageStateLayoutTitle() {
        return "";
    }

    protected final int getPreLoadNum() {
        return this.preLoadNum;
    }

    protected final String getTAG() {
        return this.TAG;
    }

    @Override
    public void initListener() {
        observeComment();
        observeDelete();
        observeLike();
        observePublish();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override
    public void initViewData() {
        SwipeRefreshLayout swipeRefreshLayout;
        com.transsion.postdetail.ui.adapter.f fVar;
        LiveData liveDataA;
        androidx.p009lifecycle.b0 b0VarX;
        RecyclerView recyclerView;
        RecyclerView.m npaLinearLayoutManager;
        wn.p pVar;
        RecyclerView recyclerView2;
        wn.p pVar2;
        RecyclerView recyclerView3;
        SwipeRefreshLayout swipeRefreshLayout2;
        initExposureHelper();
        if (isSwipeRefreshEnable()) {
            wn.p pVar3 = (wn.p) getMViewBinding();
            if (pVar3 != null && (swipeRefreshLayout2 = pVar3.f74520c) != null) {
                swipeRefreshLayout2.setProgressBackgroundColorSchemeColor(androidx.core.content.b.getColor(swipeRefreshLayout2.getContext(), R$color.bg_01));
                swipeRefreshLayout2.setColorSchemeColors(androidx.core.content.b.getColor(swipeRefreshLayout2.getContext(), R$color.main_gradient_center), androidx.core.content.b.getColor(swipeRefreshLayout2.getContext(), R$color.main_gradient_start));
                swipeRefreshLayout2.setOnRefreshListener(new SwipeRefreshLayout.j() {
                    @Override
                    public final void a() {
                        io.c.a.a(this.f47583a, null, 1, null);
                    }
                });
            }
        } else {
            wn.p pVar4 = (wn.p) getMViewBinding();
            if (pVar4 != null && (swipeRefreshLayout = pVar4.f74520c) != null) {
                swipeRefreshLayout.setEnabled(false);
            }
        }
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        com.transsion.postdetail.ui.adapter.f fVar2 = new com.transsion.postdetail.ui.adapter.f(contextRequireContext, postAdapterFrom(), this.mExposureHelper, pageName(), this.mPageFrom);
        fVar2.h0().z(true);
        fVar2.h0().y(true);
        fVar2.h0().E(this.preLoadNum);
        t6.f fVarH0 = fVar2.h0();
        PostListLoadMoreView postListLoadMoreView = new PostListLoadMoreView();
        postListLoadMoreView.setOnFailClickCallback(new Function0() {
            @Override
            public final Object invoke() {
                return RoomPostBaseFragment.initViewData$lambda$12$lambda$6$lambda$5(this.f47592a);
            }
        });
        fVarH0.C(postListLoadMoreView);
        fVar2.h0().D(new r6.f() {
            @Override
            public final void a() {
                RoomPostBaseFragment.initViewData$lambda$12$lambda$8(this.f47602a);
            }
        });
        fVar2.R0(new b());
        fVar2.w1(new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                RoomPostBaseFragment.initViewData$lambda$12$lambda$9(this.f47611a, baseQuickAdapter, view, i10);
            }
        });
        fVar2.l(R$id.fl_cover, R$id.tv_room_name, R$id.tv_post_date, R$id.v_post_like, R$id.v_post_comment, R$id.v_post_share, R$id.v_post_download, R$id.cl_subject_content, R$id.tv_room_tag, R$id.clHotComment, R$id.tv_staggered_post_like, R$id.iv_user_avatar, R$id.tv_user_name, R$id.refresh_more);
        fVar2.s1(new r6.b() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                RoomPostBaseFragment.initViewData$lambda$12$lambda$11(this.f47617a, baseQuickAdapter, view, i10);
            }
        });
        this.mAdapter = fVar2;
        wn.p pVar5 = (wn.p) getMViewBinding();
        if (pVar5 != null && (recyclerView = pVar5.f74519b) != null) {
            if (isStaggeredPost()) {
                StaggeredGridLayoutManager staggeredGridLayoutManager = new StaggeredGridLayoutManager(2, 1);
                staggeredGridLayoutManager.f0(2);
                npaLinearLayoutManager = staggeredGridLayoutManager;
            } else {
                npaLinearLayoutManager = new NpaLinearLayoutManager(recyclerView.getContext());
            }
            recyclerView.setLayoutManager(npaLinearLayoutManager);
            if (isStaggeredPost() && (pVar = (wn.p) getMViewBinding()) != null && (recyclerView2 = pVar.f74519b) != null && recyclerView2.getItemDecorationCount() == 0 && (pVar2 = (wn.p) getMViewBinding()) != null && (recyclerView3 = pVar2.f74519b) != null) {
                recyclerView3.addItemDecoration(new tf.g(com.blankj.utilcode.util.a0.a(6.0f), true));
            }
            recyclerView.setAdapter(this.mAdapter);
        }
        RoomPostViewModel roomPostViewModel = this.mViewModel;
        if (roomPostViewModel != null && (b0VarX = roomPostViewModel.x()) != null) {
            b0VarX.j(this, new d(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return RoomPostBaseFragment.initViewData$lambda$15(this.f47702a, (BaseDto) obj);
                }
            }));
        }
        PostDetailViewModel postDetailViewModel = this.mDetailViewModel;
        if (postDetailViewModel != null && (liveDataA = postDetailViewModel.A()) != null) {
            liveDataA.j(this, new d(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return RoomPostBaseFragment.initViewData$lambda$17(this.f47724a, (PostSubjectItem) obj);
                }
            }));
        }
        if (yg.l.f76264a.e() || (fVar = this.mAdapter) == null) {
            return;
        }
        fVar.Y0(getLocalNoNetworkView(false));
    }

    @Override
    public boolean isAudioShowNoNetworkLayout() {
        return false;
    }

    public abstract boolean isNeedInsertPublishPost();

    @Override
    public boolean isShowPageStateLayoutTitle() {
        return false;
    }

    public abstract boolean isStaggeredPost();

    public abstract boolean isSwipeRefreshEnable();

    @Override
    public void lazyLoadData() {
        if (!isAdded() || isDetached() || isRemoving()) {
            return;
        }
        showLoadingView();
        loadData$default(this, true, false, 2, null);
        com.transsion.postdetail.util.g.f48074a.d(true);
        initFeedVideo();
    }

    public abstract void loadData(boolean isFirstLoad, boolean isRefresh);

    @Override
    public qi.b newLogViewConfig() {
        return new qi.b(pageName(), false, 2, null);
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        HashMap mapG;
        super.onCreate(savedInstanceState);
        this.mViewModel = (RoomPostViewModel) new androidx.p009lifecycle.v0(this).a(RoomPostViewModel.class);
        this.mDetailViewModel = (PostDetailViewModel) new androidx.p009lifecycle.v0(this).a(PostDetailViewModel.class);
        this.mPageFrom = qi.h.f69682a.h();
        qi.b logViewConfig = getLogViewConfig();
        if (logViewConfig == null || (mapG = logViewConfig.g()) == null) {
            return;
        }
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        getMHandler().removeCallbacksAndMessages(null);
        ho.a aVar = this.mFeedVideoManager;
        if (aVar != null) {
            aVar.onPageDestroy();
        }
    }

    @Override
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (isResumed()) {
            if (hidden) {
                logPause();
                localLogPause();
                ho.a aVar = this.mFeedVideoManager;
                if (aVar != null) {
                    aVar.b();
                }
            } else {
                logResume();
                ho.a aVar2 = this.mFeedVideoManager;
                if (aVar2 != null) {
                    aVar2.c();
                }
            }
        }
        com.transsion.baseui.activity.k.h(null, this, hidden, null, 9, null);
    }

    public abstract void onItemHeaderClick(PostSubjectItem item);

    public abstract String onItemHeaderModuleName();

    @Override
    public void onLeftButtonClick(TRDialog dialog) {
        Intrinsics.h(dialog, "dialog");
    }

    @Override
    public void onPause() {
        super.onPause();
        localLogPause();
        ho.a aVar = this.mFeedVideoManager;
        if (aVar != null) {
            aVar.b();
        }
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        Intrinsics.h(permissions, "permissions");
        Intrinsics.h(grantResults, "grantResults");
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        if (requestCode == FileHelper.f45804a.l()) {
            if (grantResults.length > 1 && grantResults[0] == 0 && grantResults[1] == 0) {
                PostSaveHelper.f48054a.e(this.postItem);
                return;
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
        ho.a aVar;
        super.onResume();
        if (!isVisible() || (aVar = this.mFeedVideoManager) == null) {
            return;
        }
        aVar.c();
    }

    @Override
    public void onRightButtonClick(TRDialog dialog) {
        Intrinsics.h(dialog, "dialog");
        com.transsion.ninegridview.helper.b bVar = com.transsion.ninegridview.helper.b.f45813a;
        FragmentActivity activity = getActivity();
        Intrinsics.f(activity, "null cannot be cast to non-null type android.app.Activity");
        bVar.a(activity, 101);
    }

    public void openRoomDetail(PostSubjectItem item) {
        Group group;
        String groupId;
        if (item == null || (group = item.getGroup()) == null || (groupId = group.getGroupId()) == null) {
            return;
        }
        Navigator.x(TheRouter.c("/room/detail").K("id", groupId), requireContext(), null, 2, null);
    }

    public void openSubjectDetail(PostSubjectItem item) {
        Subject subject;
        if (item == null || (subject = item.getSubject()) == null) {
            return;
        }
        Navigator navigatorC = TheRouter.c("/movie/detail");
        Integer subjectType = subject.getSubjectType();
        Navigator.x(navigatorC.F("subject_type", subjectType != null ? subjectType.intValue() : SubjectType.MOVIE.getValue()).K("id", subject.getSubjectId()).K("ops", subject.getOps()), requireContext(), null, 2, null);
    }

    public void openUserCenter(PostSubjectItem item) {
        User user;
        if (item == null || (user = item.getUser()) == null) {
            return;
        }
        UserInfo userInfo = new UserInfo();
        userInfo.setUserId(user.getUserId());
        userInfo.setAvatar(user.getAvatar());
        userInfo.setUsername(user.getUsername());
        userInfo.setNickname(user.getNickname());
        Navigator.x(TheRouter.c("/profile/user_profile").K("userId", userInfo.getUserId()), requireContext(), null, 2, null);
    }

    public abstract String pageName();

    public abstract PostAdapterFrom postAdapterFrom();

    @Override
    public void retryLoadData() {
        com.transsion.postdetail.ui.adapter.f fVar = this.mAdapter;
        List<Object> data = fVar != null ? fVar.getData() : null;
        boolean z10 = data == null || data.isEmpty();
        if (z10) {
            showLoadingView();
        }
        loadData$default(this, false, z10, 1, null);
    }

    protected final void setMAdapter(com.transsion.postdetail.ui.adapter.f fVar) {
        this.mAdapter = fVar;
    }

    protected final void setMDetailViewModel(PostDetailViewModel postDetailViewModel) {
        this.mDetailViewModel = postDetailViewModel;
    }

    protected final void setMExposureHelper(bj.b bVar) {
        this.mExposureHelper = bVar;
    }

    protected final void setMGroupId(String str) {
        this.mGroupId = str;
    }

    protected final void setMPage(String str) {
        this.mPage = str;
    }

    protected final void setMPageFrom(String str) {
        this.mPageFrom = str;
    }

    protected final void setMParentTypeName(String str) {
        this.mParentTypeName = str;
    }

    protected final void setMPerPage(int i10) {
        this.mPerPage = i10;
    }

    protected final void setMTopTab(RoomTabItem roomTabItem) {
        this.mTopTab = roomTabItem;
    }

    protected final void setMViewModel(RoomPostViewModel roomPostViewModel) {
        this.mViewModel = roomPostViewModel;
    }

    public final void setOnNumNotExposureListener(ij.q listener) {
        Intrinsics.h(listener, "listener");
        bj.b bVar = this.mExposureHelper;
        if (bVar != null) {
            bVar.p(listener);
        }
    }

    public abstract String subpageName();

    public abstract int tabIndex();

    /* JADX WARN: Multi-variable type inference failed */
    public void updateData(PostSubjectBean bean) {
        List<PostSubjectItem> items;
        PostSubjectItem postSubjectItem;
        String ops;
        HashMap mapG;
        HashMap mapG2;
        List<Object> arrayList;
        t6.f fVarH0;
        t6.f fVarH1;
        t6.f fVarH2;
        t6.f fVarH3;
        List<PostSubjectItem> items2;
        t6.f fVarH4;
        com.transsion.postdetail.ui.adapter.f fVar;
        t6.f fVarH5;
        t6.f fVarH6;
        com.transsion.postdetail.ui.adapter.f fVar2;
        t6.f fVarH7;
        FrameLayout root;
        SwipeRefreshLayout swipeRefreshLayout;
        wn.p pVar;
        SwipeRefreshLayout swipeRefreshLayout2;
        HashMap mapG3;
        qi.b logViewConfig = getLogViewConfig();
        if ((logViewConfig == null || (mapG3 = logViewConfig.g()) == null || !mapG3.containsKey("ops")) && bean != null && (items = bean.getItems()) != null && (postSubjectItem = (PostSubjectItem) CollectionsKt.k0(items)) != null && (ops = postSubjectItem.getOps()) != null) {
            qi.b logViewConfig2 = getLogViewConfig();
            if (logViewConfig2 != null && (mapG2 = logViewConfig2.g()) != null) {
            }
            if (getParentFragment() instanceof PageStatusFragment) {
                Fragment parentFragment = getParentFragment();
                Intrinsics.f(parentFragment, "null cannot be cast to non-null type com.transsion.baseui.fragment.PageStatusFragment<*>");
                qi.b logViewConfig3 = ((PageStatusFragment) parentFragment).getLogViewConfig();
                if (logViewConfig3 != null && (mapG = logViewConfig3.g()) != null) {
                }
            }
        }
        Function0<Unit> function0 = this.mRefreshResultCallback;
        if (function0 != null) {
            function0.invoke();
        }
        showContentView();
        wn.p pVar2 = (wn.p) getMViewBinding();
        if (pVar2 != null && (swipeRefreshLayout = pVar2.f74520c) != null && swipeRefreshLayout.isRefreshing() && (pVar = (wn.p) getMViewBinding()) != null && (swipeRefreshLayout2 = pVar.f74520c) != null) {
            swipeRefreshLayout2.setRefreshing(false);
        }
        com.transsion.postdetail.ui.adapter.f fVar3 = this.mAdapter;
        if (fVar3 == null || (arrayList = fVar3.getData()) == null) {
            arrayList = new ArrayList<>();
        }
        if (bean == null || (items2 = bean.getItems()) == null || items2.isEmpty()) {
            if (arrayList.isEmpty()) {
                checkToShowEmptyView();
                return;
            }
            com.transsion.postdetail.ui.adapter.f fVar4 = this.mAdapter;
            if ((fVar4 == null || (fVarH3 = fVar4.h0()) == null || !fVarH3.r()) ? false : true) {
                PostSubjectItem postSubjectItem2 = (PostSubjectItem) CollectionsKt.v0(arrayList);
                if (postSubjectItem2 != null && postSubjectItem2.isRoomCache()) {
                    com.transsion.postdetail.ui.adapter.f fVar5 = this.mAdapter;
                    if (fVar5 == null || (fVarH2 = fVar5.h0()) == null) {
                        return;
                    }
                    fVarH2.s();
                    return;
                }
                if ((bean != null ? bean.getPager() : null) != null) {
                    Pager pager = bean.getPager();
                    if (!(pager != null ? Intrinsics.c(pager.getHasMore(), Boolean.TRUE) : false)) {
                        com.transsion.postdetail.ui.adapter.f fVar6 = this.mAdapter;
                        if (fVar6 == null || (fVarH1 = fVar6.h0()) == null) {
                            return;
                        }
                        t6.f.u(fVarH1, false, 1, null);
                        return;
                    }
                }
                com.transsion.postdetail.ui.adapter.f fVar7 = this.mAdapter;
                if (fVar7 == null || (fVarH0 = fVar7.h0()) == null) {
                    return;
                }
                fVarH0.v();
                return;
            }
            return;
        }
        androidx.p010savedstate.e parentFragment2 = getParentFragment();
        if (parentFragment2 instanceof ep.g) {
            ((ep.g) parentFragment2).P();
        }
        qi.b logViewConfig4 = getLogViewConfig();
        if (logViewConfig4 != null) {
            logViewConfig4.k(true);
        }
        Pager pager2 = bean.getPager();
        this.mPage = pager2 != null ? pager2.getNextPage() : null;
        if (bean.getSubject() != null) {
            this.mSubject = bean.getSubject();
        }
        if (bean.getGroup() != null) {
            this.mGroup = bean.getGroup();
        }
        if (bean.getIsRefresh()) {
            com.transsion.postdetail.ui.adapter.f fVar8 = this.mAdapter;
            if (fVar8 != null) {
                fVar8.n1(bean.getItems());
            }
            wn.p pVar3 = (wn.p) getMViewBinding();
            if (pVar3 != null && (root = pVar3.getRoot()) != null) {
                root.post(new Runnable() {
                    @Override
                    public final void run() {
                        RoomPostBaseFragment.updateData$lambda$38(this.f47760a);
                    }
                });
            }
        } else {
            List<PostSubjectItem> items3 = bean.getItems();
            if (items3 != null) {
                if (this instanceof RoomPostExploreFragment) {
                    ArrayList arrayList2 = new ArrayList();
                    for (Object obj : items3) {
                        PostSubjectItem postSubjectItem3 = (PostSubjectItem) obj;
                        if (postSubjectItem3.getGroup() != null || postSubjectItem3.isRoomCacheListStart() || postSubjectItem3.isRoomCacheListEnd()) {
                            arrayList2.add(obj);
                        }
                    }
                    items3 = arrayList2;
                }
                ArrayList arrayList3 = new ArrayList();
                if (arrayList.isEmpty()) {
                    for (PostSubjectItem postSubjectItem4 : items3) {
                        Subject subject = this.mSubject;
                        if (subject != null) {
                            postSubjectItem4.setSubject(subject);
                        }
                        Group group = this.mGroup;
                        if (group != null) {
                            postSubjectItem4.setGroup(group);
                        }
                    }
                    arrayList3.addAll(items3);
                } else {
                    for (PostSubjectItem postSubjectItem5 : items3) {
                        if (!arrayList.contains(postSubjectItem5)) {
                            Subject subject2 = this.mSubject;
                            if (subject2 != null) {
                                postSubjectItem5.setSubject(subject2);
                            }
                            Group group2 = this.mGroup;
                            if (group2 != null) {
                                postSubjectItem5.setGroup(group2);
                            }
                            arrayList3.add(postSubjectItem5);
                        }
                    }
                }
                if (arrayList3.isEmpty()) {
                    com.transsion.postdetail.ui.adapter.f fVar9 = this.mAdapter;
                    if (fVar9 != null && (fVarH4 = fVar9.h0()) != null) {
                        t6.f.u(fVarH4, false, 1, null);
                    }
                    if (arrayList.isEmpty()) {
                        checkToShowEmptyView();
                    }
                } else {
                    com.transsion.postdetail.ui.adapter.f fVar10 = this.mAdapter;
                    if (fVar10 != null) {
                        fVar10.q(arrayList3);
                    }
                }
            }
        }
        com.transsion.postdetail.ui.adapter.f fVar11 = this.mAdapter;
        if (fVar11 != null && (fVarH6 = fVar11.h0()) != null && fVarH6.r() && (fVar2 = this.mAdapter) != null && (fVarH7 = fVar2.h0()) != null) {
            fVarH7.s();
        }
        if (bean.getPager() != null) {
            Pager pager3 = bean.getPager();
            if ((pager3 != null ? Intrinsics.c(pager3.getHasMore(), Boolean.TRUE) : false) || (fVar = this.mAdapter) == null || (fVarH5 = fVar.h0()) == null) {
                return;
            }
            t6.f.u(fVarH5, false, 1, null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void updateRoomCacheData(int position, PostSubjectBean bean) {
        List<Object> arrayList;
        t6.f fVarH0;
        t6.f fVarH1;
        Pager pager;
        t6.f fVarH2;
        List<PostSubjectItem> items;
        t6.f fVarH3;
        com.transsion.postdetail.ui.adapter.f fVar;
        t6.f fVarH4;
        t6.f fVarH5;
        com.transsion.postdetail.ui.adapter.f fVar2;
        t6.f fVarH6;
        FrameLayout root;
        SwipeRefreshLayout swipeRefreshLayout;
        wn.p pVar;
        SwipeRefreshLayout swipeRefreshLayout2;
        qi.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.k(true);
        }
        Function0<Unit> function0 = this.mRefreshResultCallback;
        if (function0 != null) {
            function0.invoke();
        }
        showContentView();
        wn.p pVar2 = (wn.p) getMViewBinding();
        if (pVar2 != null && (swipeRefreshLayout = pVar2.f74520c) != null && swipeRefreshLayout.isRefreshing() && (pVar = (wn.p) getMViewBinding()) != null && (swipeRefreshLayout2 = pVar.f74520c) != null) {
            swipeRefreshLayout2.setRefreshing(false);
        }
        com.transsion.postdetail.ui.adapter.f fVar3 = this.mAdapter;
        if (fVar3 == null || (arrayList = fVar3.getData()) == null) {
            arrayList = new ArrayList<>();
        }
        if (bean == null || (items = bean.getItems()) == null || items.isEmpty()) {
            if (arrayList.isEmpty()) {
                checkToShowEmptyView();
                return;
            }
            com.transsion.postdetail.ui.adapter.f fVar4 = this.mAdapter;
            if ((fVar4 == null || (fVarH2 = fVar4.h0()) == null || !fVarH2.r()) ? false : true) {
                if ((bean == null || (pager = bean.getPager()) == null) ? false : Intrinsics.c(pager.getHasMore(), Boolean.TRUE)) {
                    com.transsion.postdetail.ui.adapter.f fVar5 = this.mAdapter;
                    if (fVar5 == null || (fVarH0 = fVar5.h0()) == null) {
                        return;
                    }
                    fVarH0.v();
                    return;
                }
                com.transsion.postdetail.ui.adapter.f fVar6 = this.mAdapter;
                if (fVar6 == null || (fVarH1 = fVar6.h0()) == null) {
                    return;
                }
                t6.f.u(fVarH1, false, 1, null);
                return;
            }
            return;
        }
        Pager pager2 = bean.getPager();
        this.mPage = pager2 != null ? pager2.getNextPage() : null;
        if (bean.getSubject() != null) {
            this.mSubject = bean.getSubject();
        }
        if (bean.getGroup() != null) {
            this.mGroup = bean.getGroup();
        }
        if (bean.getIsRefresh()) {
            com.transsion.postdetail.ui.adapter.f fVar7 = this.mAdapter;
            if (fVar7 != null) {
                fVar7.n1(bean.getItems());
            }
            wn.p pVar3 = (wn.p) getMViewBinding();
            if (pVar3 != null && (root = pVar3.getRoot()) != null) {
                root.post(new Runnable() {
                    @Override
                    public final void run() {
                        RoomPostBaseFragment.updateRoomCacheData$lambda$46(this.f47784a);
                    }
                });
            }
        } else {
            List<PostSubjectItem> items2 = bean.getItems();
            if (items2 != null) {
                if (this instanceof RoomPostExploreFragment) {
                    ArrayList arrayList2 = new ArrayList();
                    for (Object obj : items2) {
                        PostSubjectItem postSubjectItem = (PostSubjectItem) obj;
                        if (postSubjectItem.getGroup() != null || postSubjectItem.isRoomCacheListStart() || postSubjectItem.isRoomCacheListEnd()) {
                            arrayList2.add(obj);
                        }
                    }
                    items2 = arrayList2;
                }
                if (items2.isEmpty()) {
                    com.transsion.postdetail.ui.adapter.f fVar8 = this.mAdapter;
                    if (fVar8 != null && (fVarH3 = fVar8.h0()) != null) {
                        t6.f.u(fVarH3, false, 1, null);
                    }
                    if (arrayList.isEmpty()) {
                        checkToShowEmptyView();
                    }
                } else {
                    int i10 = position + 1;
                    com.transsion.postdetail.ui.adapter.f fVar9 = this.mAdapter;
                    if (i10 < (fVar9 != null ? fVar9.getItemCount() : 0)) {
                        com.transsion.postdetail.ui.adapter.f fVar10 = this.mAdapter;
                        if (fVar10 != null) {
                            fVar10.o(i10, items2);
                        }
                    } else {
                        com.transsion.postdetail.ui.adapter.f fVar11 = this.mAdapter;
                        if (fVar11 != null) {
                            if (position < 0) {
                                position = 0;
                            }
                            fVar11.o(position, items2);
                        }
                    }
                }
            }
        }
        com.transsion.postdetail.ui.adapter.f fVar12 = this.mAdapter;
        if (fVar12 != null && (fVarH5 = fVar12.h0()) != null && fVarH5.r() && (fVar2 = this.mAdapter) != null && (fVarH6 = fVar2.h0()) != null) {
            fVarH6.s();
        }
        Pager pager3 = bean.getPager();
        if ((pager3 != null ? Intrinsics.c(pager3.getHasMore(), Boolean.TRUE) : false) || (fVar = this.mAdapter) == null || (fVarH4 = fVar.h0()) == null) {
            return;
        }
        t6.f.u(fVarH4, false, 1, null);
    }

    @Override
    public wn.p getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        wn.p pVarC = wn.p.c(inflater);
        Intrinsics.g(pVarC, "inflate(...)");
        return pVarC;
    }
}
