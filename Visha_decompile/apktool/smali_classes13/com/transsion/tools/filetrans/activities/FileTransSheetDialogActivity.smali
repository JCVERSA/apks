.class public final Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;
.super Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1d
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00d2\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0006\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0004\n\u0002\u0008\u0007*\u0004\u009b\u0001\u009f\u0001\u0008\u0007\u0018\u0000 \u00a3\u00012\u00020\u0001:\u0002\u00a4\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\r\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\u0003J\r\u0010\n\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\n\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u0003J\u0015\u0010\u000e\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\r\u0010\u0010\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0010\u0010\u0003J\u000f\u0010\u0011\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0003J\u000f\u0010\u0012\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0003J!\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u0003J\u000f\u0010\u001c\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u0003J\u000f\u0010\u001e\u001a\u00020\u001dH\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008 \u0010\u0003J\u000f\u0010!\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008!\u0010\u0003J\u000f\u0010\"\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\"\u0010\u0003J\u000f\u0010#\u001a\u00020\u0006H\u0003\u00a2\u0006\u0004\u0008#\u0010\u0003J\u000f\u0010%\u001a\u00020$H\u0002\u00a2\u0006\u0004\u0008%\u0010&J\u0017\u0010(\u001a\u00020\u00062\u0006\u0010\'\u001a\u00020$H\u0003\u00a2\u0006\u0004\u0008(\u0010)J\u001d\u0010,\u001a\u00020\u00062\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u000c0*H\u0002\u00a2\u0006\u0004\u0008,\u0010-J\u000f\u0010.\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008.\u0010/J\u000f\u00100\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u00080\u0010\u0003J\u000f\u00101\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u00081\u0010\u0003J\u000f\u00102\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u00082\u0010\u0003J\u000f\u00103\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u00083\u0010\u0003R\u0016\u00107\u001a\u0002048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00085\u00106R\u0018\u0010;\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00089\u0010:R\u0018\u0010?\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008=\u0010>R\u0018\u0010C\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008A\u0010BR\u0018\u0010G\u001a\u0004\u0018\u00010D8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008E\u0010FR\u0016\u0010J\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008H\u0010IR\u0018\u0010M\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008K\u0010LR\u0016\u0010P\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008N\u0010OR\u0018\u0010T\u001a\u0004\u0018\u00010Q8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008R\u0010SR\u0018\u0010V\u001a\u0004\u0018\u00010Q8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008U\u0010SR\u0018\u0010Z\u001a\u0004\u0018\u00010W8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008X\u0010YR\u0018\u0010^\u001a\u0004\u0018\u00010[8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\\\u0010]R\u0018\u0010`\u001a\u0004\u0018\u00010[8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008_\u0010]R\u0016\u0010b\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008a\u0010_R\u0016\u0010d\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008c\u0010OR\u0016\u0010f\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008e\u0010IR\u0016\u0010h\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008g\u0010OR\u0016\u0010j\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008i\u0010OR\u0016\u0010l\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008k\u0010_R\u0016\u0010n\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008m\u0010OR$\u0010s\u001a\u0012\u0012\u0004\u0012\u00020\u000c0oj\u0008\u0012\u0004\u0012\u00020\u000c`p8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008q\u0010rR\u0016\u0010u\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008t\u0010_R&\u0010{\u001a\u0012\u0012\u0004\u0012\u00020w0vj\u0008\u0012\u0004\u0012\u00020w`x8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008y\u0010zR\u0016\u0010\u007f\u001a\u00020|8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008}\u0010~R\u001b\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0080\u0001\u0010\u0081\u0001R(\u0010\u0084\u0001\u001a\u0012\u0012\u0004\u0012\u00020\u000c0vj\u0008\u0012\u0004\u0012\u00020\u000c`x8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0083\u0001\u0010zR\u0018\u0010\u0086\u0001\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0085\u0001\u0010_R\u0018\u0010\u008a\u0001\u001a\u00030\u0087\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0088\u0001\u0010\u0089\u0001R\u0018\u0010\u008c\u0001\u001a\u00030\u0087\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u008b\u0001\u0010\u0089\u0001R\u0018\u0010\u008e\u0001\u001a\u00030\u0087\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u008d\u0001\u0010\u0089\u0001R\u0018\u0010\u0090\u0001\u001a\u00030\u0087\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u008f\u0001\u0010\u0089\u0001R\u0018\u0010\u0092\u0001\u001a\u00030\u0087\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0091\u0001\u0010\u0089\u0001R\u001c\u0010\u0096\u0001\u001a\u0005\u0018\u00010\u0093\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0094\u0001\u0010\u0095\u0001R\u0018\u0010\u009a\u0001\u001a\u00030\u0097\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0098\u0001\u0010\u0099\u0001R\u0018\u0010\u009e\u0001\u001a\u00030\u009b\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u009c\u0001\u0010\u009d\u0001R\u0018\u0010\u00a2\u0001\u001a\u00030\u009f\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00a0\u0001\u0010\u00a1\u0001\u00a8\u0006\u00a5\u0001"
    }
    d2 = {
        "Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;",
        "Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;",
        "<init>",
        "()V",
        "",
        "intervalMs",
        "Lzfb;",
        "y1",
        "(J)V",
        "E1",
        "V0",
        "initView",
        "Landroid/net/wifi/p2p/WifiP2pDevice;",
        "device",
        "F1",
        "(Landroid/net/wifi/p2p/WifiP2pDevice;)V",
        "z1",
        "onDestroy",
        "c1",
        "()J",
        "H1",
        "",
        "status",
        "",
        "apply",
        "P0",
        "(IZ)V",
        "A1",
        "s1",
        "",
        "d1",
        "()Ljava/lang/String;",
        "x1",
        "D1",
        "l1",
        "u1",
        "",
        "b1",
        "()D",
        "totalFileSizeInGB",
        "S0",
        "(D)V",
        "",
        "devices",
        "G1",
        "(Ljava/util/List;)V",
        "k1",
        "()Z",
        "e1",
        "f1",
        "W0",
        "Z0",
        "Lcom/transsion/vishatransfer/manager/ITransferHelper;",
        "N",
        "Lcom/transsion/vishatransfer/manager/ITransferHelper;",
        "transfer",
        "Landroid/view/View;",
        "O",
        "Landroid/view/View;",
        "mView",
        "Landroid/widget/TextView;",
        "P",
        "Landroid/widget/TextView;",
        "mTvName",
        "Landroid/widget/LinearLayout;",
        "Q",
        "Landroid/widget/LinearLayout;",
        "mLlConnect",
        "Landroid/widget/ImageView;",
        "R",
        "Landroid/widget/ImageView;",
        "mIvDevice",
        "S",
        "I",
        "mStatus",
        "T",
        "Ljava/lang/Integer;",
        "mLastStatus",
        "U",
        "J",
        "mReceiveTime",
        "Landroid/animation/ObjectAnimator;",
        "V",
        "Landroid/animation/ObjectAnimator;",
        "mRotateAnimator",
        "W",
        "mScaleXAnimation",
        "Landroid/animation/ValueAnimator;",
        "X",
        "Landroid/animation/ValueAnimator;",
        "mSizeAnimator",
        "Lcom/transsion/widgetslib/dialog/d;",
        "Y",
        "Lcom/transsion/widgetslib/dialog/d;",
        "mConnectDialog",
        "Z",
        "mStorageDialog",
        "a0",
        "mInitEdGroup",
        "b0",
        "mUpdateStatus",
        "c0",
        "mRetryCount",
        "d0",
        "mStartConnectTime",
        "e0",
        "mStartScanTime",
        "f0",
        "mNeedInitCost",
        "g0",
        "mScanSuccessCostTime",
        "Ljava/util/HashSet;",
        "Lkotlin/collections/HashSet;",
        "h0",
        "Ljava/util/HashSet;",
        "mHasScanDeviceMap",
        "i0",
        "mOpenType",
        "Ljava/util/ArrayList;",
        "Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$Companion$FileTransItem;",
        "Lkotlin/collections/ArrayList;",
        "j0",
        "Ljava/util/ArrayList;",
        "mDataList",
        "Lcom/transsion/tools/filetrans/adapter/FileTransDeviceAdapter;",
        "k0",
        "Lcom/transsion/tools/filetrans/adapter/FileTransDeviceAdapter;",
        "mAdapter",
        "l0",
        "Landroid/net/wifi/p2p/WifiP2pDevice;",
        "mCurrentConnectDevice",
        "m0",
        "mDeviceList",
        "n0",
        "mIsWiFiConnect",
        "Ljava/lang/Runnable;",
        "o0",
        "Ljava/lang/Runnable;",
        "mSearchRunnable",
        "p0",
        "mScanRunnable",
        "q0",
        "mConnectConfirmRunnable",
        "r0",
        "mTimeStopSearchRunnable",
        "s0",
        "mTimeSearchUpdateRunnable",
        "Lkotlinx/coroutines/j;",
        "t0",
        "Lkotlinx/coroutines/j;",
        "job",
        "Lnk1;",
        "u0",
        "Lnk1;",
        "scope",
        "com/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mSendListener$1",
        "v0",
        "Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mSendListener$1;",
        "mSendListener",
        "com/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mReceiveListener$1",
        "w0",
        "Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mReceiveListener$1;",
        "mReceiveListener",
        "x0",
        "Companion",
        "tools_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final x0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$Companion;


# instance fields
.field public N:Lcom/transsion/vishatransfer/manager/ITransferHelper;

.field public O:Landroid/view/View;

.field public P:Landroid/widget/TextView;

.field public Q:Landroid/widget/LinearLayout;

.field public R:Landroid/widget/ImageView;

.field public S:I

.field public T:Ljava/lang/Integer;

.field public U:J

.field public V:Landroid/animation/ObjectAnimator;

.field public W:Landroid/animation/ObjectAnimator;

.field public X:Landroid/animation/ValueAnimator;

.field public Y:Lcom/transsion/widgetslib/dialog/d;

.field public Z:Lcom/transsion/widgetslib/dialog/d;

.field public a0:Z

.field public b0:J

.field public c0:I

.field public d0:J

.field public e0:J

.field public f0:Z

.field public g0:J

.field public final h0:Ljava/util/HashSet;

.field public i0:Z

.field public j0:Ljava/util/ArrayList;

.field public k0:Lcom/transsion/tools/filetrans/adapter/FileTransDeviceAdapter;

.field public l0:Landroid/net/wifi/p2p/WifiP2pDevice;

.field public m0:Ljava/util/ArrayList;

.field public n0:Z

.field public final o0:Ljava/lang/Runnable;

.field public final p0:Ljava/lang/Runnable;

.field public final q0:Ljava/lang/Runnable;

.field public final r0:Ljava/lang/Runnable;

.field public final s0:Ljava/lang/Runnable;

.field public t0:Lkotlinx/coroutines/j;

.field public final u0:Lnk1;

.field public final v0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mSendListener$1;

.field public final w0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mReceiveListener$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->x0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;-><init>()V

    sget-object v0, Lcom/transsion/vishatransfer/manager/TransferManager;->INSTANCE:Lcom/transsion/vishatransfer/manager/TransferManager;

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/vishatransfer/manager/TransferManager;->getInstance(Landroid/app/Application;I)Lcom/transsion/vishatransfer/manager/ITransferHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->N:Lcom/transsion/vishatransfer/manager/ITransferHelper;

    iput-boolean v2, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->f0:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->h0:Ljava/util/HashSet;

    iput-boolean v2, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->i0:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->j0:Ljava/util/ArrayList;

    new-instance v0, Lcom/transsion/tools/filetrans/adapter/FileTransDeviceAdapter;

    invoke-direct {v0}, Lcom/transsion/tools/filetrans/adapter/FileTransDeviceAdapter;-><init>()V

    iput-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->k0:Lcom/transsion/tools/filetrans/adapter/FileTransDeviceAdapter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->m0:Ljava/util/ArrayList;

    new-instance v0, Lit3;

    invoke-direct {v0, p0}, Lit3;-><init>(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)V

    iput-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->o0:Ljava/lang/Runnable;

    new-instance v0, Ltt3;

    invoke-direct {v0, p0}, Ltt3;-><init>(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)V

    iput-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->p0:Ljava/lang/Runnable;

    new-instance v0, Lvt3;

    invoke-direct {v0, p0}, Lvt3;-><init>(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)V

    iput-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->q0:Ljava/lang/Runnable;

    new-instance v0, Lwt3;

    invoke-direct {v0, p0}, Lwt3;-><init>(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)V

    iput-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->r0:Ljava/lang/Runnable;

    new-instance v0, Lxt3;

    invoke-direct {v0, p0}, Lxt3;-><init>(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)V

    iput-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->s0:Ljava/lang/Runnable;

    invoke-static {}, Lmc2;->a()Lkotlinx/coroutines/c;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/d;->a(Lkotlin/coroutines/d;)Lnk1;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->u0:Lnk1;

    new-instance v0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mSendListener$1;

    invoke-direct {v0, p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mSendListener$1;-><init>(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)V

    iput-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->v0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mSendListener$1;

    new-instance v0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mReceiveListener$1;

    invoke-direct {v0, p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mReceiveListener$1;-><init>(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)V

    iput-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->w0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mReceiveListener$1;

    return-void
.end method

.method public static final synthetic A0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;D)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->S0(D)V

    return-void
.end method

.method public static final synthetic B0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)J
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->c1()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final B1(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;ZLjava/lang/String;I)Lzfb;
    .locals 2

    const-string v0, "reason"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TEST] removeGroupAsync: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "FileTransSheetDialogActivity"

    filled-new-array {p3, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->a0:Z

    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->W0()V

    :cond_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static final synthetic C0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)Lcom/transsion/widgetslib/dialog/d;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->Y:Lcom/transsion/widgetslib/dialog/d;

    return-object p0
