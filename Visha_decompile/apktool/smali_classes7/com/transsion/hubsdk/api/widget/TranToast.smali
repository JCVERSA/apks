.class public Lcom/transsion/hubsdk/api/widget/TranToast;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranToast"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/widget/TranAospToast;

.field private mThubService:Lcom/transsion/hubsdk/core/widget/TranThubToast;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/widget/ITranToastAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/hubsdk/api/widget/TranToast;->TAG:Ljava/lang/String;

    const-string v0, "TranThubToast"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/widget/TranToast;->mThubService:Lcom/transsion/hubsdk/core/widget/TranThubToast;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/widget/TranThubToast;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/widget/TranThubToast;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/widget/TranToast;->mThubService:Lcom/transsion/hubsdk/core/widget/TranThubToast;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/widget/TranToast;->TAG:Ljava/lang/String;

    const-string v0, "TranAospToast"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/widget/TranToast;->mAospService:Lcom/transsion/hubsdk/aosp/widget/TranAospToast;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/widget/TranAospToast;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/widget/TranAospToast;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/widget/TranToast;->mAospService:Lcom/transsion/hubsdk/aosp/widget/TranAospToast;

    :cond_2
    return-object p1
.end method

.method public getWindowParams(Landroid/widget/Toast;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/widget/TranToast;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/widget/ITranToastAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/widget/ITranToastAdapter;->getWindowParams(Landroid/widget/Toast;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "toast is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
