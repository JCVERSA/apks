.class public Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AP_BAND_2GHZ:I = 0x0

.field public static final AP_BAND_5GHZ:I = 0x1

.field public static final AP_BAND_60GHZ:I = 0x2

.field public static final AP_BAND_ANY:I = -0x1


# instance fields
.field public mAllowedKeyManagement:Ljava/util/BitSet;

.field public mApBand:I

.field public mApChannel:I

.field public mHiddenSSID:Z

.field public mNetworkId:I

.field public mPreSharedKey:Ljava/lang/String;

.field public mSSID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mApBand:I

    iput v0, p0, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mApChannel:I

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/net/wifi/TranWifiConfiguration;->mAllowedKeyManagement:Ljava/util/BitSet;

    return-void
.end method
