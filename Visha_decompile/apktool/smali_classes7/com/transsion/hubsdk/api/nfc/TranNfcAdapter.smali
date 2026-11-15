.class public Lcom/transsion/hubsdk/api/nfc/TranNfcAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranNfcAdapter"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/nfc/TranAospNfcAdapter;

.field private mThubService:Lcom/transsion/hubsdk/core/net/TranThubNfcAdapter;


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
.method public getAdapterState(Landroid/nfc/NfcAdapter;)I
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/nfc/TranNfcAdapter;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/nfc/ITranNfcAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/nfc/ITranNfcAdapter;->getAdapterState(Landroid/nfc/NfcAdapter;)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "nfcAdapter is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/nfc/TranNfcAdapter;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/nfc/ITranNfcAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/nfc/ITranNfcAdapter;->getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/nfc/ITranNfcAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/hubsdk/api/nfc/TranNfcAdapter;->TAG:Ljava/lang/String;

    const-string v0, "TranThubNfcAdapter"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/nfc/TranNfcAdapter;->mThubService:Lcom/transsion/hubsdk/core/net/TranThubNfcAdapter;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/net/TranThubNfcAdapter;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/net/TranThubNfcAdapter;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/nfc/TranNfcAdapter;->mThubService:Lcom/transsion/hubsdk/core/net/TranThubNfcAdapter;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/nfc/TranNfcAdapter;->TAG:Ljava/lang/String;

    const-string v0, "TranAospNfcAdapter"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/nfc/TranNfcAdapter;->mAospService:Lcom/transsion/hubsdk/aosp/nfc/TranAospNfcAdapter;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/nfc/TranAospNfcAdapter;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/nfc/TranAospNfcAdapter;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/nfc/TranNfcAdapter;->mAospService:Lcom/transsion/hubsdk/aosp/nfc/TranAospNfcAdapter;

    :cond_2
    return-object p1
.end method
