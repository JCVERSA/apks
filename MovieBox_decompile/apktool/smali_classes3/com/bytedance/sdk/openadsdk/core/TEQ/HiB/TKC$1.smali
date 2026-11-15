.class Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC$1;
.super Lcom/bytedance/sdk/component/Dq/Dq;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Sj()Lorg/json/JSONObject;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->EjP:Lorg/json/JSONObject;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;)Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;)Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getUgenTemplateErrorReason()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;

    .line 32
    .line 33
    const-string v1, "expressView is null"

    .line 34
    .line 35
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/sef;->TKC()Landroid/os/Handler;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;

    .line 43
    .line 44
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->sP(Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;)Ljava/lang/Runnable;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    .line 50
    .line 51
    return-void
.end method
