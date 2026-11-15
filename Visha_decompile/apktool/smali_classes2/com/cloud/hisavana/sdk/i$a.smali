.class public Lcom/cloud/hisavana/sdk/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cloud/hisavana/sdk/l$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/i;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/i;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/i$a;->a:Lcom/cloud/hisavana/sdk/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;Ljava/util/List;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 14
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 15
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/i$a;->a:Lcom/cloud/hisavana/sdk/i;

    iget-object v2, v2, Lcom/cloud/hisavana/sdk/i;->e:Landroidx/collection/ArraySet;

    invoke-static {p2, p3, p1, v1, v2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->n0(Ljava/util/List;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;ILandroidx/collection/ArraySet;)V

    goto :goto_0

    .line 16
    :cond_0
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/i$a;->a:Lcom/cloud/hisavana/sdk/i;

    iget-object p2, p2, Lcom/cloud/hisavana/sdk/i;->e:Landroidx/collection/ArraySet;

    const/4 v1, 0x0

    invoke-static {v0, p3, p1, v1, p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->n0(Ljava/util/List;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;ILandroidx/collection/ArraySet;)V

    .line 17
    :goto_0
    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/i$a;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v2, 0x1

    .line 4
    invoke-static {v1, v2}, Lhp0;->e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    sget-object p1, Lcom/cloud/hisavana/sdk/d;->a:Lcom/cloud/hisavana/sdk/d;

    invoke-virtual {p1, v1}, Lcom/cloud/hisavana/sdk/d;->o(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :goto_1
    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteOldOfflineAd error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OfflineAdManager"

    invoke-virtual {v0, v1, p1}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_1
    :goto_2
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/i$a;->a:Lcom/cloud/hisavana/sdk/i;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/i;->j(Lcom/cloud/hisavana/sdk/i;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/i$a;->a:Lcom/cloud/hisavana/sdk/i;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/i;->j(Lcom/cloud/hisavana/sdk/i;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i$a;->a:Lcom/cloud/hisavana/sdk/i;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/i;->H(Lcom/cloud/hisavana/sdk/i;)Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 9
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/i$a;->a:Lcom/cloud/hisavana/sdk/i;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/i;->j(Lcom/cloud/hisavana/sdk/i;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 10
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/i$a;->a:Lcom/cloud/hisavana/sdk/i;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/i;->N(Lcom/cloud/hisavana/sdk/i;)V

    goto :goto_3

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/i$a;->a:Lcom/cloud/hisavana/sdk/i;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/i;->k(Lcom/cloud/hisavana/sdk/i;Ljava/util/List;)Ljava/util/List;

    .line 12
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/i$a;->a:Lcom/cloud/hisavana/sdk/i;

    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/i;->h(Lcom/cloud/hisavana/sdk/i;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    .line 13
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/i$a;->a:Lcom/cloud/hisavana/sdk/i;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/i;->Q(Lcom/cloud/hisavana/sdk/i;)V

    :cond_3
    :goto_3
    return-void
.end method
