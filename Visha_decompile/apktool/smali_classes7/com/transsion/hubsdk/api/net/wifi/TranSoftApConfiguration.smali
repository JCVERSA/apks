.class public final Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;,
        Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$SecurityType;,
        Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$BandType;
    }
.end annotation


# static fields
.field public static final BAND_2GHZ:I = 0x1

.field public static final BAND_5GHZ:I = 0x2

.field public static final BAND_6GHZ:I = 0x4

.field public static final BAND_ANY:I = 0x7

.field public static final DEFAULT_TIMEOUT:J = -0x1L

.field private static final MAX_CH_2G_BAND:I = 0xe

.field private static final MAX_CH_5G_BAND:I = 0xc4

.field private static final MAX_CH_6G_BAND:I = 0xfd

.field private static final MIN_CH_2G_BAND:I = 0x1

.field private static final MIN_CH_5G_BAND:I = 0x22

.field private static final MIN_CH_6G_BAND:I = 0x1

.field static final PSK_MAX_LEN:I = 0x3f

.field static final PSK_MIN_LEN:I = 0x8

.field public static final SECURITY_TYPE_OPEN:I = 0x0

.field public static final SECURITY_TYPE_WPA2_PSK:I = 0x1

.field public static final SECURITY_TYPE_WPA3_SAE:I = 0x3

.field public static final SECURITY_TYPE_WPA3_SAE_TRANSITION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TranSoftApConfiguration"


# instance fields
.field private final mAllowedClientList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/MacAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final mAutoShutdownEnabled:Z

.field private final mBand:I

.field private final mBlockedClientList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/MacAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final mBssid:Landroid/net/MacAddress;

.field private final mChannel:I

.field private final mClientControlByUser:Z

.field private final mHiddenSsid:Z

.field private final mMaxNumberOfClients:I

.field private final mPassphrase:Ljava/lang/String;

.field private final mSecurityType:I

.field private final mShutdownTimeoutMillis:J

.field private final mSsid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/MacAddress;Ljava/lang/String;ZIIIIZJZLjava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/MacAddress;",
            "Ljava/lang/String;",
            "ZIIIIZJZ",
            "Ljava/util/List<",
            "Landroid/net/MacAddress;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/MacAddress;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->mSsid:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->mBssid:Landroid/net/MacAddress;

    iput-object p3, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->mPassphrase:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->mHiddenSsid:Z

    iput p5, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->mBand:I

    iput p6, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->mChannel:I

    iput p7, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->mSecurityType:I

    iput p8, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->mMaxNumberOfClients:I

    iput-boolean p9, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->mAutoShutdownEnabled:Z

    iput-wide p10, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->mShutdownTimeoutMillis:J

    iput-boolean p12, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->mClientControlByUser:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->mBlockedClientList:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->mAllowedClientList:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$000(Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->mSsid:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;)Landroid/net/MacAddress;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->mBssid:Landroid/net/MacAddress;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->mClientControlByUser:Z

    return p0
.end method

.method public static synthetic access$1100(Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->mBlockedClientList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->mAllowedClientList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->mPassphrase:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->mHiddenSsid:Z

    return p0
.end method

.method public static synthetic access$400(Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;)I
    .locals 0

    iget p0, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->mBand:I

    return p0
.end method

.method public static synthetic access$500(Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;)I
    .locals 0

    iget p0, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->mChannel:I

    return p0
.end method

.method public static synthetic access$600(Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;)I
    .locals 0

    iget p0, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->mMaxNumberOfClients:I

    return p0
.end method

.method public static synthetic access$700(Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;)I
    .locals 0

    iget p0, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->mSecurityType:I

    return p0
.end method

.method public static synthetic access$800(Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->mAutoShutdownEnabled:Z

    return p0
.end method

.method public static synthetic access$900(Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;)J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->mShutdownTimeoutMillis:J

    return-wide v0
.end method

.method public static isBandValid(I)Z
    .locals 0

    if-eqz p0, :cond_0

    and-int/lit8 p0, p0, -0x8

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isChannelBandPairValid(II)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    return v0

    :cond_0
    if-lt p0, v1, :cond_1

    const/16 p1, 0xfd

    if-le p0, p1, :cond_5

    :cond_1
    return v0

    :cond_2
    const/16 p1, 0x22

    if-lt p0, p1, :cond_3

    const/16 p1, 0xc4

    if-le p0, p1, :cond_5

    :cond_3
    return v0

    :cond_4
    if-lt p0, v1, :cond_6

    const/16 p1, 0xe

    if-le p0, p1, :cond_5

    goto :goto_0

    :cond_5
    return v1

    :cond_6
    :goto_0
    return v0
.end method


# virtual methods
.method public getAllowedClientList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/MacAddress;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->mAllowedClientList:Ljava/util/List;

    return-object p0
.end method

.method public getBand()I
    .locals 0

    iget p0, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->mBand:I

    return p0
.end method

.method public getBlockedClientList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/MacAddress;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->mBlockedClientList:Ljava/util/List;

    return-object p0
.end method

.method public getBssid()Landroid/net/MacAddress;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->mBssid:Landroid/net/MacAddress;

    return-object p0
.end method

.method public getChannel()I
    .locals 0

    iget p0, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->mChannel:I

    return p0
.end method

.method public getMaxNumberOfClients()I
    .locals 0

    iget p0, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->mMaxNumberOfClients:I

    return p0
.end method

.method public getPassphrase()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->mPassphrase:Ljava/lang/String;

    return-object p0
.end method

.method public getSecurityType()I
    .locals 0

    iget p0, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->mSecurityType:I

    return p0
.end method

.method public getShutdownTimeoutMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->mShutdownTimeoutMillis:J

    return-wide v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->mSsid:Ljava/lang/String;

    return-object p0
.end method

.method public isAutoShutdownEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->mAutoShutdownEnabled:Z

    return p0
.end method

.method public isClientControlByUserEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->mClientControlByUser:Z

    return p0
.end method

.method public isHiddenSsid()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->mHiddenSsid:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ssid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->mSsid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->mBssid:Landroid/net/MacAddress;

    if-eqz v1, :cond_0

    const-string v1, " \n bssid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->mBssid:Landroid/net/MacAddress;

    invoke-virtual {v1}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, " \n Passphrase ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->mPassphrase:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "<empty>"

    goto :goto_0

    :cond_1
    const-string v1, "<non-empty>"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \n HiddenSsid ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->mHiddenSsid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " \n Band ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->mBand:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \n Channel ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->mChannel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \n SecurityType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->getSecurityType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \n MaxClient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->mMaxNumberOfClients:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \n AutoShutdownEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->mAutoShutdownEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " \n ShutdownTimeoutMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->mShutdownTimeoutMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " \n ClientControlByUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->mClientControlByUser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " \n BlockedClientList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->mBlockedClientList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " \n AllowedClientList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->mAllowedClientList:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
