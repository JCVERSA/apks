.class public Lcom/transsion/hubsdk/api/pq/TranPictureQuality;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranPictureQuality"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/pq/TranAospPictureQuality;

.field private mThubService:Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality;


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
.method public enableC3D(Z)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/pq/TranPictureQuality;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/pq/ITranPictureQualityAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/pq/ITranPictureQualityAdapter;->enableC3D(Z)V

    return-void
.end method

.method public getAALFunction()I
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/pq/TranPictureQuality;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/pq/ITranPictureQualityAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/pq/ITranPictureQualityAdapter;->getAALFunction()I

    move-result p0

    return p0
.end method

.method public getGammaIndex()I
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/pq/TranPictureQuality;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/pq/ITranPictureQualityAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/pq/ITranPictureQualityAdapter;->getGammaIndex()I

    move-result p0

    return p0
.end method

.method public getPictureMode()I
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/pq/TranPictureQuality;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/pq/ITranPictureQualityAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/pq/ITranPictureQualityAdapter;->getPictureMode()I

    move-result p0

    return p0
.end method

.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/pq/ITranPictureQualityAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/hubsdk/api/pq/TranPictureQuality;->TAG:Ljava/lang/String;

    const-string v0, "TranThubPictureQuality"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/pq/TranPictureQuality;->mThubService:Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/pq/TranPictureQuality;->mThubService:Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/pq/TranPictureQuality;->TAG:Ljava/lang/String;

    const-string v0, "TranAospPictureQuality"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/pq/TranPictureQuality;->mAospService:Lcom/transsion/hubsdk/aosp/pq/TranAospPictureQuality;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/pq/TranAospPictureQuality;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/pq/TranAospPictureQuality;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/pq/TranPictureQuality;->mAospService:Lcom/transsion/hubsdk/aosp/pq/TranAospPictureQuality;

    :cond_2
    return-object p1
.end method

.method public setAALFunction(I)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/pq/TranPictureQuality;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/pq/ITranPictureQualityAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/pq/ITranPictureQualityAdapter;->setAALFunction(I)V

    return-void
.end method

.method public setGammaIndex(I)V
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/hubsdk/api/pq/TranPictureQuality;->mAospService:Lcom/transsion/hubsdk/aosp/pq/TranAospPictureQuality;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/aosp/pq/TranAospPictureQuality;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/pq/TranAospPictureQuality;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/pq/TranPictureQuality;->mAospService:Lcom/transsion/hubsdk/aosp/pq/TranAospPictureQuality;

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/api/pq/TranPictureQuality;->mAospService:Lcom/transsion/hubsdk/aosp/pq/TranAospPictureQuality;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/aosp/pq/TranAospPictureQuality;->setGammaIndex(I)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid index"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPictureMode(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/pq/TranPictureQuality;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/pq/ITranPictureQualityAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/pq/ITranPictureQualityAdapter;->setPictureMode(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid picture mode"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSmartBacklightStrength(I)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/pq/TranPictureQuality;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/pq/ITranPictureQualityAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/pq/ITranPictureQualityAdapter;->setSmartBacklightStrength(I)V

    return-void
.end method
