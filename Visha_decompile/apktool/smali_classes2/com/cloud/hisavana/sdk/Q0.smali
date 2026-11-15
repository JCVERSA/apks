.class public final Lcom/cloud/hisavana/sdk/Q0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/Q0;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/Q0;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls7;

    invoke-virtual {v1}, Ls7;->c()V

    invoke-static {}, Likd;->b()Likd;

    move-result-object v1

    const-string v2, "OmSdk"

    const-string v3, "omid session finish"

    invoke-virtual {v1, v2, v3}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/Q0;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 5

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/Q0;->a:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getUuid()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "OmSdk"

    if-eqz p1, :cond_8

    if-nez p2, :cond_2

    goto/16 :goto_5

    :cond_2
    sget-object v2, Lcom/cloud/hisavana/sdk/n;->a:Lcom/cloud/hisavana/sdk/n$a;

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/iab/omid/library/hisavana/adsession/CreativeType;->NATIVE_DISPLAY:Lcom/iab/omid/library/hisavana/adsession/CreativeType;

    invoke-virtual {v2, v3, v4, p1}, Lcom/cloud/hisavana/sdk/n$a;->b(Landroid/content/Context;Lcom/iab/omid/library/hisavana/adsession/CreativeType;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ls7;

    move-result-object v2

    if-eqz v2, :cond_6

    :try_start_0
    invoke-virtual {v2, p2}, Ls7;->d(Landroid/view/View;)V

    if-eqz p3, :cond_5

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {p3}, Li81;->l0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    sget-object v4, Lcom/iab/omid/library/hisavana/adsession/FriendlyObstructionPurpose;->OTHER:Lcom/iab/omid/library/hisavana/adsession/FriendlyObstructionPurpose;

    invoke-virtual {v2, v3, v4, v1}, Ls7;->a(Landroid/view/View;Lcom/iab/omid/library/hisavana/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_4
    invoke-interface {p3}, Ljava/util/List;->clear()V

    :cond_5
    :goto_2
    invoke-virtual {v2}, Ls7;->e()V

    invoke-static {v2}, Lz5;->a(Ls7;)Lz5;

    move-result-object p2

    invoke-virtual {p2}, Lz5;->c()V

    invoke-virtual {p2}, Lz5;->b()V

    invoke-static {}, Likd;->b()Likd;

    move-result-object p2

    const-string v1, "omid adEvents impressionOccurred"

    invoke-virtual {p2, v0, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/Q0;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getUuid()Ljava/lang/String;

    move-result-object p1

    const-string p2, "getUuid(...)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setup omid native failed : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lja1;->e(Ljava/lang/String;)V

    sget-object p0, Lzfb;->a:Lzfb;

    :goto_4
    if-nez p0, :cond_7

    :cond_6
    new-instance p0, Lcom/cloud/hisavana/sdk/Q0$a;

    invoke-direct {p0, p3}, Lcom/cloud/hisavana/sdk/Q0$a;-><init>(Ljava/util/List;)V

    :cond_7
    return-void

    :cond_8
    :goto_5
    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string p1, "omid adSession == null"

    invoke-virtual {p0, v0, p1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_9

    invoke-interface {p3}, Ljava/util/List;->clear()V

    :cond_9
    return-void
.end method
