.class final Lcom/bytedance/sdk/openadsdk/dx/Sj$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/zR/Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/dx/Sj;->Sj(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/zR/TKC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dx/Sj$2$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/dx/Sj$2$1;-><init>(Lcom/bytedance/sdk/openadsdk/dx/Sj$2;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V

    return-void
.end method

.method public Sj(ILjava/lang/String;)V
    .locals 0

    .line 2
    new-instance p1, Lcom/bytedance/sdk/openadsdk/dx/Sj$2$3;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/dx/Sj$2$3;-><init>(Lcom/bytedance/sdk/openadsdk/dx/Sj$2;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V

    .line 3
    sget-object p1, Lcom/bytedance/sdk/openadsdk/dx/Sj;->sP:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/sU;->Sj(Ljava/lang/String;)V

    return-void
.end method

.method public sP()V
    .locals 4

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dx/Sj$2$2;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/dx/Sj$2$2;-><init>(Lcom/bytedance/sdk/openadsdk/dx/Sj$2;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->sP(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/vS/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/vS/Sj;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/vS/Sj;->sP()V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/sU/Sj/TKC;->Sj()Lcom/bytedance/sdk/openadsdk/sU/Sj/TKC;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/sU/Sj/TKC;->sP()V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj;->Sj()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    xor-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    invoke-static {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->TKC(Z)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/sU;->sP()V

    .line 33
    .line 34
    .line 35
    new-instance v0, Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v1, ""

    .line 41
    .line 42
    const-string v2, "sec_config"

    .line 43
    .line 44
    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/dx/Sj;->Sj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-nez v3, :cond_0

    .line 53
    .line 54
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA/sP;->sP()Lcom/bytedance/sdk/openadsdk/core/uA/sP;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/uA/sP;->Sj(Ljava/util/Map;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method
