package com.transsion.cloud.fragment;

import android.annotation.SuppressLint;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewPropertyAnimator;
import android.view.ViewStub;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.view.GravityCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.media3.common.C;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.p003activity.OnBackPressedCallback;
import androidx.p003activity.OnBackPressedDispatcher;
import androidx.p004lifecycle.LifecycleOwner;
import androidx.p004lifecycle.LifecycleOwnerKt;
import androidx.p004lifecycle.LiveData;
import androidx.p004lifecycle.MutableLiveData;
import androidx.p004lifecycle.Observer;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.arouter.facade.annotation.Route;
import com.alibaba.android.arouter.launcher.ARouter;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.google.android.material.appbar.AppBarLayout;
import com.transsion.cloud.activity.CloudPaymentWebViewActivity;
import com.transsion.cloud.activity.SearchCloudActivity;
import com.transsion.cloud.adapter.CloudDataAdapter;
import com.transsion.cloud.adapter.CloudFavoriteAdapter;
import com.transsion.cloud.adapter.CloudItemDecoration;
import com.transsion.cloud.adapter.CloudRecentlyDataAdapter;
import com.transsion.cloud.adapter.CloudRecentlyItemDecoration;
import com.transsion.cloud.fileoperate.CloudFileOperate;
import com.transsion.cloud.fragment.CloudFragment;
import com.transsion.cloud.updownload.fragment.TransferManagerFragment;
import com.transsion.cloud.viewmodel.CloudViewModel;
import com.transsion.cloud_drive.base.api.model.FreeSpaceResponse;
import com.transsion.cloud_drive.base.api.model.ReceiveFreeSpaceResponse;
import com.transsion.cloud_drive.base.api.model.SpaceStatistics;
import com.transsion.cloud_drive.base.api.request.MccMap;
import com.transsion.cloudcore.cache.CloudTaskFinishCacheManager;
import com.transsion.cloudcore.cloudapi.manager.CloudVideoPlayInfoManager;
import com.transsion.cloudcore.db.CloudTaskDao;
import com.transsion.cloudcore.db.CloudTaskEntity;
import com.transsion.dbdata.beans.FileHandlerData;
import com.transsion.dbdata.beans.VideoCloudData;
import com.transsion.dbdata.beans.VishaPalmUserInfo;
import com.transsion.dbdata.beans.media.PlayVideoData;
import com.transsion.dbdata.beans.mimedia.MIMediaDataUtils;
import com.transsion.dbdata.beans.mimedia.MIMediaLibraryData;
import com.transsion.dbdata.beans.mimedia.MIMediaVideoData;
import com.transsion.dbdata.dbhelpder.VideoCloudCacheHelper;
import com.transsion.magicvideo.activities.VideoPlayerActivityInner;
import com.transsion.netdisk.R;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.arouter.VishaRouterTable;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.playercommon.fragments.PlayBaseFragment;
import com.transsion.playercommon.utils.CountryInfoUtil;
import com.transsion.playercommon.utils.storage.FileOperateUtils;
import com.transsion.playercommon.videomodel.MainViewModel;
import com.transsion.playercommon.vishaapis.appconfig.helper.CloudFeaturesConfigHelper;
import com.transsion.playercommon.widgets.NewAppFootActionBar;
import com.transsion.playercommon.widgets.SortGroup;
import com.transsion.playercommon.widgets.SortItem;
import com.transsion.push.PushConstants;
import com.transsion.sniffer_load.GlobalDownloadManger;
import com.transsion.utils.CustomLinearLayoutManager;
import com.transsion.utils.ToastUtils;
import com.transsion.widgets.CustomSwipeRefreshLayout;
import com.transsion.widgets.fastscroller.RecyclerViewFastScroller;
import com.transsion.widgetslib.view.BadgeView;
import com.transsion.widgetslib.widget.FootOperationBar;
import defpackage.a41;
import defpackage.a64;
import defpackage.af9;
import defpackage.av3;
import defpackage.az5;
import defpackage.cl0;
import defpackage.cz5;
import defpackage.d81;
import defpackage.e6b;
import defpackage.e74;
import defpackage.e84;
import defpackage.ea7;
import defpackage.el0;
import defpackage.fpb;
import defpackage.h27;
import defpackage.k29;
import defpackage.kt1;
import defpackage.m21;
import defpackage.mc2;
import defpackage.mc7;
import defpackage.mo1;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.oc2;
import defpackage.pcc;
import defpackage.pp3;
import defpackage.ri4;
import defpackage.rx5;
import defpackage.s21;
import defpackage.s44;
import defpackage.s74;
import defpackage.sq3;
import defpackage.t74;
import defpackage.vb;
import defpackage.vz6;
import defpackage.wh1;
import defpackage.x74;
import defpackage.xy0;
import defpackage.y45;
import defpackage.y71;
import defpackage.ydc;
import defpackage.z45;
import defpackage.z71;
import defpackage.zf1;
import defpackage.zfb;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Triple;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.jvm.internal.Ref$ObjectRef;

