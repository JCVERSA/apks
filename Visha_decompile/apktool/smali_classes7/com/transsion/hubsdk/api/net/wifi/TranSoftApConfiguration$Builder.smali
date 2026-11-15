.class public final Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAllowedClientList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/MacAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoShutdownEnabled:Z

.field private mBand:I

.field private mBlockedClientList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/MacAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mBssid:Landroid/net/MacAddress;

.field private mChannel:I

.field private mClientControlByUser:Z

.field private mHiddenSsid:Z

.field private mMaxNumberOfClients:I

.field private mPassphrase:Ljava/lang/String;

.field private mSecurityType:I

.field private mShutdownTimeoutMillis:J

.field private mSsid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;->mSsid:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;->mBssid:Landroid/net/MacAddress;

    .line 4
    iput-object v0, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;->mPassphrase:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;->mHiddenSsid:Z

    const/4 v1, 0x1

    .line 6
    iput v1, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;->mBand:I

    .line 7
    iput v0, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;->mChannel:I

    .line 8
    iput v0, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;->mMaxNumberOfClients:I

    .line 9
    iput v0, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;->mSecurityType:I

    .line 10
    iput-boolean v1, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;->mAutoShutdownEnabled:Z

    const-wide/16 v1, -0x1

    .line 11
    iput-wide v1, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;->mShutdownTimeoutMillis:J

    .line 12
    iput-boolean v0, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;->mClientControlByUser:Z

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;->mBlockedClientList:Ljava/util/List;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;->mAllowedClientList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {p1}, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->access$000(Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;->mSsid:Ljava/lang/String;

    .line 17
    invoke-static {p1}, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->access$100(Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;)Landroid/net/MacAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;->mBssid:Landroid/net/MacAddress;

    .line 18
    invoke-static {p1}, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->access$200(Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;->mPassphrase:Ljava/lang/String;

    .line 19
    invoke-static {p1}, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->access$300(Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;->mHiddenSsid:Z

    .line 20
    invoke-static {p1}, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->access$400(Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;->mBand:I

    .line 21
    invoke-static {p1}, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->access$500(Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;->mChannel:I

    .line 22
    invoke-static {p1}, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->access$600(Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;->mMaxNumberOfClients:I

    .line 23
    invoke-static {p1}, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->access$700(Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;->mSecurityType:I

    .line 24
    invoke-static {p1}, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->access$800(Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;->mAutoShutdownEnabled:Z

    .line 25
    invoke-static {p1}, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->access$900(Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;->mShutdownTimeoutMillis:J

    .line 26
    invoke-static {p1}, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->access$1000(Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;->mClientControlByUser:Z

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->access$1100(Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;->mBlockedClientList:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;->access$1200(Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;->mAllowedClientList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public build()Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;
    .locals 16

    move-object/from16 v0, p0

    new-instance v15, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;

    iget-object v1, v0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;->mSsid:Ljava/lang/String;

    iget-object v2, v0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;->mBssid:Landroid/net/MacAddress;

    iget-object v3, v0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;->mPassphrase:Ljava/lang/String;

    iget-boolean v4, v0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;->mHiddenSsid:Z

    iget v5, v0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;->mBand:I

    iget v6, v0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;->mChannel:I

    iget v7, v0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;->mSecurityType:I

    iget v8, v0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;->mMaxNumberOfClients:I

    iget-boolean v9, v0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;->mAutoShutdownEnabled:Z

    iget-wide v10, v0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;->mShutdownTimeoutMillis:J

    iget-boolean v12, v0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;->mClientControlByUser:Z

    iget-object v13, v0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;->mBlockedClientList:Ljava/util/List;

    iget-object v14, v0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;->mAllowedClientList:Ljava/util/List;

    move-object v0, v15

    invoke-direct/range {v0 .. v14}, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration;-><init>(Ljava/lang/String;Landroid/net/MacAddress;Ljava/lang/String;ZIIIIZJZLjava/util/List;Ljava/util/List;)V

    return-object v15
.end method

.method public setAllowedClientList(Ljava/util/List;)Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/MacAddress;",
            ">;)",
            "Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;->mAllowedClientList:Ljava/util/List;

    return-object p0
.end method

.method public setAutoShutdownEnabled(Z)Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;->mAutoShutdownEnabled:Z

    return-object p0
.end method

.method public setBand(I)Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;
    .locals 0

    iput p1, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;->mBand:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;->mChannel:I

    return-object p0
.end method

.method public setBlockedClientList(Ljava/util/List;)Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/MacAddress;",
            ">;)",
            "Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;->mBlockedClientList:Ljava/util/List;

    return-object p0
.end method

.method public setBssid(Landroid/net/MacAddress;)Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;->mBssid:Landroid/net/MacAddress;

    return-object p0
.end method

.method public setChannel(II)Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;
    .locals 0

    iput p2, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;->mBand:I

    iput p1, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;->mChannel:I

    return-object p0
.end method

.method public setClientControlByUserEnabled(Z)Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;->mClientControlByUser:Z

    return-object p0
.end method

.method public setHiddenSsid(Z)Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;->mHiddenSsid:Z

    return-object p0
.end method

.method public setMaxNumberOfClients(I)Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;
    .locals 0

    iput p1, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;->mMaxNumberOfClients:I

    return-object p0
.end method

.method public setPassphrase(Ljava/lang/String;I)Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;
    .locals 0

    iput p2, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;->mSecurityType:I

    iput-object p1, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;->mPassphrase:Ljava/lang/String;

    return-object p0
.end method

.method public setShutdownTimeoutMillis(J)Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;->mShutdownTimeoutMillis:J

    return-object p0
.end method

.method public setSsid(Ljava/lang/String;)Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/api/net/wifi/TranSoftApConfiguration$Builder;->mSsid:Ljava/lang/String;

    return-object p0
.end method
