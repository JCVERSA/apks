.class public final Lcom/transsion/api/gateway/config/a$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/api/gateway/config/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:I

.field public e:J

.field public f:J

.field public g:Ljava/lang/String;

.field public h:Ljava/util/List;

.field public i:I

.field public j:Ljava/util/List;

.field public k:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/transsion/api/gateway/config/a$a;->a:Z

    .line 3
    iput-boolean v0, p0, Lcom/transsion/api/gateway/config/a$a;->b:Z

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/transsion/api/gateway/config/a$a;->c:Z

    const v1, 0xea60

    .line 5
    iput v1, p0, Lcom/transsion/api/gateway/config/a$a;->d:I

    const-wide/32 v1, 0x36ee80

    .line 6
    iput-wide v1, p0, Lcom/transsion/api/gateway/config/a$a;->e:J

    .line 7
    iput-wide v1, p0, Lcom/transsion/api/gateway/config/a$a;->f:J

    .line 8
    iput v0, p0, Lcom/transsion/api/gateway/config/a$a;->i:I

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/api/gateway/config/a$a;->j:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/api/gateway/config/a$a;->k:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/api/gateway/config/a;)V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iget-boolean v0, p1, Lcom/transsion/api/gateway/config/a;->a:Z

    iput-boolean v0, p0, Lcom/transsion/api/gateway/config/a$a;->a:Z

    .line 13
    iget-boolean v0, p1, Lcom/transsion/api/gateway/config/a;->b:Z

    iput-boolean v0, p0, Lcom/transsion/api/gateway/config/a$a;->b:Z

    .line 14
    iget-boolean v0, p1, Lcom/transsion/api/gateway/config/a;->c:Z

    iput-boolean v0, p0, Lcom/transsion/api/gateway/config/a$a;->c:Z

    .line 15
    iget v0, p1, Lcom/transsion/api/gateway/config/a;->d:I

    iput v0, p0, Lcom/transsion/api/gateway/config/a$a;->d:I

    .line 16
    iget-wide v0, p1, Lcom/transsion/api/gateway/config/a;->e:J

    iput-wide v0, p0, Lcom/transsion/api/gateway/config/a$a;->e:J

    .line 17
    iget-wide v0, p1, Lcom/transsion/api/gateway/config/a;->g:J

    iput-wide v0, p0, Lcom/transsion/api/gateway/config/a$a;->f:J

    .line 18
    iget-object v0, p1, Lcom/transsion/api/gateway/config/a;->j:Ljava/util/List;

    iput-object v0, p0, Lcom/transsion/api/gateway/config/a$a;->j:Ljava/util/List;

    .line 19
    iget-object v0, p1, Lcom/transsion/api/gateway/config/a;->k:Ljava/util/List;

    iput-object v0, p0, Lcom/transsion/api/gateway/config/a$a;->k:Ljava/util/List;

    .line 20
    iget v0, p1, Lcom/transsion/api/gateway/config/a;->f:I

    iput v0, p0, Lcom/transsion/api/gateway/config/a$a;->i:I

    .line 21
    iget-object v0, p1, Lcom/transsion/api/gateway/config/a;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/api/gateway/config/a$a;->g:Ljava/lang/String;

    .line 22
    iget-object p1, p1, Lcom/transsion/api/gateway/config/a;->i:Ljava/util/List;

    iput-object p1, p0, Lcom/transsion/api/gateway/config/a$a;->h:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/api/gateway/bean/RemoteConfig;)Lcom/transsion/api/gateway/config/a$a;
    .locals 2

    .line 1
    iget-boolean v0, p1, Lcom/transsion/api/gateway/bean/RemoteConfig;->activateGatewayDns:Z

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/transsion/api/gateway/config/a$a;->a:Z

    .line 4
    .line 5
    iget-boolean v0, p1, Lcom/transsion/api/gateway/bean/RemoteConfig;->useGateway:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/transsion/api/gateway/config/a$a;->b:Z

    .line 8
    .line 9
    iget-boolean v0, p1, Lcom/transsion/api/gateway/bean/RemoteConfig;->activateTracking:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/transsion/api/gateway/config/a$a;->c:Z

    .line 12
    .line 13
    iget v0, p1, Lcom/transsion/api/gateway/bean/RemoteConfig;->requestTimeout:I

    .line 14
    .line 15
    iput v0, p0, Lcom/transsion/api/gateway/config/a$a;->d:I

    .line 16
    .line 17
    iget-wide v0, p1, Lcom/transsion/api/gateway/bean/RemoteConfig;->refreshInterval:J

    .line 18
    .line 19
    iput-wide v0, p0, Lcom/transsion/api/gateway/config/a$a;->e:J

    .line 20
    .line 21
    iget-wide v0, p1, Lcom/transsion/api/gateway/bean/RemoteConfig;->metricsInterval:J

    .line 22
    .line 23
    iput-wide v0, p0, Lcom/transsion/api/gateway/config/a$a;->f:J

    .line 24
    .line 25
    iget-object v0, p1, Lcom/transsion/api/gateway/bean/RemoteConfig;->useGatewayHostList:Ljava/util/List;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/transsion/api/gateway/config/a$a;->j:Ljava/util/List;

    .line 28
    .line 29
    iget-object v0, p1, Lcom/transsion/api/gateway/bean/RemoteConfig;->gatewayStrategy:Ljava/util/List;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/transsion/api/gateway/config/a$a;->k:Ljava/util/List;

    .line 32
    .line 33
    iget v0, p1, Lcom/transsion/api/gateway/bean/RemoteConfig;->configVersion:I

    .line 34
    .line 35
    iput v0, p0, Lcom/transsion/api/gateway/config/a$a;->i:I

    .line 36
    .line 37
    iget-object v0, p1, Lcom/transsion/api/gateway/bean/RemoteConfig;->gatewayHost:Ljava/lang/String;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/transsion/api/gateway/config/a$a;->g:Ljava/lang/String;

    .line 40
    .line 41
    iget-object p1, p1, Lcom/transsion/api/gateway/bean/RemoteConfig;->gatewayIp:Ljava/util/List;

    .line 42
    .line 43
    iput-object p1, p0, Lcom/transsion/api/gateway/config/a$a;->h:Ljava/util/List;

    .line 44
    .line 45
    return-object p0
.end method
