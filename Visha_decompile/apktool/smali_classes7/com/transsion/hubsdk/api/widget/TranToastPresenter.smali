.class public Lcom/transsion/hubsdk/api/widget/TranToastPresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranToastPresenter"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/widget/TranAospToastPresenter;

.field private mThubService:Lcom/transsion/hubsdk/core/widget/TranThubToastPresenter;


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
.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/widget/ITranToastPresenterAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/hubsdk/api/widget/TranToastPresenter;->TAG:Ljava/lang/String;

    const-string v0, "TranThubToastPresenter"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/widget/TranToastPresenter;->mThubService:Lcom/transsion/hubsdk/core/widget/TranThubToastPresenter;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/widget/TranThubToastPresenter;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/widget/TranThubToastPresenter;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/widget/TranToastPresenter;->mThubService:Lcom/transsion/hubsdk/core/widget/TranThubToastPresenter;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/widget/TranToastPresenter;->TAG:Ljava/lang/String;

    const-string v0, "TranAospToastPresenter"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/widget/TranToastPresenter;->mAospService:Lcom/transsion/hubsdk/aosp/widget/TranAospToastPresenter;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/widget/TranAospToastPresenter;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/widget/TranAospToastPresenter;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/widget/TranToastPresenter;->mAospService:Lcom/transsion/hubsdk/aosp/widget/TranAospToastPresenter;

    :cond_2
    return-object p1
.end method

.method public getTextToastView(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/view/View;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/widget/TranToastPresenter;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/widget/ITranToastPresenterAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/widget/ITranToastPresenterAdapter;->getTextToastView(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
