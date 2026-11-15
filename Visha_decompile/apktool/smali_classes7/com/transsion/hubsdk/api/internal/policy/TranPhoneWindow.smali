.class public Lcom/transsion/hubsdk/api/internal/policy/TranPhoneWindow;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranPhoneWindow"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/internal/policy/TranAospPhoneWindow;

.field private mContext:Landroid/content/Context;

.field private mThubService:Lcom/transsion/hubsdk/core/internal/policy/TranThubPhoneWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/internal/policy/TranPhoneWindow;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getDecorView()Landroid/view/View;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33211:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/internal/policy/TranPhoneWindow;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/policy/ITranPhoneWindowAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/internal/policy/ITranPhoneWindowAdapter;->getDecorView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/policy/ITranPhoneWindowAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/hubsdk/api/internal/policy/TranPhoneWindow;->TAG:Ljava/lang/String;

    const-string v0, "TranThubPhoneWindow"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/internal/policy/TranPhoneWindow;->mThubService:Lcom/transsion/hubsdk/core/internal/policy/TranThubPhoneWindow;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/internal/policy/TranThubPhoneWindow;

    iget-object v0, p0, Lcom/transsion/hubsdk/api/internal/policy/TranPhoneWindow;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/transsion/hubsdk/core/internal/policy/TranThubPhoneWindow;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/internal/policy/TranPhoneWindow;->mThubService:Lcom/transsion/hubsdk/core/internal/policy/TranThubPhoneWindow;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/internal/policy/TranPhoneWindow;->TAG:Ljava/lang/String;

    const-string v0, "TranAospPhoneWindow"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/internal/policy/TranPhoneWindow;->mAospService:Lcom/transsion/hubsdk/aosp/internal/policy/TranAospPhoneWindow;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/internal/policy/TranAospPhoneWindow;

    iget-object v0, p0, Lcom/transsion/hubsdk/api/internal/policy/TranPhoneWindow;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/transsion/hubsdk/aosp/internal/policy/TranAospPhoneWindow;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/internal/policy/TranPhoneWindow;->mAospService:Lcom/transsion/hubsdk/aosp/internal/policy/TranAospPhoneWindow;

    :cond_2
    return-object p1
.end method

.method public requestFeature(I)Z
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33211:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/internal/policy/TranPhoneWindow;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/policy/ITranPhoneWindowAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/internal/policy/ITranPhoneWindowAdapter;->requestFeature(I)Z

    move-result p0

    return p0
.end method

.method public setBackgroundDrawableResource(I)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33211:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/internal/policy/TranPhoneWindow;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/policy/ITranPhoneWindowAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/internal/policy/ITranPhoneWindowAdapter;->setBackgroundDrawableResource(I)V

    return-void
.end method

.method public setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33211:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/internal/policy/TranPhoneWindow;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/policy/ITranPhoneWindowAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/internal/policy/ITranPhoneWindowAdapter;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method
