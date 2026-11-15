.class public Lcom/transsion/hubsdk/api/view/TranWindowInsetsAnimationController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospWindowInsetsAnimationController;

.field private mThubService:Lcom/transsion/hubsdk/core/view/TranThubWindowInsetsAnimationController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/transsion/hubsdk/api/view/TranViewRootImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/api/view/TranWindowInsetsAnimationController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranWindowInsetsAnimationControllerAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/hubsdk/api/view/TranWindowInsetsAnimationController;->mThubService:Lcom/transsion/hubsdk/core/view/TranThubWindowInsetsAnimationController;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/view/TranThubWindowInsetsAnimationController;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/view/TranThubWindowInsetsAnimationController;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/view/TranWindowInsetsAnimationController;->mThubService:Lcom/transsion/hubsdk/core/view/TranThubWindowInsetsAnimationController;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/view/TranWindowInsetsAnimationController;->TAG:Ljava/lang/String;

    const-string v0, "TranAospWindowInsetsAnimationController"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/view/TranWindowInsetsAnimationController;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospWindowInsetsAnimationController;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/view/TranAospWindowInsetsAnimationController;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/view/TranAospWindowInsetsAnimationController;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/view/TranWindowInsetsAnimationController;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospWindowInsetsAnimationController;

    :cond_2
    return-object p1
.end method

.method public setInsetsAndAlpha(Landroid/view/WindowInsetsAnimationController;Landroid/graphics/Insets;FFZZ)V
    .locals 8

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranWindowInsetsAnimationController;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranWindowInsetsAnimationControllerAdapter;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/transsion/hubsdk/interfaces/view/ITranWindowInsetsAnimationControllerAdapter;->setInsetsAndAlpha(Landroid/view/WindowInsetsAnimationController;Landroid/graphics/Insets;FFZZ)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "controller cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
