.class public Lcom/transsion/hubsdk/api/nfc/TranNfcManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranNfcManager"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/nfc/TranAospNfcManager;

.field private mThubService:Lcom/transsion/hubsdk/core/nfc/TranThubNfcManager;


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
.method public disable()Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/nfc/TranNfcManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/nfc/ITranNfcManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/nfc/ITranNfcManagerAdapter;->disable()Z

    move-result p0

    return p0
.end method

.method public enable()Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/nfc/TranNfcManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/nfc/ITranNfcManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/nfc/ITranNfcManagerAdapter;->enable()Z

    move-result p0

    return p0
.end method

.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/nfc/ITranNfcManagerAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/hubsdk/api/nfc/TranNfcManager;->TAG:Ljava/lang/String;

    const-string v0, "TranThubNfcManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/nfc/TranNfcManager;->mThubService:Lcom/transsion/hubsdk/core/nfc/TranThubNfcManager;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/nfc/TranThubNfcManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/nfc/TranThubNfcManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/nfc/TranNfcManager;->mThubService:Lcom/transsion/hubsdk/core/nfc/TranThubNfcManager;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/nfc/TranNfcManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospNfcManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/nfc/TranNfcManager;->mAospService:Lcom/transsion/hubsdk/aosp/nfc/TranAospNfcManager;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/nfc/TranAospNfcManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/nfc/TranAospNfcManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/nfc/TranNfcManager;->mAospService:Lcom/transsion/hubsdk/aosp/nfc/TranAospNfcManager;

    :cond_2
    return-object p1
.end method
