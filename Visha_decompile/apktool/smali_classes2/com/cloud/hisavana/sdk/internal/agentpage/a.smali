.class public final Lcom/cloud/hisavana/sdk/internal/agentpage/a;
.super Lcom/cloud/hisavana/sdk/G;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/internal/agentpage/a$a;
    }
.end annotation


# instance fields
.field public final i:Ljava/lang/String;

.field public final j:Ljava/util/List;

.field public k:Lcom/cloud/hisavana/sdk/internal/agentpage/a$a;


# direct methods
.method public constructor <init>(Lied;)V
    .locals 1

    const-string v0, "fetchInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/G;-><init>(Lied;)V

    const-string p1, "TranAgentPage"

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/a;->i:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/a;->j:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final F(Lcom/cloud/hisavana/sdk/internal/agentpage/a$a;)V
    .locals 1

    const-string v0, "adListener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/a;->k:Lcom/cloud/hisavana/sdk/internal/agentpage/a$a;

    return-void
.end method

.method public b(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/a;->k:Lcom/cloud/hisavana/sdk/internal/agentpage/a$a;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Lcom/cloud/hisavana/sdk/internal/agentpage/a$a;->a(Ljava/util/List;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/cloud/hisavana/sdk/G;->b(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    return-void
.end method

.method public d(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Likd;->b()Likd;

    move-result-object p2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/a;->i:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdLoadedStub ads size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lja1;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_1

    goto :goto_2

    :cond_1
    const/4 p2, 0x4

    invoke-static {p2}, Lcom/cloud/hisavana/net/disklrucache/utils/DiskLruCacheUtil;->g(I)Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    move-result-object p2

    if-nez p2, :cond_2

    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/a;->i:Ljava/lang/String;

    const-string p2, "get getDiskCache failed"

    invoke-virtual {p1, p0, p2}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    sget-object v1, Lcom/cloud/hisavana/sdk/i0;->a:Lcom/cloud/hisavana/sdk/i0;

    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/i0;->i(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    new-instance v2, Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;

    invoke-direct {v2, v1}, Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v2}, Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;->d(Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/a;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/a;->k:Lcom/cloud/hisavana/sdk/internal/agentpage/a$a;

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/a;->j:Ljava/util/List;

    const-string p2, "mAdBeans"

    invoke-static {p0, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/cloud/hisavana/sdk/internal/agentpage/a$a;->a(Ljava/util/List;)V

    :cond_6
    return-void

    :cond_7
    :goto_2
    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/a;->i:Ljava/lang/String;

    const-string v0, "onAdLoadedStub ads = null"

    invoke-virtual {p1, p2, v0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/a;->k:Lcom/cloud/hisavana/sdk/internal/agentpage/a$a;

    if-eqz p0, :cond_8

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, p1}, Lcom/cloud/hisavana/sdk/internal/agentpage/a$a;->a(Ljava/util/List;)V

    :cond_8
    return-void
.end method

.method public m()V
    .locals 3

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/a;->i:Ljava/lang/String;

    const-string v2, "TranAgentPage destroy"

    invoke-virtual {v0, v1, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/a;->k:Lcom/cloud/hisavana/sdk/internal/agentpage/a$a;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-super {p0}, Lcom/cloud/hisavana/sdk/G;->m()V

    return-void
.end method
