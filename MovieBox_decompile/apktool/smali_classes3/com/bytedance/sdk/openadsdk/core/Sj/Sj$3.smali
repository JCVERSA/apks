.class Lcom/bytedance/sdk/openadsdk/core/Sj/Sj$3;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/core/model/TKC;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/core/Sj/Sj;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/core/model/TKC;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/Sj/Sj;Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/core/model/TKC;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Sj/Sj$3;->TKC:Lcom/bytedance/sdk/openadsdk/core/Sj/Sj;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Sj/Sj$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/Sj/Sj$3;->sP:Lcom/bytedance/sdk/openadsdk/core/model/TKC;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Sj/Sj$3;->TKC:Lcom/bytedance/sdk/openadsdk/core/Sj/Sj;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/Sj/Sj;)Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Sj/Sj$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Sj/Sj$3;->sP:Lcom/bytedance/sdk/openadsdk/core/model/TKC;

    .line 10
    .line 11
    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/core/model/TKC;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