.end method

.method public static final C1(Landroid/view/ViewGroup$LayoutParams;Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "valueAnimator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p2, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static final synthetic D0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->j0:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic E0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->i0:Z

    return p0
.end method

.method public static final synthetic F0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->o0:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic G0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)I
    .locals 0

    iget p0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->S:I

    return p0
.end method

.method public static final synthetic H0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)Lcom/transsion/widgetslib/dialog/d;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->Z:Lcom/transsion/widgetslib/dialog/d;

    return-object p0
.end method

.method public static final synthetic I0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->d1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic J0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)Lcom/transsion/vishatransfer/manager/ITransferHelper;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->N:Lcom/transsion/vishatransfer/manager/ITransferHelper;

    return-object p0
.end method

.method public static final synthetic K0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;Lcom/transsion/widgetslib/dialog/d;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->Y:Lcom/transsion/widgetslib/dialog/d;

    return-void
.end method

.method public static final synthetic L0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->n0:Z

    return-void
.end method

.method public static final synthetic M0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;Lcom/transsion/widgetslib/dialog/d;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->Z:Lcom/transsion/widgetslib/dialog/d;

    return-void
.end method

.method public static final synthetic N0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->u1()V

    return-void
.end method

.method public static final synthetic O0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->G1(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic Q0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;IZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->P0(IZ)V

    return-void
.end method

.method public static final R0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->A1()V

    return-void
.end method

.method public static final T0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->Z:Lcom/transsion/widgetslib/dialog/d;

    return-void
.end method

.method public static final U0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;Landroid/content/DialogInterface;)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->D1()V

    const/4 p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v1, v1, p1, v0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->Q0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;IZILjava/lang/Object;)V

    return-void
