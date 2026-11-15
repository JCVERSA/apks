.class public Lcom/transsion/hubsdk/core/net/TranThubNfcAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/nfc/ITranNfcAdapter;


# instance fields
.field private mTranNfcAdapter:Lcom/transsion/hubsdk/nfc/TranNfcAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/nfc/TranNfcAdapter;

    invoke-direct {v0}, Lcom/transsion/hubsdk/nfc/TranNfcAdapter;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/net/TranThubNfcAdapter;->mTranNfcAdapter:Lcom/transsion/hubsdk/nfc/TranNfcAdapter;

    return-void
.end method


# virtual methods
.method public getAdapterState(Landroid/nfc/NfcAdapter;)I
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/net/TranThubNfcAdapter;->mTranNfcAdapter:Lcom/transsion/hubsdk/nfc/TranNfcAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/nfc/TranNfcAdapter;->getAdapterState(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/net/TranThubNfcAdapter;->mTranNfcAdapter:Lcom/transsion/hubsdk/nfc/TranNfcAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/nfc/TranNfcAdapter;->getNfcAdapter(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/nfc/NfcAdapter;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
