.class public Lcom/bytedance/sdk/openadsdk/Jcg/Sj;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bykv/vk/openvk/preload/geckox/net/INetWork;


# instance fields
.field protected Sj:Lcom/bytedance/sdk/component/sP/Sj/Ym;

.field protected sP:Lcom/bytedance/sdk/component/sP/Sj/Ym;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;-><init>()V

    .line 7
    .line 8
    .line 9
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 10
    .line 11
    const-wide/16 v2, 0xa

    .line 12
    .line 13
    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;->Sj(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;->sP(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;->TKC(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;->Sj()Lcom/bytedance/sdk/component/sP/Sj/Ym;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/Jcg/Sj;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Ym;

    .line 30
    .line 31
    new-instance v0, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;

    .line 32
    .line 33
    invoke-direct {v0}, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;->Sj(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-wide/16 v2, 0x1e

    .line 41
    .line 42
    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;->sP(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;->TKC(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;->Sj()Lcom/bytedance/sdk/component/sP/Sj/Ym;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/Jcg/Sj;->sP:Lcom/bytedance/sdk/component/sP/Sj/Ym;

    .line 55
    .line 56
    return-void
.end method

.method private Sj(Lcom/bytedance/sdk/component/sP/Sj/vS;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/sP/Sj/vS;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/vS;->Sj()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-ge v1, v2, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/sP/Sj/vS;->Sj(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/sP/Sj/vS;->sP(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return-object v0
.end method


# virtual methods
.method public doGet(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/geckox/net/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->Sj()Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->sP()Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Jcg/Sj;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Ym;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/sP/Sj/Ym;->Sj(Lcom/bytedance/sdk/component/sP/Sj/Fmk;)Lcom/bytedance/sdk/component/sP/Sj/sP;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-interface {p1}, Lcom/bytedance/sdk/component/sP/Sj/sP;->sP()Lcom/bytedance/sdk/component/sP/Sj/Zq;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    new-instance v0, Lcom/bykv/vk/openvk/preload/geckox/net/Response;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->Jcg()Lcom/bytedance/sdk/component/sP/Sj/vS;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/Jcg/Sj;->Sj(Lcom/bytedance/sdk/component/sP/Sj/vS;)Ljava/util/Map;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->TKC()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    const/16 v3, 0xc8

    .line 43
    .line 44
    if-ne v2, v3, :cond_0

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->vS()Lcom/bytedance/sdk/component/sP/Sj/uvD;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/sP/Sj/uvD;->sP()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 v2, 0x0

    .line 56
    :goto_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->TKC()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->HiB()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-direct {v0, v1, v2, v3, p1}, Lcom/bykv/vk/openvk/preload/geckox/net/Response;-><init>(Ljava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-object v0
.end method

.method public doPost(Ljava/lang/String;Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/geckox/net/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12
    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lcom/bytedance/sdk/component/sP/Sj/uA;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/sP/Sj/uA;

    move-result-object v0

    .line 13
    invoke-static {v0, p2}, Lcom/bytedance/sdk/component/sP/Sj/sef;->Sj(Lcom/bytedance/sdk/component/sP/Sj/uA;Ljava/lang/String;)Lcom/bytedance/sdk/component/sP/Sj/sef;

    move-result-object p2

    .line 14
    new-instance v0, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;-><init>()V

    .line 15
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    move-result-object p1

    .line 16
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->Sj(Lcom/bytedance/sdk/component/sP/Sj/sef;)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->sP()Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    move-result-object p1

    .line 18
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/Jcg/Sj;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Ym;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/sP/Sj/Ym;->Sj(Lcom/bytedance/sdk/component/sP/Sj/Fmk;)Lcom/bytedance/sdk/component/sP/Sj/sP;

    move-result-object p1

    .line 19
    invoke-interface {p1}, Lcom/bytedance/sdk/component/sP/Sj/sP;->sP()Lcom/bytedance/sdk/component/sP/Sj/Zq;

    move-result-object p1

    .line 20
    new-instance p2, Lcom/bykv/vk/openvk/preload/geckox/net/Response;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->Jcg()Lcom/bytedance/sdk/component/sP/Sj/vS;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/Jcg/Sj;->Sj(Lcom/bytedance/sdk/component/sP/Sj/vS;)Ljava/util/Map;

    move-result-object v0

    .line 21
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->TKC()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->vS()Lcom/bytedance/sdk/component/sP/Sj/uvD;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/sP/Sj/uvD;->sP()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->TKC()I

    move-result v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->HiB()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, v1, v2, p1}, Lcom/bykv/vk/openvk/preload/geckox/net/Response;-><init>(Ljava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    return-object p2
.end method

.method public doPost(Ljava/lang/String;Ljava/util/List;)Lcom/bykv/vk/openvk/preload/geckox/net/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/bykv/vk/openvk/preload/geckox/net/Response;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/bytedance/sdk/component/sP/Sj/HiB$Sj;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/sP/Sj/HiB$Sj;-><init>()V

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/component/sP/Sj/HiB$Sj;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/sP/Sj/HiB$Sj;

    goto :goto_0

    .line 4
    :cond_0
    new-instance p2, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    invoke-direct {p2}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;-><init>()V

    .line 5
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    move-result-object p1

    .line 6
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/HiB$Sj;->Sj()Lcom/bytedance/sdk/component/sP/Sj/HiB;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->Sj(Lcom/bytedance/sdk/component/sP/Sj/sef;)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->sP()Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    move-result-object p1

    .line 8
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/Jcg/Sj;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Ym;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/sP/Sj/Ym;->Sj(Lcom/bytedance/sdk/component/sP/Sj/Fmk;)Lcom/bytedance/sdk/component/sP/Sj/sP;

    move-result-object p1

    .line 9
    invoke-interface {p1}, Lcom/bytedance/sdk/component/sP/Sj/sP;->sP()Lcom/bytedance/sdk/component/sP/Sj/Zq;

    move-result-object p1

    .line 10
    new-instance p2, Lcom/bykv/vk/openvk/preload/geckox/net/Response;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->Jcg()Lcom/bytedance/sdk/component/sP/Sj/vS;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/Jcg/Sj;->Sj(Lcom/bytedance/sdk/component/sP/Sj/vS;)Ljava/util/Map;

    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->TKC()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->vS()Lcom/bytedance/sdk/component/sP/Sj/uvD;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/sP/Sj/uvD;->sP()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->TKC()I

    move-result v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->HiB()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, v1, v2, p1}, Lcom/bykv/vk/openvk/preload/geckox/net/Response;-><init>(Ljava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    return-object p2
.end method

.method public downloadFile(Ljava/lang/String;JLcom/bykv/vk/openvk/preload/geckox/buffer/stream/BufferOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const/4 p2, 0x0

    .line 2
    const/4 p3, 0x0

    .line 3
    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    .line 4
    .line 5
    invoke-direct {v0}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->Sj()Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->sP()Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/Jcg/Sj;->sP:Lcom/bytedance/sdk/component/sP/Sj/Ym;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/sP/Sj/Ym;->Sj(Lcom/bytedance/sdk/component/sP/Sj/Fmk;)Lcom/bytedance/sdk/component/sP/Sj/sP;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Lcom/bytedance/sdk/component/sP/Sj/sP;->sP()Lcom/bytedance/sdk/component/sP/Sj/Zq;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->TKC()I

    .line 31
    .line 32
    .line 33
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 34
    :try_start_1
    new-instance v2, Ljava/io/BufferedInputStream;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->vS()Lcom/bytedance/sdk/component/sP/Sj/uvD;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/uvD;->TKC()Ljava/io/InputStream;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 45
    .line 46
    .line 47
    const/16 p2, 0x800

    .line 48
    .line 49
    :try_start_2
    new-array v0, p2, [B

    .line 50
    .line 51
    :goto_0
    invoke-virtual {v2, v0, p3, p2}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    const/4 v4, -0x1

    .line 56
    if-eq v3, v4, :cond_0

    .line 57
    .line 58
    invoke-virtual {p4, v0, p3, v3}, Lcom/bykv/vk/openvk/preload/geckox/buffer/stream/BufferOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    move-object p2, v2

    .line 64
    goto :goto_3

    .line 65
    :catch_0
    move-exception p2

    .line 66
    :goto_1
    move p3, v1

    .line 67
    goto :goto_2

    .line 68
    :cond_0
    invoke-static {v2}, Lcom/bykv/vk/openvk/preload/geckox/utils/CloseableUtils;->close(Ljava/io/Closeable;)Z

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :catchall_1
    move-exception p1

    .line 73
    goto :goto_3

    .line 74
    :catch_1
    move-exception p3

    .line 75
    move-object v2, p2

    .line 76
    move-object p2, p3

    .line 77
    goto :goto_1

    .line 78
    :catch_2
    move-exception p4

    .line 79
    move-object v2, p2

    .line 80
    move-object p2, p4

    .line 81
    :goto_2
    :try_start_3
    new-instance p4, Ljava/lang/RuntimeException;

    .line 82
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v1, "downloadFile failed, code: "

    .line 86
    .line 87
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string p3, ", url:"

    .line 94
    .line 95
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string p1, ", caused by:"

    .line 102
    .line 103
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-direct {p4, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    .line 119
    .line 120
    throw p4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 121
    :goto_3
    invoke-static {p2}, Lcom/bykv/vk/openvk/preload/geckox/utils/CloseableUtils;->close(Ljava/io/Closeable;)Z

    .line 122
    .line 123
    .line 124
    throw p1
.end method

.method public syncDoGet(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->Sj()Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->sP()Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/Jcg/Sj;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Ym;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/sP/Sj/Ym;->Sj(Lcom/bytedance/sdk/component/sP/Sj/Fmk;)Lcom/bytedance/sdk/component/sP/Sj/sP;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v1, Lcom/bytedance/sdk/openadsdk/Jcg/Sj$1;

    .line 25
    .line 26
    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/Jcg/Sj$1;-><init>(Lcom/bytedance/sdk/openadsdk/Jcg/Sj;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/sP/Sj/sP;->Sj(Lcom/bytedance/sdk/component/sP/Sj/TKC;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
