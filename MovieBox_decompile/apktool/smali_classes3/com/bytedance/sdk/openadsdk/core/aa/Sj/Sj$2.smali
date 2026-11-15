.class Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->dx()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Fmk:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->TEQ()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
