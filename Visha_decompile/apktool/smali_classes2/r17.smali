.class public abstract Lr17;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr17$a;
    }
.end annotation


# instance fields
.field public a:Lcom/cloud/hisavana/sdk/G;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:I

.field public e:Z

.field public f:Ln6;

.field public g:Z

.field public h:Z

.field public i:Lw6;

.field public j:Ld29;

.field public k:J

.field public l:Landroidx/collection/ArraySet;

.field public m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lr17;->k:J

    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, Lr17;->l:Landroidx/collection/ArraySet;

    iput-object p1, p0, Lr17;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 9

    sget-object v0, Lr6;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string/jumbo v2, "ssp"

    if-eqz v0, :cond_1

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    const-string v3, "AppId is empty, please check your config."

    invoke-virtual {v0, v2, v3}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lr17;->f:Ln6;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_INVALID_APP_ID:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p0, v0}, Ln6;->onError(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :cond_0
    return v1

    :cond_1
    invoke-static {}, Lul4;->i()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string v0, "You should init first"

    invoke-virtual {p0, v2, v0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object v0, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->n()J

    move-result-wide v5

    iget-wide v7, p0, Lr17;->k:J

    sub-long v7, v3, v7

    cmp-long v0, v7, v5

    if-lez v0, :cond_3

    iput-wide v3, p0, Lr17;->k:J

    const/4 p0, 0x1

    return p0

    :cond_3
    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad request rate limit exceeded\uff0ccurrent interval is"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public b()V
    .locals 6

    const/4 v0, 0x0

    iput-object v0, p0, Lr17;->f:Ln6;

    :try_start_0
    iget-object v0, p0, Lr17;->a:Lcom/cloud/hisavana/sdk/G;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v1, "ssp"

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v2, p0, Lr17;->l:Landroidx/collection/ArraySet;

    invoke-virtual {v2, v0}, Landroidx/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Likd;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    const-string v2, "NonViewApi mLoadedAd destroy"

    invoke-virtual {v0, v1, v2}, Lja1;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lr17;->a:Lcom/cloud/hisavana/sdk/G;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/G;->m()V

    :cond_1
    iget-object v0, p0, Lr17;->l:Landroidx/collection/ArraySet;

    invoke-virtual {v0}, Landroidx/collection/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lr17;->l:Landroidx/collection/ArraySet;

    invoke-virtual {v2}, Landroidx/collection/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lr17;->l:Landroidx/collection/ArraySet;

    invoke-virtual {v2, v0}, Landroidx/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/hisavana/sdk/G;

    if-eqz v2, :cond_2

    invoke-static {}, Likd;->b()Likd;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "baseAd destroy "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/G;->m()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lr17;->l:Landroidx/collection/ArraySet;

    invoke-virtual {p0}, Landroidx/collection/ArraySet;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_4
    return-void
.end method

.method public c()I
    .locals 0

    iget-object p0, p0, Lr17;->a:Lcom/cloud/hisavana/sdk/G;

    if-nez p0, :cond_0

    const/16 p0, 0x45b

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/G;->r()I

    move-result p0

    return p0
.end method

.method public d()I
    .locals 0

    iget-object p0, p0, Lr17;->a:Lcom/cloud/hisavana/sdk/G;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/G;->q()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public e()D
    .locals 2

    iget-object p0, p0, Lr17;->a:Lcom/cloud/hisavana/sdk/G;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/G;->t()D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public f()I
    .locals 0

    iget-object p0, p0, Lr17;->a:Lcom/cloud/hisavana/sdk/G;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/G;->u()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public g()Lw6;
    .locals 0

    iget-object p0, p0, Lr17;->i:Lw6;

    return-object p0
.end method

.method public h()Z
    .locals 0

    iget-object p0, p0, Lr17;->a:Lcom/cloud/hisavana/sdk/G;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/G;->A()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public i()Z
    .locals 0

    iget-object p0, p0, Lr17;->a:Lcom/cloud/hisavana/sdk/G;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public j()Z
    .locals 0

    iget-object p0, p0, Lr17;->a:Lcom/cloud/hisavana/sdk/G;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/G;->B()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    new-instance v0, Ld29;

    invoke-direct {v0, p1, p2, p3}, Ld29;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v0, p0, Lr17;->j:Ld29;

    return-void
.end method

.method public l(Z)V
    .locals 0

    iput-boolean p1, p0, Lr17;->g:Z

    return-void
.end method

.method public m(Z)V
    .locals 0

    iput-boolean p1, p0, Lr17;->c:Z

    return-void
.end method

.method public n(I)V
    .locals 0

    iput p1, p0, Lr17;->d:I

    return-void
.end method

.method public o(Ln6;)V
    .locals 0

    iput-object p1, p0, Lr17;->f:Ln6;

    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lr17;->b:Ljava/lang/String;

    return-void
.end method

.method public q(Lw6;)V
    .locals 0

    iput-object p1, p0, Lr17;->i:Lw6;

    return-void
.end method
