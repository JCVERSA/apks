.class public final Lcom/cloud/hisavana/sdk/g3;
.super Lcom/cloud/hisavana/sdk/F;
.source "source.java"


# instance fields
.field private final i:Ljava/lang/String;

.field private volatile j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field private k:Lcom/cloud/hisavana/sdk/t1;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/p3;)V
    .locals 1

    .line 1
    const-string v0, "adFetchInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/F;-><init>(Lcom/cloud/hisavana/sdk/p3;)V

    .line 7
    .line 8
    .line 9
    const-string p1, "Rewarded"

    .line 10
    .line 11
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/g3;->i:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method private final K()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/t1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/t1;-><init>(Lcom/cloud/hisavana/sdk/g3;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/g3;->k:Lcom/cloud/hisavana/sdk/t1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final F(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/F;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->t(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Lcom/cloud/hisavana/sdk/F;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final G()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/F;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->m()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/F;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/g3;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->k(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public final H()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/F;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/g3;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->p(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final I()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/F;->f()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/F;->k(Z)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/F;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->s()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final J()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/F;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->A()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final L()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/Preconditions;->a()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/g3;->K()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/g3;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/F;->r()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/F;->z()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/g3;->k:Lcom/cloud/hisavana/sdk/t1;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/g3;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/t1;->c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 30
    .line 31
    .line 32
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_INNER_INVALID:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/g3;->F(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/g3;->i:Ljava/lang/String;

    .line 45
    .line 46
    const-string v2, "ad not condition to use"

    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/4 v0, 0x0

    .line 55
    :goto_0
    if-nez v0, :cond_2

    .line 56
    .line 57
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/g3;->i:Ljava/lang/String;

    .line 62
    .line 63
    const-string v2, "adBean = null"

    .line 64
    .line 65
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_2
    return-void
.end method

.method public d(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "athenaTrackBundle"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/g3;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 17
    .line 18
    invoke-super {p0, p1, p2}, Lcom/cloud/hisavana/sdk/F;->d(Ljava/util/List;Landroid/os/Bundle;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public m()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/cloud/hisavana/sdk/F;->m()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/g3;->k:Lcom/cloud/hisavana/sdk/t1;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/t1;->b()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
