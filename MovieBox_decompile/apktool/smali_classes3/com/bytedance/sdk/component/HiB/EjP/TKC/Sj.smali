.class public Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private Sj:Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;

.field private sP:Lcom/bytedance/sdk/component/HiB/RiZ;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;Lcom/bytedance/sdk/component/HiB/RiZ;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj;->Sj:Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj;->sP:Lcom/bytedance/sdk/component/HiB/RiZ;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public Sj(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 5

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj;->sP:Lcom/bytedance/sdk/component/HiB/RiZ;

    if-eqz v0, :cond_0

    .line 24
    const-string v1, "failed"

    iget-object v2, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj;->Sj:Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/component/HiB/RiZ;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/HiB/uA;)V

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj;->Sj:Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->sU()Ljava/lang/String;

    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj;->Sj:Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->dNu()Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;->Jcg()Ljava/util/Map;

    move-result-object v1

    .line 27
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_1

    .line 28
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj;->Sj:Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Dq()Lcom/bytedance/sdk/component/HiB/uvD;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 29
    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/HiB/uvD;->Sj(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 30
    :cond_1
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 32
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 33
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;

    .line 34
    invoke-virtual {v4}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Dq()Lcom/bytedance/sdk/component/HiB/uvD;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 35
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 36
    invoke-interface {v4, p1, p2, p3}, Lcom/bytedance/sdk/component/HiB/uvD;->Sj(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 37
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 38
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    :cond_4
    :goto_1
    :try_start_2
    iget-object p1, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj;->sP:Lcom/bytedance/sdk/component/HiB/RiZ;

    if-eqz p1, :cond_5

    .line 41
    const-string p2, "failed"

    iget-object p3, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj;->Sj:Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;

    invoke-interface {p1, p2, p3}, Lcom/bytedance/sdk/component/HiB/RiZ;->sP(Ljava/lang/String;Lcom/bytedance/sdk/component/HiB/uA;)V

    :cond_5
    return-void

    .line 42
    :goto_2
    monitor-exit v2

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/HiB/Ym;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/HiB/Ym<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj;->sP:Lcom/bytedance/sdk/component/HiB/RiZ;

    if-eqz v0, :cond_0

    .line 2
    const-string v1, "success"

    iget-object v2, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj;->Sj:Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/component/HiB/RiZ;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/HiB/uA;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj;->Sj:Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->sU()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj;->Sj:Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->dNu()Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;->Jcg()Ljava/util/Map;

    move-result-object v1

    .line 5
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_1

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj;->Sj:Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Dq()Lcom/bytedance/sdk/component/HiB/uvD;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj;->Sj:Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->TEQ()Ljava/lang/String;

    .line 8
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/HiB/uvD;->Sj(Lcom/bytedance/sdk/component/HiB/Ym;)V

    goto :goto_1

    .line 9
    :cond_1
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 11
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 12
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 13
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;

    .line 14
    invoke-virtual {v4}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Dq()Lcom/bytedance/sdk/component/HiB/uvD;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 15
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->TEQ()Ljava/lang/String;

    .line 16
    invoke-interface {v5, p1}, Lcom/bytedance/sdk/component/HiB/uvD;->Sj(Lcom/bytedance/sdk/component/HiB/Ym;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 17
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 18
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    :cond_4
    :goto_1
    :try_start_2
    iget-object p1, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj;->sP:Lcom/bytedance/sdk/component/HiB/RiZ;

    if-eqz p1, :cond_5

    .line 21
    const-string v0, "success"

    iget-object v1, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj;->Sj:Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/component/HiB/RiZ;->sP(Ljava/lang/String;Lcom/bytedance/sdk/component/HiB/uA;)V

    :cond_5
    return-void

    .line 22
    :goto_2
    monitor-exit v2

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    return-void
.end method
