.class public Lcom/hunantv/imgo/net/ImgoBaseStatisticsData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/json/JsonInterface;


# static fields
.field public static final DT_DEVICE:Ljava/lang/String; = "device"

.field public static final DT_ERROR:Ljava/lang/String; = "error"

.field public static final DT_LIVE:Ljava/lang/String; = "live"

.field public static final DT_ONLINE:Ljava/lang/String; = "online"

.field public static final DT_VOD:Ljava/lang/String; = "vod"


# instance fields
.field private apk_version:Ljava/lang/String;

.field private data_type:Ljava/lang/String;

.field private mac:Ljava/lang/String;

.field private manufacturers:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private network:Ljava/lang/String;

.field private os:Ljava/lang/String;

.field private platform:Ljava/lang/String;

.field private state:Ljava/lang/String;

.field private system_version:Ljava/lang/String;

.field private user_account:Ljava/lang/String;

.field private user_id:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "android"

    iput-object v0, p0, Lcom/hunantv/imgo/net/ImgoBaseStatisticsData;->manufacturers:Ljava/lang/String;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->t()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hunantv/imgo/net/ImgoBaseStatisticsData;->mac:Ljava/lang/String;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hunantv/imgo/net/ImgoBaseStatisticsData;->model:Ljava/lang/String;

    sget-boolean v1, Lcom/hunantv/imgo/util/d;->a:Z

    const-string v2, "imgoTV_aPhone_"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/hunantv/imgo/net/ImgoBaseStatisticsData;->apk_version:Ljava/lang/String;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->q()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hunantv/imgo/net/ImgoBaseStatisticsData;->system_version:Ljava/lang/String;

    invoke-static {}, Lcom/hunantv/imgo/util/p;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hunantv/imgo/net/ImgoBaseStatisticsData;->network:Ljava/lang/String;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->o()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hunantv/imgo/net/ImgoBaseStatisticsData;->user_account:Ljava/lang/String;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->m()I

    move-result v1

    iput v1, p0, Lcom/hunantv/imgo/net/ImgoBaseStatisticsData;->user_id:I

    const-string v1, "mobile"

    iput-object v1, p0, Lcom/hunantv/imgo/net/ImgoBaseStatisticsData;->platform:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/imgo/net/ImgoBaseStatisticsData;->os:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/hunantv/imgo/net/ImgoBaseStatisticsData;->state:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getApk_version()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/net/ImgoBaseStatisticsData;->apk_version:Ljava/lang/String;

    return-object p0
.end method

.method public getData_type()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/net/ImgoBaseStatisticsData;->data_type:Ljava/lang/String;

    return-object p0
.end method

.method public getMac()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/net/ImgoBaseStatisticsData;->mac:Ljava/lang/String;

    return-object p0
.end method

.method public getManufacturers()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/net/ImgoBaseStatisticsData;->manufacturers:Ljava/lang/String;

    return-object p0
.end method

.method public getModel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/net/ImgoBaseStatisticsData;->model:Ljava/lang/String;

    return-object p0
.end method

.method public getNetwork()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/net/ImgoBaseStatisticsData;->network:Ljava/lang/String;

    return-object p0
.end method

.method public getOs()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/net/ImgoBaseStatisticsData;->os:Ljava/lang/String;

    return-object p0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/net/ImgoBaseStatisticsData;->platform:Ljava/lang/String;

    return-object p0
.end method

.method public getState()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/net/ImgoBaseStatisticsData;->state:Ljava/lang/String;

    return-object p0
.end method

.method public getSystem_version()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/net/ImgoBaseStatisticsData;->system_version:Ljava/lang/String;

    return-object p0
.end method

.method public getUser_account()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/net/ImgoBaseStatisticsData;->user_account:Ljava/lang/String;

    return-object p0
.end method

.method public getUser_id()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/net/ImgoBaseStatisticsData;->user_id:I

    return p0
.end method

.method public setApk_version(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/net/ImgoBaseStatisticsData;->apk_version:Ljava/lang/String;

    return-void
.end method

.method public setData_type(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/net/ImgoBaseStatisticsData;->data_type:Ljava/lang/String;

    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/net/ImgoBaseStatisticsData;->mac:Ljava/lang/String;

    return-void
.end method

.method public setManufacturers(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/net/ImgoBaseStatisticsData;->manufacturers:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/net/ImgoBaseStatisticsData;->model:Ljava/lang/String;

    return-void
.end method

.method public setNetwork(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/net/ImgoBaseStatisticsData;->network:Ljava/lang/String;

    return-void
.end method

.method public setOs(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/net/ImgoBaseStatisticsData;->os:Ljava/lang/String;

    return-void
.end method

.method public setPlatform(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/net/ImgoBaseStatisticsData;->platform:Ljava/lang/String;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/net/ImgoBaseStatisticsData;->state:Ljava/lang/String;

    return-void
.end method

.method public setSystem_version(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/net/ImgoBaseStatisticsData;->system_version:Ljava/lang/String;

    return-void
.end method

.method public setUser_account(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/net/ImgoBaseStatisticsData;->user_account:Ljava/lang/String;

    return-void
.end method

.method public setUser_id(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/net/ImgoBaseStatisticsData;->user_id:I

    return-void
.end method
