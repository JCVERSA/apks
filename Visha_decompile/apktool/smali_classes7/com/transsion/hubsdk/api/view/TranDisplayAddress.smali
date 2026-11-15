.class public Lcom/transsion/hubsdk/api/view/TranDisplayAddress;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranDisplayAddress"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospDisplayAddress;

.field private mThubService:Lcom/transsion/hubsdk/core/view/TranThubDisplayAddress;


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
.method public getPhysicalDisplayId(Landroid/view/Display;)J
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranDisplayAddress;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranDisplayAddressAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/view/ITranDisplayAddressAdapter;->getPhysicalDisplayId(Landroid/view/Display;)J

    move-result-wide p0

    return-wide p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "display is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranDisplayAddressAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/hubsdk/api/view/TranDisplayAddress;->TAG:Ljava/lang/String;

    const-string v0, "TranThubDisplayAddress"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/view/TranDisplayAddress;->mThubService:Lcom/transsion/hubsdk/core/view/TranThubDisplayAddress;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/view/TranThubDisplayAddress;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/view/TranThubDisplayAddress;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/view/TranDisplayAddress;->mThubService:Lcom/transsion/hubsdk/core/view/TranThubDisplayAddress;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/view/TranDisplayAddress;->TAG:Ljava/lang/String;

    const-string v0, "TranAospDisplayAddress"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/view/TranDisplayAddress;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospDisplayAddress;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/view/TranAospDisplayAddress;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/view/TranAospDisplayAddress;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/view/TranDisplayAddress;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospDisplayAddress;

    :cond_2
    return-object p1
.end method
