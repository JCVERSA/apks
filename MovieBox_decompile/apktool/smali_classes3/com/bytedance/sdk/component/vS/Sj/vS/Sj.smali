.class public Lcom/bytedance/sdk/component/vS/Sj/vS/Sj;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static volatile Sj:Lcom/bytedance/sdk/component/vS/Sj/vS/sP;


# direct methods
.method public static Sj()Lcom/bytedance/sdk/component/vS/Sj/vS/sP;
    .locals 5

    .line 1
    sget-object v0, Lcom/bytedance/sdk/component/vS/Sj/vS/Sj;->Sj:Lcom/bytedance/sdk/component/vS/Sj/vS/sP;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/bytedance/sdk/component/vS/Sj/vS/sP;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/component/vS/Sj/vS/Sj;->Sj:Lcom/bytedance/sdk/component/vS/Sj/vS/sP;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;

    .line 13
    .line 14
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->vS()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    new-instance v3, Lcom/bytedance/sdk/component/vS/Sj/vS/vS;

    .line 23
    .line 24
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v4}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->vS()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-direct {v3, v4}, Lcom/bytedance/sdk/component/vS/Sj/vS/vS;-><init>(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {v1, v2, v3}, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/vS/Sj/vS/HiB;)V

    .line 36
    .line 37
    .line 38
    sput-object v1, Lcom/bytedance/sdk/component/vS/Sj/vS/Sj;->Sj:Lcom/bytedance/sdk/component/vS/Sj/vS/sP;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v1

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    goto :goto_2

    .line 45
    :goto_1
    monitor-exit v0

    .line 46
    throw v1

    .line 47
    :cond_1
    :goto_2
    sget-object v0, Lcom/bytedance/sdk/component/vS/Sj/vS/Sj;->Sj:Lcom/bytedance/sdk/component/vS/Sj/vS/sP;

    .line 48
    .line 49
    return-object v0
.end method
