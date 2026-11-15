.class public Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/Jcg;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/TKC;->Sj()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/HiB;

    .line 8
    .line 9
    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/HiB;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Dq(Landroid/content/Context;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    new-instance v0, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/EjP;

    .line 20
    .line 21
    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/EjP;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/Sj;

    .line 26
    .line 27
    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/Sj;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-object v0
.end method
