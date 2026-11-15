package com.transsion.tools.filetrans.activities;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.Application;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.wifi.p2p.WifiP2pDevice;
import android.os.Environment;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.StatFs;
import android.provider.Settings;
import android.text.SpannableString;
import android.text.style.StyleSpan;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewPropertyAnimator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.RequiresApi;
import androidx.constraintlayout.motion.widget.Key;
import androidx.exifinterface.media.ExifInterface;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.recyclerview.widget.RecyclerView;
import androidx.transition.TransitionManager;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.google.android.gms.ads.RequestConfiguration;
import com.mgtv.downloader.p2p.yunfan.YFP2pLoader;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.playercommon.activities.RxPermissionOSBottomSheetDialog;
import com.transsion.playercommon.data.SheetDialogParamsConstant;
import com.transsion.playercommon.gallery.ImageAdapter;
import com.transsion.tools.R;
import com.transsion.tools.filetrans.activities.FileTransSheetDialogActivity;
import com.transsion.tools.filetrans.adapter.FileTransDeviceAdapter;
import com.transsion.utils.CustomGridLayoutManager;
import com.transsion.utils.ToastUtils;
import com.transsion.vishatransfer.data.Conversation;
import com.transsion.vishatransfer.data.DeviceInfo;
import com.transsion.vishatransfer.data.FileData;
import com.transsion.vishatransfer.manager.ITransferHelper;
import com.transsion.vishatransfer.manager.TransferManager;
import com.transsion.vishatransfers.manager.TransferNotificationManager;
import com.transsion.widgetsbottomsheet.bottomsheet.OSPageView;
import com.transsion.widgetslib.dialog.d;
import com.transsion.widgetslib.view.OSLoadingView;
import com.transsion.widgetsrecanimation.animators.BaseItemAnimator;
import defpackage.el0;
import defpackage.hz9;
import defpackage.j1a;
import defpackage.mc2;
import defpackage.mu3;
import defpackage.nk1;
import defpackage.pp3;
import defpackage.se;
import defpackage.u74;
import defpackage.y45;
import defpackage.y71;
import defpackage.yx2;
import defpackage.z71;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.j;

