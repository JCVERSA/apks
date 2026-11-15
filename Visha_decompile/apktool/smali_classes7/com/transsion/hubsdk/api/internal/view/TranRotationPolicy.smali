.class public Lcom/transsion/hubsdk/api/internal/view/TranRotationPolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranRotationPolicy"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/internal/view/TranAospRotationPolicy;

.field private mThubService:Lcom/transsion/hubsdk/core/internal/view/TranThubRotationPolicy;


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
.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/view/ITranRotationPolicyAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/hubsdk/api/internal/view/TranRotationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "TranThubRotationPolicy"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/internal/view/TranRotationPolicy;->mThubService:Lcom/transsion/hubsdk/core/internal/view/TranThubRotationPolicy;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/internal/view/TranThubRotationPolicy;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/internal/view/TranThubRotationPolicy;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/internal/view/TranRotationPolicy;->mThubService:Lcom/transsion/hubsdk/core/internal/view/TranThubRotationPolicy;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/internal/view/TranRotationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "TranAospRotationPolicy"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/internal/view/TranRotationPolicy;->mAospService:Lcom/transsion/hubsdk/aosp/internal/view/TranAospRotationPolicy;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/internal/view/TranAospRotationPolicy;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/internal/view/TranAospRotationPolicy;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/internal/view/TranRotationPolicy;->mAospService:Lcom/transsion/hubsdk/aosp/internal/view/TranAospRotationPolicy;

    :cond_2
    return-object p1
.end method

.method public isRotationLocked(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/internal/view/TranRotationPolicy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/view/ITranRotationPolicyAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/internal/view/ITranRotationPolicyAdapter;->isRotationLocked(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