.end method

.method public static final X0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;ZLjava/lang/String;I)Lzfb;
    .locals 3

    const-string v0, "reason"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->d1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TEST] send fileTransSearchStart: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileTransSheetDialogActivity"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    if-nez p1, :cond_0

    sget-object p1, Lcom/transsion/dbdata/markpoint/a;->a:Lcom/transsion/dbdata/markpoint/a$a;

    const-string v0, "scan"

    invoke-virtual {p1, v0, p3}, Lcom/transsion/dbdata/markpoint/a$a;->g(Ljava/lang/String;I)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p2, p1}, Lcom/transsion/utils/ToastUtils;->x(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    :cond_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static final Y0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;ZLjava/lang/String;I)Lzfb;
    .locals 3

    const-string v0, "reason"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->d1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TEST] receive fileTransSearchStart: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileTransSheetDialogActivity"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    if-nez p1, :cond_0

    sget-object p1, Lcom/transsion/dbdata/markpoint/a;->a:Lcom/transsion/dbdata/markpoint/a$a;

    const-string v0, "scan"

    invoke-virtual {p1, v0, p3}, Lcom/transsion/dbdata/markpoint/a$a;->g(Ljava/lang/String;I)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p2, p1}, Lcom/transsion/utils/ToastUtils;->x(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    :cond_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static final a1(ZLjava/lang/String;I)Lzfb;
    .locals 0

    const-string p0, "<unused var>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private final e1()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->k1()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->N:Lcom/transsion/vishatransfer/manager/ITransferHelper;

    iget-object p0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->v0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mSendListener$1;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/transsion/vishatransfer/manager/ITransferHelper;->registerListener(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->N:Lcom/transsion/vishatransfer/manager/ITransferHelper;

    iget-object p0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->w0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mReceiveListener$1;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1}, Lcom/transsion/vishatransfer/manager/ITransferHelper;->registerListener(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;I)V

    :goto_0
    return-void
.end method

.method public static synthetic f0(ZLjava/lang/String;I)Lzfb;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->a1(ZLjava/lang/String;I)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;ZLjava/lang/String;I)Lzfb;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->Y0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;ZLjava/lang/String;I)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static final g1(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;Landroid/view/View;)V
    .locals 3

    iget p1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->S:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, p1, v0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->Q0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;IZILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic h0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->v1(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static final h1(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v1, v1, p1, v0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->Q0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;IZILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic i0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->n1(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)V

    return-void
.end method

.method public static final i1(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    iget p2, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->S:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.net.wifi.p2p.WifiP2pDevice"

    invoke-static {p1, p2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object p1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->l0:Landroid/net/wifi/p2p/WifiP2pDevice;

    const/4 p1, 0x0

    const/4 p2, 0x0

    const/4 p3, 0x3

    invoke-static {p0, p3, p1, v0, p2}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->Q0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;IZILjava/lang/Object;)V

    sget-object p0, Lcom/transsion/dbdata/markpoint/a;->a:Lcom/transsion/dbdata/markpoint/a$a;

    invoke-virtual {p0}, Lcom/transsion/dbdata/markpoint/a$a;->d()V

    :cond_0
    return-void
.end method

.method public static synthetic j0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->j1(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;Landroid/view/View;)V

    return-void
.end method

.method public static final j1(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;Landroid/view/View;)V
    .locals 3

    sget-object p1, Lcom/transsion/dbdata/markpoint/a;->a:Lcom/transsion/dbdata/markpoint/a$a;

    iget v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->c0:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->c0:I

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/markpoint/a$a;->o(I)V

    const/4 p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, p1, v0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->Q0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;IZILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic k0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->q1(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)V

    return-void
.end method

.method public static synthetic l0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->R0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)V

    return-void
.end method

.method public static synthetic m0(Landroid/view/ViewGroup$LayoutParams;Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->C1(Landroid/view/ViewGroup$LayoutParams;Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final m1(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->D1()V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-static {p0, v2, v3, v0, v1}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->Q0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;IZILjava/lang/Object;)V

    sget-object v0, Lcom/transsion/dbdata/markpoint/a;->a:Lcom/transsion/dbdata/markpoint/a$a;

    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->c1()J

    move-result-wide v1

    const/16 p0, 0x3ee

    invoke-virtual {v0, v3, v1, v2, p0}, Lcom/transsion/dbdata/markpoint/a$a;->e(ZJI)V

    return-void
.end method

.method public static synthetic n0(ZLjava/lang/String;I)Lzfb;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->p1(ZLjava/lang/String;I)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static final n1(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)V
    .locals 4

    sget-object v0, Lcom/transsion/dbdata/markpoint/a;->a:Lcom/transsion/dbdata/markpoint/a$a;

    iget-object v1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->h0:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    iget-wide v2, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->g0:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/dbdata/markpoint/a$a;->f(IJ)V

    iget-object p0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->h0:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public static synthetic o0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->o1(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)V

    return-void
.end method

.method public static final o1(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)V
    .locals 3

    const-string v0, "[TEST] searchDevicesAsync"

    const-string v1, "FileTransSheetDialogActivity"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    :try_start_0
    iget-object p0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->N:Lcom/transsion/vishatransfer/manager/ITransferHelper;

    new-instance v0, Lkt3;

    invoke-direct {v0}, Lkt3;-><init>()V

    invoke-interface {p0, v0}, Lcom/transsion/vishatransfer/manager/ITransferHelper;->searchDevicesAsync(Lu74;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TEST] searchDevicesAsync: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ".message"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->l([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static synthetic p0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->m1(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)V

    return-void
.end method

.method public static final p1(ZLjava/lang/String;I)Lzfb;
    .locals 0

    const-string p0, "<unused var>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static synthetic q0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->i1(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static final q1(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->H1()V

    return-void
.end method

.method public static synthetic r0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->g1(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;Landroid/view/View;)V

    return-void
.end method

.method public static final r1(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v2, v3, v0, v1}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->Q0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;IZILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic s0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;ZLjava/lang/String;I)Lzfb;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->B1(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;ZLjava/lang/String;I)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->h1(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;Landroid/view/View;)V

    return-void
.end method

.method public static final t1(ZLjava/lang/String;I)Lzfb;
    .locals 0

    const-string p0, "<unused var>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static synthetic u0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->U0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic v0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->w1(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static final v1(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->x1()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->Y:Lcom/transsion/widgetslib/dialog/d;

    return-void
.end method

.method public static synthetic w0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->T0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static final w1(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;Landroid/content/DialogInterface;I)V
    .locals 10

    iget-object p1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->N:Lcom/transsion/vishatransfer/manager/ITransferHelper;

    new-instance p2, Lcom/transsion/vishatransfer/data/Conversation;

    const/16 v8, 0x3e

    const/4 v9, 0x0

    const/4 v1, 0x6

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v9}, Lcom/transsion/vishatransfer/data/Conversation;-><init>(IJZIILcom/transsion/vishatransfer/data/DeviceInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p1, p2}, Lcom/transsion/vishatransfer/manager/ITransferHelper;->sendConversationToClient(Lcom/transsion/vishatransfer/data/Conversation;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->Y:Lcom/transsion/widgetslib/dialog/d;

    return-void
.end method

.method public static synthetic x0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->r1(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)V

    return-void
.end method

.method public static synthetic y0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;ZLjava/lang/String;I)Lzfb;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->X0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;ZLjava/lang/String;I)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z0(ZLjava/lang/String;I)Lzfb;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->t1(ZLjava/lang/String;I)Lzfb;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A1()V
    .locals 15

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->T:Ljava/lang/Integer;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->k1()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->T:Ljava/lang/Integer;

    iget v4, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->S:I

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v4, :cond_1

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->l1()V

    iget v3, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->S:I

    const-wide/16 v4, 0x7d0

    const-wide/16 v6, 0x2710

    const-string v8, "[TEST] reset connect confirm runnable"

    const-string v9, "FileTransSheetDialogActivity"

    const/4 v10, 0x0

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    sget-object v0, Lcom/transsion/dbdata/markpoint/a;->a:Lcom/transsion/dbdata/markpoint/a$a;

    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->c1()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/transsion/dbdata/markpoint/a$a;->e(ZJI)V

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    goto/16 :goto_6

    :pswitch_1
    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->s1()V

    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->k1()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->Q:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->R:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->P:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->l0:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v3, :cond_4

    iget-object v10, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    :cond_4
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->O:Landroid/view/View;

    if-eqz v0, :cond_6

    sget v3, Lcom/transsion/tools/R$id;->tv_confirming:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_6

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget v5, Lcom/transsion/tools/R$attr;->os_platform_basic_color:I

    invoke-virtual {v4, v5, v3, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v3, Landroid/util/TypedValue;->data:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    sget v2, Lcom/transsion/tools/R$string;->visha_connect_fail_please_retry:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object p0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->O:Landroid/view/View;

    if-eqz p0, :cond_20

    sget v0, Lcom/transsion/tools/R$id;->tv_btn_connect_retry:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_20

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    :pswitch_2
    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->k1()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->Q:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->P:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    iget-object v2, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->l0:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v2, :cond_8

    iget-object v10, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    :cond_8
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->O:Landroid/view/View;

    if-eqz v0, :cond_a

    sget v2, Lcom/transsion/tools/R$id;->tv_confirming:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_a

    sget v2, Lcom/transsion/tools/R$color;->os_text_info_hios:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    sget v2, Lcom/transsion/tools/R$string;->visha_file_trans_waiting_receive_confirm:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    filled-new-array {v9, v8}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->q0:Ljava/lang/Runnable;

    invoke-static {p0, v6, v7}, Lcom/blankj/utilcode/util/ThreadUtils;->t(Ljava/lang/Runnable;J)V

    goto/16 :goto_6

    :pswitch_3
    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->k1()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->d0:J

    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->x1()V

    iget-object v3, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->Q:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_b

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x3e4ccccd    # 0.2f

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_b
    iget-object v3, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->Q:Landroid/widget/LinearLayout;

    const/high16 v4, 0x3f800000    # 1.0f

    const-wide/16 v11, 0x320

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3, v11, v12}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_c
    iget-object v3, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->P:Landroid/widget/TextView;

    if-eqz v3, :cond_f

    iget-object v5, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->l0:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v5, :cond_d

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    goto :goto_1

    :cond_d
    move-object v5, v10

    :goto_1
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->T:Ljava/lang/Integer;

    if-nez v5, :cond_e

    goto :goto_2

    :cond_e
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v0, :cond_f

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v13, Lcom/transsion/tools/R$dimen;->file_trans_device_name_size:I

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/transsion/tools/R$dimen;->file_trans_device_name_item_size:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    int-to-float v5, v5

    const/high16 v14, 0x40000000    # 2.0f

    div-float v14, v5, v14

    invoke-virtual {v3, v14}, Landroid/view/View;->setPivotX(F)V

    int-to-float v13, v13

    div-float/2addr v13, v5

    invoke-virtual {v3, v13}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v3, v0, v10}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    const-string v5, "scaleX"

    new-array v10, v0, [F

    aput v13, v10, v1

    aput v4, v10, v2

    invoke-static {v3, v5, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v4, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v4}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v2, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$b;

    invoke-direct {v4, v3}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$b;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v2, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    iput-object v2, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->W:Landroid/animation/ObjectAnimator;

    :cond_f
    :goto_2
    iget-object v2, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->R:Landroid/widget/ImageView;

    if-eqz v2, :cond_11

    iget-object v3, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->T:Ljava/lang/Integer;

    if-nez v3, :cond_10

    goto :goto_3

    :cond_10
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v0, :cond_11

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/transsion/tools/R$dimen;->file_trans_device_icon_item_size:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/tools/R$dimen;->file_trans_device_icon_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v4, v5}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/view/ViewGroup;

    invoke-static {v4}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    filled-new-array {v0, v3}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Lrt3;

    invoke-direct {v3, v4, v2}, Lrt3;-><init>(Landroid/view/ViewGroup$LayoutParams;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->X:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_11
    :goto_3
    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->O:Landroid/view/View;

    if-eqz v0, :cond_12

    sget v2, Lcom/transsion/tools/R$id;->loading_view:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/OSLoadingView;

    if-eqz v0, :cond_12

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    filled-new-array {v9, v8}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->q0:Ljava/lang/Runnable;

    invoke-static {p0, v6, v7}, Lcom/blankj/utilcode/util/ThreadUtils;->t(Ljava/lang/Runnable;J)V

    goto/16 :goto_6

    :cond_13
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->s0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->u1()V

    goto/16 :goto_6

    :pswitch_4
    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->k1()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->O:Landroid/view/View;

    if-eqz v0, :cond_14

    sget v2, Lcom/transsion/tools/R$id;->rv_search_result:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_14

    iget-object v2, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->k0:Lcom/transsion/tools/filetrans/adapter/FileTransDeviceAdapter;

    iget-object v3, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->m0:Ljava/util/ArrayList;

    const-string v6, "null cannot be cast to non-null type kotlin.collections.List<android.net.wifi.p2p.WifiP2pDevice>"

    invoke-static {v3, v6}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_14
    invoke-virtual {p0, v4, v5}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->y1(J)V

    goto/16 :goto_6

    :cond_15
    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->D1()V

    goto/16 :goto_6

    :pswitch_5
    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->O:Landroid/view/View;

    if-eqz v0, :cond_16

    sget v2, Lcom/transsion/tools/R$id;->ll_root_search:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_16

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_16
    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->O:Landroid/view/View;

    if-eqz v0, :cond_17

    sget v2, Lcom/transsion/tools/R$id;->ll_empty:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_17

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_17
    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->Z0()V

    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->k1()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    goto/16 :goto_6

    :pswitch_6
    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->O:Landroid/view/View;

    if-eqz v0, :cond_18

    sget v2, Lcom/transsion/tools/R$id;->ll_root_search:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_18

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_18
    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->k1()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->O:Landroid/view/View;

    if-eqz v0, :cond_19

    sget v2, Lcom/transsion/tools/R$id;->iv_send_search:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_19
    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->O:Landroid/view/View;

    if-eqz v0, :cond_1a

    sget v2, Lcom/transsion/tools/R$id;->tv_searching:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1a

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1a
    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->r0:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->j0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1b

    const-wide/16 v2, 0x0

    goto :goto_4

    :cond_1b
    const-wide/32 v2, 0x493e0

    :goto_4
    invoke-static {v0, v2, v3}, Lcom/blankj/utilcode/util/ThreadUtils;->t(Ljava/lang/Runnable;J)V

    invoke-virtual {p0, v4, v5}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->y1(J)V

    goto :goto_5

    :cond_1c
    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->O:Landroid/view/View;

    if-eqz v0, :cond_1d

    sget v2, Lcom/transsion/tools/R$id;->ll_search_loading:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1d

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->U:J

    iget-boolean v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->a0:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->N:Lcom/transsion/vishatransfer/manager/ITransferHelper;

    new-instance v2, Lqt3;

    invoke-direct {v2, p0}, Lqt3;-><init>(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)V

    invoke-interface {v0, v2}, Lcom/transsion/vishatransfer/manager/ITransferHelper;->removeGroupAsync(Lu74;)V

    :cond_1e
    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->s0:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lcom/blankj/utilcode/util/ThreadUtils;->t(Ljava/lang/Runnable;J)V

    :goto_5
    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->O:Landroid/view/View;

    if-eqz v0, :cond_1f

    sget v2, Lcom/transsion/tools/R$id;->ll_search:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1f

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1f
    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->W0()V

    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->k1()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object p0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->V:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_20

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_20
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final D1()V
    .locals 2

    const-string v0, "FileTransSheetDialogActivity"

    const-string v1, "[TEST] stopConnect"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->k1()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->N:Lcom/transsion/vishatransfer/manager/ITransferHelper;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/transsion/vishatransfer/manager/ITransferHelper;->cancelTransfer(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->N:Lcom/transsion/vishatransfer/manager/ITransferHelper;

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lcom/transsion/vishatransfer/manager/ITransferHelper;->cancelTransfer(I)V

    :goto_0
    return-void
.end method

.method public final E1()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->t0:Lkotlinx/coroutines/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/j$a;->b(Lkotlinx/coroutines/j;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    iput-object v1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->t0:Lkotlinx/coroutines/j;

    return-void
.end method

.method public final F1(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 1

    const-string v0, "device"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->l0:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-void
.end method

.method public final G1(Ljava/util/List;)V
    .locals 7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TEST] updateDevice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileTransSheetDialogActivity"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->m0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->m0:Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->k0:Lcom/transsion/tools/filetrans/adapter/FileTransDeviceAdapter;

    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->m0:Ljava/util/ArrayList;

    const-string v1, "null cannot be cast to non-null type kotlin.collections.List<android.net.wifi.p2p.WifiP2pDevice>"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object p1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->h0:Ljava/util/HashSet;

    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->m0:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->m0:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-static {p0, v2, v2, v1, v0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->Q0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;IZILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->f0:Z

    if-eqz p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->e0:J

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->g0:J

    iput-boolean v2, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->f0:Z

    :cond_1
    invoke-static {p0, v1, v2, v1, v0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->Q0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;IZILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final H1()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->U:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x493e0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-object p0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->r0:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->O:Landroid/view/View;

    if-eqz v2, :cond_1

    sget v3, Lcom/transsion/tools/R$id;->tv_searching:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    sget v3, Lcom/transsion/tools/R$string;->visha_file_trans_waiting_receive:I

    sub-long/2addr v4, v0

    iget-wide v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->U:J

    add-long/2addr v4, v0

    const/16 v0, 0x3e8

    int-to-long v0, v0

    div-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->s0:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ThreadUtils;->t(Ljava/lang/Runnable;J)V

    :goto_0
    return-void
.end method

.method public final P0(IZ)V
    .locals 4

    iget v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->S:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->k1()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->j0:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$Companion$FileTransItem;

    invoke-virtual {v2}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$Companion$FileTransItem;->toFileData()Lcom/transsion/vishatransfer/data/FileData;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->j0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TEST] send changeStatus fileDataList.size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , mDataList.size: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileTransSheetDialogActivity"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TEST] changeStatus: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->k1()Z

    move-result v0

    if-nez v0, :cond_4

    iget-wide v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->b0:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->b0:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_1
    iput-wide v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->b0:J

    goto :goto_2

    :cond_3
    return-void

    :cond_4
    :goto_2
    iget v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->S:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->T:Ljava/lang/Integer;

    iput p1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->S:I

    if-eqz p2, :cond_5

    new-instance p1, Llt3;

    invoke-direct {p1, p0}, Llt3;-><init>(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method public final S0(D)V
    .locals 8

    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->b1()D

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TEST] totalFileSizeInGB: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " availableInternalMemorySize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FileTransSheetDialogActivity"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    cmpl-double v2, p1, v0

    if-ltz v2, :cond_2

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/transsion/tools/R$layout;->dialog_connect_confirm:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    sget v3, Lcom/transsion/tools/R$id;->info:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    sget v4, Lcom/transsion/tools/R$string;->visha_insufficient_storage_space:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz v2, :cond_1

    sget v3, Lcom/transsion/tools/R$id;->tip:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    sget-object v4, Lhz9;->a:Lhz9;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "G"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v4, 0x2

    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v6, "%.2f%s"

    invoke-static {v6, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v7, "format(...)"

    invoke-static {p1, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {v6, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/transsion/tools/R$string;->visha_storage_space_info:I

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    new-instance p1, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->E(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/transsion/widgetslib/dialog/d$a;->f(Z)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    sget p2, Lcom/transsion/tools/R$string;->got_it:I

    new-instance v0, Lbu3;

    invoke-direct {v0, p0}, Lbu3;-><init>(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)V

    invoke-virtual {p1, p2, v0}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->Z:Lcom/transsion/widgetslib/dialog/d;

    if-eqz p1, :cond_3

    new-instance p2, Lcu3;

    invoke-direct {p2, p0}, Lcu3;-><init>(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->z1()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final V0()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->E1()V

    iget-object p0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->u0:Lnk1;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lkotlinx/coroutines/d;->f(Lnk1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method

.method public final W0()V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->k1()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->e0:J

    iput-boolean v1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->f0:Z

    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->p0:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/ThreadUtils;->t(Ljava/lang/Runnable;J)V

    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->N:Lcom/transsion/vishatransfer/manager/ITransferHelper;

    new-instance v1, Lst3;

    invoke-direct {v1, p0}, Lst3;-><init>(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)V

    invoke-interface {v0, v1}, Lcom/transsion/vishatransfer/manager/ITransferHelper;->searchDevicesAsync(Lu74;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->a0:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->N:Lcom/transsion/vishatransfer/manager/ITransferHelper;

    invoke-interface {v0}, Lcom/transsion/vishatransfer/manager/ITransferHelper;->getConnectState()Lcom/transsion/vishatransfer/data/ConnectedState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishatransfer/data/ConnectedState;->getState()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TEST] receive fileTransSearchStart state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FileTransSheetDialogActivity"

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->N:Lcom/transsion/vishatransfer/manager/ITransferHelper;

    new-instance v2, Lut3;

    invoke-direct {v2, p0}, Lut3;-><init>(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)V

    invoke-interface {v0, v2}, Lcom/transsion/vishatransfer/manager/ITransferHelper;->createGroupAsync(Lu74;)V

    iput-boolean v1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->a0:Z

    :goto_0
    return-void
.end method

.method public final Z0()V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->k1()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->N:Lcom/transsion/vishatransfer/manager/ITransferHelper;

    invoke-interface {v0}, Lcom/transsion/vishatransfer/manager/ITransferHelper;->unregisterP2pConnectReceiver()V

    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->N:Lcom/transsion/vishatransfer/manager/ITransferHelper;

    iget-object p0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->v0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mSendListener$1;

    invoke-interface {v0, p0}, Lcom/transsion/vishatransfer/manager/ITransferHelper;->unregisterCallback(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->N:Lcom/transsion/vishatransfer/manager/ITransferHelper;

    invoke-interface {v0}, Lcom/transsion/vishatransfer/manager/ITransferHelper;->unRegisterServerReceiver()V

    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->N:Lcom/transsion/vishatransfer/manager/ITransferHelper;

    iget-object v1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->w0:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mReceiveListener$1;

    invoke-interface {v0, v1}, Lcom/transsion/vishatransfer/manager/ITransferHelper;->unregisterCallback(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;)V

    sget-object v0, Lmu3;->a:Lmu3;

    invoke-virtual {v0}, Lmu3;->j()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->N:Lcom/transsion/vishatransfer/manager/ITransferHelper;

    invoke-interface {v0}, Lcom/transsion/vishatransfer/manager/ITransferHelper;->getConnectState()Lcom/transsion/vishatransfer/data/ConnectedState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishatransfer/data/ConnectedState;->getState()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TEST] receive fileTransSearchStop state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileTransSheetDialogActivity"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->N:Lcom/transsion/vishatransfer/manager/ITransferHelper;

    new-instance v0, Ljt3;

    invoke-direct {v0}, Ljt3;-><init>()V

    invoke-interface {p0, v0}, Lcom/transsion/vishatransfer/manager/ITransferHelper;->removeGroupAsync(Lu74;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final b1()D
    .locals 4

    new-instance p0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    mul-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public final c1()J
    .locals 4

    iget-wide v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->d0:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->d0:J

    sub-long v2, v0, v2

    :cond_0
    return-wide v2
.end method

.method public final d1()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "device_name"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getString(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final f1()V
    .locals 13

    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->k1()Z

    move-result v0

    const/16 v1, 0x21

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "getString(...)"

    if-eqz v0, :cond_9

    invoke-static {p0}, Lcom/transsion/utils/a;->q(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->O:Landroid/view/View;

    if-eqz v0, :cond_0

    sget v5, Lcom/transsion/tools/R$id;->tv_btn_connect_retry:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-static {v5, v6}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x42700000    # 60.0f

    invoke-static {p0, v6}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->O:Landroid/view/View;

    if-eqz v0, :cond_1

    sget v5, Lcom/transsion/tools/R$id;->connect_phone_icon:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0

    :cond_1
    move-object v0, v3

    :goto_0
    iput-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->R:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->O:Landroid/view/View;

    if-eqz v0, :cond_2

    sget v5, Lcom/transsion/tools/R$id;->ll_connect:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    goto :goto_1

    :cond_2
    move-object v0, v3

    :goto_1
    iput-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->Q:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    new-instance v5, Lmt3;

    invoke-direct {v5, p0}, Lmt3;-><init>(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->O:Landroid/view/View;

    if-eqz v0, :cond_4

    sget v3, Lcom/transsion/tools/R$id;->tv_name:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/TextView;

    :cond_4
    iput-object v3, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->P:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->O:Landroid/view/View;

    if-eqz v0, :cond_6

    sget v3, Lcom/transsion/tools/R$id;->tv_search_tips:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_6

    sget-boolean v3, Lpp3;->c:Z

    if-eqz v3, :cond_5

    sget v3, Lcom/transsion/tools/R$string;->visha_file_trans_receive_path_pre:I

    goto :goto_2

    :cond_5
    sget v3, Lcom/transsion/tools/R$string;->visha_file_trans_receive_path:I

    :goto_2
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget v5, Lcom/transsion/tools/R$string;->visha_file_trans_receive_tips:I

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v3

    invoke-static/range {v5 .. v10}, Lj1a;->m0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v5

    new-instance v6, Landroid/text/style/StyleSpan;

    invoke-direct {v6, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v4, v6, v5, v3, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->O:Landroid/view/View;

    if-eqz v0, :cond_7

    sget v1, Lcom/transsion/tools/R$id;->tv_btn_retry:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_7

    new-instance v1, Lnt3;

    invoke-direct {v1, p0}, Lnt3;-><init>(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->O:Landroid/view/View;

    if-eqz v0, :cond_8

    sget v1, Lcom/transsion/tools/R$id;->rv_search_result:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->k0:Lcom/transsion/tools/filetrans/adapter/FileTransDeviceAdapter;

    new-instance v2, Lot3;

    invoke-direct {v2, p0}, Lot3;-><init>(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)V

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object v1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->k0:Lcom/transsion/tools/filetrans/adapter/FileTransDeviceAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v1, Lcom/transsion/utils/CustomGridLayoutManager;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/transsion/utils/CustomGridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v1, Lcom/transsion/playercommon/gallery/ImageAdapter$GridSpaceItemDecoration;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {p0, v3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/transsion/playercommon/gallery/ImageAdapter$GridSpaceItemDecoration;-><init>(II)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_8
    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->O:Landroid/view/View;

    if-eqz v0, :cond_10

    sget v1, Lcom/transsion/tools/R$id;->tv_btn_connect_retry:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_10

    new-instance v1, Lpt3;

    invoke-direct {v1, p0}, Lpt3;-><init>(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    :cond_9
    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->O:Landroid/view/View;

    if-eqz v0, :cond_a

    sget v5, Lcom/transsion/tools/R$id;->iv_send_search:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_a
    sget v0, Lcom/transsion/tools/R$id;->circular_progress:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_b

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    sget-object v3, Lzfb;->a:Lzfb;

    :cond_b
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v5, "rotation"

    invoke-static {v3, v5, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->V:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_c

    const-wide/16 v5, 0x7d0

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    :cond_c
    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->V:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_d

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    :cond_d
    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->O:Landroid/view/View;

    if-eqz v0, :cond_f

    sget v3, Lcom/transsion/tools/R$id;->tv_search_tips:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_f

    sget-boolean v3, Lpp3;->c:Z

    if-eqz v3, :cond_e

    sget v3, Lcom/transsion/tools/R$string;->visha_file_trans_send_path1_pre:I

    goto :goto_3

    :cond_e
    sget v3, Lcom/transsion/tools/R$string;->visha_file_trans_send_path1:I

    :goto_3
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget v5, Lcom/transsion/tools/R$string;->visha_file_trans_send_path2:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget v5, Lcom/transsion/tools/R$string;->visha_file_trans_send_tips:I

    filled-new-array {v3, v12}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, v11

    move-object v6, v3

    invoke-static/range {v5 .. v10}, Lj1a;->m0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v5

    new-instance v6, Landroid/text/style/StyleSpan;

    invoke-direct {v6, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v4, v6, v5, v3, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const/4 v10, 0x6

    const/4 v3, 0x0

    const/4 v9, 0x0

    move-object v6, v11

    move-object v7, v12

    move-object v11, v3

    invoke-static/range {v6 .. v11}, Lj1a;->m0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v3

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    new-instance v6, Landroid/text/style/StyleSpan;

    invoke-direct {v6, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v4, v6, v3, v5, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_f
    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->O:Landroid/view/View;

    if-eqz v0, :cond_10

    sget v1, Lcom/transsion/tools/R$id;->tv_searching:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_10

    sget v1, Lcom/transsion/tools/R$string;->visha_file_trans_waiting_receive:I

    const-string v2, "300"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_10
    :goto_4
    return-void

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method public initView()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->initView()V

    sget v0, Lcom/transsion/tools/R$layout;->activity_file_trans_sheet_dialog:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->O:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "data"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->i0:Z

    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->k1()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "data_list_ids"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iput-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->j0:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->O:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseCloseBottomSheetDialog;->addPage(Landroid/view/View;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->showTitle(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setCloseIconVisibility(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    sget v1, Lcom/transsion/tools/R$string;->visha_file_trans:I

    invoke-virtual {v0, v1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setTitle(I)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/tools/R$dimen;->file_trans_dialog_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->f1()V

    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->A1()V

    invoke-direct {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->e1()V

    sget-object p0, Lcom/transsion/dbdata/markpoint/a;->a:Lcom/transsion/dbdata/markpoint/a$a;

    invoke-virtual {p0}, Lcom/transsion/dbdata/markpoint/a$a;->j()V

    return-void
.end method

.method public final k1()Z
    .locals 1

    iget-boolean p0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->i0:Z

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final l1()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->T:Ljava/lang/Integer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    const/16 v2, 0x8

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_9

    iget v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->S:I

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->k1()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->O:Landroid/view/View;

    if-eqz v0, :cond_3

    sget v1, Lcom/transsion/tools/R$id;->ll_root_search:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->O:Landroid/view/View;

    if-eqz v0, :cond_4

    sget v1, Lcom/transsion/tools/R$id;->ll_search:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->k1()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->r0:Ljava/lang/Runnable;

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->s0:Ljava/lang/Runnable;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->k1()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->V:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_6
    iget-object p0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->O:Landroid/view/View;

    if-eqz p0, :cond_1e

    sget v0, Lcom/transsion/tools/R$id;->iv_send_search:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz p0, :cond_1e

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    :cond_7
    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->O:Landroid/view/View;

    if-eqz v0, :cond_8

    sget v1, Lcom/transsion/tools/R$id;->ll_search_loading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->E1()V

    goto/16 :goto_7

    :cond_9
    :goto_1
    const/4 v3, 0x1

    if-nez v0, :cond_a

    goto :goto_2

    :cond_a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_c

    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->O:Landroid/view/View;

    if-eqz v0, :cond_b

    sget v1, Lcom/transsion/tools/R$id;->ll_root_search:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_b

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    iget-object p0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->O:Landroid/view/View;

    if-eqz p0, :cond_1e

    sget v0, Lcom/transsion/tools/R$id;->ll_empty:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    if-eqz p0, :cond_1e

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    :cond_c
    :goto_2
    if-nez v0, :cond_d

    goto :goto_3

    :cond_d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_f

    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->k1()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->O:Landroid/view/View;

    if-eqz v0, :cond_e

    sget v1, Lcom/transsion/tools/R$id;->rv_search_result:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_e

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->E1()V

    goto/16 :goto_7

    :cond_f
    :goto_3
    if-nez v0, :cond_10

    goto :goto_4

    :cond_10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v1, :cond_13

    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->k1()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->Q:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_11

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->O:Landroid/view/View;

    if-eqz v0, :cond_12

    sget v1, Lcom/transsion/tools/R$id;->loading_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/OSLoadingView;

    if-eqz v0, :cond_12

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->q0:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_7

    :cond_13
    :goto_4
    if-nez v0, :cond_14

    goto :goto_5

    :cond_14
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_17

    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->k1()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->Q:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_15

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_15
    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->O:Landroid/view/View;

    if-eqz v0, :cond_16

    sget v1, Lcom/transsion/tools/R$id;->tv_confirming:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_16

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_16
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->q0:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_7

    :cond_17
    :goto_5
    if-nez v0, :cond_18

    goto :goto_7

    :cond_18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1e

    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->k1()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->Q:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_19

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_19
    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->O:Landroid/view/View;

    if-eqz v0, :cond_1a

    sget v1, Lcom/transsion/tools/R$id;->tv_confirming:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1a

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1a
    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->O:Landroid/view/View;

    if-eqz v0, :cond_1b

    sget v1, Lcom/transsion/tools/R$id;->tv_btn_connect_retry:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1b

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1b
    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->R:Landroid/widget/ImageView;

    if-eqz v0, :cond_1c

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    :cond_1c
    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->P:Landroid/widget/TextView;

    if-eqz v0, :cond_1e

    iget-object p0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->l0:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz p0, :cond_1d

    iget-object p0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    goto :goto_6

    :cond_1d
    const/4 p0, 0x0

    :goto_6
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {v0, p0}, Landroid/view/View;->setAlpha(F)V

    :cond_1e
    :goto_7
    return-void
.end method

.method public onDestroy()V
    .locals 5

    invoke-super {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->onDestroy()V

    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->k1()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->V:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iput-object v1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->V:Landroid/animation/ObjectAnimator;

    :cond_1
    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->X:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iput-object v1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->X:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->W:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_3
    iput-object v1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->W:Landroid/animation/ObjectAnimator;

    iget v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->S:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    const/4 v4, 0x3

    if-eq v0, v4, :cond_4

    const/4 v4, 0x4

    if-eq v0, v4, :cond_4

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/transsion/dbdata/markpoint/a;->a:Lcom/transsion/dbdata/markpoint/a$a;

    const-string v4, "connecting"

    invoke-static {v0, v4, v2, v3, v1}, Lcom/transsion/dbdata/markpoint/a$a;->c(Lcom/transsion/dbdata/markpoint/a$a;Ljava/lang/String;IILjava/lang/Object;)V

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/transsion/dbdata/markpoint/a;->a:Lcom/transsion/dbdata/markpoint/a$a;

    const-string v4, "select_device"

    invoke-static {v0, v4, v2, v3, v1}, Lcom/transsion/dbdata/markpoint/a$a;->c(Lcom/transsion/dbdata/markpoint/a$a;Ljava/lang/String;IILjava/lang/Object;)V

    :goto_0
    iget v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->S:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->s1()V

    :cond_6
    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->V0()V

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->p0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->q0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->k1()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->r0:Ljava/lang/Runnable;

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->s0:Ljava/lang/Runnable;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->Z0()V

    return-void
.end method

.method public final s1()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->N:Lcom/transsion/vishatransfer/manager/ITransferHelper;

    new-instance v1, Lau3;

    invoke-direct {v1}, Lau3;-><init>()V

    invoke-interface {v0, v1}, Lcom/transsion/vishatransfer/manager/ITransferHelper;->disconnectAsync(Lu74;)V

    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->D1()V

    return-void
.end method

.method public final u1()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->Y:Lcom/transsion/widgetslib/dialog/d;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->l0:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/tools/R$layout;->dialog_connect_confirm:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    sget v1, Lcom/transsion/tools/R$id;->info:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    sget v4, Lcom/transsion/tools/R$string;->visha_file_trans_want_connect:I

    iget-object v5, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->l0:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v5, :cond_1

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v5, v2

    :goto_0
    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->l0:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v1, :cond_3

    iget-object v2, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TEST] showConnectDialog: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FileTransSheetDialogActivity"

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    new-instance v1, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/dialog/d$a;->E(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/transsion/widgetslib/dialog/d$a;->f(Z)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/tools/R$string;->visha_receive:I

    new-instance v2, Lyt3;

    invoke-direct {v2, p0}, Lyt3;-><init>(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/tools/R$string;->visha_refuse:I

    new-instance v2, Lzt3;

    invoke-direct {v2, p0}, Lzt3;-><init>(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->Y:Lcom/transsion/widgetslib/dialog/d;

    :cond_4
    :goto_1
    return-void
.end method

.method public final x1()V
    .locals 11

    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->k1()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->l0:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->N:Lcom/transsion/vishatransfer/manager/ITransferHelper;

    new-instance v2, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$a;

    invoke-direct {v2, p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$a;-><init>(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)V

    invoke-interface {v1, v0, v2}, Lcom/transsion/vishatransfer/manager/ITransferHelper;->connectAsync(Landroid/net/wifi/p2p/WifiP2pDevice;Lu74;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->N:Lcom/transsion/vishatransfer/manager/ITransferHelper;

    new-instance v10, Lcom/transsion/vishatransfer/data/Conversation;

    const/16 v8, 0x2e

    const/4 v9, 0x0

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/transsion/vishatransfer/data/Conversation;-><init>(IJZIILcom/transsion/vishatransfer/data/DeviceInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p0, v10}, Lcom/transsion/vishatransfer/manager/ITransferHelper;->sendConversationToClient(Lcom/transsion/vishatransfer/data/Conversation;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final y1(J)V
    .locals 6

    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->E1()V

    iget-object v0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->u0:Lnk1;

    new-instance v3, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$startSearchLoop$1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, p1, p2, v1}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$startSearchLoop$1;-><init>(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;JLwh1;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->t0:Lkotlinx/coroutines/j;

    return-void
.end method

.method public final z1()V
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->k1()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x6

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->j0:Ljava/util/ArrayList;

    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v1, v7}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$Companion$FileTransItem;

    invoke-virtual {v8}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$Companion$FileTransItem;->toFileData()Lcom/transsion/vishatransfer/data/FileData;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    iget-object v6, v0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->j0:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[TEST] send startSendOrReceive fileDataList.size: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , mDataList.size: "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "FileTransSheetDialogActivity"

    filled-new-array {v6, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->N:Lcom/transsion/vishatransfer/manager/ITransferHelper;

    iget-object v6, v0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->j0:Ljava/util/ArrayList;

    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v6, v7}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$Companion$FileTransItem;

    invoke-virtual {v7}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$Companion$FileTransItem;->toFileData()Lcom/transsion/vishatransfer/data/FileData;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v1, v8}, Lcom/transsion/vishatransfer/manager/ITransferHelper;->sendFileDataToServerAsync(Ljava/util/List;)V

    sget-object v1, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->s:Lcom/transsion/vishatransfers/manager/TransferNotificationManager$a;

    invoke-virtual {v1}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager$a;->a()Lcom/transsion/vishatransfers/manager/TransferNotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->G()V

    invoke-static {v0, v5, v4, v3, v2}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->Q0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;IZILjava/lang/Object;)V

    goto :goto_2

    :cond_2
    iget-object v1, v0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->N:Lcom/transsion/vishatransfer/manager/ITransferHelper;

    new-instance v15, Lcom/transsion/vishatransfer/data/Conversation;

    const/16 v14, 0x2e

    const/16 v16, 0x0

    const/4 v7, 0x3

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, v15

    move-object v2, v15

    move-object/from16 v15, v16

    invoke-direct/range {v6 .. v15}, Lcom/transsion/vishatransfer/data/Conversation;-><init>(IJZIILcom/transsion/vishatransfer/data/DeviceInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v2}, Lcom/transsion/vishatransfer/manager/ITransferHelper;->sendConversationToClient(Lcom/transsion/vishatransfer/data/Conversation;)V

    sget-object v1, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->s:Lcom/transsion/vishatransfers/manager/TransferNotificationManager$a;

    invoke-virtual {v1}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager$a;->a()Lcom/transsion/vishatransfers/manager/TransferNotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->F()V

    const/4 v1, 0x0

    invoke-static {v0, v5, v4, v3, v1}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->Q0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;IZILjava/lang/Object;)V

    :goto_2
    return-void
.end method
