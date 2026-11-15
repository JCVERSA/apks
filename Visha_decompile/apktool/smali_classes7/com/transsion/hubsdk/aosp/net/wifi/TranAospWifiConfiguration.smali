.class public Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AP_BAND_2GHZ:I = 0x0

.field public static final AP_BAND_5GHZ:I = 0x1

.field public static final AP_BAND_60GHZ:I = 0x2

.field public static final AP_BAND_ANY:I = -0x1


# instance fields
.field public SSID:Ljava/lang/String;

.field public allowedKeyManagement:Ljava/util/BitSet;

.field public apBand:I

.field public apChannel:I

.field public hiddenSSID:Z

.field public networkId:I

.field public preSharedKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiConfiguration;->apBand:I

    iput v0, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiConfiguration;->apChannel:I

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    return-void
.end method