@Route(path = VishaRouterTable.PATH_PAGE_CLOUD_FRAGMENT)
@Metadata(d1 = {"\u0000\u009c\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u001e\n\u0002\u0010!\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0017\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\u0003J\u000f\u0010\b\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\b\u0010\u0003J\u000f\u0010\t\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\t\u0010\u0003J\u000f\u0010\n\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\n\u0010\u0003J\u0019\u0010\r\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0003¢\u0006\u0004\b\r\u0010\u000eJ\u0019\u0010\u000f\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0002¢\u0006\u0004\b\u000f\u0010\u000eJ\u0019\u0010\u0010\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0002¢\u0006\u0004\b\u0010\u0010\u000eJ\u0019\u0010\u0011\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0002¢\u0006\u0004\b\u0011\u0010\u000eJ\u000f\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0015\u0010\u0003J\u0017\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u001a\u0010\u0019J\u000f\u0010\u001b\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u001b\u0010\u0003J!\u0010\u001e\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u001d\u001a\u00020\u001cH\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u0004H\u0002¢\u0006\u0004\b \u0010\u0003J3\u0010&\u001a\u00020\u00042\b\u0010\"\u001a\u0004\u0018\u00010!2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010$\u001a\u00020#2\u0006\u0010%\u001a\u00020\u0012H\u0002¢\u0006\u0004\b&\u0010'J\u000f\u0010(\u001a\u00020\u0004H\u0002¢\u0006\u0004\b(\u0010\u0003J\u000f\u0010)\u001a\u00020\u0004H\u0002¢\u0006\u0004\b)\u0010\u0003J\u000f\u0010*\u001a\u00020\u0004H\u0002¢\u0006\u0004\b*\u0010\u0003J\u001d\u0010.\u001a\u00020\u00042\f\u0010-\u001a\b\u0012\u0004\u0012\u00020,0+H\u0002¢\u0006\u0004\b.\u0010/J\u0017\u00101\u001a\u00020\u00042\u0006\u00100\u001a\u00020\u0012H\u0002¢\u0006\u0004\b1\u00102J\u0017\u00104\u001a\u00020\u00042\u0006\u00103\u001a\u00020\u0012H\u0002¢\u0006\u0004\b4\u00102J\u0017\u00106\u001a\u00020\u00042\u0006\u00105\u001a\u00020\u0012H\u0002¢\u0006\u0004\b6\u00102J\u001f\u00109\u001a\u00020\u00042\u0006\u00107\u001a\u00020\u00122\u0006\u00108\u001a\u00020\u001cH\u0002¢\u0006\u0004\b9\u0010:J\u000f\u0010;\u001a\u00020\u0004H\u0002¢\u0006\u0004\b;\u0010\u0003J\u000f\u0010<\u001a\u00020\u0004H\u0002¢\u0006\u0004\b<\u0010\u0003J'\u0010?\u001a\u00020\u00042\u0006\u0010=\u001a\u00020,2\u0006\u0010$\u001a\u00020#2\u0006\u0010>\u001a\u00020#H\u0002¢\u0006\u0004\b?\u0010@J\u000f\u0010A\u001a\u00020\u0004H\u0002¢\u0006\u0004\bA\u0010\u0003J\u000f\u0010B\u001a\u00020\u0004H\u0002¢\u0006\u0004\bB\u0010\u0003J\u0017\u0010D\u001a\u00020\u00042\u0006\u0010C\u001a\u00020\u0012H\u0002¢\u0006\u0004\bD\u00102J\u0017\u0010E\u001a\u00020#2\u0006\u0010C\u001a\u00020\u0012H\u0002¢\u0006\u0004\bE\u0010FJ\u000f\u0010G\u001a\u00020\u0004H\u0002¢\u0006\u0004\bG\u0010\u0003J\u000f\u0010H\u001a\u00020\u0004H\u0002¢\u0006\u0004\bH\u0010\u0003J\u000f\u0010I\u001a\u00020\u0004H\u0002¢\u0006\u0004\bI\u0010\u0003J\u000f\u0010J\u001a\u00020\u0004H\u0002¢\u0006\u0004\bJ\u0010\u0003J'\u0010N\u001a\u00020\u00042\u000e\u0010L\u001a\n\u0012\u0004\u0012\u00020,\u0018\u00010K2\u0006\u0010M\u001a\u00020\u0012H\u0003¢\u0006\u0004\bN\u0010OJ\u000f\u0010P\u001a\u00020\u0004H\u0002¢\u0006\u0004\bP\u0010\u0003J\u000f\u0010Q\u001a\u00020\u0004H\u0002¢\u0006\u0004\bQ\u0010\u0003J#\u0010S\u001a\b\u0012\u0004\u0012\u00020,0+2\f\u0010R\u001a\b\u0012\u0004\u0012\u00020,0+H\u0002¢\u0006\u0004\bS\u0010TJ\u001d\u0010V\u001a\u00020\u00042\f\u0010U\u001a\b\u0012\u0004\u0012\u00020,0+H\u0002¢\u0006\u0004\bV\u0010/J%\u0010Y\u001a\u00020\u00042\f\u0010U\u001a\b\u0012\u0004\u0012\u00020,0+2\u0006\u0010X\u001a\u00020WH\u0002¢\u0006\u0004\bY\u0010ZJ\u000f\u0010[\u001a\u00020\u0012H\u0016¢\u0006\u0004\b[\u0010\u0014J\u0019\u0010^\u001a\u00020\u00042\b\u0010]\u001a\u0004\u0018\u00010\\H\u0016¢\u0006\u0004\b^\u0010_J-\u0010d\u001a\u0004\u0018\u00010\u000b2\u0006\u0010a\u001a\u00020`2\b\u0010c\u001a\u0004\u0018\u00010b2\b\u0010]\u001a\u0004\u0018\u00010\\H\u0016¢\u0006\u0004\bd\u0010eJ!\u0010f\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000b2\b\u0010]\u001a\u0004\u0018\u00010\\H\u0016¢\u0006\u0004\bf\u0010gJ'\u0010j\u001a\u00020\u00042\u0006\u0010h\u001a\u00020\u00122\u0006\u0010>\u001a\u00020#2\u0006\u0010i\u001a\u00020\u0012H\u0016¢\u0006\u0004\bj\u0010kJ\u001f\u0010n\u001a\u00020\u00042\u0006\u0010l\u001a\u00020#2\u0006\u0010m\u001a\u00020#H\u0016¢\u0006\u0004\bn\u0010oJ\u000f\u0010p\u001a\u00020\u0004H\u0016¢\u0006\u0004\bp\u0010\u0003J\u0017\u0010r\u001a\u00020\u00042\u0006\u0010q\u001a\u00020\u0012H\u0016¢\u0006\u0004\br\u00102J\u000f\u0010s\u001a\u00020\u0004H\u0016¢\u0006\u0004\bs\u0010\u0003J\u000f\u0010t\u001a\u00020\u0004H\u0014¢\u0006\u0004\bt\u0010\u0003J/\u0010y\u001a\u00020\u00042\u0006\u0010u\u001a\u00020#2\u0016\u0010x\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010w0v\"\u0004\u0018\u00010wH\u0016¢\u0006\u0004\by\u0010zJ\u0019\u0010}\u001a\u00020\u00042\b\u0010|\u001a\u0004\u0018\u00010{H\u0014¢\u0006\u0004\b}\u0010~J\u0019\u0010\u007f\u001a\u00020\u00042\b\u0010|\u001a\u0004\u0018\u00010{H\u0014¢\u0006\u0004\b\u007f\u0010~J\u0019\u0010\u0080\u0001\u001a\u00020\u00042\u0006\u0010h\u001a\u00020\u0012H\u0016¢\u0006\u0005\b\u0080\u0001\u00102J\u0019\u0010\u0081\u0001\u001a\u00020\u00042\u0006\u0010h\u001a\u00020\u0012H\u0016¢\u0006\u0005\b\u0081\u0001\u00102J%\u0010\u0083\u0001\u001a\u00020\u00042\t\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u000b2\u0006\u0010i\u001a\u00020\u0012H\u0015¢\u0006\u0006\b\u0083\u0001\u0010\u0084\u0001J\u001a\u0010\u0086\u0001\u001a\u00020\u00042\u0007\u0010\u0085\u0001\u001a\u00020\u0012H\u0014¢\u0006\u0005\b\u0086\u0001\u00102J\u0012\u0010\u0087\u0001\u001a\u00020#H\u0014¢\u0006\u0006\b\u0087\u0001\u0010\u0088\u0001J1\u0010\u008a\u0001\u001a\u00020\u00042\u0007\u0010\u0089\u0001\u001a\u00020#2\u0006\u0010=\u001a\u00020,2\f\u0010L\u001a\b\u0012\u0004\u0012\u00020,0+H\u0014¢\u0006\u0006\b\u008a\u0001\u0010\u008b\u0001J\u0011\u0010\u008c\u0001\u001a\u00020\u0004H\u0016¢\u0006\u0005\b\u008c\u0001\u0010\u0003J\u0011\u0010\u008d\u0001\u001a\u00020\u0004H\u0016¢\u0006\u0005\b\u008d\u0001\u0010\u0003J\u000f\u0010\u008e\u0001\u001a\u00020\u0012¢\u0006\u0005\b\u008e\u0001\u0010\u0014J\u000f\u0010\u008f\u0001\u001a\u00020\u0004¢\u0006\u0005\b\u008f\u0001\u0010\u0003R\u001b\u0010\u0090\u0001\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0090\u0001\u0010\u0091\u0001R\u001c\u0010\u0093\u0001\u001a\u0005\u0018\u00010\u0092\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0093\u0001\u0010\u0094\u0001R\u001c\u0010\u0096\u0001\u001a\u0005\u0018\u00010\u0095\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0096\u0001\u0010\u0097\u0001R\u001c\u0010\u0099\u0001\u001a\u0005\u0018\u00010\u0098\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0099\u0001\u0010\u009a\u0001R\u001c\u0010\u009b\u0001\u001a\u0005\u0018\u00010\u0098\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009b\u0001\u0010\u009a\u0001R\u001c\u0010\u009c\u0001\u001a\u0005\u0018\u00010\u0098\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009c\u0001\u0010\u009a\u0001R\u001b\u0010\u009d\u0001\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009d\u0001\u0010\u009e\u0001R\u001c\u0010 \u0001\u001a\u0005\u0018\u00010\u009f\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b \u0001\u0010¡\u0001R\u001b\u0010¢\u0001\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¢\u0001\u0010\u009e\u0001R\u001c\u0010¤\u0001\u001a\u0005\u0018\u00010£\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¤\u0001\u0010¥\u0001R\u001c\u0010§\u0001\u001a\u0005\u0018\u00010¦\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b§\u0001\u0010¨\u0001R\u001b\u0010©\u0001\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b©\u0001\u0010\u009e\u0001R\u001c\u0010«\u0001\u001a\u0005\u0018\u00010ª\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b«\u0001\u0010¬\u0001R\u001b\u0010\u00ad\u0001\u001a\u0004\u0018\u00010b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u00ad\u0001\u0010®\u0001R\u001b\u0010¯\u0001\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¯\u0001\u0010\u009e\u0001R\u001b\u0010°\u0001\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b°\u0001\u0010\u009e\u0001R\u001c\u0010²\u0001\u001a\u0005\u0018\u00010±\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b²\u0001\u0010³\u0001R\u001c\u0010´\u0001\u001a\u0005\u0018\u00010±\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b´\u0001\u0010³\u0001R\u001b\u0010µ\u0001\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bµ\u0001\u0010\u009e\u0001R\u001b\u0010¶\u0001\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¶\u0001\u0010\u009e\u0001R\u001c\u0010·\u0001\u001a\u0005\u0018\u00010£\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b·\u0001\u0010¥\u0001R\u001b\u0010¸\u0001\u001a\u0004\u0018\u00010b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¸\u0001\u0010®\u0001R\u001b\u0010¹\u0001\u001a\u0004\u0018\u00010b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¹\u0001\u0010®\u0001R\u001b\u0010º\u0001\u001a\u0004\u0018\u00010b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bº\u0001\u0010®\u0001R\u001c\u0010¼\u0001\u001a\u0005\u0018\u00010»\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¼\u0001\u0010½\u0001R!\u0010¾\u0001\u001a\n\u0012\u0004\u0012\u00020,\u0018\u00010+8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¾\u0001\u0010¿\u0001R\u001c\u0010À\u0001\u001a\u0005\u0018\u00010±\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÀ\u0001\u0010³\u0001R\u001c\u0010Á\u0001\u001a\u0005\u0018\u00010±\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÁ\u0001\u0010³\u0001R\u001c\u0010Â\u0001\u001a\u0005\u0018\u00010±\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÂ\u0001\u0010³\u0001R\u001c\u0010Ã\u0001\u001a\u0005\u0018\u00010»\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÃ\u0001\u0010½\u0001R\u001b\u0010Ä\u0001\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÄ\u0001\u0010\u009e\u0001R\u001b\u0010Å\u0001\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÅ\u0001\u0010\u009e\u0001R\u001b\u0010Æ\u0001\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÆ\u0001\u0010\u009e\u0001R\u001b\u0010Ç\u0001\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÇ\u0001\u0010\u009e\u0001R\u001b\u0010È\u0001\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÈ\u0001\u0010\u009e\u0001R\u001b\u0010É\u0001\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÉ\u0001\u0010\u009e\u0001R\u001b\u0010Ê\u0001\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÊ\u0001\u0010\u009e\u0001R\u001b\u0010Ë\u0001\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bË\u0001\u0010\u009e\u0001R\u001b\u0010Ì\u0001\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÌ\u0001\u0010\u009e\u0001R\u001c\u0010Î\u0001\u001a\u0005\u0018\u00010Í\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÎ\u0001\u0010Ï\u0001R\u001c\u0010Ð\u0001\u001a\u0005\u0018\u00010£\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÐ\u0001\u0010¥\u0001R\u001b\u0010Ñ\u0001\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÑ\u0001\u0010\u009e\u0001R\u001b\u0010Ò\u0001\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÒ\u0001\u0010\u009e\u0001R\u001c\u0010Ó\u0001\u001a\u0005\u0018\u00010±\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÓ\u0001\u0010³\u0001R\u001c\u0010Ô\u0001\u001a\u0005\u0018\u00010»\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÔ\u0001\u0010½\u0001R\u0019\u0010Õ\u0001\u001a\u00020#8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÕ\u0001\u0010Ö\u0001R\u0019\u0010×\u0001\u001a\u00020#8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b×\u0001\u0010Ö\u0001R\u001b\u0010Ø\u0001\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bØ\u0001\u0010\u009e\u0001R\u001b\u0010Ù\u0001\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÙ\u0001\u0010\u009e\u0001R\u001c\u0010Ú\u0001\u001a\u0005\u0018\u00010£\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÚ\u0001\u0010¥\u0001R\u001c\u0010Û\u0001\u001a\u0005\u0018\u00010±\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÛ\u0001\u0010³\u0001R\u001c\u0010Ü\u0001\u001a\u0005\u0018\u00010£\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÜ\u0001\u0010¥\u0001R\u001b\u0010Ý\u0001\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÝ\u0001\u0010\u009e\u0001R\u001c\u0010Þ\u0001\u001a\u0005\u0018\u00010±\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÞ\u0001\u0010³\u0001R\u001c\u0010ß\u0001\u001a\u0005\u0018\u00010±\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bß\u0001\u0010³\u0001R\u001c\u0010à\u0001\u001a\u0005\u0018\u00010»\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bà\u0001\u0010½\u0001R\u001b\u0010á\u0001\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bá\u0001\u0010\u009e\u0001R\u001b\u0010â\u0001\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bâ\u0001\u0010\u009e\u0001R\u0019\u0010ã\u0001\u001a\u00020#8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bã\u0001\u0010Ö\u0001R\u0019\u0010ä\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bä\u0001\u0010å\u0001R\u0019\u0010æ\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bæ\u0001\u0010å\u0001R,\u0010è\u0001\u001a\u0005\u0018\u00010ç\u00018\u0004@\u0004X\u0084\u000e¢\u0006\u0018\n\u0006\bè\u0001\u0010é\u0001\u001a\u0006\bê\u0001\u0010ë\u0001\"\u0006\bì\u0001\u0010í\u0001R\u0019\u0010î\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bî\u0001\u0010å\u0001R#\u0010ñ\u0001\u001a\f\u0018\u00010ï\u0001j\u0005\u0018\u0001`ð\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bñ\u0001\u0010ò\u0001R\u0019\u0010ó\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bó\u0001\u0010å\u0001R\u0019\u0010ô\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bô\u0001\u0010å\u0001R\u0019\u0010õ\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bõ\u0001\u0010å\u0001R\u001c\u0010÷\u0001\u001a\u0005\u0018\u00010ö\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b÷\u0001\u0010ø\u0001R\u001b\u0010ù\u0001\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bù\u0001\u0010\u009e\u0001R\u001d\u0010ú\u0001\u001a\b0ï\u0001j\u0003`ð\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bú\u0001\u0010ò\u0001R\u001c\u0010ü\u0001\u001a\u0005\u0018\u00010û\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bü\u0001\u0010ý\u0001R\u001c\u0010ÿ\u0001\u001a\u0005\u0018\u00010þ\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÿ\u0001\u0010\u0080\u0002R\u001c\u0010\u0082\u0002\u001a\u0005\u0018\u00010\u0081\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0082\u0002\u0010\u0083\u0002R\u001c\u0010\u0084\u0002\u001a\u0005\u0018\u00010ö\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0084\u0002\u0010ø\u0001R\u001c\u0010\u0086\u0002\u001a\u0005\u0018\u00010\u0085\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0086\u0002\u0010\u0087\u0002R\u001e\u0010\u0089\u0002\u001a\t\u0012\u0004\u0012\u00020\u00120\u0088\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0089\u0002\u0010\u008a\u0002¨\u0006\u008b\u0002"}, d2 = {"Lcom/transsion/cloud/fragment/CloudFragment;", "Lcom/transsion/cloud/fragment/CloudBaseFragment;", MethodDecl.initName, "()V", "Lzfb;", "ensureCloudTabEditBackCallback", "refreshCloudDataWithDelay", "showFreezeView", "setViewsHide", "showFreezeDialog", "showFreezePrompt", "Landroid/view/View;", "view", "initView", "(Landroid/view/View;)V", "initLoadingView", "initLoginView", "initNoContentView", "", "checkCloudSpace", "()Z", "initReceiveFreeSpaceInfo", "", "freeSpaceSize", "showReceiveFreeSpaceDialog", "(J)V", "goToReceiveFreeSpace", "goToPurchaseCloudSpace", "", "netText", "initNetWorkError", "(Landroid/view/View;Ljava/lang/String;)V", "hideNetWorkError", "Lcom/transsion/cloud/adapter/CloudDataAdapter;", "adapter", "", "position", "child", "selectItem", "(Lcom/transsion/cloud/adapter/CloudDataAdapter;Landroid/view/View;IZ)V", "hideLoadingView", "showLoadingView", "initViewModel", "", "Lcom/transsion/dbdata/beans/VideoCloudData;", "data", "setCloudDataNewData", "(Ljava/util/List;)V", "isAll", "refreshData", "(Z)V", "isEmpty", "updateUIForDataState", "disableScroll", "updateAppBarScrollBehavior", "isLoggedIn", "url", "updateLoginState", "(ZLjava/lang/String;)V", "refreshStorageData", "backToPage", "videoCloudData", "listFlag", "startPlay", "(Lcom/transsion/dbdata/beans/VideoCloudData;II)V", "updateTaskCount", "addVideoBarShowStateObserver", PushConstants.PUSH_SERVICE_TYPE_SHOW, "notifyVideoBarShowStateChange", "getBottomPadding", "(Z)I", "updateBottomOperationBar", "initBottomOperationBar", "cloudDownLoad", "cloudDelete", "", "videoCloudDataList", "isUpload", "markCloudTransmitList", "(Ljava/util/List;Z)V", "showLoginLoadingDialog", "dismissLoginLoadingDialog", "recentList", "filterRecentlyList", "(Ljava/util/List;)Ljava/util/List;", "recentlyData", "updateRecentlyListAfterDelete", "Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;", "lp", "applyRecentlyListData", "(Ljava/util/List;Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;)V", "onBackPressed", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", TtmlNode.RUBY_CONTAINER, "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "enter", "isVideo", "startEditMode", "(ZIZ)V", TypedValues.CycleType.S_WAVE_OFFSET, "scrollRange", "isAppBarLayoutExpand", "(II)V", "onResume", "hidden", "onHiddenChanged", "onSelectInViewPage", "userLogout", "eventId", "", "", "args", "didReceivedNotification", "(I[Ljava/lang/Object;)V", "Lcom/transsion/dbdata/beans/VishaPalmUserInfo;", "vishaPalmUserInfo", "onUserLogin", "(Lcom/transsion/dbdata/beans/VishaPalmUserInfo;)V", "onUserReLogin", "updateViewWhenEditMode", "editMode", "anchorView", "showSortPopupWindow", "(Landroid/view/View;Z)V", "preload", "loadData", "onLayoutId", "()I", "type", "refreshCloudListData", "(ILcom/transsion/dbdata/beans/VideoCloudData;Ljava/util/List;)V", "onPause", "onDestroyView", "isUploadSelectModel", "stopEdit", "mCloudDataAdapter", "Lcom/transsion/cloud/adapter/CloudDataAdapter;", "Lcom/transsion/cloud/adapter/CloudRecentlyDataAdapter;", "mCloudRecentlyDataAdapter", "Lcom/transsion/cloud/adapter/CloudRecentlyDataAdapter;", "Lcom/transsion/cloud/adapter/CloudFavoriteAdapter;", "mCloudFavoriteAdapter", "Lcom/transsion/cloud/adapter/CloudFavoriteAdapter;", "Landroidx/recyclerview/widget/RecyclerView;", "mRcCloudView", "Landroidx/recyclerview/widget/RecyclerView;", "mRcRecentlyView", "mRcFavoriteView", "mRlFavoriteItemView", "Landroid/view/View;", "Lcom/transsion/widgets/CustomSwipeRefreshLayout;", "mRefreshView", "Lcom/transsion/widgets/CustomSwipeRefreshLayout;", "mIvSort", "Landroid/widget/ImageView;", "mIvAdd", "Landroid/widget/ImageView;", "Landroid/widget/FrameLayout;", "mCardViewAdd", "Landroid/widget/FrameLayout;", "mMenuLayout", "Landroidx/coordinatorlayout/widget/CoordinatorLayout;", "mVideoMainLayout", "Landroidx/coordinatorlayout/widget/CoordinatorLayout;", "mClCloudInfo", "Landroid/view/ViewGroup;", "mCloudUnLogin", "mIvTitleBarBack", "Landroid/widget/TextView;", "mTvTitle", "Landroid/widget/TextView;", "mNavTitle", "mIvSearch", "mIvTranslate", "mIvCloudExpand", "mClStorageInfo", "mRlRecentlyView", "mRlAllVideosView", "Landroid/widget/Button;", "mBtnLogin", "Landroid/widget/Button;", "mVideoCloudDataList", "Ljava/util/List;", "mTvStorageInfo", "mTvCloudUserName", "mTvFreeSpace", "mBtnFreeSpace", "mLlFreeSpace", "mVvFreeSpace", "mStorageInfoView", "mEmptyView", "mVlsContainer", "mLoginView", "mNoContentView", "mSvNoContentView", "mBtnUploadView", "Lcom/transsion/widgetslib/view/BadgeView;", "mUploadCountView", "Lcom/transsion/widgetslib/view/BadgeView;", "mUserIcon", "mUserIconView", "mNetErrorView", "mNetErrorText", "mBtnRetry", "mUploadedCount", "I", "mDownloadedCount", "mRootView", "mIvDownLoad", "mIvForOnContent", "mTvCloudStorageForNoContent", "mIvCloudExpandOnContent", "mStorageInfoViewNoContent", "mTvCloudUserNameNoContent", "mTvFreeSpaceOnContent", "mBtnFreeSpaceOnContent", "mLlFreeSpaceOnContent", "mVvFreeSpaceOnContent", "mOffset", "mIsNeedUploadData", "Z", "mIsShowNotNetWork", "Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;", "mRecyclerViewFastScroller", "Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;", "getMRecyclerViewFastScroller", "()Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;", "setMRecyclerViewFastScroller", "(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;)V", "mIsShowTips", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "pollRunnable", "Ljava/lang/Runnable;", "mIsClosePopupWindowOnPause", "mDidFreezeDialog", "mIsCreateLogined", "Lcom/transsion/widgetslib/dialog/d;", "mFreezeDialog", "Lcom/transsion/widgetslib/dialog/d;", "freezeView", "mPopupWindowRunnable", "Lcom/transsion/playercommon/videomodel/MainViewModel;", "mMainViewModel", "Lcom/transsion/playercommon/videomodel/MainViewModel;", "Lcom/transsion/playercommon/widgets/NewAppFootActionBar;", "mEditFootOperationBar", "Lcom/transsion/playercommon/widgets/NewAppFootActionBar;", "Landroid/widget/LinearLayout;", "mAppBarContent", "Landroid/widget/LinearLayout;", "mLoginLoadingDialog", "Landroidx/activity/OnBackPressedCallback;", "mCloudTabEditBackCallback", "Landroidx/activity/OnBackPressedCallback;", "Landroidx/lifecycle/Observer;", "mVideoBarShowStateObserver", "Landroidx/lifecycle/Observer;", "clouddrive_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class CloudFragment extends CloudBaseFragment {
    private View freezeView;
    private LinearLayout mAppBarContent;
    private Button mBtnFreeSpace;
    private Button mBtnFreeSpaceOnContent;
    private Button mBtnLogin;
    private Button mBtnRetry;
    private View mBtnUploadView;
    private FrameLayout mCardViewAdd;
    private ViewGroup mClCloudInfo;
    private ViewGroup mClStorageInfo;
    private CloudDataAdapter mCloudDataAdapter;
    private CloudFavoriteAdapter mCloudFavoriteAdapter;
    private CloudRecentlyDataAdapter mCloudRecentlyDataAdapter;
    private OnBackPressedCallback mCloudTabEditBackCallback;
    private View mCloudUnLogin;
    private boolean mDidFreezeDialog;
    private int mDownloadedCount;
    private NewAppFootActionBar mEditFootOperationBar;
    private View mEmptyView;
    private com.transsion.widgetslib.dialog.d mFreezeDialog;
    private boolean mIsClosePopupWindowOnPause;
    private boolean mIsCreateLogined;
    private boolean mIsNeedUploadData;
    private boolean mIsShowNotNetWork;
    private boolean mIsShowTips;
    private ImageView mIvAdd;
    private ImageView mIvCloudExpand;
    private ImageView mIvCloudExpandOnContent;
    private View mIvDownLoad;
    private ImageView mIvForOnContent;
    private View mIvSearch;
    private View mIvSort;
    private View mIvTitleBarBack;
    private View mIvTranslate;
    private View mLlFreeSpace;
    private View mLlFreeSpaceOnContent;
    private com.transsion.widgetslib.dialog.d mLoginLoadingDialog;
    private View mLoginView;
    private MainViewModel mMainViewModel;
    private View mMenuLayout;
    private TextView mNavTitle;
    private TextView mNetErrorText;
    private View mNetErrorView;
    private View mNoContentView;
    private RecyclerView mRcCloudView;
    private RecyclerView mRcFavoriteView;
    private RecyclerView mRcRecentlyView;
    private RecyclerViewFastScroller mRecyclerViewFastScroller;
    private CustomSwipeRefreshLayout mRefreshView;
    private ViewGroup mRlAllVideosView;
    private View mRlFavoriteItemView;
    private ViewGroup mRlRecentlyView;
    private View mRootView;
    private View mStorageInfoView;
    private View mStorageInfoViewNoContent;
    private View mSvNoContentView;
    private TextView mTvCloudStorageForNoContent;
    private TextView mTvCloudUserName;
    private TextView mTvCloudUserNameNoContent;
    private TextView mTvFreeSpace;
    private TextView mTvFreeSpaceOnContent;
    private TextView mTvStorageInfo;
    private TextView mTvTitle;
    private BadgeView mUploadCountView;
    private int mUploadedCount;
    private ImageView mUserIcon;
    private View mUserIconView;
    private List<? extends VideoCloudData> mVideoCloudDataList;
    private CoordinatorLayout mVideoMainLayout;
    private View mVlsContainer;
    private View mVvFreeSpace;
    private View mVvFreeSpaceOnContent;
    private Runnable pollRunnable;
    private int mOffset = 2;
    private final Runnable mPopupWindowRunnable = new Runnable() {
        @Override
        public final void run() {
            View view = this.this$0.mIvSort;
            if (view != null) {
                this.this$0.showSortPopupWindow(view, true);
            }
        }
    };
    private final Observer<Boolean> mVideoBarShowStateObserver = new Observer() {
        @Override
        public final void onChanged(Object obj) {
            CloudFragment.mVideoBarShowStateObserver$lambda$102(this.a, (Boolean) obj);
        }
    };

    public static final class a implements DialogInterface.OnClickListener {
        public a() {
        }

        public static final zfb b(CloudFragment cloudFragment, boolean z) {
            String str = null;
            VideoCloudData videoCloudData = new VideoCloudData(null, null, null, null, null, null, null, null, null, null, 0L, null, str, str, null, null, 0, null, null, null, 1048575, null);
            CloudDataAdapter cloudDataAdapter = cloudFragment.mCloudDataAdapter;
            y45.g(cloudDataAdapter);
            h27.c().e(1133, new FileHandlerData(z, 3, videoCloudData, cloudDataAdapter.getSelectVideoCloudList()));
            h27.c().e(1131, new Object[0]);
            return zfb.a;
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            az5.a aVar = az5.a;
            CloudDataAdapter cloudDataAdapter = CloudFragment.this.mCloudDataAdapter;
            y45.g(cloudDataAdapter);
            aVar.B(cloudDataAdapter.getSelectVideoCloudList().size());
            if (!MainApp.p()) {
                ToastUtils.s(R.string.net_not_connect);
                return;
            }
            a41 a41Var = a41.a;
            Context applicationContext = CloudFragment.this.getApplicationContext();
            y45.i(applicationContext, "getApplicationContext(...)");
            xy0 xy0VarC = a41Var.c(applicationContext);
            CloudDataAdapter cloudDataAdapter2 = CloudFragment.this.mCloudDataAdapter;
            y45.g(cloudDataAdapter2);
            ArrayList selectVideoCloudList = cloudDataAdapter2.getSelectVideoCloudList();
            final CloudFragment cloudFragment = CloudFragment.this;
            xy0VarC.k(selectVideoCloudList, new e74() {
                @Override
                public final Object invoke(Object obj) {
                    return CloudFragment.a.b(cloudFragment, ((Boolean) obj).booleanValue());
                }
            });
        }
    }

    public static final class b implements CloudDataAdapter.a {
        public b() {
        }

        @Override
        public void a(View view, int i, VideoCloudData videoCloudData, boolean z, View view2) {
            List<VideoCloudData> data;
            List<VideoCloudData> data2;
            String string = null;
            String string2 = null;
            if (!((PlayBaseFragment) CloudFragment.this).isInEditMode) {
                CloudDataAdapter cloudDataAdapter = CloudFragment.this.mCloudDataAdapter;
                if (cloudDataAdapter != null) {
                    cloudDataAdapter.v(videoCloudData, true, i, true);
                }
                if (!((PlayBaseFragment) CloudFragment.this).isInEditMode) {
                    CloudFragment.this.editMode(true);
                }
                CheckBox mCheckBoxAll = CloudFragment.this.getMCheckBoxAll();
                if (mCheckBoxAll != null) {
                    CloudDataAdapter cloudDataAdapter2 = CloudFragment.this.mCloudDataAdapter;
                    Integer numValueOf = cloudDataAdapter2 != null ? Integer.valueOf(cloudDataAdapter2.l()) : null;
                    CloudDataAdapter cloudDataAdapter3 = CloudFragment.this.mCloudDataAdapter;
                    mCheckBoxAll.setChecked(y45.e(numValueOf, (cloudDataAdapter3 == null || (data = cloudDataAdapter3.getData()) == null) ? null : Integer.valueOf(data.size())));
                }
                TextView textView = CloudFragment.this.mTvTitle;
                if (textView != null) {
                    Context context = ((BaseFragment) CloudFragment.this).mContext;
                    if (context != null) {
                        int i2 = R.string.items;
                        CloudDataAdapter cloudDataAdapter4 = CloudFragment.this.mCloudDataAdapter;
                        string = context.getString(i2, cloudDataAdapter4 != null ? Integer.valueOf(cloudDataAdapter4.l()) : null);
                    }
                    textView.setText(string);
                    return;
                }
                return;
            }
            CloudFragment cloudFragment = CloudFragment.this;
            cloudFragment.selectItem(cloudFragment.mCloudDataAdapter, view, i, true);
            if (((PlayBaseFragment) CloudFragment.this).mEditModeListener != null) {
                PlayBaseFragment.d dVar = ((PlayBaseFragment) CloudFragment.this).mEditModeListener;
                CloudDataAdapter cloudDataAdapter5 = CloudFragment.this.mCloudDataAdapter;
                ArrayList selectVideoCloudList = cloudDataAdapter5 != null ? cloudDataAdapter5.getSelectVideoCloudList() : null;
                CloudDataAdapter cloudDataAdapter6 = CloudFragment.this.mCloudDataAdapter;
                dVar.b(selectVideoCloudList, cloudDataAdapter6 != null ? cloudDataAdapter6.r() : false, false);
            }
            CloudFragment.this.updateBottomOperationBar();
            CheckBox mCheckBoxAll2 = CloudFragment.this.getMCheckBoxAll();
            if (mCheckBoxAll2 != null) {
                CloudDataAdapter cloudDataAdapter7 = CloudFragment.this.mCloudDataAdapter;
                Integer numValueOf2 = cloudDataAdapter7 != null ? Integer.valueOf(cloudDataAdapter7.l()) : null;
                CloudDataAdapter cloudDataAdapter8 = CloudFragment.this.mCloudDataAdapter;
                mCheckBoxAll2.setChecked(y45.e(numValueOf2, (cloudDataAdapter8 == null || (data2 = cloudDataAdapter8.getData()) == null) ? null : Integer.valueOf(data2.size())));
            }
            TextView textView2 = CloudFragment.this.mTvTitle;
            if (textView2 != null) {
                Context context2 = ((BaseFragment) CloudFragment.this).mContext;
                if (context2 != null) {
                    int i3 = R.string.items;
                    CloudDataAdapter cloudDataAdapter9 = CloudFragment.this.mCloudDataAdapter;
                    string2 = context2.getString(i3, cloudDataAdapter9 != null ? Integer.valueOf(cloudDataAdapter9.l()) : null);
                }
                textView2.setText(string2);
            }
        }
    }

    public static final class c implements RecyclerViewFastScroller.HandleStateListener {
        public c() {
        }

        @Override
        public void onDragged(float f, int i) {
        }

        @Override
        public void onEngaged() {
            CustomSwipeRefreshLayout customSwipeRefreshLayout = CloudFragment.this.mRefreshView;
            if (customSwipeRefreshLayout != null) {
                customSwipeRefreshLayout.setEnabled(false);
            }
        }

        @Override
        public void onReleased() {
            CustomSwipeRefreshLayout customSwipeRefreshLayout = CloudFragment.this.mRefreshView;
            if (customSwipeRefreshLayout != null) {
                customSwipeRefreshLayout.setEnabled(true);
            }
        }
    }

    public static final class d implements s74 {
        public d() {
        }

        public void a(MIMediaVideoData mIMediaVideoData, MIMediaLibraryData mIMediaLibraryData) {
            y45.j(mIMediaVideoData, "vo");
            y45.j(mIMediaLibraryData, "libraryData");
            Log.i("CloudFragment", "image click: ");
            if (MainApp.w == 0) {
                ToastUtils.s(R.string.net_not_connect);
                return;
            }
            PlayVideoData playVideoDataMediaVideoToPlayVideoData = MIMediaDataUtils.INSTANCE.mediaVideoToPlayVideoData(mIMediaLibraryData, mIMediaVideoData, 1003);
            List<MIMediaVideoData> videoList = mIMediaLibraryData.getVideoList();
            if (videoList != null) {
                s21.b.b(new ArrayList(videoList));
            }
            s21.b.c(MIMediaLibraryData.copy$default(mIMediaLibraryData, null, null, false, null, null, 0, null, 127, null));
            VideoPlayerActivityInner.F2(CloudFragment.this.getContext(), playVideoDataMediaVideoToPlayVideoData);
            az5.a.c(mIMediaLibraryData.getMediaLibraryId(), mIMediaLibraryData.getMediaLibraryName(), mIMediaLibraryData.getVirtualPersonName(), mIMediaLibraryData.getVirtualPersonPhoto(), mIMediaVideoData.getSourceId(), mIMediaVideoData.getTitle());
        }

        @Override
        public Object invoke(Object obj, Object obj2) {
            a((MIMediaVideoData) obj, (MIMediaLibraryData) obj2);
            return zfb.a;
        }
    }

    public static final class e implements e74 {
        public void a(MIMediaLibraryData mIMediaLibraryData) {
            y45.j(mIMediaLibraryData, "libraryData");
            ARouter.getInstance().build(VishaRouterTable.PATH_PAGE_ACTIVITY_MEDIA_LIBRARY_VIDEO).withString("mediaLibraryId", mIMediaLibraryData.getMediaLibraryId()).withString("mediaLibraryName", mIMediaLibraryData.getMediaLibraryName()).withInt("from", 1).navigation();
            az5.a.d(mIMediaLibraryData.getMediaLibraryId(), mIMediaLibraryData.getMediaLibraryName(), mIMediaLibraryData.getVirtualPersonName(), mIMediaLibraryData.getVirtualPersonPhoto());
        }

        @Override
        public Object invoke(Object obj) {
            a((MIMediaLibraryData) obj);
            return zfb.a;
        }
    }

    public static final class f implements RecyclerViewFastScroller.HandleAppBarLayoutStateListener {
        public f() {
        }

        @Override
        public void onAppBarCollapsed() {
            if (((PlayBaseFragment) CloudFragment.this).mAppBarLayout == null || !CloudFragment.this.getMIsAppbarExpanded()) {
                return;
            }
            CloudFragment.this.setMIsAppbarExpanded(false);
            ((PlayBaseFragment) CloudFragment.this).mAppBarLayout.setExpanded(false, false);
        }

        @Override
        public void onAppBarExpanded() {
        }
    }

    public static final class g implements vz6 {
        public g() {
        }

        @Override
        public void onConnect(int i) {
        }

        @Override
        public void onDisconnect() {
            CloudFragment.this.dismissLoginLoadingDialog();
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
    @nt1(c = "com.transsion.cloud.fragment.CloudFragment$goToReceiveFreeSpace$1", f = "CloudFragment.kt", l = {1202}, m = "invokeSuspend")
    public static final class C23731 extends SuspendLambda implements s74 {
        final long $freeSpaceSize;
        int label;

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
        @nt1(c = "com.transsion.cloud.fragment.CloudFragment$goToReceiveFreeSpace$1$2", f = "CloudFragment.kt", l = {}, m = "invokeSuspend")
        public static final class AnonymousClass2 extends SuspendLambda implements s74 {
            final long $freeSpaceSize;
            final Ref$ObjectRef<ReceiveFreeSpaceResponse> $receiveFreeSpaceResponse;
            int label;
            final CloudFragment this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass2(Ref$ObjectRef<ReceiveFreeSpaceResponse> ref$ObjectRef, CloudFragment cloudFragment, long j, wh1<? super AnonymousClass2> wh1Var) {
                super(2, wh1Var);
                this.$receiveFreeSpaceResponse = ref$ObjectRef;
                this.this$0 = cloudFragment;
                this.$freeSpaceSize = j;
            }

            @Override
            public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
                return new AnonymousClass2(this.$receiveFreeSpaceResponse, this.this$0, this.$freeSpaceSize, wh1Var);
            }

            @Override
            public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
                return ((AnonymousClass2) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
            }

            @Override
            public final Object invokeSuspend(Object obj) {
                z45.f();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.c.b(obj);
                if (this.$receiveFreeSpaceResponse.element != null) {
                    ToastUtils.s(R.string.visha_get_space_successed);
                    View view = this.this$0.mLlFreeSpace;
                    if (view != null) {
                        view.setVisibility(8);
                    }
                    View view2 = this.this$0.mVvFreeSpace;
                    if (view2 != null) {
                        view2.setVisibility(8);
                    }
                    az5.a.D("cloud_getfreesp_s", this.$freeSpaceSize);
                } else {
                    ToastUtils.s(R.string.visha_get_space_failed);
                    az5.a.D("cloud_getfreesp_f", this.$freeSpaceSize);
                }
                return zfb.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C23731(long j, wh1<? super C23731> wh1Var) {
            super(2, wh1Var);
            this.$freeSpaceSize = j;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static final zfb h(Ref$ObjectRef ref$ObjectRef, ReceiveFreeSpaceResponse receiveFreeSpaceResponse) {
            ref$ObjectRef.element = receiveFreeSpaceResponse;
            return zfb.a;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return CloudFragment.this.new C23731(this.$freeSpaceSize, wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((C23731) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.label;
            if (i == 0) {
                kotlin.c.b(obj);
                String strI = CountryInfoUtil.i();
                y45.i(strI, "getCountryCode(...)");
                MccMap mccMap = new MccMap(strI, null, null, null, 14, null);
                Context context = CloudFragment.this.getContext();
                xy0 xy0VarC = context != null ? a41.a.c(context) : null;
                final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                if (xy0VarC != null) {
                    xy0VarC.a(mccMap, new e74() {
                        @Override
                        public final Object invoke(Object obj2) {
                            return CloudFragment.C23731.h(ref$ObjectRef, (ReceiveFreeSpaceResponse) obj2);
                        }
                    });
                }
                rx5 rx5VarC = mc2.c();
                AnonymousClass2 anonymousClass2 = new AnonymousClass2(ref$ObjectRef, CloudFragment.this, this.$freeSpaceSize, null);
                this.label = 1;
                if (cl0.g(rx5VarC, anonymousClass2, this) == objF) {
                    return objF;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.c.b(obj);
            }
            return zfb.a;
        }
    }

    public static final class h implements Observer, e84 {
        public final e74 a;

        public h(e74 e74Var) {
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

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"com/transsion/cloud/fragment/CloudFragment$initView$31", "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "", "newState", "Lzfb;", "onScrollStateChanged", "(Landroidx/recyclerview/widget/RecyclerView;I)V", "clouddrive_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class AnonymousClass31 extends RecyclerView.OnScrollListener {
        public AnonymousClass31() {
        }

        public static final void c(CloudFragment cloudFragment) {
            FrameLayout frameLayout = cloudFragment.mCardViewAdd;
            if (frameLayout != null) {
                frameLayout.setVisibility(8);
            }
        }

        public static final void d() {
        }

        @Override
        public void onScrollStateChanged(RecyclerView recyclerView, int newState) {
            ViewPropertyAnimator viewPropertyAnimatorAnimate;
            ViewPropertyAnimator viewPropertyAnimatorAlpha;
            ViewPropertyAnimator duration;
            ViewPropertyAnimator viewPropertyAnimatorWithEndAction;
            FrameLayout frameLayout;
            ViewPropertyAnimator viewPropertyAnimatorAnimate2;
            ViewPropertyAnimator viewPropertyAnimatorAlpha2;
            ViewPropertyAnimator duration2;
            y45.j(recyclerView, "recyclerView");
            if (newState != 0) {
                if (newState != 1 || ((PlayBaseFragment) CloudFragment.this).isInEditMode || (frameLayout = CloudFragment.this.mCardViewAdd) == null || (viewPropertyAnimatorAnimate2 = frameLayout.animate()) == null || (viewPropertyAnimatorAlpha2 = viewPropertyAnimatorAnimate2.alpha(0.0f)) == null || (duration2 = viewPropertyAnimatorAlpha2.setDuration(200L)) == null) {
                    return;
                }
                final CloudFragment cloudFragment = CloudFragment.this;
                ViewPropertyAnimator viewPropertyAnimatorWithEndAction2 = duration2.withEndAction(new Runnable() {
                    @Override
                    public final void run() {
                        CloudFragment.AnonymousClass31.c(cloudFragment);
                    }
                });
                if (viewPropertyAnimatorWithEndAction2 != null) {
                    viewPropertyAnimatorWithEndAction2.start();
                    return;
                }
                return;
            }
            if (!((PlayBaseFragment) CloudFragment.this).isInEditMode) {
                FrameLayout frameLayout2 = CloudFragment.this.mCardViewAdd;
                if (frameLayout2 != null) {
                    frameLayout2.setAlpha(0.0f);
                }
                FrameLayout frameLayout3 = CloudFragment.this.mCardViewAdd;
                if (frameLayout3 != null) {
                    View view = CloudFragment.this.freezeView;
                    frameLayout3.setVisibility((view == null || view.getVisibility() != 0) ? 0 : 8);
                }
                FrameLayout frameLayout4 = CloudFragment.this.mCardViewAdd;
                if (frameLayout4 != null && (viewPropertyAnimatorAnimate = frameLayout4.animate()) != null && (viewPropertyAnimatorAlpha = viewPropertyAnimatorAnimate.alpha(1.0f)) != null && (duration = viewPropertyAnimatorAlpha.setDuration(200L)) != null && (viewPropertyAnimatorWithEndAction = duration.withEndAction(new Runnable() {
                    @Override
                    public final void run() {
                        CloudFragment.AnonymousClass31.d();
                    }
                })) != null) {
                    viewPropertyAnimatorWithEndAction.start();
                }
                if (CloudFragment.this.mIsNeedUploadData) {
                    RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
                    LinearLayoutManager linearLayoutManager = layoutManager instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager : null;
                    if ((linearLayoutManager != null ? linearLayoutManager.findLastVisibleItemPosition() : 0) < CloudFragment.this.getMViewModel().getMPageSize() - CloudFragment.this.mOffset) {
                        CloudFragment.this.refreshData(false);
                    }
                    CloudFragment.this.getMViewModel().t();
                }
            }
            CustomSwipeRefreshLayout customSwipeRefreshLayout = CloudFragment.this.mRefreshView;
            if (customSwipeRefreshLayout != null) {
                customSwipeRefreshLayout.changeEditMode(false);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void addVideoBarShowStateObserver() {
        MutableLiveData mutableLiveData;
        Boolean bool;
        MutableLiveData mutableLiveData2;
        if (getActivity() == null || !isAdded()) {
            return;
        }
        MainViewModel mainViewModel = (MainViewModel) getViewModelByActivity(MainViewModel.class);
        this.mMainViewModel = mainViewModel;
        if (mainViewModel != null && (mutableLiveData2 = mainViewModel.g) != null) {
            mutableLiveData2.observe(getViewLifecycleOwner(), this.mVideoBarShowStateObserver);
        }
        MainViewModel mainViewModel2 = this.mMainViewModel;
        notifyVideoBarShowStateChange((mainViewModel2 == null || (mutableLiveData = mainViewModel2.g) == null || (bool = (Boolean) mutableLiveData.getValue()) == null) ? false : bool.booleanValue());
    }

    private final void applyRecentlyListData(List<? extends VideoCloudData> recentlyData, AppBarLayout.LayoutParams lp) {
        ArrayList arrayList = recentlyData.size() > 2 ? new ArrayList(recentlyData.subList(0, 2)) : new ArrayList(recentlyData);
        if (arrayList.isEmpty()) {
            ViewGroup viewGroup = this.mRlRecentlyView;
            if (viewGroup != null) {
                viewGroup.setVisibility(8);
            }
            RecyclerView recyclerView = this.mRcRecentlyView;
            if (recyclerView != null) {
                recyclerView.setVisibility(8);
            }
            ((LinearLayout.LayoutParams) lp).topMargin = com.transsion.utils.a.d(this.mContext, 27.0f);
        } else if (!this.isInEditMode) {
            ViewGroup viewGroup2 = this.mRlRecentlyView;
            if (viewGroup2 != null) {
                viewGroup2.setVisibility(0);
            }
            RecyclerView recyclerView2 = this.mRcRecentlyView;
            if (recyclerView2 != null) {
                recyclerView2.setVisibility(0);
            }
            ((LinearLayout.LayoutParams) lp).topMargin = com.transsion.utils.a.d(this.mContext, 21.0f);
        }
        CloudRecentlyDataAdapter cloudRecentlyDataAdapter = this.mCloudRecentlyDataAdapter;
        if (cloudRecentlyDataAdapter != null) {
            cloudRecentlyDataAdapter.setNewData(arrayList);
        }
    }

    public final void backToPage() {
        editMode(false);
        CheckBox mCheckBoxAll = getMCheckBoxAll();
        if (mCheckBoxAll != null) {
            mCheckBoxAll.setChecked(false);
        }
        CloudDataAdapter cloudDataAdapter = this.mCloudDataAdapter;
        if (cloudDataAdapter != null) {
            cloudDataAdapter.g();
        }
        CloudDataAdapter cloudDataAdapter2 = this.mCloudDataAdapter;
        if (cloudDataAdapter2 != null) {
            cloudDataAdapter2.setEnableLoadMore(true);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final boolean checkCloudSpace() {
        SpaceStatistics spaceStatistics = (SpaceStatistics) getMViewModel().getMCloudStorageInfo().getValue();
        long totalSize = spaceStatistics != null ? spaceStatistics.getTotalSize() : 0L;
        SpaceStatistics spaceStatistics2 = (SpaceStatistics) getMViewModel().getMCloudStorageInfo().getValue();
        long usedSize = spaceStatistics2 != null ? spaceStatistics2.getUsedSize() : 0L;
        if (totalSize > 0 && usedSize < totalSize) {
            return false;
        }
        new com.transsion.widgetslib.dialog.d.a(this.mContext).j(R.string.visha_cloud_expand_message).u(R.string.visha_cloud_expand, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.b.goToPurchaseCloudSpace();
            }
        }).m(com.transsion.playercommon.R.string.cancel, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                CloudFragment.checkCloudSpace$lambda$51(dialogInterface, i);
            }
        }).a().show();
        return true;
    }

    public static final void checkCloudSpace$lambda$51(DialogInterface dialogInterface, int i) {
    }

    private final void cloudDelete() {
        CloudDataAdapter cloudDataAdapter = this.mCloudDataAdapter;
        y45.g(cloudDataAdapter);
        if (cloudDataAdapter.getSelectVideoCloudList() != null) {
            az5.a aVar = az5.a;
            CloudDataAdapter cloudDataAdapter2 = this.mCloudDataAdapter;
            y45.g(cloudDataAdapter2);
            aVar.A(cloudDataAdapter2.getSelectVideoCloudList().size());
            Context context = this.mContext;
            CloudDataAdapter cloudDataAdapter3 = this.mCloudDataAdapter;
            y45.g(cloudDataAdapter3);
            FileOperateUtils.h0(context, cloudDataAdapter3.getSelectVideoCloudList().size(), new a());
        }
    }

    private final void cloudDownLoad() {
        CloudDataAdapter cloudDataAdapter = this.mCloudDataAdapter;
        y45.g(cloudDataAdapter);
        markCloudTransmitList(cloudDataAdapter.getSelectVideoCloudList(), false);
        new e6b(this.mContext, new e6b.c() {
            @Override
            public final void a(boolean z) {
                CloudFragment.cloudDownLoad$lambda$106(this.a, z);
            }
        }).b(false);
    }

    public static final void cloudDownLoad$lambda$106(CloudFragment cloudFragment, boolean z) {
        if (z) {
            CloudFileOperate cloudFileOperate = CloudFileOperate.getInstance();
            Context context = cloudFragment.mContext;
            CloudDataAdapter cloudDataAdapter = cloudFragment.mCloudDataAdapter;
            y45.g(cloudDataAdapter);
            cloudFileOperate.startBatchDownload(context, cloudDataAdapter.getSelectVideoCloudList());
            h27.c().e(1130, new Object[0]);
        }
    }

    public final void dismissLoginLoadingDialog() {
        try {
            com.transsion.widgetslib.dialog.d dVar = this.mLoginLoadingDialog;
            if (dVar == null || !dVar.isShowing()) {
                return;
            }
            com.transsion.widgetslib.dialog.d dVar2 = this.mLoginLoadingDialog;
            y45.g(dVar2);
            dVar2.dismiss();
        } catch (Exception e2) {
            Log.e("CloudFragment", "dismissLoginLoadingDialog " + e2);
        }
    }

    private final void ensureCloudTabEditBackCallback() {
        if (pp3.w && this.mCloudTabEditBackCallback == null) {
            this.mCloudTabEditBackCallback = new OnBackPressedCallback() {
                {
                    super(false);
                }

                @Override
                public void handleOnBackPressed() {
                    if (((PlayBaseFragment) CloudFragment.this).isInEditMode) {
                        CloudFragment.this.backToPage();
                    }
                }
            };
            OnBackPressedDispatcher onBackPressedDispatcher = requireActivity().getOnBackPressedDispatcher();
            LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
            y45.i(viewLifecycleOwner, "getViewLifecycleOwner(...)");
            OnBackPressedCallback onBackPressedCallback = this.mCloudTabEditBackCallback;
            y45.g(onBackPressedCallback);
            onBackPressedDispatcher.addCallback(viewLifecycleOwner, onBackPressedCallback);
        }
    }

    private final List<VideoCloudData> filterRecentlyList(List<? extends VideoCloudData> recentList) {
        return getMViewModel().q(recentList);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x001d  */
    private final int getBottomPadding(boolean show) {
        boolean z;
        MutableLiveData mutableLiveData;
        MainViewModel mainViewModel = this.mMainViewModel;
        int i = 0;
        if (mainViewModel == null) {
            z = true;
        } else {
            if ((mainViewModel == null || (mutableLiveData = mainViewModel.c) == null) ? false : y45.e(mutableLiveData.getValue(), Boolean.TRUE)) {
                z = true;
            } else {
                z = false;
            }
        }
        boolean zIsFoldScreen = isFoldScreen();
        CheckBox mCheckBoxAll = getMCheckBoxAll();
        boolean z2 = mCheckBoxAll != null && mCheckBoxAll.getVisibility() == 0;
        if ((!zIsFoldScreen && !show && this.isInEditMode) || z2) {
            return 0;
        }
        if (z && zIsFoldScreen && show) {
            i = 115;
        } else if (show || this.isInEditMode || (z && zIsFoldScreen)) {
            i = 60;
        }
        if (z && zIsFoldScreen && this.isInEditMode && !show) {
            return 115;
        }
        return i;
    }

    public final void goToPurchaseCloudSpace() {
        Log.d("CloudFragment", "goBuyCloudSpace");
        Intent intent = new Intent();
        intent.setAction("com.transsion.cloud_client.OPEN_SPACE_UPGRADE");
        intent.setPackage("com.transsion.cloudserver");
        intent.setData(Uri.parse("https://cloud-disk.palm.tech/cloud-space"));
        try {
            startActivity(intent);
        } catch (ActivityNotFoundException e2) {
            CloudPaymentWebViewActivity.INSTANCE.b(this.mContext, "");
            String message = e2.getMessage();
            if (message == null) {
                message = "ActivityNotFoundException";
            }
            Log.e("CloudFragment", message);
        }
    }

    public final void goToReceiveFreeSpace(long freeSpaceSize) {
        el0.d(LifecycleOwnerKt.getLifecycleScope(this), mc2.b(), null, new C23731(freeSpaceSize, null), 2, null);
    }

    private final void hideLoadingView() {
        View view = this.mEmptyView;
        if (view == null || view.getVisibility() != 0) {
            return;
        }
        View view2 = this.mEmptyView;
        if (view2 != null) {
            view2.setVisibility(8);
        }
        View view3 = this.mVlsContainer;
        if (view3 != null) {
            view3.setVisibility(8);
        }
    }

    private final void hideNetWorkError() {
        View view = this.mNetErrorView;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    private final void initBottomOperationBar() {
        if (this.mEditFootOperationBar == null) {
            View view = this.mRootView;
            ViewStub viewStub = view != null ? (ViewStub) view.findViewById(R.id.bottom_action_new_bar) : null;
            if (viewStub != null) {
                NewAppFootActionBar newAppFootActionBar = (NewAppFootActionBar) viewStub.inflate();
                this.mEditFootOperationBar = newAppFootActionBar;
                y45.g(newAppFootActionBar);
                newAppFootActionBar.setListFlag(1000);
                NewAppFootActionBar newAppFootActionBar2 = this.mEditFootOperationBar;
                y45.g(newAppFootActionBar2);
                newAppFootActionBar2.setAnim(true);
                NewAppFootActionBar newAppFootActionBar3 = this.mEditFootOperationBar;
                y45.g(newAppFootActionBar3);
                newAppFootActionBar3.setOnFootOptBarClickListener(new FootOperationBar.n() {
                    @Override
                    public final void onItemClick(int i) {
                        CloudFragment.initBottomOperationBar$lambda$105(this.b, i);
                    }
                });
                applyEditFootBarBottomInset(this.mEditFootOperationBar);
            }
        }
    }

    public static final void initBottomOperationBar$lambda$105(CloudFragment cloudFragment, int i) {
        if (i == 0) {
            cloudFragment.cloudDownLoad();
        } else {
            cloudFragment.cloudDelete();
        }
    }

    private final void initLoadingView(View view) {
        if (view != null) {
            if (this.mEmptyView == null) {
                View viewFindViewById = view.findViewById(R.id.online_video_empty_view);
                y45.h(viewFindViewById, "null cannot be cast to non-null type android.view.ViewStub");
                this.mEmptyView = ((ViewStub) viewFindViewById).inflate();
            }
            View view2 = this.mEmptyView;
            if (view2 != null) {
                if (view2 != null) {
                    view2.setVisibility(0);
                }
                View viewFindViewById2 = view2.findViewById(R.id.vls_container);
                this.mVlsContainer = viewFindViewById2;
                if (viewFindViewById2 != null) {
                    viewFindViewById2.setVisibility(0);
                }
            }
        }
    }

    private final void initLoginView(View view) {
        if (view != null) {
            if (this.mLoginView == null) {
                View viewFindViewById = view.findViewById(R.id.vb_login_view);
                y45.h(viewFindViewById, "null cannot be cast to non-null type android.view.ViewStub");
                this.mLoginView = ((ViewStub) viewFindViewById).inflate();
            }
            View view2 = this.mLoginView;
            this.mCloudUnLogin = view2 != null ? view2.findViewById(R.id.sv_cloud_unlogin) : null;
        }
    }

    private final void initNetWorkError(View view, String netText) {
        if (view != null) {
            if (this.mNetErrorView == null) {
                View viewFindViewById = view.findViewById(R.id.vb_net_error_view);
                y45.h(viewFindViewById, "null cannot be cast to non-null type android.view.ViewStub");
                View viewInflate = ((ViewStub) viewFindViewById).inflate();
                this.mNetErrorView = viewInflate;
                Button button = viewInflate != null ? (Button) viewInflate.findViewById(R.id.btn_retry) : null;
                this.mBtnRetry = button;
                if (button != null) {
                    button.setOnClickListener(new View.OnClickListener() {
                        @Override
                        public final void onClick(View view2) {
                            CloudFragment.initNetWorkError$lambda$59$lambda$58(this.b, view2);
                        }
                    });
                }
            }
            if (this.mNetErrorText == null) {
                View view2 = this.mNetErrorView;
                this.mNetErrorText = view2 != null ? (TextView) view2.findViewById(R.id.tv_net_error) : null;
            }
            View view3 = this.mNetErrorView;
            if (view3 != null) {
                view3.setVisibility(0);
            }
            TextView textView = this.mNetErrorText;
            if (textView != null) {
                textView.setText(netText);
            }
        }
    }

    public static final void initNetWorkError$lambda$59$lambda$58(CloudFragment cloudFragment, View view) {
        cloudFragment.getMViewModel().t();
        cloudFragment.getMViewModel().i0(1);
        CloudViewModel.v(cloudFragment.getMViewModel(), 0, null, null, 0, null, 23, null);
    }

    private final void initNoContentView(View view) {
        if (view != null) {
            if (this.mNoContentView == null) {
                View viewFindViewById = view.findViewById(R.id.vb_no_content_view);
                y45.h(viewFindViewById, "null cannot be cast to non-null type android.view.ViewStub");
                this.mNoContentView = ((ViewStub) viewFindViewById).inflate();
            }
            View view2 = this.mNoContentView;
            this.mSvNoContentView = view2 != null ? view2.findViewById(R.id.sv_no_content_view) : null;
            View view3 = this.mNoContentView;
            this.mBtnUploadView = view3 != null ? view3.findViewById(R.id.btn_upload) : null;
            View view4 = this.mNoContentView;
            this.mStorageInfoViewNoContent = view4 != null ? view4.findViewById(R.id.cl_storage_info) : null;
            View view5 = this.mNoContentView;
            this.mIvForOnContent = view5 != null ? (ImageView) view5.findViewById(R.id.ri_icon) : null;
            View view6 = this.mNoContentView;
            this.mTvCloudStorageForNoContent = view6 != null ? (TextView) view6.findViewById(R.id.tv_cloud_storage) : null;
            View view7 = this.mNoContentView;
            this.mTvCloudUserNameNoContent = view7 != null ? (TextView) view7.findViewById(R.id.tv_cloud_user) : null;
            View view8 = this.mNoContentView;
            this.mIvCloudExpandOnContent = view8 != null ? (ImageView) view8.findViewById(R.id.iv_cloud_storage_expand) : null;
            View view9 = this.mNoContentView;
            this.mTvFreeSpaceOnContent = view9 != null ? (TextView) view9.findViewById(R.id.tv_space_gift) : null;
            View view10 = this.mNoContentView;
            this.mBtnFreeSpaceOnContent = view10 != null ? (Button) view10.findViewById(R.id.bt_space_gift) : null;
            View view11 = this.mNoContentView;
            this.mLlFreeSpaceOnContent = view11 != null ? view11.findViewById(R.id.cl_cloud_space_gift) : null;
            View view12 = this.mNoContentView;
            this.mVvFreeSpaceOnContent = view12 != null ? view12.findViewById(R.id.vv_cloud_space_gift) : null;
            ImageView imageView = this.mIvCloudExpandOnContent;
            if (imageView != null) {
                imageView.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view13) {
                        this.b.goToPurchaseCloudSpace();
                    }
                });
            }
            View view13 = this.mStorageInfoViewNoContent;
            if (view13 != null) {
                view13.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view14) {
                        this.b.goToPurchaseCloudSpace();
                    }
                });
            }
            View view14 = this.mBtnUploadView;
            if (view14 != null) {
                view14.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view15) {
                        CloudFragment.initNoContentView$lambda$49$lambda$48(this.b, view15);
                    }
                });
            }
        }
    }

    public static final void initNoContentView$lambda$49$lambda$48(CloudFragment cloudFragment, View view) {
        if (cloudFragment.getActivity() != null && !MainApp.p()) {
            ToastUtils.s(R.string.net_not_connect);
        } else {
            if (cloudFragment.checkCloudSpace()) {
                return;
            }
            cz5.g("upload_btn");
            a64.m((CloudUploadFragment) new CloudUploadFragment().setBaseActivity((BaseActivity) cloudFragment.getActivity()), true);
        }
    }

    private final void initReceiveFreeSpaceInfo() {
        if (!CloudFeaturesConfigHelper.INSTANCE.getInstance().getVishaGiveawayFlag()) {
            Log.d("CloudFragment", "vishaGiveawayFlag false");
        } else {
            getMViewModel().y();
            getMViewModel().getMFreeSpaceInfo().observe(getViewLifecycleOwner(), new h(new e74() {
                @Override
                public final Object invoke(Object obj) {
                    return CloudFragment.initReceiveFreeSpaceInfo$lambda$54(this.b, (FreeSpaceResponse) obj);
                }
            }));
        }
    }

    public static final zfb initReceiveFreeSpaceInfo$lambda$54(final CloudFragment cloudFragment, final FreeSpaceResponse freeSpaceResponse) {
        if (freeSpaceResponse != null) {
            View view = cloudFragment.mLlFreeSpace;
            if (view != null) {
                view.setVisibility(0);
            }
            View view2 = cloudFragment.mVvFreeSpace;
            if (view2 != null) {
                view2.setVisibility(0);
            }
            String strD = s44.d(cloudFragment.mContext, freeSpaceResponse.getCloudSpaceSize());
            az5.a.D("cloud_freesptip_show", freeSpaceResponse.getCloudSpaceSize());
            TextView textView = cloudFragment.mTvFreeSpace;
            if (textView != null) {
                textView.setText(cloudFragment.getString(R.string.visha_get_free_cloud_space_limit_time, strD));
            }
            Button button = cloudFragment.mBtnFreeSpace;
            if (button != null) {
                button.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view3) {
                        CloudFragment.initReceiveFreeSpaceInfo$lambda$54$lambda$52(this.b, freeSpaceResponse, view3);
                    }
                });
            }
            View view3 = cloudFragment.mLlFreeSpaceOnContent;
            if (view3 != null) {
                view3.setVisibility(0);
            }
            View view4 = cloudFragment.mVvFreeSpaceOnContent;
            if (view4 != null) {
                view4.setVisibility(0);
            }
            TextView textView2 = cloudFragment.mTvFreeSpaceOnContent;
            if (textView2 != null) {
                textView2.setText(cloudFragment.getString(R.string.visha_get_free_cloud_space_limit_time, strD));
            }
            Button button2 = cloudFragment.mBtnFreeSpaceOnContent;
            if (button2 != null) {
                button2.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view5) {
                        CloudFragment.initReceiveFreeSpaceInfo$lambda$54$lambda$53(this.b, freeSpaceResponse, view5);
                    }
                });
            }
        } else {
            View view5 = cloudFragment.mLlFreeSpace;
            if (view5 != null) {
                view5.setVisibility(8);
            }
            View view6 = cloudFragment.mVvFreeSpace;
            if (view6 != null) {
                view6.setVisibility(8);
            }
            View view7 = cloudFragment.mLlFreeSpaceOnContent;
            if (view7 != null) {
                view7.setVisibility(8);
            }
            View view8 = cloudFragment.mVvFreeSpaceOnContent;
            if (view8 != null) {
                view8.setVisibility(8);
            }
        }
        return zfb.a;
    }

    public static final void initReceiveFreeSpaceInfo$lambda$54$lambda$52(CloudFragment cloudFragment, FreeSpaceResponse freeSpaceResponse, View view) {
        cloudFragment.showReceiveFreeSpaceDialog(freeSpaceResponse.getCloudSpaceSize());
        az5.a.D("cloud_freesptip_cl", freeSpaceResponse.getCloudSpaceSize());
    }

    public static final void initReceiveFreeSpaceInfo$lambda$54$lambda$53(CloudFragment cloudFragment, FreeSpaceResponse freeSpaceResponse, View view) {
        cloudFragment.showReceiveFreeSpaceDialog(freeSpaceResponse.getCloudSpaceSize());
        az5.a.D("cloud_freesptip_cl", freeSpaceResponse.getCloudSpaceSize());
    }

    @SuppressLint({"CheckResult"})
    private final void initView(View view) {
        CloudDataAdapter cloudDataAdapter;
        if (view == null) {
            return;
        }
        this.mAppBarContent = (LinearLayout) view.findViewById(R.id.ll_app_bar_content);
        this.mRcCloudView = (RecyclerView) view.findViewById(R.id.rc_all_video_view);
        this.mRcRecentlyView = (RecyclerView) view.findViewById(R.id.rc_recently_view);
        this.mRcFavoriteView = (RecyclerView) view.findViewById(R.id.rc_favorite_recycler_view);
        this.mRlFavoriteItemView = view.findViewById(R.id.rl_favorite_view);
        this.mAppBarLayout = (AppBarLayout) view.findViewById(R.id.app_bar);
        this.mRefreshView = (CustomSwipeRefreshLayout) view.findViewById(R.id.pull_damping_layout);
        this.mIvSort = view.findViewById(R.id.iv_sort);
        this.mIvAdd = (ImageView) view.findViewById(R.id.iv_add);
        this.mMenuLayout = view.findViewById(R.id.top_menu_ll);
        this.mVideoMainLayout = (CoordinatorLayout) view.findViewById(R.id.video_main_layout);
        this.mClCloudInfo = (ViewGroup) view.findViewById(R.id.ll_cloud_info);
        View viewFindViewById = view.findViewById(R.id.title_bar_back);
        this.mIvTitleBarBack = viewFindViewById;
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility((!pp3.w || this.isInEditMode) ? 0 : 8);
        }
        setMCheckBoxAll((CheckBox) view.findViewById(R.id.title_bar_checkBox));
        this.mIvSearch = view.findViewById(R.id.iv_search);
        this.mIvTranslate = view.findViewById(R.id.iv_translate);
        this.mIvCloudExpand = (ImageView) view.findViewById(R.id.iv_cloud_storage_expand);
        this.mClStorageInfo = (ViewGroup) view.findViewById(R.id.ll_storage_info);
        this.mRlRecentlyView = (ViewGroup) view.findViewById(R.id.rl_recently_view);
        this.mRlAllVideosView = (ViewGroup) view.findViewById(R.id.rl_all_video_view);
        this.mBtnLogin = (Button) view.findViewById(R.id.btn_login);
        this.mTvStorageInfo = (TextView) view.findViewById(R.id.tv_cloud_storage);
        this.mTvCloudUserName = (TextView) view.findViewById(R.id.tv_cloud_user);
        this.mTvFreeSpace = (TextView) view.findViewById(R.id.tv_space_gift);
        this.mBtnFreeSpace = (Button) view.findViewById(R.id.bt_space_gift);
        this.mLlFreeSpace = view.findViewById(R.id.cl_cloud_space_gift);
        this.mVvFreeSpace = view.findViewById(R.id.vv_cloud_space_gift);
        this.mStorageInfoView = view.findViewById(R.id.cl_storage_info);
        this.mUploadCountView = (BadgeView) view.findViewById(R.id.seal_num);
        this.mUserIcon = (ImageView) view.findViewById(R.id.ri_icon);
        this.mUserIconView = view.findViewById(R.id.ll_icon_cloud);
        View viewFindViewById2 = view.findViewById(R.id.iv_download);
        this.mIvDownLoad = viewFindViewById2;
        if (viewFindViewById2 != null) {
            viewFindViewById2.setVisibility(pp3.w ? 0 : 8);
        }
        this.mTvTitle = (TextView) view.findViewById(R.id.tv_select_title);
        this.mNavTitle = (TextView) view.findViewById(R.id.tv_nav_title);
        pcc.a(this.mAppBarContent, 25.0f, 25, 35.0f);
        RecyclerViewFastScroller recyclerViewFastScroller = (RecyclerViewFastScroller) view.findViewById(R.id.rv_fast_scroller);
        this.mRecyclerViewFastScroller = recyclerViewFastScroller;
        if (recyclerViewFastScroller != null) {
            recyclerViewFastScroller.setHandleStateListener(new c());
        }
        RecyclerViewFastScroller recyclerViewFastScroller2 = this.mRecyclerViewFastScroller;
        if (recyclerViewFastScroller2 != null) {
            recyclerViewFastScroller2.setHandleAppBarLayoutStateListener(new f());
        }
        View view2 = this.mIvSearch;
        if (view2 != null) {
            view2.setVisibility(0);
        }
        View view3 = this.mIvTranslate;
        if (view3 != null) {
            view3.setVisibility(0);
        }
        View view4 = this.mIvDownLoad;
        if (view4 != null) {
            view4.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view5) {
                    CloudFragment.initView$lambda$13(this.b, view5);
                }
            });
        }
        View view5 = this.mUserIconView;
        if (view5 != null) {
            view5.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view6) {
                    CloudFragment.initView$lambda$14(this.b, view6);
                }
            });
        }
        ImageView imageView = this.mIvCloudExpand;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view6) {
                    this.b.goToPurchaseCloudSpace();
                }
            });
        }
        View view6 = this.mStorageInfoView;
        if (view6 != null) {
            view6.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view7) {
                    this.b.goToPurchaseCloudSpace();
                }
            });
        }
        ImageView imageView2 = this.mIvForOnContent;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view7) {
                    CloudFragment.initView$lambda$17(this.b, view7);
                }
            });
        }
        ViewGroup viewGroup = this.mRlRecentlyView;
        if (viewGroup != null) {
            viewGroup.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view7) {
                    CloudFragment.initView$lambda$18(this.b, view7);
                }
            });
        }
        View view7 = this.mIvTranslate;
        if (view7 != null) {
            view7.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view8) {
                    CloudFragment.initView$lambda$19(this.b, view8);
                }
            });
        }
        Button button = this.mBtnLogin;
        if (button != null) {
            button.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view8) {
                    CloudFragment.initView$lambda$21(this.b, view8);
                }
            });
        }
        View view8 = this.mIvSearch;
        if (view8 != null) {
            view8.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view9) {
                    CloudFragment.initView$lambda$23(this.b, view9);
                }
            });
        }
        getMViewModel().t();
        initReceiveFreeSpaceInfo();
        ImageView imageView3 = this.mIvAdd;
        if (imageView3 != null) {
            imageView3.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view9) {
                    CloudFragment.initView$lambda$25(this.b, view9);
                }
            });
        }
        CheckBox mCheckBoxAll = getMCheckBoxAll();
        if (mCheckBoxAll != null) {
            mCheckBoxAll.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view9) {
                    CloudFragment.initView$lambda$26(this.b, view9);
                }
            });
        }
        View view9 = this.mIvTitleBarBack;
        if (view9 != null) {
            view9.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view10) {
                    CloudFragment.initView$lambda$27(this.b, view10);
                }
            });
        }
        Button button2 = this.mBtnFreeSpace;
        if (button2 != null) {
            button2.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view10) {
                    CloudFragment.initView$lambda$28(view10);
                }
            });
        }
        if (this.mContext != null) {
            Drawable drawable = ResourcesCompat.getDrawable(getResources(), R.drawable.bg_cloud_des, this.mContext.getTheme());
            if (drawable != null) {
                drawable.setAlpha(30);
            }
            ViewGroup viewGroup2 = this.mClCloudInfo;
            if (viewGroup2 != null) {
                viewGroup2.setBackground(drawable);
            }
        }
        getMViewModel().q0();
        RecyclerView recyclerView = this.mRcCloudView;
        if (recyclerView != null) {
            recyclerView.addItemDecoration(new CloudItemDecoration(com.transsion.utils.a.d(this.mActivity, 16.0f)));
        }
        RecyclerView recyclerView2 = this.mRcCloudView;
        if (recyclerView2 != null) {
            recyclerView2.setLayoutManager(new CustomLinearLayoutManager(getContext()));
        }
        RecyclerView recyclerView3 = this.mRcCloudView;
        if (recyclerView3 != null) {
            recyclerView3.setAdapter(this.mCloudDataAdapter);
        }
        RecyclerView recyclerView4 = this.mRcRecentlyView;
        if (recyclerView4 != null) {
            recyclerView4.addItemDecoration(new CloudRecentlyItemDecoration(com.transsion.utils.a.d(this.mActivity, 10.0f)));
        }
        RecyclerView recyclerView5 = this.mRcRecentlyView;
        if (recyclerView5 != null) {
            recyclerView5.setLayoutManager(new CustomLinearLayoutManager(getContext(), 0, false));
        }
        RecyclerView recyclerView6 = this.mRcRecentlyView;
        if (recyclerView6 != null) {
            recyclerView6.setAdapter(this.mCloudRecentlyDataAdapter);
        }
        RecyclerView recyclerView7 = this.mRcFavoriteView;
        if (recyclerView7 != null) {
            recyclerView7.addItemDecoration(new CloudRecentlyItemDecoration(com.transsion.utils.a.d(this.mActivity, 1.0f)));
        }
        RecyclerView recyclerView8 = this.mRcFavoriteView;
        if (recyclerView8 != null) {
            recyclerView8.setLayoutManager(new CustomLinearLayoutManager(getContext(), 0, false));
        }
        RecyclerView recyclerView9 = this.mRcFavoriteView;
        if (recyclerView9 != null) {
            recyclerView9.setAdapter(this.mCloudFavoriteAdapter);
        }
        CloudDataAdapter cloudDataAdapter2 = this.mCloudDataAdapter;
        if (cloudDataAdapter2 != null) {
            cloudDataAdapter2.setPreLoadNumber(1);
        }
        if (getActivity() != null && (cloudDataAdapter = this.mCloudDataAdapter) != null) {
            cloudDataAdapter.setLoadMoreView(new mo1(getActivity()).a(Boolean.FALSE));
        }
        CloudDataAdapter cloudDataAdapter3 = this.mCloudDataAdapter;
        if (cloudDataAdapter3 != null) {
            cloudDataAdapter3.disableLoadMoreIfNotFullPage(this.mRcCloudView);
        }
        CloudDataAdapter cloudDataAdapter4 = this.mCloudDataAdapter;
        if (cloudDataAdapter4 != null) {
            cloudDataAdapter4.setOnLoadMoreListener(new BaseQuickAdapter.RequestLoadMoreListener() {
                @Override
                public final void onLoadMoreRequested() {
                    CloudFragment.initView$lambda$31(this.a);
                }
            }, this.mRcCloudView);
        }
        CloudDataAdapter cloudDataAdapter5 = this.mCloudDataAdapter;
        if (cloudDataAdapter5 != null) {
            cloudDataAdapter5.setOnDragListener(new b());
        }
        CloudDataAdapter cloudDataAdapter6 = this.mCloudDataAdapter;
        if (cloudDataAdapter6 != null) {
            cloudDataAdapter6.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
                @Override
                public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view10, int i) {
                    CloudFragment.initView$lambda$33(this.b, baseQuickAdapter, view10, i);
                }
            });
        }
        CloudDataAdapter cloudDataAdapter7 = this.mCloudDataAdapter;
        if (cloudDataAdapter7 != null) {
            cloudDataAdapter7.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() {
                @Override
                public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view10, int i) {
                    CloudFragment.initView$lambda$34(this.a, baseQuickAdapter, view10, i);
                }
            });
        }
        CloudRecentlyDataAdapter cloudRecentlyDataAdapter = this.mCloudRecentlyDataAdapter;
        if (cloudRecentlyDataAdapter != null) {
            cloudRecentlyDataAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
                @Override
                public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view10, int i) {
                    CloudFragment.initView$lambda$35(this.b, baseQuickAdapter, view10, i);
                }
            });
        }
        CloudFavoriteAdapter cloudFavoriteAdapter = this.mCloudFavoriteAdapter;
        if (cloudFavoriteAdapter != null) {
            cloudFavoriteAdapter.h(new d());
        }
        CloudFavoriteAdapter cloudFavoriteAdapter2 = this.mCloudFavoriteAdapter;
        if (cloudFavoriteAdapter2 != null) {
            cloudFavoriteAdapter2.g(new e());
        }
        View view10 = this.mRlFavoriteItemView;
        if (view10 != null) {
            view10.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view11) {
                    CloudFragment.initView$lambda$36(view11);
                }
            });
        }
        CustomSwipeRefreshLayout customSwipeRefreshLayout = this.mRefreshView;
        if (customSwipeRefreshLayout != null) {
            customSwipeRefreshLayout.setOnRefreshListener(new CustomSwipeRefreshLayout.OnRefreshListener() {
                @Override
                public final void onRefresh() {
                    CloudFragment.initView$lambda$38(this.a);
                }
            });
        }
        CustomSwipeRefreshLayout customSwipeRefreshLayout2 = this.mRefreshView;
        if (customSwipeRefreshLayout2 != null) {
            customSwipeRefreshLayout2.setOnChildScrollUpCallback(new CustomSwipeRefreshLayout.OnChildScrollUpCallback() {
                @Override
                public final boolean canChildScrollUp(CustomSwipeRefreshLayout customSwipeRefreshLayout3, View view11) {
                    return CloudFragment.initView$lambda$40(this.a, customSwipeRefreshLayout3, view11);
                }
            });
        }
        RecyclerView recyclerView10 = this.mRcFavoriteView;
        if (recyclerView10 != null) {
            recyclerView10.addOnScrollListener(new RecyclerView.OnScrollListener() {

                public boolean isHorizontalInteracting;

                public Runnable restoreRefreshRunnable;

                @Override
                public void onScrollStateChanged(RecyclerView recyclerView11, int newState) {
                    CustomSwipeRefreshLayout customSwipeRefreshLayout3;
                    CustomSwipeRefreshLayout customSwipeRefreshLayout4;
                    y45.j(recyclerView11, "recyclerView");
                    super.onScrollStateChanged(recyclerView11, newState);
                    Runnable runnable = this.restoreRefreshRunnable;
                    if (runnable != null && (customSwipeRefreshLayout4 = CloudFragment.this.mRefreshView) != null) {
                        customSwipeRefreshLayout4.removeCallbacks(runnable);
                    }
                    if (newState == 0) {
                        if (this.isHorizontalInteracting) {
                            this.isHorizontalInteracting = false;
                            final CloudFragment cloudFragment = CloudFragment.this;
                            this.restoreRefreshRunnable = new Runnable() {
                                @Override
                                public final void run() {
                                    CustomSwipeRefreshLayout customSwipeRefreshLayout5 = cloudFragment.mRefreshView;
                                    if (customSwipeRefreshLayout5 != null) {
                                        customSwipeRefreshLayout5.setEnabled(true);
                                    }
                                }
                            };
                            CustomSwipeRefreshLayout customSwipeRefreshLayout5 = CloudFragment.this.mRefreshView;
                            if (customSwipeRefreshLayout5 != null) {
                                customSwipeRefreshLayout5.postDelayed(this.restoreRefreshRunnable, 500L);
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    if (newState != 1) {
                        if (newState == 2 && this.isHorizontalInteracting && (customSwipeRefreshLayout3 = CloudFragment.this.mRefreshView) != null) {
                            customSwipeRefreshLayout3.setEnabled(false);
                            return;
                        }
                        return;
                    }
                    if (recyclerView11.canScrollHorizontally(-1) || recyclerView11.canScrollHorizontally(1)) {
                        this.isHorizontalInteracting = true;
                        CustomSwipeRefreshLayout customSwipeRefreshLayout6 = CloudFragment.this.mRefreshView;
                        if (customSwipeRefreshLayout6 != null) {
                            customSwipeRefreshLayout6.setEnabled(false);
                        }
                    }
                }
            });
        }
        RecyclerView recyclerView11 = this.mRcRecentlyView;
        if (recyclerView11 != null) {
            recyclerView11.addOnScrollListener(new RecyclerView.OnScrollListener() {

                public boolean isHorizontalInteracting;

                public Runnable restoreRefreshRunnable;

                @Override
                public void onScrollStateChanged(RecyclerView recyclerView12, int newState) {
                    CustomSwipeRefreshLayout customSwipeRefreshLayout3;
                    CustomSwipeRefreshLayout customSwipeRefreshLayout4;
                    y45.j(recyclerView12, "recyclerView");
                    super.onScrollStateChanged(recyclerView12, newState);
                    Runnable runnable = this.restoreRefreshRunnable;
                    if (runnable != null && (customSwipeRefreshLayout4 = CloudFragment.this.mRefreshView) != null) {
                        customSwipeRefreshLayout4.removeCallbacks(runnable);
                    }
                    if (newState == 0) {
                        if (this.isHorizontalInteracting) {
                            this.isHorizontalInteracting = false;
                            final CloudFragment cloudFragment = CloudFragment.this;
                            this.restoreRefreshRunnable = new Runnable() {
                                @Override
                                public final void run() {
                                    CustomSwipeRefreshLayout customSwipeRefreshLayout5 = cloudFragment.mRefreshView;
                                    if (customSwipeRefreshLayout5 != null) {
                                        customSwipeRefreshLayout5.setEnabled(true);
                                    }
                                }
                            };
                            CustomSwipeRefreshLayout customSwipeRefreshLayout5 = CloudFragment.this.mRefreshView;
                            if (customSwipeRefreshLayout5 != null) {
                                customSwipeRefreshLayout5.postDelayed(this.restoreRefreshRunnable, 500L);
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    if (newState != 1) {
                        if (newState == 2 && this.isHorizontalInteracting && (customSwipeRefreshLayout3 = CloudFragment.this.mRefreshView) != null) {
                            customSwipeRefreshLayout3.setEnabled(false);
                            return;
                        }
                        return;
                    }
                    if (recyclerView12.canScrollHorizontally(-1) || recyclerView12.canScrollHorizontally(1)) {
                        this.isHorizontalInteracting = true;
                        CustomSwipeRefreshLayout customSwipeRefreshLayout6 = CloudFragment.this.mRefreshView;
                        if (customSwipeRefreshLayout6 != null) {
                            customSwipeRefreshLayout6.setEnabled(false);
                        }
                    }
                }
            });
        }
        View view11 = this.mIvSort;
        if (view11 != null) {
            view11.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view12) {
                    this.b.showSortPopupWindow(view12, true);
                }
            });
        }
        RecyclerView recyclerView12 = this.mRcCloudView;
        if (recyclerView12 != null) {
            recyclerView12.addOnScrollListener(new AnonymousClass31());
        }
        this.mCardViewAdd = (FrameLayout) view.findViewById(R.id.cd_add);
    }

    public static final void initView$lambda$13(CloudFragment cloudFragment, View view) {
        a64.n((CloudDownloadMainFragment) new CloudDownloadMainFragment().setBaseActivity((BaseActivity) cloudFragment.getActivity()), true, true);
        cloudFragment.getMViewModel().p0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void initView$lambda$14(CloudFragment cloudFragment, View view) {
        Pair pair = (Pair) cloudFragment.getMViewModel().getMLoginState().getValue();
        if (pair == null || !((Boolean) pair.getFirst()).booleanValue()) {
            return;
        }
        com.transsion.palmsdk.b.C(cloudFragment.getActivity());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void initView$lambda$17(CloudFragment cloudFragment, View view) {
        Pair pair = (Pair) cloudFragment.getMViewModel().getMLoginState().getValue();
        if (pair == null || !((Boolean) pair.getFirst()).booleanValue()) {
            return;
        }
        com.transsion.palmsdk.b.C(cloudFragment.getActivity());
    }

    public static final void initView$lambda$18(CloudFragment cloudFragment, View view) {
        CloudRecentlyFragment cloudRecentlyFragment = (CloudRecentlyFragment) new CloudRecentlyFragment().setBaseActivity((BaseActivity) cloudFragment.getActivity());
        cloudRecentlyFragment.setEditModeListener(cloudFragment.mEditModeListener);
        a64.m(cloudRecentlyFragment, true);
        az5.a.p();
    }

    public static final void initView$lambda$19(CloudFragment cloudFragment, View view) {
        a64.n((TransferManagerFragment) TransferManagerFragment.j0("", 0, false, true).setBaseActivity((BaseActivity) cloudFragment.getActivity()), true, true);
    }

    public static final void initView$lambda$21(CloudFragment cloudFragment, View view) {
        if (cloudFragment.mActivity != null && MainApp.p() && com.transsion.palmsdk.b.t()) {
            cloudFragment.showLoginLoadingDialog();
        }
        cloudFragment.getMViewModel().d0(cloudFragment.mActivity);
        az5.a.k();
    }

    public static final void initView$lambda$23(CloudFragment cloudFragment, View view) {
        if (cloudFragment.getActivity() != null && !MainApp.p()) {
            ToastUtils.s(R.string.net_not_connect);
            return;
        }
        Intent intent = new Intent(cloudFragment.mActivity, (Class<?>) SearchCloudActivity.class);
        intent.putExtra("source", "cloud page");
        cloudFragment.startActivity(intent);
        FragmentActivity activity = cloudFragment.getActivity();
        if (activity != null) {
            activity.overridePendingTransition(0, 0);
        }
        az5.a.q();
    }

    public static final void initView$lambda$25(CloudFragment cloudFragment, View view) {
        cz5.g("upload_btn");
        if (cloudFragment.getActivity() != null && !MainApp.p()) {
            ToastUtils.s(R.string.net_not_connect);
        } else {
            if (cloudFragment.checkCloudSpace()) {
                return;
            }
            a64.m((CloudUploadFragment) new CloudUploadFragment().setBaseActivity((BaseActivity) cloudFragment.getActivity()), true);
        }
    }

    public static final void initView$lambda$26(CloudFragment cloudFragment, View view) {
        CheckBox mCheckBoxAll = cloudFragment.getMCheckBoxAll();
        if (mCheckBoxAll == null || !mCheckBoxAll.isChecked()) {
            CloudDataAdapter cloudDataAdapter = cloudFragment.mCloudDataAdapter;
            if (cloudDataAdapter != null) {
                cloudDataAdapter.u(false);
            }
        } else {
            CloudDataAdapter cloudDataAdapter2 = cloudFragment.mCloudDataAdapter;
            if (cloudDataAdapter2 != null) {
                cloudDataAdapter2.u(true);
            }
        }
        PlayBaseFragment.d dVar = cloudFragment.mEditModeListener;
        String string = null;
        if (dVar != null) {
            CloudDataAdapter cloudDataAdapter3 = cloudFragment.mCloudDataAdapter;
            ArrayList selectVideoCloudList = cloudDataAdapter3 != null ? cloudDataAdapter3.getSelectVideoCloudList() : null;
            CloudDataAdapter cloudDataAdapter4 = cloudFragment.mCloudDataAdapter;
            dVar.b(selectVideoCloudList, cloudDataAdapter4 != null ? cloudDataAdapter4.r() : false, false);
        }
        cloudFragment.updateBottomOperationBar();
        TextView textView = cloudFragment.mTvTitle;
        if (textView != null) {
            Context context = cloudFragment.mContext;
            if (context != null) {
                int i = R.string.items;
                CloudDataAdapter cloudDataAdapter5 = cloudFragment.mCloudDataAdapter;
                string = context.getString(i, cloudDataAdapter5 != null ? Integer.valueOf(cloudDataAdapter5.l()) : null);
            }
            textView.setText(string);
        }
    }

    public static final void initView$lambda$27(CloudFragment cloudFragment, View view) {
        if (cloudFragment.isInEditMode) {
            cloudFragment.backToPage();
        } else {
            a64.a(cloudFragment.mActivity);
        }
    }

    public static final void initView$lambda$28(View view) {
    }

    public static final void initView$lambda$31(CloudFragment cloudFragment) {
        if (cloudFragment.getMViewModel().getMIsUploadSelectModel()) {
            return;
        }
        cloudFragment.getMViewModel().g0();
        CloudViewModel.v(cloudFragment.getMViewModel(), 0, null, null, 2, null, 23, null);
    }

    public static final void initView$lambda$33(CloudFragment cloudFragment, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        List<VideoCloudData> data;
        if (i < baseQuickAdapter.getData().size()) {
            boolean z = false;
            if (!cloudFragment.isInEditMode) {
                Object obj = baseQuickAdapter.getData().get(i);
                y45.h(obj, "null cannot be cast to non-null type com.transsion.dbdata.beans.VideoCloudData");
                VideoCloudData videoCloudData = (VideoCloudData) obj;
                String parentFileId = videoCloudData.getParentFileId();
                if (parentFileId != null && parentFileId.length() == 0) {
                    z = true;
                }
                Long size = videoCloudData.getSize();
                if (size != null) {
                    az5.a.t(cz5.a(size.longValue(), true), z ? "own" : "shared", videoCloudData.getFileName());
                }
                cloudFragment.startPlay(videoCloudData, i, 50);
                return;
            }
            cloudFragment.selectItem(cloudFragment.mCloudDataAdapter, view, i, true);
            PlayBaseFragment.d dVar = cloudFragment.mEditModeListener;
            String string = null;
            if (dVar != null) {
                CloudDataAdapter cloudDataAdapter = cloudFragment.mCloudDataAdapter;
                ArrayList selectVideoCloudList = cloudDataAdapter != null ? cloudDataAdapter.getSelectVideoCloudList() : null;
                CloudDataAdapter cloudDataAdapter2 = cloudFragment.mCloudDataAdapter;
                dVar.b(selectVideoCloudList, cloudDataAdapter2 != null ? cloudDataAdapter2.r() : false, false);
            }
            cloudFragment.updateBottomOperationBar();
            CheckBox mCheckBoxAll = cloudFragment.getMCheckBoxAll();
            if (mCheckBoxAll != null) {
                CloudDataAdapter cloudDataAdapter3 = cloudFragment.mCloudDataAdapter;
                Integer numValueOf = cloudDataAdapter3 != null ? Integer.valueOf(cloudDataAdapter3.l()) : null;
                CloudDataAdapter cloudDataAdapter4 = cloudFragment.mCloudDataAdapter;
                mCheckBoxAll.setChecked(y45.e(numValueOf, (cloudDataAdapter4 == null || (data = cloudDataAdapter4.getData()) == null) ? null : Integer.valueOf(data.size())));
            }
            if (cloudFragment.getMViewModel().getMIsUploadSelectModel()) {
                TextView textView = cloudFragment.mTvTitle;
                if (textView != null) {
                    Context context = cloudFragment.mContext;
                    textView.setText(context != null ? context.getString(R.string.visha_upload_video) : null);
                    return;
                }
                return;
            }
            TextView textView2 = cloudFragment.mTvTitle;
            if (textView2 != null) {
                Context context2 = cloudFragment.mContext;
                if (context2 != null) {
                    int i2 = R.string.items;
                    CloudDataAdapter cloudDataAdapter5 = cloudFragment.mCloudDataAdapter;
                    string = context2.getString(i2, cloudDataAdapter5 != null ? Integer.valueOf(cloudDataAdapter5.l()) : null);
                }
                textView2.setText(string);
            }
        }
    }

    public static final void initView$lambda$34(CloudFragment cloudFragment, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        List data;
        if (view.getId() == R.id.iv_bucket_fragment_item_more) {
            Object obj = (baseQuickAdapter == null || (data = baseQuickAdapter.getData()) == null) ? null : data.get(i);
            y45.h(obj, "null cannot be cast to non-null type com.transsion.dbdata.beans.VideoCloudData");
            VideoCloudData videoCloudData = (VideoCloudData) obj;
            CloudTaskFinishCacheManager cloudTaskFinishCacheManager = CloudTaskFinishCacheManager.a;
            if (cloudTaskFinishCacheManager.j(videoCloudData.getFileId()) == null && y45.e(cloudTaskFinishCacheManager.n().getValue(), Boolean.TRUE)) {
                m21.a.d();
                return;
            }
            cloudFragment.showMenuDialog(videoCloudData);
            cloudFragment.getMViewModel().o0(videoCloudData);
            az5.a.m(videoCloudData.getFileName());
        }
    }

    public static final void initView$lambda$35(CloudFragment cloudFragment, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        String str;
        if (i < baseQuickAdapter.getData().size()) {
            Object obj = baseQuickAdapter.getData().get(i);
            y45.h(obj, "null cannot be cast to non-null type com.transsion.dbdata.beans.VideoCloudData");
            VideoCloudData videoCloudData = (VideoCloudData) obj;
            if (videoCloudData.getDataType() == 2) {
                str = "medialibrary";
            } else {
                String parentFileId = videoCloudData.getParentFileId();
                str = (parentFileId == null || parentFileId.length() == 0) ? "own" : "shared";
            }
            Long size = videoCloudData.getSize();
            float fB = cz5.b(size != null ? size.longValue() : 0L, true);
            az5.a.o(fB == 0.0f ? null : Float.valueOf(fB), videoCloudData.getFileName(), str);
            cloudFragment.startPlay(videoCloudData, i, 1006);
        }
    }

    public static final void initView$lambda$36(View view) {
        ARouter.getInstance().build(VishaRouterTable.PATH_PAGE_ACTIVITY_MEDIA_LIBRARY_LIST).navigation();
        az5.a.f();
    }

    public static final void initView$lambda$38(final CloudFragment cloudFragment) {
        cloudFragment.getMViewModel().i0(1);
        cloudFragment.getMViewModel().t();
        CloudViewModel.c0(cloudFragment.getMViewModel(), 0, null, null, 0, null, 23, null);
        CustomSwipeRefreshLayout customSwipeRefreshLayout = cloudFragment.mRefreshView;
        if (customSwipeRefreshLayout != null) {
            customSwipeRefreshLayout.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    CustomSwipeRefreshLayout customSwipeRefreshLayout2 = this.this$0.mRefreshView;
                    if (customSwipeRefreshLayout2 != null) {
                        customSwipeRefreshLayout2.setRefreshing(false);
                    }
                }
            }, 1000L);
        }
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0049  */
    /* JADX WARN: Code duplicated, block: B:24:0x004c  */
    public static final boolean initView$lambda$40(CloudFragment cloudFragment, CustomSwipeRefreshLayout customSwipeRefreshLayout, View view) {
        boolean z;
        int iIntValue;
        y45.j(customSwipeRefreshLayout, "parent");
        AppBarLayout appBarLayout = cloudFragment.mAppBarLayout;
        if (appBarLayout != null) {
            ViewParent parent = appBarLayout.getParent();
            if ((parent instanceof CoordinatorLayout ? (CoordinatorLayout) parent : null) != null) {
                ViewGroup.LayoutParams layoutParams = appBarLayout.getLayoutParams();
                CoordinatorLayout.LayoutParams layoutParams2 = layoutParams instanceof CoordinatorLayout.LayoutParams ? (CoordinatorLayout.LayoutParams) layoutParams : null;
                CoordinatorLayout.Behavior behavior = layoutParams2 != null ? layoutParams2.getBehavior() : null;
                Integer numValueOf = behavior instanceof AppBarLayout.Behavior ? Integer.valueOf(((AppBarLayout.Behavior) behavior).getTopAndBottomOffset()) : null;
                if (numValueOf != null) {
                    iIntValue = numValueOf.intValue();
                } else {
                    iIntValue = 0;
                }
            } else {
                iIntValue = 0;
            }
            if (iIntValue >= 0) {
                z = true;
            } else {
                z = false;
            }
        } else {
            z = true;
        }
        RecyclerView recyclerView = cloudFragment.mRcCloudView;
        boolean zCanScrollVertically = recyclerView != null ? recyclerView.canScrollVertically(-1) : false;
        RecyclerView recyclerView2 = cloudFragment.mRcFavoriteView;
        boolean zE = y45.e(recyclerView2 != null ? Integer.valueOf(recyclerView2.getScrollState()) : null, 0);
        RecyclerView recyclerView3 = cloudFragment.mRcRecentlyView;
        return (z && !zCanScrollVertically && zE && y45.e(recyclerView3 != null ? Integer.valueOf(recyclerView3.getScrollState()) : null, 0)) ? false : true;
    }

    private final void initViewModel() {
        LiveData<List<CloudTaskEntity>> allUploadedTaskLiveData;
        getMViewModel().getMLoadingNextPageError().observe(getViewLifecycleOwner(), new h(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return CloudFragment.initViewModel$lambda$62(this.b, (Boolean) obj);
            }
        }));
        getMViewModel().getMNoContentLiveData().observe(getViewLifecycleOwner(), new h(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return CloudFragment.initViewModel$lambda$63(this.b, (Boolean) obj);
            }
        }));
        getMViewModel().getMLoadingLiveData().observe(getViewLifecycleOwner(), new h(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return CloudFragment.initViewModel$lambda$64(this.b, (Boolean) obj);
            }
        }));
        getMViewModel().getMCloudDataList().observe(getViewLifecycleOwner(), new h(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return CloudFragment.initViewModel$lambda$69(this.b, (Triple) obj);
            }
        }));
        getMViewModel().getMCloudRecentlyList().observe(getViewLifecycleOwner(), new h(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return CloudFragment.initViewModel$lambda$71(this.b, (List) obj);
            }
        }));
        getMViewModel().getMCloudFavoriteList().observe(getViewLifecycleOwner(), new h(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return CloudFragment.initViewModel$lambda$74(this.b, (List) obj);
            }
        }));
        getMViewModel().getMLoginState().observe(getViewLifecycleOwner(), new h(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return CloudFragment.initViewModel$lambda$75(this.b, (Pair) obj);
            }
        }));
        getMViewModel().getMCloudStorageInfo().observe(getViewLifecycleOwner(), new h(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return CloudFragment.initViewModel$lambda$77(this.b, (SpaceStatistics) obj);
            }
        }));
        CloudTaskDao mCloudTaskDao = getMViewModel().getMCloudTaskDao();
        if (mCloudTaskDao != null && (allUploadedTaskLiveData = mCloudTaskDao.getAllUploadedTaskLiveData()) != null) {
            allUploadedTaskLiveData.observe(getViewLifecycleOwner(), new h(new e74() {
                @Override
                public final Object invoke(Object obj) {
                    return CloudFragment.initViewModel$lambda$78(this.b, (List) obj);
                }
            }));
        }
        getMViewModel().getMSowNetException().observe(getViewLifecycleOwner(), new h(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return CloudFragment.initViewModel$lambda$79(this.b, (Pair) obj);
            }
        }));
        CloudTaskFinishCacheManager cloudTaskFinishCacheManager = CloudTaskFinishCacheManager.a;
        cloudTaskFinishCacheManager.n().observe(getViewLifecycleOwner(), new h(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return CloudFragment.initViewModel$lambda$80(this.b, (Boolean) obj);
            }
        }));
        cloudTaskFinishCacheManager.k().observe(getViewLifecycleOwner(), new h(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return CloudFragment.initViewModel$lambda$81((Boolean) obj);
            }
        }));
    }

    public static final zfb initViewModel$lambda$62(CloudFragment cloudFragment, Boolean bool) {
        CloudDataAdapter cloudDataAdapter = cloudFragment.mCloudDataAdapter;
        if (cloudDataAdapter != null) {
            cloudDataAdapter.loadMoreFail();
        }
        ToastUtils.s(R.string.network_error);
        return zfb.a;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x004c  */
    /* JADX WARN: Multi-variable type inference failed */
    public static final zfb initViewModel$lambda$63(CloudFragment cloudFragment, Boolean bool) {
        View view;
        int i;
        int i2 = 0;
        if (bool.booleanValue()) {
            ViewGroup viewGroup = cloudFragment.mRlAllVideosView;
            if (viewGroup != null) {
                viewGroup.setVisibility(8);
            }
            View view2 = cloudFragment.mSvNoContentView;
            if (view2 != null) {
                view2.setVisibility(0);
            }
            FrameLayout frameLayout = cloudFragment.mCardViewAdd;
            if (frameLayout != null) {
                frameLayout.setVisibility(8);
            }
        } else {
            ViewGroup viewGroup2 = cloudFragment.mRlAllVideosView;
            if (viewGroup2 != null) {
                if (cloudFragment.isInEditMode) {
                    i = 8;
                } else {
                    Triple triple = (Triple) cloudFragment.getMViewModel().getMCloudDataList().getValue();
                    List list = triple != null ? (List) triple.getSecond() : null;
                    if (list == null || list.isEmpty()) {
                        i = 8;
                    } else {
                        i = 0;
                    }
                }
                viewGroup2.setVisibility(i);
            }
            View view3 = cloudFragment.mSvNoContentView;
            if (view3 != null && view3.getVisibility() == 0 && (view = cloudFragment.mSvNoContentView) != null) {
                view.setVisibility(8);
            }
            FrameLayout frameLayout2 = cloudFragment.mCardViewAdd;
            if (frameLayout2 != null) {
                View view4 = cloudFragment.freezeView;
                if (view4 != null && view4.getVisibility() == 0) {
                    i2 = 8;
                }
                frameLayout2.setVisibility(i2);
            }
        }
        return zfb.a;
    }

    public static final zfb initViewModel$lambda$64(CloudFragment cloudFragment, Boolean bool) {
        if (bool.booleanValue()) {
            cloudFragment.showLoadingView();
        } else {
            cloudFragment.hideLoadingView();
        }
        return zfb.a;
    }

    public static final zfb initViewModel$lambda$69(final CloudFragment cloudFragment, Triple triple) {
        CloudDataAdapter cloudDataAdapter;
        CheckBox mCheckBoxAll;
        List<VideoCloudData> data;
        List<VideoCloudData> data2;
        CloudDataAdapter cloudDataAdapter2;
        boolean z = false;
        if (triple != null && ((Number) triple.getThird()).intValue() == 1) {
            List list = (List) triple.getSecond();
            if (list != null) {
                cloudFragment.setCloudDataNewData(new ArrayList(list));
                CustomSwipeRefreshLayout customSwipeRefreshLayout = cloudFragment.mRefreshView;
                if (customSwipeRefreshLayout != null) {
                    customSwipeRefreshLayout.setRefreshing(false);
                }
                if (list.size() < cloudFragment.getMViewModel().getMPageSize() && (cloudDataAdapter2 = cloudFragment.mCloudDataAdapter) != null) {
                    cloudDataAdapter2.loadMoreEnd();
                }
                CloudDataAdapter cloudDataAdapter3 = cloudFragment.mCloudDataAdapter;
                if (cloudDataAdapter3 != null && (data2 = cloudDataAdapter3.getData()) != null && data2.isEmpty()) {
                    z = true;
                }
                cloudFragment.updateUIForDataState(z);
            }
        } else if (triple != null) {
            CloudDataAdapter cloudDataAdapter4 = cloudFragment.mCloudDataAdapter;
            cloudFragment.updateUIForDataState((cloudDataAdapter4 == null || (data = cloudDataAdapter4.getData()) == null || !data.isEmpty()) ? false : true);
            List list2 = (List) triple.getSecond();
            if (list2 != null && list2.isEmpty()) {
                CloudDataAdapter cloudDataAdapter5 = cloudFragment.mCloudDataAdapter;
                if (cloudDataAdapter5 != null) {
                    cloudDataAdapter5.loadMoreEnd();
                }
                return zfb.a;
            }
            List list3 = (List) triple.getSecond();
            if (list3 != null) {
                if (cloudFragment.isInEditMode && (mCheckBoxAll = cloudFragment.getMCheckBoxAll()) != null) {
                    mCheckBoxAll.setChecked(false);
                }
                if (((Boolean) triple.getFirst()).booleanValue()) {
                    if (cloudFragment.isInEditMode && (cloudDataAdapter = cloudFragment.mCloudDataAdapter) != null) {
                        cloudDataAdapter.g();
                    }
                    cloudFragment.setCloudDataNewData(new ArrayList(list3));
                    CloudDataAdapter cloudDataAdapter6 = cloudFragment.mCloudDataAdapter;
                    if (cloudDataAdapter6 != null) {
                        cloudDataAdapter6.loadMoreComplete();
                    }
                } else {
                    CloudDataAdapter cloudDataAdapter7 = cloudFragment.mCloudDataAdapter;
                    if (cloudDataAdapter7 != null) {
                        cloudDataAdapter7.addData((Collection) new ArrayList(list3));
                    }
                    CloudDataAdapter cloudDataAdapter8 = cloudFragment.mCloudDataAdapter;
                    if (cloudDataAdapter8 != null) {
                        cloudDataAdapter8.loadMoreComplete();
                    }
                    ThreadUtils.o().post(new Runnable() {
                        @Override
                        public final void run() {
                            CloudFragment.initViewModel$lambda$69$lambda$68$lambda$67$lambda$66(this.b);
                        }
                    });
                }
            }
        }
        return zfb.a;
    }

    public static final void initViewModel$lambda$69$lambda$68$lambda$67$lambda$66(CloudFragment cloudFragment) {
        RecyclerViewFastScroller recyclerViewFastScroller = cloudFragment.mRecyclerViewFastScroller;
        if (recyclerViewFastScroller != null) {
            recyclerViewFastScroller.refreshScrollerBar();
        }
    }

    public static final zfb initViewModel$lambda$71(CloudFragment cloudFragment, List list) {
        ViewGroup viewGroup = cloudFragment.mRlRecentlyView;
        ViewGroup.LayoutParams layoutParams = viewGroup != null ? viewGroup.getLayoutParams() : null;
        y45.h(layoutParams, "null cannot be cast to non-null type com.google.android.material.appbar.AppBarLayout.LayoutParams");
        AppBarLayout.LayoutParams layoutParams2 = (AppBarLayout.LayoutParams) layoutParams;
        if (list == null) {
            ((LinearLayout.LayoutParams) layoutParams2).topMargin = com.transsion.utils.a.d(cloudFragment.mContext, 27.0f);
            ViewGroup viewGroup2 = cloudFragment.mRlRecentlyView;
            if (viewGroup2 != null) {
                viewGroup2.setLayoutParams(layoutParams2);
            }
        }
        if (list != null) {
            List<VideoCloudData> listFilterRecentlyList = cloudFragment.filterRecentlyList(list);
            if (listFilterRecentlyList.size() > 2) {
                listFilterRecentlyList = new ArrayList(listFilterRecentlyList.subList(0, 2));
            }
            if (listFilterRecentlyList.isEmpty()) {
                ViewGroup viewGroup3 = cloudFragment.mRlRecentlyView;
                if (viewGroup3 != null) {
                    viewGroup3.setVisibility(8);
                }
                RecyclerView recyclerView = cloudFragment.mRcRecentlyView;
                if (recyclerView != null) {
                    recyclerView.setVisibility(8);
                }
                ((LinearLayout.LayoutParams) layoutParams2).topMargin = com.transsion.utils.a.d(cloudFragment.mContext, 27.0f);
            } else if (!cloudFragment.isInEditMode) {
                ViewGroup viewGroup4 = cloudFragment.mRlRecentlyView;
                if (viewGroup4 != null) {
                    viewGroup4.setVisibility(0);
                }
                RecyclerView recyclerView2 = cloudFragment.mRcRecentlyView;
                if (recyclerView2 != null) {
                    recyclerView2.setVisibility(0);
                }
                ((LinearLayout.LayoutParams) layoutParams2).topMargin = com.transsion.utils.a.d(cloudFragment.mContext, 21.0f);
            }
            CloudRecentlyDataAdapter cloudRecentlyDataAdapter = cloudFragment.mCloudRecentlyDataAdapter;
            if (cloudRecentlyDataAdapter != null) {
                cloudRecentlyDataAdapter.setNewData(new ArrayList(listFilterRecentlyList));
            }
        }
        ViewGroup viewGroup5 = cloudFragment.mRlRecentlyView;
        if (viewGroup5 != null) {
            viewGroup5.setLayoutParams(layoutParams2);
        }
        return zfb.a;
    }

    public static final zfb initViewModel$lambda$74(CloudFragment cloudFragment, List list) {
        ViewGroup viewGroup = cloudFragment.mRlRecentlyView;
        ViewGroup.LayoutParams layoutParams = viewGroup != null ? viewGroup.getLayoutParams() : null;
        y45.h(layoutParams, "null cannot be cast to non-null type com.google.android.material.appbar.AppBarLayout.LayoutParams");
        AppBarLayout.LayoutParams layoutParams2 = (AppBarLayout.LayoutParams) layoutParams;
        if (list == null) {
            ((LinearLayout.LayoutParams) layoutParams2).topMargin = com.transsion.utils.a.d(cloudFragment.mContext, 27.0f);
            ViewGroup viewGroup2 = cloudFragment.mRlRecentlyView;
            if (viewGroup2 != null) {
                viewGroup2.setLayoutParams(layoutParams2);
            }
        }
        if (list != null) {
            if (list.size() > 6) {
                list = new ArrayList(list.subList(0, 6));
            }
            if (list.isEmpty()) {
                RecyclerView recyclerView = cloudFragment.mRcFavoriteView;
                if (recyclerView != null) {
                    recyclerView.setVisibility(8);
                }
                View view = cloudFragment.mRlFavoriteItemView;
                if (view != null) {
                    view.setVisibility(8);
                }
                ((LinearLayout.LayoutParams) layoutParams2).topMargin = com.transsion.utils.a.d(cloudFragment.mContext, 27.0f);
            } else if (!cloudFragment.isInEditMode) {
                RecyclerView recyclerView2 = cloudFragment.mRcFavoriteView;
                if (recyclerView2 != null) {
                    recyclerView2.setVisibility(0);
                }
                View view2 = cloudFragment.mRlFavoriteItemView;
                if (view2 != null) {
                    view2.setVisibility(0);
                }
                ((LinearLayout.LayoutParams) layoutParams2).topMargin = com.transsion.utils.a.d(cloudFragment.mContext, 21.0f);
            }
            ViewGroup viewGroup3 = cloudFragment.mRlRecentlyView;
            if (viewGroup3 != null) {
                viewGroup3.setLayoutParams(layoutParams2);
            }
            CloudFavoriteAdapter cloudFavoriteAdapter = cloudFragment.mCloudFavoriteAdapter;
            if (cloudFavoriteAdapter != null) {
                cloudFavoriteAdapter.setNewData(new ArrayList(list));
            }
            RecyclerView recyclerView3 = cloudFragment.mRcFavoriteView;
            if (recyclerView3 != null) {
                ViewGroup.LayoutParams layoutParams3 = recyclerView3.getLayoutParams();
                if (layoutParams3 instanceof LinearLayout.LayoutParams) {
                    ((LinearLayout.LayoutParams) layoutParams3).gravity = list.size() != 1 ? GravityCompat.START : 1;
                    recyclerView3.setLayoutParams(layoutParams3);
                }
            }
        }
        return zfb.a;
    }

    public static final zfb initViewModel$lambda$75(CloudFragment cloudFragment, Pair pair) {
        cloudFragment.updateLoginState(((Boolean) pair.getFirst()).booleanValue(), (String) pair.getSecond());
        return zfb.a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final zfb initViewModel$lambda$77(CloudFragment cloudFragment, SpaceStatistics spaceStatistics) {
        try {
            String str = s44.d(cloudFragment.mContext, spaceStatistics.getUsedSize()) + " / " + s44.d(cloudFragment.mContext, spaceStatistics.getTotalSize());
            TextView textView = cloudFragment.mTvStorageInfo;
            if (textView != null) {
                textView.setText(str);
            }
            TextView textView2 = cloudFragment.mTvCloudStorageForNoContent;
            if (textView2 != null) {
                textView2.setText(str);
            }
            SpaceStatistics spaceStatistics2 = (SpaceStatistics) cloudFragment.getMViewModel().getMCloudStorageInfo().getValue();
            if (spaceStatistics2 != null && com.transsion.palmsdk.b.s()) {
                cloudFragment.setMIsCloudContentShow(false);
                az5.a aVar = az5.a;
                String strM = com.transsion.palmsdk.b.m();
                y45.i(strM, "getPalmIdUniqueId(...)");
                aVar.g(0, strM, spaceStatistics2.getUsedSize(), spaceStatistics2.getTotalSize());
            }
        } catch (Exception unused) {
        }
        return zfb.a;
    }

    public static final zfb initViewModel$lambda$78(CloudFragment cloudFragment, List list) {
        if (cloudFragment.mUploadedCount != list.size()) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - cloudFragment.getMViewModel().getMLastUpdateTime() >= C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS) {
                CloudDataAdapter cloudDataAdapter = cloudFragment.mCloudDataAdapter;
                List<VideoCloudData> data = cloudDataAdapter != null ? cloudDataAdapter.getData() : null;
                if (data == null || data.isEmpty()) {
                    cloudFragment.refreshData(false);
                    cloudFragment.getMViewModel().t();
                    return zfb.a;
                }
                RecyclerView recyclerView = cloudFragment.mRcCloudView;
                RecyclerView.LayoutManager layoutManager = recyclerView != null ? recyclerView.getLayoutManager() : null;
                LinearLayoutManager linearLayoutManager = layoutManager instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager : null;
                if ((linearLayoutManager != null ? linearLayoutManager.findLastVisibleItemPosition() : 0) < cloudFragment.getMViewModel().getMPageSize() - cloudFragment.mOffset) {
                    cloudFragment.refreshData(false);
                }
                cloudFragment.getMViewModel().t();
                cloudFragment.getMViewModel().m0(jCurrentTimeMillis);
            }
            cloudFragment.mUploadedCount = list.size();
        }
        return zfb.a;
    }

    public static final zfb initViewModel$lambda$79(CloudFragment cloudFragment, Pair pair) {
        if (((Boolean) pair.getFirst()).booleanValue()) {
            cloudFragment.initNetWorkError(cloudFragment.mRootView, ((Boolean) pair.getSecond()).booleanValue() ? cloudFragment.mContext.getString(R.string.network_error) : cloudFragment.mContext.getString(R.string.net_not_connect));
        } else {
            cloudFragment.hideNetWorkError();
        }
        return zfb.a;
    }

    public static final zfb initViewModel$lambda$80(CloudFragment cloudFragment, Boolean bool) {
        cloudFragment.showFreezeDialog();
        if (!bool.booleanValue()) {
            cloudFragment.refreshData(true);
            cloudFragment.getMViewModel().t();
        }
        return zfb.a;
    }

    public static final zfb initViewModel$lambda$81(Boolean bool) {
        if (y45.e(bool, Boolean.TRUE)) {
            m21.a.d();
            CloudTaskFinishCacheManager.a.k().setValue(Boolean.FALSE);
        }
        return zfb.a;
    }

    public static final void mVideoBarShowStateObserver$lambda$102(CloudFragment cloudFragment, Boolean bool) {
        cloudFragment.notifyVideoBarShowStateChange(bool != null ? bool.booleanValue() : false);
    }

    @SuppressLint({"CheckResult"})
    private final void markCloudTransmitList(final List<VideoCloudData> videoCloudDataList, final boolean isUpload) {
        if (videoCloudDataList == null || videoCloudDataList.isEmpty()) {
            return;
        }
        mc7.K(videoCloudDataList).g(bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return CloudFragment.markCloudTransmitList$lambda$107(videoCloudDataList, isUpload, (List) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                CloudFragment.markCloudTransmitList$lambda$108(videoCloudDataList, isUpload, (Long) obj);
            }
        });
    }

    public static final Long markCloudTransmitList$lambda$107(List list, boolean z, List list2) {
        y45.j(list2, "videoList");
        return Long.valueOf(cz5.c(list, z));
    }

    public static final void markCloudTransmitList$lambda$108(List list, boolean z, Long l) {
        y45.g(l);
        cz5.f(l.longValue(), list.size(), z);
    }

    private final void notifyVideoBarShowStateChange(boolean show) {
        RecyclerViewFastScroller recyclerViewFastScroller = this.mRecyclerViewFastScroller;
        if (recyclerViewFastScroller != null) {
            recyclerViewFastScroller.setPadding(recyclerViewFastScroller.getPaddingStart(), recyclerViewFastScroller.getPaddingTop(), recyclerViewFastScroller.getPaddingEnd(), com.transsion.utils.a.d(this.mContext, getBottomPadding(show)));
        }
        FrameLayout frameLayout = this.mCardViewAdd;
        if (frameLayout == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = frameLayout != null ? frameLayout.getLayoutParams() : null;
        y45.h(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        if (show) {
            marginLayoutParams.bottomMargin = oc2.a(this.mContext, 126.0f);
        } else {
            marginLayoutParams.bottomMargin = oc2.a(this.mContext, 54.0f);
        }
        FrameLayout frameLayout2 = this.mCardViewAdd;
        if (frameLayout2 != null) {
            frameLayout2.setLayoutParams(marginLayoutParams);
        }
    }

    public static final zfb onSelectInViewPage$lambda$7$lambda$6(CloudFragment cloudFragment, int i) {
        if (i < 2) {
            ea7.p(cloudFragment.mIvDownLoad, cloudFragment.mContext.getString(R.string.visha_global_network_download_title), 8388693);
        }
        return zfb.a;
    }

    public static final zfb onViewCreated$lambda$2(Boolean bool) {
        if (y45.e(bool, Boolean.TRUE)) {
            m21.a.d();
            CloudTaskFinishCacheManager.a.k().setValue(Boolean.FALSE);
        }
        return zfb.a;
    }

    private final void refreshCloudDataWithDelay() {
        View view;
        if (kt1.c("refreshCloudDataWithDelay", 1000L) && (view = getView()) != null) {
            view.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    CloudFragment.refreshCloudDataWithDelay$lambda$4(this.b);
                }
            }, 1000L);
        }
    }

    public static final void refreshCloudDataWithDelay$lambda$4(CloudFragment cloudFragment) {
        if (CloudFeaturesConfigHelper.INSTANCE.getInstance().getMediaLibraryDataFlag()) {
            cloudFragment.getMViewModel().s();
        }
        cloudFragment.getMViewModel().W();
    }

    public static final boolean refreshCloudListData$lambda$94(List list, VideoCloudData videoCloudData) {
        List list2 = list;
        if ((list2 instanceof Collection) && list2.isEmpty()) {
            return false;
        }
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            if (y45.e(((VideoCloudData) it.next()).getFileId(), videoCloudData.getFileId())) {
                return true;
            }
        }
        return false;
    }

    public static final boolean refreshCloudListData$lambda$96(List list, VideoCloudData videoCloudData) {
        List list2 = list;
        if ((list2 instanceof Collection) && list2.isEmpty()) {
            return false;
        }
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            if (y45.e(((VideoCloudData) it.next()).getFileId(), videoCloudData.getFileId())) {
                return true;
            }
        }
        return false;
    }

    public final void refreshData(boolean isAll) {
        this.mIsNeedUploadData = false;
        if (this.isInEditMode) {
            return;
        }
        getMViewModel().i0(1);
        if (isAll) {
            CloudViewModel.c0(getMViewModel(), 0, null, null, 0, null, 23, null);
        } else {
            CloudViewModel.c0(getMViewModel(), 0, null, null, 2, null, 23, null);
        }
    }

    private final void refreshStorageData() {
        Runnable runnable = this.pollRunnable;
        if (runnable != null) {
            ThreadUtils.o().removeCallbacks(runnable);
        }
        final Ref$IntRef ref$IntRef = new Ref$IntRef();
        final int i = 5;
        final long j = 2000;
        Runnable runnable2 = new Runnable() {
            @Override
            public void run() {
                CloudFragment.this.getMViewModel().t();
                Ref$IntRef ref$IntRef2 = ref$IntRef;
                int i2 = ref$IntRef2.element + 1;
                ref$IntRef2.element = i2;
                if (i2 < i) {
                    ThreadUtils.o().postDelayed(this, j);
                }
            }
        };
        this.pollRunnable = runnable2;
        ThreadUtils.o().post(runnable2);
    }

    public final void selectItem(CloudDataAdapter adapter, View view, int position, boolean child) {
        List<VideoCloudData> data;
        List<VideoCloudData> data2;
        if (adapter == null || (data2 = adapter.getData()) == null || data2.size() != 0) {
            VideoCloudData videoCloudData = (adapter == null || (data = adapter.getData()) == null) ? null : data.get(position);
            y45.h(videoCloudData, "null cannot be cast to non-null type com.transsion.dbdata.beans.VideoCloudData");
            CheckBox checkBox = view != null ? (CheckBox) view.findViewById(R.id.iv_bucket_fragment_checkBox) : null;
            if (checkBox != null) {
                checkBox.setChecked(!checkBox.isChecked());
            }
            y45.h(adapter, "null cannot be cast to non-null type com.transsion.cloud.adapter.CloudDataAdapter");
            CloudDataAdapter.w(adapter, videoCloudData, checkBox != null && child == checkBox.isChecked(), position, false, 8, null);
        }
    }

    private final void setCloudDataNewData(List<? extends VideoCloudData> data) {
        CloudDataAdapter cloudDataAdapter = this.mCloudDataAdapter;
        if (cloudDataAdapter != null) {
            cloudDataAdapter.setNewData(data);
        }
        List<? extends VideoCloudData> list = data;
        ArrayList arrayList = new ArrayList(z71.v(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((VideoCloudData) it.next()).getFileId());
        }
        VideoCloudCacheHelper.g(arrayList);
    }

    private final void setViewsHide() {
        View view = this.mIvSearch;
        if (view != null) {
            view.setVisibility(8);
        }
        View view2 = this.mIvTranslate;
        if (view2 != null) {
            view2.setVisibility(8);
        }
        FrameLayout frameLayout = this.mCardViewAdd;
        if (frameLayout != null) {
            frameLayout.setVisibility(8);
        }
    }

    private final void showFreezeDialog() {
        if (y45.e(CloudTaskFinishCacheManager.a.n().getValue(), Boolean.TRUE)) {
            showFreezePrompt();
            return;
        }
        View view = this.mIvSearch;
        if (view != null) {
            view.setVisibility(this.isInEditMode ? 8 : 0);
        }
        View view2 = this.mIvTranslate;
        if (view2 != null) {
            view2.setVisibility(this.isInEditMode ? 8 : 0);
        }
        FrameLayout frameLayout = this.mCardViewAdd;
        if (frameLayout != null) {
            frameLayout.setVisibility(0);
        }
        View view3 = this.freezeView;
        if (view3 != null) {
            view3.setVisibility(8);
        }
    }

    private final void showFreezePrompt() {
        View view = this.freezeView;
        if (view == null || view.getVisibility() != 0) {
            com.transsion.widgetslib.dialog.d dVar = this.mFreezeDialog;
            if ((dVar == null || !dVar.isShowing()) && this.mDidFreezeDialog) {
                if (CloudTaskFinishCacheManager.a.g()) {
                    showFreezeView();
                    setViewsHide();
                    return;
                }
                String string = getString(com.transsion.playercommon.R.string.freeze_dialog_msg);
                y45.i(string, "getString(...)");
                com.transsion.widgetslib.dialog.d dVarA = new com.transsion.widgetslib.dialog.d.a(this.mContext).k(string).u(com.transsion.playercommon.R.string.confirm, new DialogInterface.OnClickListener() {
                    @Override
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        CloudFragment.showFreezePrompt$lambda$8(this.b, dialogInterface, i);
                    }
                }).r(new DialogInterface.OnCancelListener() {
                    @Override
                    public final void onCancel(DialogInterface dialogInterface) {
                        CloudFragment.showFreezePrompt$lambda$9(this.b, dialogInterface);
                    }
                }).a();
                this.mFreezeDialog = dVarA;
                if (dVarA != null) {
                    dVarA.show();
                }
                az5.a.i();
            }
        }
    }

    public static final void showFreezePrompt$lambda$8(CloudFragment cloudFragment, DialogInterface dialogInterface, int i) {
        cloudFragment.showFreezeView();
        cloudFragment.setViewsHide();
        com.transsion.widgetslib.dialog.d dVar = cloudFragment.mFreezeDialog;
        if (dVar != null) {
            dVar.dismiss();
        }
    }

    public static final void showFreezePrompt$lambda$9(CloudFragment cloudFragment, DialogInterface dialogInterface) {
        cloudFragment.showFreezeView();
        cloudFragment.setViewsHide();
    }

    private final void showFreezeView() {
        View view = getView();
        View viewFindViewById = view != null ? view.findViewById(R.id.ll_freeze_state) : null;
        this.freezeView = viewFindViewById;
        if (viewFindViewById == null) {
            View view2 = getView();
            ViewStub viewStub = view2 != null ? (ViewStub) view2.findViewById(R.id.vb_freeze_view) : null;
            this.freezeView = viewStub != null ? viewStub.inflate() : null;
        }
        View view3 = this.freezeView;
        if (view3 != null) {
            view3.setVisibility(0);
        }
        View view4 = this.freezeView;
        if (view4 != null) {
            view4.setClickable(true);
        }
        CloudTaskFinishCacheManager.a.r(false);
    }

    private final void showLoadingView() {
        View view = this.mEmptyView;
        if (view != null) {
            view.setVisibility(0);
        }
        View view2 = this.mVlsContainer;
        if (view2 != null) {
            view2.setVisibility(0);
        }
    }

    private final void showLoginLoadingDialog() {
        com.transsion.widgetslib.dialog.d dVar = this.mLoginLoadingDialog;
        if (dVar == null || !dVar.isShowing()) {
            com.transsion.widgetslib.dialog.b bVarC = new com.transsion.widgetslib.dialog.b(getActivity()).c(R.string.visha_loading_login);
            this.mLoginLoadingDialog = bVarC != null ? bVarC.e() : null;
        }
    }

    private final void showReceiveFreeSpaceDialog(final long freeSpaceSize) {
        new com.transsion.widgetslib.dialog.d.a(this.mContext).A(R.string.visha_get_free_cloud_space).j(R.string.visha_get_free_cloud_space_message).u(R.string.visha_get_space, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.b.goToReceiveFreeSpace(freeSpaceSize);
            }
        }).m(com.transsion.playercommon.R.string.cancel, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                CloudFragment.showReceiveFreeSpaceDialog$lambda$56(dialogInterface, i);
            }
        }).a().show();
    }

    public static final void showReceiveFreeSpaceDialog$lambda$56(DialogInterface dialogInterface, int i) {
    }

    public static final void showSortPopupWindow$lambda$61(CloudFragment cloudFragment, SortGroup sortGroup, int i, int i2) {
        cloudFragment.mSortPopupWindow.dismiss();
    }

    private final void startPlay(VideoCloudData videoCloudData, int position, int listFlag) {
        CustomSwipeRefreshLayout customSwipeRefreshLayout = this.mRefreshView;
        if (customSwipeRefreshLayout == null || customSwipeRefreshLayout.isRefreshing()) {
            return;
        }
        getMViewModel().k0(videoCloudData);
        getMViewModel().l0(position);
        if (listFlag == 1006) {
            jumpToPlayForRecent(videoCloudData, listFlag);
        } else {
            jumpToPlayerPage(videoCloudData, listFlag);
        }
    }

    private final void updateAppBarScrollBehavior(boolean disableScroll) {
        LinearLayout linearLayout = this.mAppBarContent;
        if (linearLayout != null) {
            ViewGroup.LayoutParams layoutParams = linearLayout.getLayoutParams();
            AppBarLayout.LayoutParams layoutParams2 = layoutParams instanceof AppBarLayout.LayoutParams ? (AppBarLayout.LayoutParams) layoutParams : null;
            if (layoutParams2 != null) {
                layoutParams2.setScrollFlags(disableScroll ? 0 : 5);
            }
            linearLayout.setLayoutParams(layoutParams2);
        }
    }

    public final void updateBottomOperationBar() {
        NewAppFootActionBar newAppFootActionBar = this.mEditFootOperationBar;
        if (newAppFootActionBar != null) {
            newAppFootActionBar.setVisibility(this.isInEditMode ? 0 : 8);
            if (newAppFootActionBar.getVisibility() == 0) {
                CloudDataAdapter cloudDataAdapter = this.mCloudDataAdapter;
                y45.g(cloudDataAdapter);
                newAppFootActionBar.setAllEnable(cloudDataAdapter.l() != 0);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:55:0x009c  */
    /* JADX WARN: Code duplicated, block: B:57:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:58:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:60:0x00ac  */
    private final void updateLoginState(boolean isLoggedIn, String url) {
        Context context;
        String string;
        if (!isLoggedIn) {
            CoordinatorLayout coordinatorLayout = this.mVideoMainLayout;
            if (coordinatorLayout != null) {
                coordinatorLayout.setVisibility(8);
            }
            ImageView imageView = this.mIvAdd;
            if (imageView != null) {
                imageView.setVisibility(8);
            }
            View view = this.mCloudUnLogin;
            if (view != null) {
                view.setVisibility(0);
            }
            View view2 = this.mSvNoContentView;
            if (view2 != null) {
                view2.setVisibility(8);
            }
            View view3 = this.mIvSearch;
            if (view3 != null) {
                view3.setVisibility(8);
            }
            hideLoadingView();
            hideNetWorkError();
            getMViewModel().o();
            return;
        }
        dismissLoginLoadingDialog();
        ImageView imageView2 = this.mUserIcon;
        if (imageView2 != null) {
            RequestBuilder<Drawable> requestBuilderLoad = Glide.with(this.mContext).load2(url);
            int i = R.drawable.icon_cloud_login_default;
            requestBuilderLoad.placeholder(i).error(i).into(imageView2);
        }
        ImageView imageView3 = this.mIvForOnContent;
        if (imageView3 != null) {
            RequestBuilder<Drawable> requestBuilderLoad2 = Glide.with(this.mContext).load2(url);
            int i2 = R.drawable.icon_cloud_login_default;
            requestBuilderLoad2.placeholder(i2).error(i2).into(imageView3);
        }
        VishaPalmUserInfo vishaPalmUserInfoP = com.transsion.palmsdk.b.p();
        if (vishaPalmUserInfoP != null) {
            string = vishaPalmUserInfoP.mPalmNickName;
            boolean z = true;
            if (string == null || string.length() == 0) {
                string = null;
            }
            if (string == null) {
                string = vishaPalmUserInfoP.mPalmUserName;
                if (string == null || string.length() == 0) {
                    string = null;
                }
                if (string == null) {
                    string = vishaPalmUserInfoP.nickName;
                    if (string == null || string.length() == 0) {
                        string = null;
                    }
                    if (string == null) {
                        string = vishaPalmUserInfoP.userName;
                        if (string != null && string.length() != 0) {
                            z = false;
                        }
                        if (z) {
                            string = null;
                        }
                    }
                }
            }
            if (string == null) {
                context = getContext();
                if (context != null) {
                    string = context.getString(R.string.visha_unknown);
                } else {
                    string = null;
                }
                if (string == null) {
                    string = " ";
                }
            }
        } else {
            context = getContext();
            if (context != null) {
                string = context.getString(R.string.visha_unknown);
            } else {
                string = null;
            }
            if (string == null) {
                string = " ";
            }
        }
        TextView textView = this.mTvCloudUserName;
        if (textView != null) {
            textView.setText(string);
        }
        String str = vishaPalmUserInfoP != null ? vishaPalmUserInfoP.userName : null;
        String str2 = vishaPalmUserInfoP != null ? vishaPalmUserInfoP.nickName : null;
        TextView textView2 = this.mTvCloudUserName;
        Log.d("CloudFragment", "updateLoginState " + str + StringUtils.COMMA + str2 + ", " + ((Object) (textView2 != null ? textView2.getText() : null)));
        TextView textView3 = this.mTvCloudUserNameNoContent;
        if (textView3 != null) {
            textView3.setText(string);
        }
        CoordinatorLayout coordinatorLayout2 = this.mVideoMainLayout;
        if (coordinatorLayout2 != null) {
            coordinatorLayout2.setVisibility(0);
        }
        ImageView imageView4 = this.mIvAdd;
        if (imageView4 != null) {
            imageView4.setVisibility(0);
        }
        View view4 = this.mCloudUnLogin;
        if (view4 != null) {
            view4.setVisibility(8);
        }
        View view5 = this.mIvSearch;
        if (view5 != null) {
            view5.setVisibility(0);
        }
        MainApp.s = false;
    }

    private final void updateRecentlyListAfterDelete(List<? extends VideoCloudData> recentlyData) {
        List<VideoCloudData> listFilterRecentlyList = filterRecentlyList(recentlyData);
        List<VideoCloudData> list = listFilterRecentlyList;
        getMViewModel().getMCloudRecentlyList().setValue(new ArrayList(list));
        ViewGroup viewGroup = this.mRlRecentlyView;
        ViewGroup.LayoutParams layoutParams = viewGroup != null ? viewGroup.getLayoutParams() : null;
        AppBarLayout.LayoutParams layoutParams2 = layoutParams instanceof AppBarLayout.LayoutParams ? (AppBarLayout.LayoutParams) layoutParams : null;
        if (layoutParams2 == null) {
            CloudRecentlyDataAdapter cloudRecentlyDataAdapter = this.mCloudRecentlyDataAdapter;
            if (cloudRecentlyDataAdapter != null) {
                cloudRecentlyDataAdapter.setNewData(new ArrayList(list));
                return;
            }
            return;
        }
        applyRecentlyListData(listFilterRecentlyList, layoutParams2);
        ViewGroup viewGroup2 = this.mRlRecentlyView;
        if (viewGroup2 != null) {
            viewGroup2.setLayoutParams(layoutParams2);
        }
    }

    private final void updateTaskCount() {
        BadgeView badgeView;
        int iH = GlobalDownloadManger.B().h() + ri4.e().c();
        if (iH <= 0) {
            BadgeView badgeView2 = this.mUploadCountView;
            if (badgeView2 != null) {
                badgeView2.setVisibility(8);
                return;
            }
            return;
        }
        if (!this.isInEditMode && (badgeView = this.mUploadCountView) != null) {
            badgeView.setVisibility(0);
        }
        BadgeView badgeView3 = this.mUploadCountView;
        if (badgeView3 != null) {
            badgeView3.setNum(iH);
        }
    }

    private final void updateUIForDataState(boolean isEmpty) {
        int i = isEmpty ? 8 : 0;
        ViewGroup viewGroup = this.mRlAllVideosView;
        if (viewGroup != null) {
            viewGroup.setVisibility((isEmpty || this.isInEditMode) ? 8 : 0);
        }
        RecyclerViewFastScroller recyclerViewFastScroller = this.mRecyclerViewFastScroller;
        if (recyclerViewFastScroller != null) {
            recyclerViewFastScroller.setVisibility(i);
        }
        updateAppBarScrollBehavior(isEmpty);
    }

    @Override
    public void didReceivedNotification(int eventId, Object... args) {
        BadgeView badgeView;
        VideoCloudData data;
        List<VideoCloudData> list;
        y45.j(args, "args");
        if (eventId == 1116 || eventId == 1127) {
            int iH = GlobalDownloadManger.B().h() + ri4.e().c();
            if (iH != 0) {
                BadgeView badgeView2 = this.mUploadCountView;
                if (badgeView2 != null && badgeView2.getVisibility() != 0 && !this.isInEditMode && (badgeView = this.mUploadCountView) != null) {
                    badgeView.setVisibility(0);
                }
            } else {
                BadgeView badgeView3 = this.mUploadCountView;
                if (badgeView3 != null) {
                    badgeView3.setVisibility(8);
                }
            }
            if (eventId == 1127 && ri4.e().c() == 0) {
                this.mIsNeedUploadData = true;
                RecyclerView recyclerView = this.mRcCloudView;
                RecyclerView.LayoutManager layoutManager = recyclerView != null ? recyclerView.getLayoutManager() : null;
                LinearLayoutManager linearLayoutManager = layoutManager instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager : null;
                if ((linearLayoutManager != null ? linearLayoutManager.findLastVisibleItemPosition() : 0) < getMViewModel().getMPageSize() - this.mOffset) {
                    refreshData(false);
                }
            }
            BadgeView badgeView4 = this.mUploadCountView;
            if (badgeView4 != null) {
                badgeView4.setNum(iH);
            }
            return;
        }
        if (eventId == 1186) {
            getMViewModel().t();
            return;
        }
        if (eventId == 1133) {
            if (args.length == 0) {
                return;
            }
            Object obj = args[0];
            if (obj instanceof FileHandlerData) {
                y45.h(obj, "null cannot be cast to non-null type com.transsion.dbdata.beans.FileHandlerData");
                FileHandlerData fileHandlerData = (FileHandlerData) obj;
                if (!fileHandlerData.isSuccess() || (data = fileHandlerData.getData()) == null || (list = fileHandlerData.getList()) == null) {
                    return;
                }
                refreshCloudListData(fileHandlerData.getHandleType(), data, list);
                return;
            }
            return;
        }
        if (eventId == 1134) {
            CloudViewModel.v(getMViewModel(), 1, "create_at", "DESC", 1, null, 16, null);
            return;
        }
        if (eventId == 1189 || eventId == 1190) {
            dismissLoginLoadingDialog();
            return;
        }
        switch (eventId) {
            case AnalyticsListener.EVENT_AUDIO_TRACK_INITIALIZED:
                if (!(args.length == 0)) {
                    onUserLogin((VishaPalmUserInfo) args[0]);
                }
                break;
            case AnalyticsListener.EVENT_AUDIO_TRACK_RELEASED:
                userLogout();
                break;
            case AnalyticsListener.EVENT_RENDERER_READY_CHANGED:
                if (!(args.length == 0)) {
                    onUserReLogin((VishaPalmUserInfo) args[0]);
                }
                break;
            default:
                switch (eventId) {
                    case 1129:
                        backToPage();
                        break;
                    case 1130:
                        backToPage();
                        break;
                    case 1131:
                        backToPage();
                        refreshData(true);
                        break;
                }
                break;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void editMode(boolean enter) {
        MutableLiveData mutableLiveData;
        Boolean bool;
        super.editMode(enter);
        CustomSwipeRefreshLayout customSwipeRefreshLayout = this.mRefreshView;
        if (customSwipeRefreshLayout != null) {
            customSwipeRefreshLayout.changeEditMode(enter);
        }
        if (pp3.w) {
            setMainViewModelEditMode(enter);
        }
        PlayBaseFragment.d dVar = this.mEditModeListener;
        boolean zBooleanValue = false;
        if (dVar != null) {
            dVar.d(enter, 1000, true);
            PlayBaseFragment.d dVar2 = this.mEditModeListener;
            CloudDataAdapter cloudDataAdapter = this.mCloudDataAdapter;
            ArrayList selectVideoCloudList = cloudDataAdapter != null ? cloudDataAdapter.getSelectVideoCloudList() : null;
            CloudDataAdapter cloudDataAdapter2 = this.mCloudDataAdapter;
            dVar2.b(selectVideoCloudList, cloudDataAdapter2 != null ? cloudDataAdapter2.r() : false, false);
        }
        if (!pp3.w) {
            initBottomOperationBar();
            applyEditFootBarBottomInset(this.mEditFootOperationBar);
        }
        updateViewWhenEditMode(enter);
        if (pp3.w) {
            ensureCloudTabEditBackCallback();
            OnBackPressedCallback onBackPressedCallback = this.mCloudTabEditBackCallback;
            if (onBackPressedCallback != null) {
                onBackPressedCallback.setEnabled(enter);
            }
        }
        CloudDataAdapter cloudDataAdapter3 = this.mCloudDataAdapter;
        if (cloudDataAdapter3 != null) {
            cloudDataAdapter3.y(enter);
        }
        CloudDataAdapter cloudDataAdapter4 = this.mCloudDataAdapter;
        if (cloudDataAdapter4 != null) {
            cloudDataAdapter4.notifyDataSetChanged();
        }
        if (pp3.w) {
            return;
        }
        updateBottomOperationBar();
        this.mActivity.enterEditMode(enter, 1000, true);
        if (enter) {
            return;
        }
        MainViewModel mainViewModel = this.mMainViewModel;
        if (mainViewModel != null && (mutableLiveData = mainViewModel.g) != null && (bool = (Boolean) mutableLiveData.getValue()) != null) {
            zBooleanValue = bool.booleanValue();
        }
        notifyVideoBarShowStateChange(zBooleanValue);
    }

    public final RecyclerViewFastScroller getMRecyclerViewFastScroller() {
        return this.mRecyclerViewFastScroller;
    }

    @Override
    public void isAppBarLayoutExpand(int offset, int scrollRange) {
        super.isAppBarLayoutExpand(offset, scrollRange);
        if (this.mRcCloudView == null) {
            return;
        }
        setMIsAppbarExpanded(Math.abs(offset) != scrollRange);
    }

    public final boolean isUploadSelectModel() {
        return getMViewModel().getMIsUploadSelectModel();
    }

    @Override
    public void loadData(boolean preload) {
        super.loadData(preload);
        getMViewModel().Y();
        CloudViewModel.c0(getMViewModel(), 0, null, null, 0, null, 23, null);
    }

    @Override
    public boolean onBackPressed() {
        if (!this.isInEditMode) {
            return super.onBackPressed();
        }
        backToPage();
        return true;
    }

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
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        az5.a.n(com.transsion.palmsdk.b.s() ? 1 : 0);
        this.mCloudDataAdapter = new CloudDataAdapter();
        this.mCloudRecentlyDataAdapter = new CloudRecentlyDataAdapter();
        this.mCloudFavoriteAdapter = new CloudFavoriteAdapter();
        CloudVideoPlayInfoManager.a.E();
        LogUtils.i("CloudFragment onCreate, finishedTaskCount: " + CloudTaskFinishCacheManager.a.h() + ", " + CloudFileOperate.getInstance() + ", " + fpb.a.d());
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        y45.j(inflater, "inflater");
        h27.c().b(this, 1129);
        h27.c().b(this, 1127);
        h27.c().b(this, 1116);
        h27.c().b(this, 1130);
        h27.c().b(this, 1131);
        h27.c().b(this, 1134);
        h27.c().b(this, 1186);
        h27.c().b(this, AnalyticsListener.EVENT_RENDERER_READY_CHANGED);
        h27.c().b(this, 1189);
        h27.c().b(this, 1190);
        com.transsion.palmsdk.b.G();
        return super.onCreateView(inflater, container, savedInstanceState);
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        CustomSwipeRefreshLayout customSwipeRefreshLayout = this.mRefreshView;
        if (customSwipeRefreshLayout != null) {
            customSwipeRefreshLayout.setOnChildScrollUpCallback(null);
        }
        h27.c().f(this, 1129);
        h27.c().f(this, 1127);
        h27.c().f(this, 1116);
        h27.c().f(this, 1130);
        h27.c().f(this, 1131);
        h27.c().f(this, 1134);
        h27.c().f(this, 1186);
        h27.c().f(this, AnalyticsListener.EVENT_RENDERER_READY_CHANGED);
        h27.c().f(this, 1189);
        h27.c().f(this, 1190);
        com.transsion.palmsdk.b.L();
        Runnable runnable = this.pollRunnable;
        if (runnable != null) {
            ThreadUtils.o().removeCallbacks(runnable);
        }
        ThreadUtils.o().removeCallbacks(this.mPopupWindowRunnable);
        dismissLoginLoadingDialog();
        MainApp.s("CloudFragment");
    }

    @Override
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (hidden) {
            return;
        }
        refreshCloudDataWithDelay();
    }

    @Override
    public int onLayoutId() {
        return R.layout.cloud_fragment_main;
    }

    @Override
    public void onPause() {
        super.onPause();
        sq3.a().c(getMViewModel().getMIFileOperateListener());
        PopupWindow popupWindow = this.mSortPopupWindow;
        if (popupWindow == null || !popupWindow.isShowing()) {
            return;
        }
        this.mIsClosePopupWindowOnPause = true;
        popupWindow.dismiss();
    }

    @Override
    public void onResume() {
        super.onResume();
        if (!com.transsion.palmsdk.b.s()) {
            az5.a.j();
        }
        getMViewModel().m();
        sq3.a().b(getMViewModel().getMIFileOperateListener());
        VideoCloudData mLastPlayItemData = getMViewModel().getMLastPlayItemData();
        if (mLastPlayItemData != null) {
            mLastPlayItemData.setWatchStatus(1);
        }
        CloudDataAdapter cloudDataAdapter = this.mCloudDataAdapter;
        if (cloudDataAdapter != null) {
            cloudDataAdapter.notifyDataSetChanged();
        }
        getMViewModel().k0(null);
        getMViewModel().l0(-1);
        updateTaskCount();
        if (this.mIsClosePopupWindowOnPause) {
            this.mIsClosePopupWindowOnPause = false;
            ThreadUtils.o().postDelayed(this.mPopupWindowRunnable, 100L);
        }
        this.mDidFreezeDialog = true;
        showFreezeDialog();
        refreshCloudDataWithDelay();
    }

    @Override
    public void onSelectInViewPage() {
        super.onSelectInViewPage();
        if (getActivity() != null && !MainApp.p() && !this.mIsShowNotNetWork) {
            this.mIsShowNotNetWork = true;
            ToastUtils.s(R.string.net_not_connect);
        }
        if (this.mContext != null) {
            if (this.mIsShowTips) {
                return;
            }
            this.mIsShowTips = true;
            if (pp3.w) {
                if (ydc.e()) {
                    getMViewModel().p0();
                } else {
                    getMViewModel().X(new e74() {
                        @Override
                        public final Object invoke(Object obj) {
                            return CloudFragment.onSelectInViewPage$lambda$7$lambda$6(this.b, ((Integer) obj).intValue());
                        }
                    });
                }
            }
        }
        updateTaskCount();
    }

    @Override
    public void onUserLogin(VishaPalmUserInfo vishaPalmUserInfo) {
        Log.d("CloudFragment", "onUserLogin");
        showLoadingView();
        getMViewModel().q0();
        getMViewModel().t();
        CloudViewModel.v(getMViewModel(), 0, null, null, 0, null, 23, null);
        az5.a.l();
    }

    @Override
    public void onUserReLogin(VishaPalmUserInfo vishaPalmUserInfo) {
        Log.d("CloudFragment", "onUserReLogin");
        super.onUserReLogin(vishaPalmUserInfo);
        getMViewModel().q0();
        getMViewModel().t();
        CloudViewModel.v(getMViewModel(), 0, null, null, 0, null, 23, null);
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        View view2;
        TextView textView;
        y45.j(view, "view");
        super.onViewCreated(view, savedInstanceState);
        if (!pp3.w) {
            backgroundFollowBaseWindowByPx(view, (int) this.mContext.getResources().getDimension(R.dimen.video_main_activity_fragment_top_padding));
        }
        this.mRootView = view;
        initLoadingView(view);
        initLoginView(view);
        initNoContentView(view);
        initView(view);
        initViewModel();
        loadData(true);
        if (com.transsion.palmsdk.b.s()) {
            com.transsion.palmsdk.b.D();
        }
        addVideoBarShowStateObserver();
        MainApp.d("CloudFragment", new g());
        if (com.transsion.utils.a.D(this.mContext) && (view2 = this.mRootView) != null && (textView = (TextView) view2.findViewById(R.id.tv_logo_text)) != null) {
            textView.setTextSize(com.transsion.utils.a.d(this.mActivity, 16.0f));
        }
        super.onViewCreatedEnd(view, savedInstanceState);
        CloudTaskFinishCacheManager.a.k().observe(getViewLifecycleOwner(), new h(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return CloudFragment.onViewCreated$lambda$2((Boolean) obj);
            }
        }));
    }

    @Override
    public void refreshCloudListData(int type, VideoCloudData videoCloudData, final List<? extends VideoCloudData> videoCloudDataList) {
        List<VideoCloudData> listK;
        List<VideoCloudData> listK2;
        y45.j(videoCloudData, "videoCloudData");
        y45.j(videoCloudDataList, "videoCloudDataList");
        CloudDataAdapter cloudDataAdapter = this.mCloudDataAdapter;
        if (cloudDataAdapter == null || (listK = cloudDataAdapter.getData()) == null) {
            listK = y71.k();
        }
        ArrayList arrayList = new ArrayList(listK);
        CloudRecentlyDataAdapter cloudRecentlyDataAdapter = this.mCloudRecentlyDataAdapter;
        if (cloudRecentlyDataAdapter == null || (listK2 = cloudRecentlyDataAdapter.getData()) == null) {
            listK2 = y71.k();
        }
        ArrayList arrayList2 = new ArrayList(listK2);
        if (type == 1) {
            refreshStorageData();
            arrayList.remove(videoCloudData);
            setCloudDataNewData(arrayList);
            arrayList2.remove(videoCloudData);
            updateRecentlyListAfterDelete(arrayList2);
            if (arrayList.isEmpty() && arrayList2.isEmpty()) {
                getMViewModel().i0(1);
                CloudViewModel.v(getMViewModel(), 0, null, null, 0, null, 23, null);
                return;
            }
            return;
        }
        if (type != 2) {
            if (type != 3) {
                return;
            }
            refreshStorageData();
            d81.I(arrayList, new e74() {
                @Override
                public final Object invoke(Object obj) {
                    return Boolean.valueOf(CloudFragment.refreshCloudListData$lambda$94(videoCloudDataList, (VideoCloudData) obj));
                }
            });
            d81.I(arrayList2, new e74() {
                @Override
                public final Object invoke(Object obj) {
                    return Boolean.valueOf(CloudFragment.refreshCloudListData$lambda$96(videoCloudDataList, (VideoCloudData) obj));
                }
            });
            if (!arrayList.isEmpty() || !arrayList2.isEmpty()) {
                setCloudDataNewData(arrayList);
                updateRecentlyListAfterDelete(arrayList2);
                return;
            } else {
                setCloudDataNewData(arrayList);
                updateRecentlyListAfterDelete(arrayList2);
                getMViewModel().i0(1);
                CloudViewModel.v(getMViewModel(), 0, null, null, 0, null, 23, null);
                return;
            }
        }
        getMViewModel().t();
        Iterator it = arrayList.iterator();
        int i = 0;
        int i2 = 0;
        while (true) {
            if (!it.hasNext()) {
                i2 = -1;
                break;
            } else if (y45.e(((VideoCloudData) it.next()).getFileId(), videoCloudData.getFileId())) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 != -1) {
            arrayList.set(i2, videoCloudData);
            setCloudDataNewData(arrayList);
        }
        Iterator it2 = arrayList2.iterator();
        while (true) {
            if (!it2.hasNext()) {
                i = -1;
                break;
            } else if (y45.e(((VideoCloudData) it2.next()).getFileId(), videoCloudData.getFileId())) {
                break;
            } else {
                i++;
            }
        }
        if (i != -1) {
            arrayList2.set(i, videoCloudData.copy());
            CloudRecentlyDataAdapter cloudRecentlyDataAdapter2 = this.mCloudRecentlyDataAdapter;
            if (cloudRecentlyDataAdapter2 != null) {
                cloudRecentlyDataAdapter2.setNewData(arrayList2);
            }
        }
    }

    public final void setMRecyclerViewFastScroller(RecyclerViewFastScroller recyclerViewFastScroller) {
        this.mRecyclerViewFastScroller = recyclerViewFastScroller;
    }

    /* JADX WARN: Code duplicated, block: B:51:0x0175  */
    /* JADX WARN: Code duplicated, block: B:52:0x017b  */
    @Override
    @SuppressLint({"UseCompatLoadingForDrawables"})
    public void showSortPopupWindow(View anchorView, boolean isVideo) {
        Drawable drawable;
        boolean zIsInMultiWindowMode;
        int i;
        int width;
        int iD;
        Context context;
        Resources resources;
        Resources resources2;
        Configuration configuration;
        Resources resources3;
        if (System.currentTimeMillis() - af9.d >= 1500 && getContext() != null) {
            af9.d = System.currentTimeMillis();
            PopupWindow popupWindow = new PopupWindow();
            this.mSortPopupWindow = popupWindow;
            popupWindow.setAnimationStyle(R.style.popup_anim);
            this.mSortPopupWindow.setElevation(getResources().getDimension(R.dimen.os_popup_menu_shadow_size));
            PopupWindow popupWindow2 = this.mSortPopupWindow;
            Context context2 = getContext();
            Configuration configuration2 = null;
            if (context2 == null || (resources3 = context2.getResources()) == null) {
                drawable = null;
            } else {
                int i2 = R.drawable.os_popup_background;
                Context context3 = getContext();
                drawable = resources3.getDrawable(i2, context3 != null ? context3.getTheme() : null);
            }
            popupWindow2.setBackgroundDrawable(drawable);
            Context context4 = getContext();
            Object systemService = context4 != null ? context4.getSystemService("layout_inflater") : null;
            y45.h(systemService, "null cannot be cast to non-null type android.view.LayoutInflater");
            View viewInflate = ((LayoutInflater) systemService).inflate(R.layout.video_sort_item_list, (ViewGroup) null);
            SortGroup sortGroup = (SortGroup) viewInflate.findViewById(R.id.sort_by_group);
            SortItem sortItem = (SortItem) viewInflate.findViewById(R.id.item_by_order_num);
            this.sortItemNum = sortItem;
            sortItem.setVisibility(8);
            this.sortItemDate = (SortItem) viewInflate.findViewById(R.id.item_by_date);
            SortItem sortItem2 = (SortItem) viewInflate.findViewById(R.id.item_by_name);
            this.sortItemName = sortItem2;
            sortItem2.setVisibility(8);
            this.sortItemLength = (SortItem) viewInflate.findViewById(R.id.item_by_length);
            this.sortItemSize = (SortItem) viewInflate.findViewById(R.id.item_by_size);
            SortItem sortItem3 = (SortItem) viewInflate.findViewById(R.id.item_by_count);
            this.sortItemCount = sortItem3;
            sortItem3.setVisibility(8);
            SortItem sortItem4 = (SortItem) viewInflate.findViewById(R.id.item_by_manual);
            this.sortItemManual = sortItem4;
            sortItem4.setVisibility(8);
            sortGroup.setIsSortVideo(isVideo);
            initSortItem(isVideo);
            sortGroup.setOnSelectedChangeListener(new SortGroup.b() {
                @Override
                public final void a(SortGroup sortGroup2, int i3, int i4) {
                    CloudFragment.showSortPopupWindow$lambda$61(this.a, sortGroup2, i3, i4);
                }
            });
            this.mSortPopupWindow.setFocusable(true);
            this.mSortPopupWindow.setOutsideTouchable(true);
            this.mSortPopupWindow.setWidth(-2);
            this.mSortPopupWindow.setHeight(-2);
            this.mSortPopupWindow.setContentView(viewInflate);
            viewInflate.measure(0, 0);
            Context context5 = getContext();
            boolean z = (context5 == null || (resources2 = context5.getResources()) == null || (configuration = resources2.getConfiguration()) == null || configuration.orientation != 2) ? false : true;
            Context context6 = this.mContext;
            if (context6 instanceof BaseActivity) {
                y45.h(context6, "null cannot be cast to non-null type com.transsion.playercommon.activities.BaseActivity");
                zIsInMultiWindowMode = ((BaseActivity) context6).isInMultiWindowMode();
            } else {
                zIsInMultiWindowMode = false;
            }
            if (!av3.z()) {
                if (zIsInMultiWindowMode && z) {
                    int measuredWidth = viewInflate.getMeasuredWidth();
                    y45.g(anchorView);
                    width = measuredWidth - (anchorView.getWidth() / 2);
                } else {
                    i = 0;
                }
                iD = (-(viewInflate.getMeasuredHeight() / 2)) - com.transsion.utils.a.d(getContext(), 20.0f);
                context = getContext();
                if (context != null && (resources = context.getResources()) != null) {
                    configuration2 = resources.getConfiguration();
                }
                if (com.transsion.utils.a.z(configuration2)) {
                    this.mSortPopupWindow.showAsDropDown(anchorView, i, iD);
                } else {
                    this.mSortPopupWindow.showAsDropDown(anchorView, i, 0);
                }
            }
            y45.g(anchorView);
            width = anchorView.getWidth();
            i = -width;
            iD = (-(viewInflate.getMeasuredHeight() / 2)) - com.transsion.utils.a.d(getContext(), 20.0f);
            context = getContext();
            if (context != null) {
                configuration2 = resources.getConfiguration();
            }
            if (com.transsion.utils.a.z(configuration2)) {
                this.mSortPopupWindow.showAsDropDown(anchorView, i, iD);
            } else {
                this.mSortPopupWindow.showAsDropDown(anchorView, i, 0);
            }
        }
    }

    @Override
    public void startEditMode(boolean enter, int listFlag, boolean isVideo) {
        if (enter) {
            return;
        }
        getMViewModel().i0(1);
        CloudViewModel.v(getMViewModel(), 0, null, null, 2, null, 23, null);
    }

    public final void stopEdit() {
        backToPage();
    }

    @Override
    public void updateViewWhenEditMode(boolean enter) {
        Collection collection;
        List<VideoCloudData> list;
        List<VideoCloudData> list2;
        View view;
        super.updateViewWhenEditMode(enter);
        if (pp3.w && (view = this.mIvTitleBarBack) != null) {
            view.setVisibility(enter ? 0 : 8);
        }
        TextView textView = this.mTvTitle;
        if (textView != null) {
            textView.setVisibility(enter ? 0 : 8);
        }
        TextView textView2 = this.mNavTitle;
        if (textView2 != null) {
            textView2.setVisibility(!enter ? 0 : 8);
        }
        CheckBox mCheckBoxAll = getMCheckBoxAll();
        if (mCheckBoxAll != null) {
            mCheckBoxAll.setVisibility(enter ? 0 : 8);
        }
        RecyclerViewFastScroller recyclerViewFastScroller = this.mRecyclerViewFastScroller;
        if (recyclerViewFastScroller != null) {
            recyclerViewFastScroller.setPadding(0, 0, 0, com.transsion.utils.a.d(this.mContext, enter ? 60.0f : 0.0f));
        }
        View view2 = this.mIvSearch;
        if (view2 != null) {
            view2.setVisibility(enter ? 8 : 0);
        }
        View view3 = this.mIvTranslate;
        if (view3 != null) {
            view3.setVisibility(enter ? 8 : 0);
        }
        ImageView imageView = this.mIvAdd;
        if (imageView != null) {
            imageView.setVisibility(enter ? 8 : 0);
        }
        AppBarLayout appBarLayout = this.mAppBarLayout;
        if (appBarLayout != null) {
            appBarLayout.setExpanded(!enter, false);
        }
        View view4 = this.mIvDownLoad;
        if (view4 != null) {
            view4.setVisibility(enter ? 8 : 0);
        }
        boolean z = !enter && GlobalDownloadManger.B().h() + ri4.e().c() > 0;
        BadgeView badgeView = this.mUploadCountView;
        if (badgeView != null) {
            badgeView.setVisibility(z ? 0 : 8);
        }
        if (enter) {
            AppBarLayout appBarLayout2 = this.mAppBarLayout;
            if (appBarLayout2 != null) {
                appBarLayout2.setExpanded(false, false);
            }
        } else {
            RecyclerView recyclerView = this.mRcCloudView;
            RecyclerView.LayoutManager layoutManager = recyclerView != null ? recyclerView.getLayoutManager() : null;
            LinearLayoutManager linearLayoutManager = layoutManager instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager : null;
            if (linearLayoutManager == null || linearLayoutManager.findFirstCompletelyVisibleItemPosition() != 0) {
                AppBarLayout appBarLayout3 = this.mAppBarLayout;
                if (appBarLayout3 != null) {
                    appBarLayout3.setExpanded(false, false);
                }
            } else {
                AppBarLayout appBarLayout4 = this.mAppBarLayout;
                if (appBarLayout4 != null) {
                    appBarLayout4.setExpanded(true, false);
                }
            }
        }
        ViewGroup viewGroup = this.mClStorageInfo;
        if (viewGroup != null) {
            viewGroup.setVisibility(enter ? 8 : 0);
        }
        CloudRecentlyDataAdapter cloudRecentlyDataAdapter = this.mCloudRecentlyDataAdapter;
        List<VideoCloudData> data = cloudRecentlyDataAdapter != null ? cloudRecentlyDataAdapter.getData() : null;
        ViewGroup viewGroup2 = this.mRlRecentlyView;
        if (viewGroup2 != null) {
            viewGroup2.setVisibility((enter || (list2 = data) == null || list2.isEmpty()) ? 8 : 0);
        }
        RecyclerView recyclerView2 = this.mRcRecentlyView;
        if (recyclerView2 != null) {
            recyclerView2.setVisibility((enter || (list = data) == null || list.isEmpty()) ? 8 : 0);
        }
        RecyclerView recyclerView3 = this.mRcFavoriteView;
        if (recyclerView3 != null) {
            recyclerView3.setVisibility(enter ? 8 : 0);
        }
        View view5 = this.mRlFavoriteItemView;
        if (view5 != null) {
            view5.setVisibility((enter || (collection = (Collection) getMViewModel().getMCloudFavoriteList().getValue()) == null || collection.isEmpty()) ? 8 : 0);
        }
        ViewGroup viewGroup3 = this.mRlAllVideosView;
        if (viewGroup3 != null) {
            viewGroup3.setVisibility(enter ? 8 : 0);
        }
    }

    @Override
    public void userLogout() {
        getMViewModel().q0();
        getMViewModel().o();
    }
}
