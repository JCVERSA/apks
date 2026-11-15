.class public Lcom/cloud/hisavana/sdk/s5;
.super Lcom/cloud/hisavana/sdk/h0;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/s5$b;,
        Lcom/cloud/hisavana/sdk/s5$c;
    }
.end annotation


# instance fields
.field private d:Ljava/util/List;

.field private e:Lcom/cloud/hisavana/sdk/s5$b;

.field private f:Z

.field private g:I

.field private h:Z


# direct methods
.method public constructor <init>(Ljava/util/List;ILcom/cloud/hisavana/sdk/s5$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/h0;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/s5;->f:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/s5;->h:Z

    .line 8
    .line 9
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/s5;->d:Ljava/util/List;

    .line 10
    .line 11
    iput p2, p0, Lcom/cloud/hisavana/sdk/s5;->g:I

    .line 12
    .line 13
    iput-object p3, p0, Lcom/cloud/hisavana/sdk/s5;->e:Lcom/cloud/hisavana/sdk/s5$b;

    .line 14
    .line 15
    return-void
.end method

.method private g(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/s5;->f:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/s5;->e:Lcom/cloud/hisavana/sdk/s5$b;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/h0;->a:Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-interface {v0, p1, v1}, Lcom/cloud/hisavana/sdk/s5$b;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/cloud/hisavana/sdk/s5;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/s5;->g(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic i(Lcom/cloud/hisavana/sdk/s5;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/s5;->k(Ljava/util/List;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private j(Ljava/util/List;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "downloadMaterial start"

    .line 6
    .line 7
    const-string v2, "NativeLoadManager"

    .line 8
    .line 9
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/s5;->d:Ljava/util/List;

    .line 13
    .line 14
    if-eqz v0, :cond_4

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    new-instance v0, Lcom/cloud/hisavana/sdk/s5$a;

    .line 24
    .line 25
    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/s5$a;-><init>(Lcom/cloud/hisavana/sdk/s5;Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/4 v1, 0x0

    .line 33
    move-object v2, v1

    .line 34
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 45
    .line 46
    if-nez v1, :cond_1

    .line 47
    .line 48
    new-instance v2, Lcom/cloud/hisavana/sdk/s5$c;

    .line 49
    .line 50
    invoke-direct {v2, v3, v0}, Lcom/cloud/hisavana/sdk/s5$c;-><init>(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$c;)V

    .line 51
    .line 52
    .line 53
    move-object v1, v2

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    new-instance v4, Lcom/cloud/hisavana/sdk/s5$c;

    .line 56
    .line 57
    invoke-direct {v4, v3, v0}, Lcom/cloud/hisavana/sdk/s5$c;-><init>(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$c;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v2, v4}, Lcom/cloud/hisavana/sdk/s5$c;->c(Lcom/cloud/hisavana/sdk/s5$c;Lcom/cloud/hisavana/sdk/s5$c;)Lcom/cloud/hisavana/sdk/s5$c;

    .line 61
    .line 62
    .line 63
    invoke-static {v2}, Lcom/cloud/hisavana/sdk/s5$c;->b(Lcom/cloud/hisavana/sdk/s5$c;)Lcom/cloud/hisavana/sdk/s5$c;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    if-eqz v1, :cond_3

    .line 69
    .line 70
    invoke-static {v1}, Lcom/cloud/hisavana/sdk/s5$c;->j(Lcom/cloud/hisavana/sdk/s5$c;)V

    .line 71
    .line 72
    .line 73
    :cond_3
    return-void

    .line 74
    :cond_4
    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    const-string v0, "downloadMaterial ads is null"

    .line 79
    .line 80
    invoke-virtual {p1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_DOWNLOAD_MATERIAL_ADS_IS_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 84
    .line 85
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/s5;->g(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method private k(Ljava/util/List;Ljava/util/List;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/s5;->f:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/s5;->d:Ljava/util/List;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/s5;->e:Lcom/cloud/hisavana/sdk/s5$b;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/h0;->a:Landroid/os/Bundle;

    .line 13
    .line 14
    invoke-interface {v0, p1, p2, v1}, Lcom/cloud/hisavana/sdk/s5$b;->b(Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget p1, p0, Lcom/cloud/hisavana/sdk/s5;->g:I

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    if-ne p1, v0, :cond_2

    .line 21
    .line 22
    sget-object p1, Lcom/cloud/hisavana/sdk/i0;->a:Lcom/cloud/hisavana/sdk/i0;

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/i0;->b(Ljava/util/List;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_NATIVE_MATERIAL_DOWNLOAD_IS_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 29
    .line 30
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/s5;->g(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 31
    .line 32
    .line 33
    :cond_2
    :goto_0
    return-void
.end method

.method private l(Lcom/cloud/hisavana/sdk/common/bean/AdImage;)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->isCached()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    return p1
.end method

.method static synthetic m(Lcom/cloud/hisavana/sdk/s5;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/s5;->h:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic n(Lcom/cloud/hisavana/sdk/s5;Lcom/cloud/hisavana/sdk/common/bean/AdImage;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/s5;->l(Lcom/cloud/hisavana/sdk/common/bean/AdImage;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic o(Lcom/cloud/hisavana/sdk/s5;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/s5;->h:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic p(Lcom/cloud/hisavana/sdk/s5;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/h0;->c(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public q()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/s5;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/s5;->f:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/s5;->d:Ljava/util/List;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/util/i;->a(Ljava/util/Collection;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/s5;->d:Ljava/util/List;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/J0;->G(Ljava/util/List;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget v1, p0, Lcom/cloud/hisavana/sdk/s5;->g:I

    .line 24
    .line 25
    const/4 v2, 0x3

    .line 26
    if-eq v1, v2, :cond_2

    .line 27
    .line 28
    const/4 v2, 0x2

    .line 29
    if-ne v1, v2, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/s5;->j(Ljava/util/List;)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/h0;->a()V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/s5;->d:Ljava/util/List;

    .line 40
    .line 41
    invoke-direct {p0, v0, v1}, Lcom/cloud/hisavana/sdk/s5;->k(Ljava/util/List;Ljava/util/List;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_3
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_NATIVE_MATERIAL_DOWNLOAD_IS_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 46
    .line 47
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/s5;->g(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 48
    .line 49
    .line 50
    :goto_1
    return-void
.end method
