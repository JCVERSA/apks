.class public Lcom/cloud/hisavana/sdk/l4;
.super Lcom/cloud/hisavana/sdk/e4;
.source "source.java"


# instance fields
.field private e:Ljava/util/List;

.field private f:Lcom/cloud/hisavana/sdk/p3;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/e4;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic f(Lcom/cloud/hisavana/sdk/l4;)Lcom/cloud/hisavana/sdk/p3;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/l4;->f:Lcom/cloud/hisavana/sdk/p3;

    .line 2
    .line 3
    return-object p0
.end method

.method private g(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lcom/cloud/hisavana/sdk/e4;->b:I

    .line 3
    .line 4
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e4;->a:Lcom/cloud/hisavana/sdk/e4$a;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-interface {v0, p1, v1}, Lcom/cloud/hisavana/sdk/e4$a;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/cloud/hisavana/sdk/l4;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/l4;->g(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic i(Lcom/cloud/hisavana/sdk/l4;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/l4;->j(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private j(Ljava/util/List;)V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lcom/cloud/hisavana/sdk/e4;->b:I

    .line 3
    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e4;->a:Lcom/cloud/hisavana/sdk/e4$a;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-interface {v0, p1, v1}, Lcom/cloud/hisavana/sdk/e4$a;->b(Ljava/util/List;Landroid/os/Bundle;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void

    .line 22
    :cond_2
    :goto_0
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_MATERIAL_DOWNLOAD_IS_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 23
    .line 24
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/l4;->g(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/p3;)V
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/cloud/hisavana/sdk/e4;->b:I

    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/l4;->f:Lcom/cloud/hisavana/sdk/p3;

    .line 5
    .line 6
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "ssp"

    .line 11
    .line 12
    const-string v2, "start execute getAdCreativies."

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lcom/cloud/hisavana/sdk/i4;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/i4;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v1, Lcom/cloud/hisavana/sdk/l4$a;

    .line 23
    .line 24
    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/l4$a;-><init>(Lcom/cloud/hisavana/sdk/l4;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/i4;->c(Lcom/cloud/hisavana/sdk/i4$f;)V

    .line 28
    .line 29
    .line 30
    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    .line 31
    .line 32
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/l4;->f:Lcom/cloud/hisavana/sdk/p3;

    .line 33
    .line 34
    sget-object v3, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SUCCESS:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 35
    .line 36
    new-instance v4, Landroid/os/Bundle;

    .line 37
    .line 38
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 39
    .line 40
    .line 41
    const/4 v5, 0x1

    .line 42
    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->U(ILcom/cloud/hisavana/sdk/p3;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/l4;->e:Ljava/util/List;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/p3;->e()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    iget v2, p0, Lcom/cloud/hisavana/sdk/e4;->d:I

    .line 52
    .line 53
    invoke-virtual {v0, v1, p1, v5, v2}, Lcom/cloud/hisavana/sdk/i4;->e(Ljava/util/List;III)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public k(Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/l4;->e:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method