@RequiresApi(29)
@Metadata(d1 = {"\u0000Ò\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u0006\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0004\n\u0002\b\u0007*\u0004\u009b\u0001\u009f\u0001\b\u0007\u0018\u0000 £\u00012\u00020\u0001:\u0002¤\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bJ\r\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\u0003J\r\u0010\n\u001a\u00020\u0006¢\u0006\u0004\b\n\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u000b\u0010\u0003J\u0015\u0010\u000e\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000fJ\r\u0010\u0010\u001a\u00020\u0006¢\u0006\u0004\b\u0010\u0010\u0003J\u000f\u0010\u0011\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u0011\u0010\u0003J\u000f\u0010\u0012\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0014\u0010\u0003J!\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u00152\b\b\u0002\u0010\u0018\u001a\u00020\u0017H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001b\u0010\u0003J\u000f\u0010\u001c\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001c\u0010\u0003J\u000f\u0010\u001e\u001a\u00020\u001dH\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u0006H\u0002¢\u0006\u0004\b \u0010\u0003J\u000f\u0010!\u001a\u00020\u0006H\u0002¢\u0006\u0004\b!\u0010\u0003J\u000f\u0010\"\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\"\u0010\u0003J\u000f\u0010#\u001a\u00020\u0006H\u0003¢\u0006\u0004\b#\u0010\u0003J\u000f\u0010%\u001a\u00020$H\u0002¢\u0006\u0004\b%\u0010&J\u0017\u0010(\u001a\u00020\u00062\u0006\u0010'\u001a\u00020$H\u0003¢\u0006\u0004\b(\u0010)J\u001d\u0010,\u001a\u00020\u00062\f\u0010+\u001a\b\u0012\u0004\u0012\u00020\f0*H\u0002¢\u0006\u0004\b,\u0010-J\u000f\u0010.\u001a\u00020\u0017H\u0002¢\u0006\u0004\b.\u0010/J\u000f\u00100\u001a\u00020\u0006H\u0002¢\u0006\u0004\b0\u0010\u0003J\u000f\u00101\u001a\u00020\u0006H\u0002¢\u0006\u0004\b1\u0010\u0003J\u000f\u00102\u001a\u00020\u0006H\u0002¢\u0006\u0004\b2\u0010\u0003J\u000f\u00103\u001a\u00020\u0006H\u0002¢\u0006\u0004\b3\u0010\u0003R\u0016\u00107\u001a\u0002048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R\u0018\u0010;\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010:R\u0018\u0010?\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010>R\u0018\u0010C\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010BR\u0018\u0010G\u001a\u0004\u0018\u00010D8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010FR\u0016\u0010J\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010IR\u0018\u0010M\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010LR\u0016\u0010P\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010OR\u0018\u0010T\u001a\u0004\u0018\u00010Q8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bR\u0010SR\u0018\u0010V\u001a\u0004\u0018\u00010Q8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bU\u0010SR\u0018\u0010Z\u001a\u0004\u0018\u00010W8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bX\u0010YR\u0018\u0010^\u001a\u0004\u0018\u00010[8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\\\u0010]R\u0018\u0010`\u001a\u0004\u0018\u00010[8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b_\u0010]R\u0016\u0010b\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\ba\u0010_R\u0016\u0010d\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bc\u0010OR\u0016\u0010f\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\be\u0010IR\u0016\u0010h\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bg\u0010OR\u0016\u0010j\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bi\u0010OR\u0016\u0010l\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bk\u0010_R\u0016\u0010n\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bm\u0010OR$\u0010s\u001a\u0012\u0012\u0004\u0012\u00020\f0oj\b\u0012\u0004\u0012\u00020\f`p8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bq\u0010rR\u0016\u0010u\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bt\u0010_R&\u0010{\u001a\u0012\u0012\u0004\u0012\u00020w0vj\b\u0012\u0004\u0012\u00020w`x8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\by\u0010zR\u0016\u0010\u007f\u001a\u00020|8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b}\u0010~R\u001b\u0010\u0082\u0001\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0080\u0001\u0010\u0081\u0001R(\u0010\u0084\u0001\u001a\u0012\u0012\u0004\u0012\u00020\f0vj\b\u0012\u0004\u0012\u00020\f`x8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0083\u0001\u0010zR\u0018\u0010\u0086\u0001\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0085\u0001\u0010_R\u0018\u0010\u008a\u0001\u001a\u00030\u0087\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0088\u0001\u0010\u0089\u0001R\u0018\u0010\u008c\u0001\u001a\u00030\u0087\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u008b\u0001\u0010\u0089\u0001R\u0018\u0010\u008e\u0001\u001a\u00030\u0087\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u008d\u0001\u0010\u0089\u0001R\u0018\u0010\u0090\u0001\u001a\u00030\u0087\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u008f\u0001\u0010\u0089\u0001R\u0018\u0010\u0092\u0001\u001a\u00030\u0087\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0091\u0001\u0010\u0089\u0001R\u001c\u0010\u0096\u0001\u001a\u0005\u0018\u00010\u0093\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0094\u0001\u0010\u0095\u0001R\u0018\u0010\u009a\u0001\u001a\u00030\u0097\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0098\u0001\u0010\u0099\u0001R\u0018\u0010\u009e\u0001\u001a\u00030\u009b\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u009c\u0001\u0010\u009d\u0001R\u0018\u0010¢\u0001\u001a\u00030\u009f\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b \u0001\u0010¡\u0001¨\u0006¥\u0001"}, d2 = {"Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;", "Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;", MethodDecl.initName, "()V", "", "intervalMs", "Lzfb;", "y1", "(J)V", "E1", "V0", "initView", "Landroid/net/wifi/p2p/WifiP2pDevice;", "device", "F1", "(Landroid/net/wifi/p2p/WifiP2pDevice;)V", "z1", "onDestroy", "c1", "()J", "H1", "", "status", "", "apply", "P0", "(IZ)V", "A1", "s1", "", "d1", "()Ljava/lang/String;", "x1", "D1", "l1", "u1", "", "b1", "()D", "totalFileSizeInGB", "S0", "(D)V", "", "devices", "G1", "(Ljava/util/List;)V", "k1", "()Z", "e1", "f1", "W0", "Z0", "Lcom/transsion/vishatransfer/manager/ITransferHelper;", "N", "Lcom/transsion/vishatransfer/manager/ITransferHelper;", "transfer", "Landroid/view/View;", "O", "Landroid/view/View;", "mView", "Landroid/widget/TextView;", "P", "Landroid/widget/TextView;", "mTvName", "Landroid/widget/LinearLayout;", "Q", "Landroid/widget/LinearLayout;", "mLlConnect", "Landroid/widget/ImageView;", "R", "Landroid/widget/ImageView;", "mIvDevice", ExifInterface.LATITUDE_SOUTH, "I", "mStatus", "T", "Ljava/lang/Integer;", "mLastStatus", "U", "J", "mReceiveTime", "Landroid/animation/ObjectAnimator;", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Landroid/animation/ObjectAnimator;", "mRotateAnimator", ExifInterface.LONGITUDE_WEST, "mScaleXAnimation", "Landroid/animation/ValueAnimator;", "X", "Landroid/animation/ValueAnimator;", "mSizeAnimator", "Lcom/transsion/widgetslib/dialog/d;", "Y", "Lcom/transsion/widgetslib/dialog/d;", "mConnectDialog", "Z", "mStorageDialog", "a0", "mInitEdGroup", "b0", "mUpdateStatus", "c0", "mRetryCount", "d0", "mStartConnectTime", "e0", "mStartScanTime", "f0", "mNeedInitCost", "g0", "mScanSuccessCostTime", "Ljava/util/HashSet;", "Lkotlin/collections/HashSet;", "h0", "Ljava/util/HashSet;", "mHasScanDeviceMap", "i0", "mOpenType", "Ljava/util/ArrayList;", "Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$Companion$FileTransItem;", "Lkotlin/collections/ArrayList;", "j0", "Ljava/util/ArrayList;", "mDataList", "Lcom/transsion/tools/filetrans/adapter/FileTransDeviceAdapter;", "k0", "Lcom/transsion/tools/filetrans/adapter/FileTransDeviceAdapter;", "mAdapter", "l0", "Landroid/net/wifi/p2p/WifiP2pDevice;", "mCurrentConnectDevice", "m0", "mDeviceList", "n0", "mIsWiFiConnect", "Ljava/lang/Runnable;", "o0", "Ljava/lang/Runnable;", "mSearchRunnable", "p0", "mScanRunnable", "q0", "mConnectConfirmRunnable", "r0", "mTimeStopSearchRunnable", "s0", "mTimeSearchUpdateRunnable", "Lkotlinx/coroutines/j;", "t0", "Lkotlinx/coroutines/j;", "job", "Lnk1;", "u0", "Lnk1;", "scope", "com/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mSendListener$1", "v0", "Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mSendListener$1;", "mSendListener", "com/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mReceiveListener$1", "w0", "Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mReceiveListener$1;", "mReceiveListener", "x0", "Companion", "tools_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FileTransSheetDialogActivity extends RxPermissionOSBottomSheetDialog {

    public static final Companion INSTANCE = new Companion(null);

    public ITransferHelper transfer;

    public View mView;

    public TextView mTvName;

    public LinearLayout mLlConnect;

    public ImageView mIvDevice;

    public int mStatus;

    public Integer mLastStatus;

    public long mReceiveTime;

    public ObjectAnimator mRotateAnimator;

    public ObjectAnimator mScaleXAnimation;

    public ValueAnimator mSizeAnimator;

    public d mConnectDialog;

    public d mStorageDialog;

    public boolean mInitEdGroup;

    public long mUpdateStatus;

    public int mRetryCount;

    public long mStartConnectTime;

    public long mStartScanTime;

    public boolean mNeedInitCost;

    public long mScanSuccessCostTime;

    public final HashSet mHasScanDeviceMap;

    public boolean mOpenType;

    public ArrayList mDataList;

    public FileTransDeviceAdapter mAdapter;

    public WifiP2pDevice mCurrentConnectDevice;

    public ArrayList mDeviceList;

    public boolean mIsWiFiConnect;

    public final Runnable mSearchRunnable;

    public final Runnable mScanRunnable;

    public final Runnable mConnectConfirmRunnable;

    public final Runnable mTimeStopSearchRunnable;

    public final Runnable mTimeSearchUpdateRunnable;

    public j job;

    public final nk1 scope;

    public final FileTransSheetDialogActivity$mSendListener$1 mSendListener;

    public final FileTransSheetDialogActivity$mReceiveListener$1 mReceiveListener;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Intent a(Context context) {
            y45.j(context, "context");
            Intent intent = new Intent();
            intent.putExtra("data", false);
            intent.setClass(context, FileTransSheetDialogActivity.class);
            return intent;
        }

        public final Intent b(Context context, ArrayList arrayList) {
            y45.j(context, "context");
            y45.j(arrayList, "dataList");
            Intent intent = new Intent();
            intent.putExtra("data", true);
            intent.putExtra(SheetDialogParamsConstant.IN_PARAM_DATA_LIST_IDS, arrayList);
            intent.setClass(context, FileTransSheetDialogActivity.class);
            return intent;
        }

        @Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u000e\u0018\u0000 +2\u00020\u0001:\u0001,B\u0007¢\u0006\u0004\b\u0002\u0010\u0003B\u0011\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0002\u0010\u0006J\u001a\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0096\u0002¢\u0006\u0004\b\n\u0010\u000bJ\r\u0010\r\u001a\u00020\f¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0012\u0010\u0011J\u001f\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0016\u0010\u0017R\"\u0010\u0019\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\"\u0010 \u001a\u00020\u001f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\"\u0010&\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b&\u0010(\"\u0004\b)\u0010*¨\u0006-"}, d2 = {"Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$Companion$FileTransItem;", "Landroid/os/Parcelable;", MethodDecl.initName, "()V", "Landroid/os/Parcel;", "parcel", "(Landroid/os/Parcel;)V", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "Lcom/transsion/vishatransfer/data/FileData;", "toFileData", "()Lcom/transsion/vishatransfer/data/FileData;", "", "hashCode", "()I", "describeContents", "dest", "flags", "Lzfb;", "writeToParcel", "(Landroid/os/Parcel;I)V", "", "path", "Ljava/lang/String;", "getPath", "()Ljava/lang/String;", "setPath", "(Ljava/lang/String;)V", "", PlayAudioData.TAG_SIZE, "J", "getSize", "()J", "setSize", "(J)V", "isAudio", "Z", "()Z", "setAudio", "(Z)V", "CREATOR", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "tools_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class FileTransItem implements Parcelable {

            public static final Companion INSTANCE = new Companion(null);
            private boolean isAudio;
            private String path;
            private long size;

            public static final class Companion implements Parcelable.Creator {
                public Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                @Override
                public FileTransItem createFromParcel(Parcel parcel) {
                    y45.j(parcel, "parcel");
                    return new FileTransItem(parcel);
                }

                @Override
                public FileTransItem[] newArray(int i) {
                    return new FileTransItem[i];
                }

                public Companion() {
                }
            }

            public FileTransItem() {
                this.path = "";
            }

            @Override
            public int describeContents() {
                return 0;
            }

            public boolean equals(Object other) {
                if (!(other instanceof FileTransItem)) {
                    return false;
                }
                FileTransItem fileTransItem = (FileTransItem) other;
                return y45.e(fileTransItem.path, this.path) && fileTransItem.size == this.size;
            }

            public final String getPath() {
                return this.path;
            }

            public final long getSize() {
                return this.size;
            }

            public int hashCode() {
                return (this.path.hashCode() / 10) + (Long.hashCode(this.size) / 10);
            }

            public final boolean getIsAudio() {
                return this.isAudio;
            }

            public final void setAudio(boolean z) {
                this.isAudio = z;
            }

            public final void setPath(String str) {
                y45.j(str, "<set-?>");
                this.path = str;
            }

            public final void setSize(long j) {
                this.size = j;
            }

            public final FileData toFileData() {
                List listO0 = j1a.O0(this.path, new String[]{"/"}, false, 0, 6, null);
                return new FileData(this.path, yx2.m.getAbsolutePath() + "/" + listO0.get(y71.m(listO0)), this.isAudio, false, false, 24, null);
            }

            @Override
            public void writeToParcel(Parcel dest, int flags) {
                y45.j(dest, "dest");
                dest.writeString(this.path);
                dest.writeLong(this.size);
            }

            /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
            public FileTransItem(Parcel parcel) {
                this();
                y45.j(parcel, "parcel");
                String string = parcel.readString();
                this.path = string == null ? "" : string;
                this.size = parcel.readLong();
            }
        }

        public Companion() {
        }
    }

    public static final class a implements u74 {
        public a() {
        }

        public void a(boolean z, String str, int i) {
            y45.j(str, "reason");
            LogUtils.v("FileTransSheetDialogActivity", "[TEST] send connect: " + z + " , " + str);
            if (!z) {
                FileTransSheetDialogActivity.Q0(FileTransSheetDialogActivity.this, 5, false, 2, null);
                com.transsion.dbdata.markpoint.a.a.e(false, FileTransSheetDialogActivity.this.c1(), i);
            } else {
                LogUtils.v("FileTransSheetDialogActivity", "[TEST] send CLIENT_ASK, onConnectAsync");
                FileTransSheetDialogActivity.this.transfer.sendConversationToService(new Conversation(0, 0L, false, 0, 0, new DeviceInfo(FileTransSheetDialogActivity.this.d1()), 14, null));
                FileTransSheetDialogActivity.Q0(FileTransSheetDialogActivity.this, 4, false, 2, null);
            }
        }

        @Override
        public Object invoke(Object obj, Object obj2, Object obj3) {
            a(((Boolean) obj).booleanValue(), (String) obj2, ((Number) obj3).intValue());
            return zfb.a;
        }
    }

    public static final class b extends BaseItemAnimator.a {
        public final TextView b;

        public b(TextView textView) {
            this.b = textView;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            y45.j(animator, "animator");
            this.b.setLayerType(0, null);
        }
    }

    public FileTransSheetDialogActivity() {
        TransferManager transferManager = TransferManager.INSTANCE;
        Application applicationA = se.a();
        y45.i(applicationA, "getApp(...)");
        this.transfer = transferManager.getInstance(applicationA, 1);
        this.mNeedInitCost = true;
        this.mHasScanDeviceMap = new HashSet();
        this.mOpenType = true;
        this.mDataList = new ArrayList();
        this.mAdapter = new FileTransDeviceAdapter();
        this.mDeviceList = new ArrayList();
        this.mSearchRunnable = new Runnable() {
            @Override
            public final void run() {
                FileTransSheetDialogActivity.o1(this.b);
            }
        };
        this.mScanRunnable = new Runnable() {
            @Override
            public final void run() {
                FileTransSheetDialogActivity.n1(this.b);
            }
        };
        this.mConnectConfirmRunnable = new Runnable() {
            @Override
            public final void run() {
                FileTransSheetDialogActivity.m1(this.b);
            }
        };
        this.mTimeStopSearchRunnable = new Runnable() {
            @Override
            public final void run() {
                FileTransSheetDialogActivity.r1(this.b);
            }
        };
        this.mTimeSearchUpdateRunnable = new Runnable() {
            @Override
            public final void run() {
                FileTransSheetDialogActivity.q1(this.b);
            }
        };
        this.scope = kotlinx.coroutines.d.a(mc2.a());
        this.mSendListener = new FileTransSheetDialogActivity$mSendListener$1(this);
        this.mReceiveListener = new FileTransSheetDialogActivity$mReceiveListener$1(this);
    }

    public static final zfb B1(FileTransSheetDialogActivity fileTransSheetDialogActivity, boolean z, String str, int i) {
        y45.j(str, "reason");
        LogUtils.v("FileTransSheetDialogActivity", "[TEST] removeGroupAsync: " + z + ", " + str + ", " + i);
        if (z) {
            fileTransSheetDialogActivity.mInitEdGroup = false;
            fileTransSheetDialogActivity.W0();
        }
        return zfb.a;
    }

    public static final void C1(ViewGroup.LayoutParams layoutParams, ImageView imageView, ValueAnimator valueAnimator) {
        y45.j(valueAnimator, "valueAnimator");
        Object animatedValue = valueAnimator.getAnimatedValue();
        y45.h(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        int iIntValue = ((Integer) animatedValue).intValue();
        layoutParams.width = iIntValue;
        layoutParams.height = iIntValue;
        imageView.setLayoutParams(layoutParams);
    }

    public static void Q0(FileTransSheetDialogActivity fileTransSheetDialogActivity, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = true;
        }
        fileTransSheetDialogActivity.P0(i, z);
    }

    public static final void R0(FileTransSheetDialogActivity fileTransSheetDialogActivity) {
        fileTransSheetDialogActivity.A1();
    }

    public static final void T0(FileTransSheetDialogActivity fileTransSheetDialogActivity, DialogInterface dialogInterface, int i) {
        fileTransSheetDialogActivity.mStorageDialog = null;
    }

    public static final void U0(FileTransSheetDialogActivity fileTransSheetDialogActivity, DialogInterface dialogInterface) {
        fileTransSheetDialogActivity.D1();
        Q0(fileTransSheetDialogActivity, 0, false, 2, null);
    }

    public static final zfb X0(FileTransSheetDialogActivity fileTransSheetDialogActivity, boolean z, String str, int i) {
        y45.j(str, "reason");
        LogUtils.v("FileTransSheetDialogActivity", "[TEST] send fileTransSearchStart: " + z + ", " + str + ", " + fileTransSheetDialogActivity.d1());
        if (!z) {
            com.transsion.dbdata.markpoint.a.a.g("scan", i);
            ToastUtils.x(str, new Object[0]);
            fileTransSheetDialogActivity.animateDismiss();
        }
        return zfb.a;
    }

    public static final zfb Y0(FileTransSheetDialogActivity fileTransSheetDialogActivity, boolean z, String str, int i) {
        y45.j(str, "reason");
        LogUtils.v("FileTransSheetDialogActivity", "[TEST] receive fileTransSearchStart: " + z + ", " + str + ", " + fileTransSheetDialogActivity.d1());
        if (!z) {
            com.transsion.dbdata.markpoint.a.a.g("scan", i);
            ToastUtils.x(str, new Object[0]);
            fileTransSheetDialogActivity.animateDismiss();
        }
        return zfb.a;
    }

    public static final zfb a1(boolean z, String str, int i) {
        y45.j(str, "<unused var>");
        return zfb.a;
    }

    private final void e1() {
        if (k1()) {
            this.transfer.registerListener(this.mSendListener, 1);
        } else {
            this.transfer.registerListener(this.mReceiveListener, 2);
        }
    }

    public static final void g1(FileTransSheetDialogActivity fileTransSheetDialogActivity, View view) {
        if (fileTransSheetDialogActivity.mStatus == 5) {
            Q0(fileTransSheetDialogActivity, 3, false, 2, null);
        }
    }

    public static final void h1(FileTransSheetDialogActivity fileTransSheetDialogActivity, View view) {
        Q0(fileTransSheetDialogActivity, 0, false, 2, null);
    }

    public static final void i1(FileTransSheetDialogActivity fileTransSheetDialogActivity, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        if (fileTransSheetDialogActivity.mStatus == 2) {
            Object item = baseQuickAdapter.getItem(i);
            y45.h(item, "null cannot be cast to non-null type android.net.wifi.p2p.WifiP2pDevice");
            fileTransSheetDialogActivity.mCurrentConnectDevice = (WifiP2pDevice) item;
            Q0(fileTransSheetDialogActivity, 3, false, 2, null);
            com.transsion.dbdata.markpoint.a.a.d();
        }
    }

    public static final void j1(FileTransSheetDialogActivity fileTransSheetDialogActivity, View view) {
        com.transsion.dbdata.markpoint.a.C0214a c0214a = com.transsion.dbdata.markpoint.a.a;
        int i = fileTransSheetDialogActivity.mRetryCount + 1;
        fileTransSheetDialogActivity.mRetryCount = i;
        c0214a.o(i);
        Q0(fileTransSheetDialogActivity, 3, false, 2, null);
    }

    public static final void m1(FileTransSheetDialogActivity fileTransSheetDialogActivity) {
        fileTransSheetDialogActivity.D1();
        Q0(fileTransSheetDialogActivity, 5, false, 2, null);
        com.transsion.dbdata.markpoint.a.a.e(false, fileTransSheetDialogActivity.c1(), 1006);
    }

    public static final void n1(FileTransSheetDialogActivity fileTransSheetDialogActivity) {
        com.transsion.dbdata.markpoint.a.a.f(fileTransSheetDialogActivity.mHasScanDeviceMap.size(), fileTransSheetDialogActivity.mScanSuccessCostTime);
        fileTransSheetDialogActivity.mHasScanDeviceMap.clear();
    }

    public static final void o1(FileTransSheetDialogActivity fileTransSheetDialogActivity) {
        LogUtils.v("FileTransSheetDialogActivity", "[TEST] searchDevicesAsync");
        try {
            fileTransSheetDialogActivity.transfer.searchDevicesAsync(new u74() {
                @Override
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return FileTransSheetDialogActivity.p1(((Boolean) obj).booleanValue(), (String) obj2, ((Integer) obj3).intValue());
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
            LogUtils.l("FileTransSheetDialogActivity", "[TEST] searchDevicesAsync: " + e + ".message");
        }
    }

    public static final zfb p1(boolean z, String str, int i) {
        y45.j(str, "<unused var>");
        return zfb.a;
    }

    public static final void q1(FileTransSheetDialogActivity fileTransSheetDialogActivity) {
        fileTransSheetDialogActivity.H1();
    }

    public static final void r1(FileTransSheetDialogActivity fileTransSheetDialogActivity) {
        Q0(fileTransSheetDialogActivity, 1, false, 2, null);
    }

    public static final zfb t1(boolean z, String str, int i) {
        y45.j(str, "<unused var>");
        return zfb.a;
    }

    public static final void v1(FileTransSheetDialogActivity fileTransSheetDialogActivity, DialogInterface dialogInterface, int i) {
        fileTransSheetDialogActivity.x1();
        fileTransSheetDialogActivity.mConnectDialog = null;
    }

    public static final void w1(FileTransSheetDialogActivity fileTransSheetDialogActivity, DialogInterface dialogInterface, int i) {
        fileTransSheetDialogActivity.transfer.sendConversationToClient(new Conversation(6, 0L, false, 0, 0, null, 62, null));
        fileTransSheetDialogActivity.mConnectDialog = null;
    }

    public final void A1() {
        RelativeLayout relativeLayout;
        ObjectAnimator objectAnimator;
        LinearLayout linearLayout;
        TextView textView;
        ImageView imageView;
        LinearLayout linearLayout2;
        LinearLayout linearLayout3;
        LinearLayout linearLayout4;
        RecyclerView recyclerView;
        OSLoadingView oSLoadingView;
        Integer num;
        ViewPropertyAnimator viewPropertyAnimatorAnimate;
        ViewPropertyAnimator viewPropertyAnimatorAlpha;
        ViewPropertyAnimator duration;
        TextView textView2;
        TextView textView3;
        TextView textView4;
        if (this.mLastStatus != null && k1()) {
            Integer num2 = this.mLastStatus;
            int i = this.mStatus;
            if (num2 != null && num2.intValue() == i) {
            }
        }
        l1();
        switch (this.mStatus) {
            case 0:
                View view = this.mView;
                if (view != null && (linearLayout2 = (LinearLayout) view.findViewById(R.id.ll_root_search)) != null) {
                    linearLayout2.setVisibility(0);
                }
                if (k1()) {
                    View view2 = this.mView;
                    if (view2 != null && (imageView = (ImageView) view2.findViewById(R.id.iv_send_search)) != null) {
                        imageView.setVisibility(0);
                    }
                    View view3 = this.mView;
                    if (view3 != null && (textView = (TextView) view3.findViewById(R.id.tv_searching)) != null) {
                        textView.setVisibility(0);
                    }
                    ThreadUtils.t(this.mTimeStopSearchRunnable, this.mDataList.isEmpty() ? 0L : 300000L);
                    y1(2000L);
                } else {
                    View view4 = this.mView;
                    if (view4 != null && (relativeLayout = (RelativeLayout) view4.findViewById(R.id.ll_search_loading)) != null) {
                        relativeLayout.setVisibility(0);
                    }
                    this.mReceiveTime = System.currentTimeMillis();
                    if (this.mInitEdGroup) {
                        this.transfer.removeGroupAsync(new u74() {
                            @Override
                            public final Object invoke(Object obj, Object obj2, Object obj3) {
                                return FileTransSheetDialogActivity.B1(this.b, ((Boolean) obj).booleanValue(), (String) obj2, ((Integer) obj3).intValue());
                            }
                        });
                    }
                    ThreadUtils.t(this.mTimeSearchUpdateRunnable, 1000L);
                }
                View view5 = this.mView;
                if (view5 != null && (linearLayout = (LinearLayout) view5.findViewById(R.id.ll_search)) != null) {
                    linearLayout.setVisibility(0);
                }
                W0();
                if (!k1() && (objectAnimator = this.mRotateAnimator) != null) {
                    objectAnimator.start();
                    break;
                }
                break;
            case 1:
                View view6 = this.mView;
                if (view6 != null && (linearLayout4 = (LinearLayout) view6.findViewById(R.id.ll_root_search)) != null) {
                    linearLayout4.setVisibility(0);
                }
                View view7 = this.mView;
                if (view7 != null && (linearLayout3 = (LinearLayout) view7.findViewById(R.id.ll_empty)) != null) {
                    linearLayout3.setVisibility(0);
                }
                Z0();
                if (!k1()) {
                    animateDismiss();
                }
                break;
            case 2:
                if (!k1()) {
                    D1();
                } else {
                    View view8 = this.mView;
                    if (view8 != null && (recyclerView = (RecyclerView) view8.findViewById(R.id.rv_search_result)) != null) {
                        FileTransDeviceAdapter fileTransDeviceAdapter = this.mAdapter;
                        ArrayList arrayList = this.mDeviceList;
                        y45.h(arrayList, "null cannot be cast to non-null type kotlin.collections.List<android.net.wifi.p2p.WifiP2pDevice>");
                        fileTransDeviceAdapter.setNewData(arrayList);
                        recyclerView.setVisibility(0);
                    }
                    y1(2000L);
                }
                break;
            case 3:
                if (!k1()) {
                    ThreadUtils.o().removeCallbacks(this.mTimeSearchUpdateRunnable);
                    u1();
                } else {
                    this.mStartConnectTime = System.currentTimeMillis();
                    x1();
                    LinearLayout linearLayout5 = this.mLlConnect;
                    if (linearLayout5 != null) {
                        linearLayout5.setVisibility(0);
                        linearLayout5.setAlpha(0.2f);
                    }
                    LinearLayout linearLayout6 = this.mLlConnect;
                    if (linearLayout6 != null && (viewPropertyAnimatorAnimate = linearLayout6.animate()) != null && (viewPropertyAnimatorAlpha = viewPropertyAnimatorAnimate.alpha(1.0f)) != null && (duration = viewPropertyAnimatorAlpha.setDuration(800L)) != null) {
                        duration.start();
                    }
                    TextView textView5 = this.mTvName;
                    if (textView5 != null) {
                        WifiP2pDevice wifiP2pDevice = this.mCurrentConnectDevice;
                        textView5.setText(wifiP2pDevice != null ? wifiP2pDevice.deviceName : null);
                        Integer num3 = this.mLastStatus;
                        if (num3 != null && num3.intValue() == 2) {
                            int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.file_trans_device_name_size);
                            int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.file_trans_device_name_item_size);
                            float f = dimensionPixelSize;
                            textView5.setPivotX(f / 2.0f);
                            float f2 = dimensionPixelSize2 / f;
                            textView5.setScaleX(f2);
                            textView5.setLayerType(2, null);
                            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(textView5, "scaleX", f2, 1.0f);
                            objectAnimatorOfFloat.setDuration(800L);
                            objectAnimatorOfFloat.setInterpolator(new FastOutSlowInInterpolator());
                            objectAnimatorOfFloat.addListener(new b(textView5));
                            objectAnimatorOfFloat.start();
                            this.mScaleXAnimation = objectAnimatorOfFloat;
                        }
                    }
                    final ImageView imageView2 = this.mIvDevice;
                    if (imageView2 != null && (num = this.mLastStatus) != null && num.intValue() == 2) {
                        int dimensionPixelSize3 = getResources().getDimensionPixelSize(R.dimen.file_trans_device_icon_item_size);
                        int dimensionPixelSize4 = getResources().getDimensionPixelSize(R.dimen.file_trans_device_icon_size);
                        ViewParent parent = imageView2.getParent();
                        y45.h(parent, "null cannot be cast to non-null type android.view.ViewGroup");
                        TransitionManager.beginDelayedTransition((ViewGroup) parent);
                        final ViewGroup.LayoutParams layoutParams = imageView2.getLayoutParams();
                        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(dimensionPixelSize3, dimensionPixelSize4);
                        valueAnimatorOfInt.setDuration(800L);
                        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                            @Override
                            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                FileTransSheetDialogActivity.C1(layoutParams, imageView2, valueAnimator);
                            }
                        });
                        this.mSizeAnimator = valueAnimatorOfInt;
                        valueAnimatorOfInt.start();
                    }
                    View view9 = this.mView;
                    if (view9 != null && (oSLoadingView = (OSLoadingView) view9.findViewById(R.id.loading_view)) != null) {
                        oSLoadingView.setVisibility(0);
                    }
                    LogUtils.v("FileTransSheetDialogActivity", "[TEST] reset connect confirm runnable");
                    ThreadUtils.t(this.mConnectConfirmRunnable, 10000L);
                }
                break;
            case 4:
                if (k1()) {
                    LinearLayout linearLayout7 = this.mLlConnect;
                    if (linearLayout7 != null) {
                        linearLayout7.setVisibility(0);
                    }
                    TextView textView6 = this.mTvName;
                    if (textView6 != null) {
                        WifiP2pDevice wifiP2pDevice2 = this.mCurrentConnectDevice;
                        textView6.setText(wifiP2pDevice2 != null ? wifiP2pDevice2.deviceName : null);
                    }
                    View view10 = this.mView;
                    if (view10 != null && (textView2 = (TextView) view10.findViewById(R.id.tv_confirming)) != null) {
                        textView2.setTextColor(getColor(R.color.os_text_info_hios));
                        textView2.setText(getString(R.string.visha_file_trans_waiting_receive_confirm));
                        textView2.setVisibility(0);
                    }
                    LogUtils.v("FileTransSheetDialogActivity", "[TEST] reset connect confirm runnable");
                    ThreadUtils.t(this.mConnectConfirmRunnable, 10000L);
                }
                break;
            case 5:
                s1();
                if (k1()) {
                    LinearLayout linearLayout8 = this.mLlConnect;
                    if (linearLayout8 != null) {
                        linearLayout8.setVisibility(0);
                    }
                    ImageView imageView3 = this.mIvDevice;
                    if (imageView3 != null) {
                        imageView3.setEnabled(false);
                    }
                    TextView textView7 = this.mTvName;
                    if (textView7 != null) {
                        WifiP2pDevice wifiP2pDevice3 = this.mCurrentConnectDevice;
                        textView7.setText(wifiP2pDevice3 != null ? wifiP2pDevice3.deviceName : null);
                        textView7.setAlpha(0.5f);
                    }
                    View view11 = this.mView;
                    if (view11 != null && (textView4 = (TextView) view11.findViewById(R.id.tv_confirming)) != null) {
                        TypedValue typedValue = new TypedValue();
                        getTheme().resolveAttribute(R.attr.os_platform_basic_color, typedValue, true);
                        textView4.setTextColor(typedValue.data);
                        textView4.setText(getString(R.string.visha_connect_fail_please_retry));
                        textView4.setVisibility(0);
                    }
                    View view12 = this.mView;
                    if (view12 != null && (textView3 = (TextView) view12.findViewById(R.id.tv_btn_connect_retry)) != null) {
                        textView3.setVisibility(0);
                        break;
                    }
                }
                break;
            case 6:
                com.transsion.dbdata.markpoint.a.a.e(true, c1(), 0);
                animateDismiss();
                break;
        }
    }

    public final void D1() {
        LogUtils.v("FileTransSheetDialogActivity", "[TEST] stopConnect");
        if (k1()) {
            this.transfer.cancelTransfer(1);
        } else {
            this.transfer.cancelTransfer(2);
        }
    }

    public final void E1() {
        j jVar = this.job;
        if (jVar != null) {
            j.a.b(jVar, null, 1, null);
        }
        this.job = null;
    }

    public final void F1(WifiP2pDevice device) {
        y45.j(device, "device");
        this.mCurrentConnectDevice = device;
    }

    public final void G1(List devices) {
        LogUtils.v("FileTransSheetDialogActivity", "[TEST] updateDevice: " + devices.size());
        this.mDeviceList.clear();
        this.mDeviceList.addAll(devices);
        FileTransDeviceAdapter fileTransDeviceAdapter = this.mAdapter;
        ArrayList arrayList = this.mDeviceList;
        y45.h(arrayList, "null cannot be cast to non-null type kotlin.collections.List<android.net.wifi.p2p.WifiP2pDevice>");
        fileTransDeviceAdapter.setNewData(arrayList);
        this.mHasScanDeviceMap.addAll(this.mDeviceList);
        if (this.mDeviceList.isEmpty()) {
            Q0(this, 0, false, 2, null);
            return;
        }
        if (this.mNeedInitCost) {
            this.mScanSuccessCostTime = System.currentTimeMillis() - this.mStartScanTime;
            this.mNeedInitCost = false;
        }
        Q0(this, 2, false, 2, null);
    }

    public final void H1() {
        TextView textView;
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.mReceiveTime > 300000) {
            this.mTimeStopSearchRunnable.run();
            return;
        }
        View view = this.mView;
        if (view != null && (textView = (TextView) view.findViewById(R.id.tv_searching)) != null) {
            textView.setText(getString(R.string.visha_file_trans_waiting_receive, String.valueOf(((300000 - jCurrentTimeMillis) + this.mReceiveTime) / ((long) 1000))));
        }
        ThreadUtils.t(this.mTimeSearchUpdateRunnable, 1000L);
    }

    public final void P0(int status, boolean apply) {
        if (status == this.mStatus && k1()) {
            return;
        }
        ArrayList arrayList = this.mDataList;
        ArrayList arrayList2 = new ArrayList(z71.v(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((Companion.FileTransItem) it.next()).toFileData());
        }
        LogUtils.v("FileTransSheetDialogActivity", "[TEST] send changeStatus fileDataList.size: " + arrayList2.size() + " , mDataList.size: " + this.mDataList.size());
        StringBuilder sb = new StringBuilder();
        sb.append("[TEST] changeStatus: ");
        sb.append(status);
        LogUtils.v("FileTransSheetDialogActivity", sb.toString());
        if (!k1()) {
            if (this.mUpdateStatus != 0 && System.currentTimeMillis() - this.mUpdateStatus <= 1000) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            this.mUpdateStatus = jCurrentTimeMillis;
        }
        this.mLastStatus = Integer.valueOf(this.mStatus);
        this.mStatus = status;
        if (apply) {
            runOnUiThread(new Runnable() {
                @Override
                public final void run() {
                    FileTransSheetDialogActivity.R0(this.b);
                }
            });
        }
    }

    public final void S0(double totalFileSizeInGB) {
        TextView textView;
        TextView textView2;
        double dB1 = b1();
        LogUtils.v("FileTransSheetDialogActivity", "[TEST] totalFileSizeInGB: " + totalFileSizeInGB + " availableInternalMemorySize: " + dB1);
        if (totalFileSizeInGB < dB1) {
            z1();
            return;
        }
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.dialog_connect_confirm, (ViewGroup) null, false);
        if (viewInflate != null && (textView2 = (TextView) viewInflate.findViewById(R.id.info)) != null) {
            textView2.setText(getString(R.string.visha_insufficient_storage_space));
        }
        if (viewInflate != null && (textView = (TextView) viewInflate.findViewById(R.id.tip)) != null) {
            hz9 hz9Var = hz9.a;
            String str = String.format("%.2f%s", Arrays.copyOf(new Object[]{Double.valueOf(totalFileSizeInGB), RequestConfiguration.MAX_AD_CONTENT_RATING_G}, 2));
            y45.i(str, "format(...)");
            String str2 = String.format("%.2f%s", Arrays.copyOf(new Object[]{Double.valueOf(dB1), RequestConfiguration.MAX_AD_CONTENT_RATING_G}, 2));
            y45.i(str2, "format(...)");
            textView.setVisibility(0);
            textView.setText(getString(R.string.visha_storage_space_info, str, str2));
        }
        d dVarF = new d.a(this).E(viewInflate).f(false).u(R.string.got_it, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                FileTransSheetDialogActivity.T0(this.b, dialogInterface, i);
            }
        }).F();
        this.mStorageDialog = dVarF;
        if (dVarF != null) {
            dVarF.setOnDismissListener(new DialogInterface.OnDismissListener() {
                @Override
                public final void onDismiss(DialogInterface dialogInterface) {
                    FileTransSheetDialogActivity.U0(this.b, dialogInterface);
                }
            });
        }
    }

    public final void V0() {
        E1();
        kotlinx.coroutines.d.f(this.scope, null, 1, null);
    }

    public final void W0() {
        if (k1()) {
            this.mStartScanTime = System.currentTimeMillis();
            this.mNeedInitCost = true;
            ThreadUtils.t(this.mScanRunnable, 5000L);
            this.transfer.searchDevicesAsync(new u74() {
                @Override
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return FileTransSheetDialogActivity.X0(this.b, ((Boolean) obj).booleanValue(), (String) obj2, ((Integer) obj3).intValue());
                }
            });
            return;
        }
        if (this.mInitEdGroup) {
            return;
        }
        LogUtils.v("FileTransSheetDialogActivity", "[TEST] receive fileTransSearchStart state: " + this.transfer.getMConnectState().getState());
        this.transfer.createGroupAsync(new u74() {
            @Override
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return FileTransSheetDialogActivity.Y0(this.b, ((Boolean) obj).booleanValue(), (String) obj2, ((Integer) obj3).intValue());
            }
        });
        this.mInitEdGroup = true;
    }

    public final void Z0() {
        if (k1()) {
            this.transfer.unregisterP2pConnectReceiver();
            this.transfer.unregisterCallback(this.mSendListener);
            return;
        }
        this.transfer.unRegisterServerReceiver();
        this.transfer.unregisterCallback(this.mReceiveListener);
        if (mu3.a.j()) {
            return;
        }
        LogUtils.v("FileTransSheetDialogActivity", "[TEST] receive fileTransSearchStop state: " + this.transfer.getMConnectState().getState());
        this.transfer.removeGroupAsync(new u74() {
            @Override
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return FileTransSheetDialogActivity.a1(((Boolean) obj).booleanValue(), (String) obj2, ((Integer) obj3).intValue());
            }
        });
    }

    public final double b1() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return (statFs.getAvailableBlocksLong() * statFs.getBlockSizeLong()) / 1.073741824E9d;
    }

    public final long c1() {
        if (this.mStartConnectTime > 0) {
            return System.currentTimeMillis() - this.mStartConnectTime;
        }
        return 0L;
    }

    public final String d1() {
        String string = Settings.Global.getString(getContentResolver(), "device_name");
        y45.i(string, "getString(...)");
        return string;
    }

    public final void f1() {
        TextView textView;
        TextView textView2;
        ImageView imageView;
        TextView textView3;
        RecyclerView recyclerView;
        TextView textView4;
        TextView textView5;
        View view;
        View viewFindViewById;
        zfb zfbVar = null;
        if (!k1()) {
            View view2 = this.mView;
            if (view2 != null && (imageView = (ImageView) view2.findViewById(R.id.iv_send_search)) != null) {
                imageView.setVisibility(8);
            }
            ProgressBar progressBar = (ProgressBar) findViewById(R.id.circular_progress);
            if (progressBar != null) {
                progressBar.setEnabled(false);
                zfbVar = zfb.a;
            }
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(zfbVar, Key.ROTATION, 0.0f, 360.0f);
            this.mRotateAnimator = objectAnimatorOfFloat;
            if (objectAnimatorOfFloat != null) {
                objectAnimatorOfFloat.setDuration(2000L);
            }
            ObjectAnimator objectAnimator = this.mRotateAnimator;
            if (objectAnimator != null) {
                objectAnimator.setRepeatCount(-1);
            }
            View view3 = this.mView;
            if (view3 != null && (textView2 = (TextView) view3.findViewById(R.id.tv_search_tips)) != null) {
                String string = getString(pp3.c ? R.string.visha_file_trans_send_path1_pre : R.string.visha_file_trans_send_path1);
                y45.i(string, "getString(...)");
                String string2 = getString(R.string.visha_file_trans_send_path2);
                y45.i(string2, "getString(...)");
                String string3 = getString(R.string.visha_file_trans_send_tips, string, string2);
                y45.i(string3, "getString(...)");
                SpannableString spannableString = new SpannableString(string3);
                int iM0 = j1a.m0(string3, string, 0, false, 6, null);
                spannableString.setSpan(new StyleSpan(1), iM0, string.length() + iM0, 33);
                int iM1 = j1a.m0(string3, string2, 0, false, 6, null);
                spannableString.setSpan(new StyleSpan(1), iM1, string2.length() + iM1, 33);
                textView2.setText(spannableString);
            }
            View view4 = this.mView;
            if (view4 == null || (textView = (TextView) view4.findViewById(R.id.tv_searching)) == null) {
                return;
            }
            textView.setText(getString(R.string.visha_file_trans_waiting_receive, YFP2pLoader.P2P_LOAD_ERROR_GRAY));
            return;
        }
        if (!com.transsion.utils.a.q(this) && (view = this.mView) != null && (viewFindViewById = view.findViewById(R.id.tv_btn_connect_retry)) != null) {
            ViewGroup.LayoutParams layoutParams = viewFindViewById.getLayoutParams();
            y45.h(layoutParams, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
            layoutParams2.bottomMargin = com.transsion.utils.a.d(this, 60.0f);
            viewFindViewById.setLayoutParams(layoutParams2);
        }
        View view5 = this.mView;
        this.mIvDevice = view5 != null ? (ImageView) view5.findViewById(R.id.connect_phone_icon) : null;
        View view6 = this.mView;
        LinearLayout linearLayout = view6 != null ? (LinearLayout) view6.findViewById(R.id.ll_connect) : null;
        this.mLlConnect = linearLayout;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view7) {
                    FileTransSheetDialogActivity.g1(this.b, view7);
                }
            });
        }
        View view7 = this.mView;
        this.mTvName = view7 != null ? (TextView) view7.findViewById(R.id.tv_name) : null;
        View view8 = this.mView;
        if (view8 != null && (textView5 = (TextView) view8.findViewById(R.id.tv_search_tips)) != null) {
            String string4 = getString(pp3.c ? R.string.visha_file_trans_receive_path_pre : R.string.visha_file_trans_receive_path);
            y45.i(string4, "getString(...)");
            String string5 = getString(R.string.visha_file_trans_receive_tips, string4);
            y45.i(string5, "getString(...)");
            SpannableString spannableString2 = new SpannableString(string5);
            int iM2 = j1a.m0(string5, string4, 0, false, 6, null);
            spannableString2.setSpan(new StyleSpan(1), iM2, string4.length() + iM2, 33);
            textView5.setText(spannableString2);
        }
        View view9 = this.mView;
        if (view9 != null && (textView4 = (TextView) view9.findViewById(R.id.tv_btn_retry)) != null) {
            textView4.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view10) {
                    FileTransSheetDialogActivity.h1(this.b, view10);
                }
            });
        }
        View view10 = this.mView;
        if (view10 != null && (recyclerView = (RecyclerView) view10.findViewById(R.id.rv_search_result)) != null) {
            this.mAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
                @Override
                public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view11, int i) {
                    FileTransSheetDialogActivity.i1(this.b, baseQuickAdapter, view11, i);
                }
            });
            recyclerView.setAdapter(this.mAdapter);
            recyclerView.setLayoutManager(new CustomGridLayoutManager(this, 3));
            recyclerView.addItemDecoration(new ImageAdapter.GridSpaceItemDecoration(3, com.transsion.utils.a.d(this, 12.0f)));
        }
        View view11 = this.mView;
        if (view11 == null || (textView3 = (TextView) view11.findViewById(R.id.tv_btn_connect_retry)) == null) {
            return;
        }
        textView3.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view12) {
                FileTransSheetDialogActivity.j1(this.b, view12);
            }
        });
    }

    @Override
    public void initView() {
        super.initView();
        this.mView = View.inflate(this, R.layout.activity_file_trans_sheet_dialog, null);
        this.mOpenType = getIntent().getBooleanExtra("data", true);
        if (k1()) {
            ArrayList parcelableArrayListExtra = getIntent().getParcelableArrayListExtra(SheetDialogParamsConstant.IN_PARAM_DATA_LIST_IDS);
            if (parcelableArrayListExtra == null) {
                parcelableArrayListExtra = new ArrayList();
            }
            this.mDataList = parcelableArrayListExtra;
        }
        View view = this.mView;
        if (view != null) {
            OSPageView oSPageViewAddPage = addPage(view);
            oSPageViewAddPage.showTitle(true).setCloseIconVisibility(false);
            oSPageViewAddPage.setTitle(R.string.visha_file_trans);
            oSPageViewAddPage.setMinimumHeight(getResources().getDimensionPixelSize(R.dimen.file_trans_dialog_height));
        }
        f1();
        A1();
        e1();
        com.transsion.dbdata.markpoint.a.a.j();
    }

    public final boolean k1() {
        return this.mOpenType;
    }

    public final void l1() {
        TextView textView;
        TextView textView2;
        TextView textView3;
        OSLoadingView oSLoadingView;
        RecyclerView recyclerView;
        LinearLayout linearLayout;
        LinearLayout linearLayout2;
        RelativeLayout relativeLayout;
        ImageView imageView;
        LinearLayout linearLayout3;
        LinearLayout linearLayout4;
        Integer num = this.mLastStatus;
        if (num == null) {
            return;
        }
        if (num != null && num.intValue() == 0) {
            if (this.mStatus != 3 || k1()) {
                View view = this.mView;
                if (view != null && (linearLayout4 = (LinearLayout) view.findViewById(R.id.ll_root_search)) != null) {
                    linearLayout4.setVisibility(8);
                }
                View view2 = this.mView;
                if (view2 != null && (linearLayout3 = (LinearLayout) view2.findViewById(R.id.ll_search)) != null) {
                    linearLayout3.setVisibility(8);
                }
                ThreadUtils.o().removeCallbacks(k1() ? this.mTimeStopSearchRunnable : this.mTimeSearchUpdateRunnable);
                if (k1()) {
                    View view3 = this.mView;
                    if (view3 != null && (relativeLayout = (RelativeLayout) view3.findViewById(R.id.ll_search_loading)) != null) {
                        relativeLayout.setVisibility(8);
                    }
                    E1();
                    return;
                }
                ObjectAnimator objectAnimator = this.mRotateAnimator;
                if (objectAnimator != null) {
                    objectAnimator.end();
                }
                View view4 = this.mView;
                if (view4 == null || (imageView = (ImageView) view4.findViewById(R.id.iv_send_search)) == null) {
                    return;
                }
                imageView.setVisibility(8);
                return;
            }
            return;
        }
        if (num != null && num.intValue() == 1) {
            View view5 = this.mView;
            if (view5 != null && (linearLayout2 = (LinearLayout) view5.findViewById(R.id.ll_root_search)) != null) {
                linearLayout2.setVisibility(8);
            }
            View view6 = this.mView;
            if (view6 == null || (linearLayout = (LinearLayout) view6.findViewById(R.id.ll_empty)) == null) {
                return;
            }
            linearLayout.setVisibility(8);
            return;
        }
        if (num != null && num.intValue() == 2) {
            if (k1()) {
                View view7 = this.mView;
                if (view7 != null && (recyclerView = (RecyclerView) view7.findViewById(R.id.rv_search_result)) != null) {
                    recyclerView.setVisibility(8);
                }
                E1();
                return;
            }
            return;
        }
        if (num != null && num.intValue() == 3) {
            if (k1()) {
                LinearLayout linearLayout5 = this.mLlConnect;
                if (linearLayout5 != null) {
                    linearLayout5.setVisibility(8);
                }
                View view8 = this.mView;
                if (view8 != null && (oSLoadingView = (OSLoadingView) view8.findViewById(R.id.loading_view)) != null) {
                    oSLoadingView.setVisibility(8);
                }
                ThreadUtils.o().removeCallbacks(this.mConnectConfirmRunnable);
                return;
            }
            return;
        }
        if (num != null && num.intValue() == 4) {
            if (k1()) {
                LinearLayout linearLayout6 = this.mLlConnect;
                if (linearLayout6 != null) {
                    linearLayout6.setVisibility(8);
                }
                View view9 = this.mView;
                if (view9 != null && (textView3 = (TextView) view9.findViewById(R.id.tv_confirming)) != null) {
                    textView3.setVisibility(8);
                }
                ThreadUtils.o().removeCallbacks(this.mConnectConfirmRunnable);
                return;
            }
            return;
        }
        if (num != null && num.intValue() == 5 && k1()) {
            LinearLayout linearLayout7 = this.mLlConnect;
            if (linearLayout7 != null) {
                linearLayout7.setVisibility(8);
            }
            View view10 = this.mView;
            if (view10 != null && (textView2 = (TextView) view10.findViewById(R.id.tv_confirming)) != null) {
                textView2.setVisibility(8);
            }
            View view11 = this.mView;
            if (view11 != null && (textView = (TextView) view11.findViewById(R.id.tv_btn_connect_retry)) != null) {
                textView.setVisibility(8);
            }
            ImageView imageView2 = this.mIvDevice;
            if (imageView2 != null) {
                imageView2.setEnabled(true);
            }
            TextView textView4 = this.mTvName;
            if (textView4 != null) {
                WifiP2pDevice wifiP2pDevice = this.mCurrentConnectDevice;
                textView4.setText(wifiP2pDevice != null ? wifiP2pDevice.deviceName : null);
                textView4.setAlpha(1.0f);
            }
        }
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        if (!k1()) {
            ObjectAnimator objectAnimator = this.mRotateAnimator;
            if (objectAnimator != null) {
                objectAnimator.cancel();
            }
            this.mRotateAnimator = null;
        }
        ValueAnimator valueAnimator = this.mSizeAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.mSizeAnimator = null;
        ObjectAnimator objectAnimator2 = this.mScaleXAnimation;
        if (objectAnimator2 != null) {
            objectAnimator2.cancel();
        }
        this.mScaleXAnimation = null;
        int i = this.mStatus;
        if (i == 2) {
            com.transsion.dbdata.markpoint.a.C0214a.c(com.transsion.dbdata.markpoint.a.a, "select_device", 0, 2, null);
        } else if (i == 3 || i == 4) {
            com.transsion.dbdata.markpoint.a.C0214a.c(com.transsion.dbdata.markpoint.a.a, "connecting", 0, 2, null);
        }
        if (this.mStatus != 6) {
            s1();
        }
        V0();
        Handler handlerO = ThreadUtils.o();
        handlerO.removeCallbacks(this.mScanRunnable);
        handlerO.removeCallbacks(this.mConnectConfirmRunnable);
        handlerO.removeCallbacks(k1() ? this.mTimeStopSearchRunnable : this.mTimeSearchUpdateRunnable);
        Z0();
    }

    public final void s1() {
        this.transfer.disconnectAsync(new u74() {
            @Override
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return FileTransSheetDialogActivity.t1(((Boolean) obj).booleanValue(), (String) obj2, ((Integer) obj3).intValue());
            }
        });
        D1();
    }

    public final void u1() {
        TextView textView;
        if (this.mConnectDialog != null || this.mCurrentConnectDevice == null) {
            return;
        }
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.dialog_connect_confirm, (ViewGroup) null, false);
        if (viewInflate != null && (textView = (TextView) viewInflate.findViewById(R.id.info)) != null) {
            int i = R.string.visha_file_trans_want_connect;
            WifiP2pDevice wifiP2pDevice = this.mCurrentConnectDevice;
            textView.setText(getString(i, wifiP2pDevice != null ? wifiP2pDevice.deviceName : null));
        }
        WifiP2pDevice wifiP2pDevice2 = this.mCurrentConnectDevice;
        LogUtils.v("FileTransSheetDialogActivity", "[TEST] showConnectDialog: " + (wifiP2pDevice2 != null ? wifiP2pDevice2.deviceName : null));
        this.mConnectDialog = new d.a(this).E(viewInflate).f(false).u(R.string.visha_receive, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i2) {
                FileTransSheetDialogActivity.v1(this.b, dialogInterface, i2);
            }
        }).m(R.string.visha_refuse, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i2) {
                FileTransSheetDialogActivity.w1(this.b, dialogInterface, i2);
            }
        }).F();
    }

    public final void x1() {
        if (!k1()) {
            this.transfer.sendConversationToClient(new Conversation(2, 0L, false, 0, 0, null, 46, null));
            return;
        }
        WifiP2pDevice wifiP2pDevice = this.mCurrentConnectDevice;
        if (wifiP2pDevice != null) {
            this.transfer.connectAsync(wifiP2pDevice, new a());
        }
    }

    public final void y1(long intervalMs) {
        E1();
        this.job = el0.d(this.scope, null, null, new FileTransSheetDialogActivity$startSearchLoop$1(this, intervalMs, null), 3, null);
    }

    public final void z1() {
        if (!k1()) {
            this.transfer.sendConversationToClient(new Conversation(3, 0L, false, 0, 0, null, 46, null));
            TransferNotificationManager.s.a().F();
            Q0(this, 6, false, 2, null);
            return;
        }
        ArrayList arrayList = this.mDataList;
        ArrayList arrayList2 = new ArrayList(z71.v(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((Companion.FileTransItem) it.next()).toFileData());
        }
        LogUtils.v("FileTransSheetDialogActivity", "[TEST] send startSendOrReceive fileDataList.size: " + arrayList2.size() + " , mDataList.size: " + this.mDataList.size());
        ITransferHelper iTransferHelper = this.transfer;
        ArrayList arrayList3 = this.mDataList;
        ArrayList arrayList4 = new ArrayList(z71.v(arrayList3, 10));
        Iterator it2 = arrayList3.iterator();
        while (it2.hasNext()) {
            arrayList4.add(((Companion.FileTransItem) it2.next()).toFileData());
        }
        iTransferHelper.sendFileDataToServerAsync(arrayList4);
        TransferNotificationManager.s.a().G();
        Q0(this, 6, false, 2, null);
    }
}
