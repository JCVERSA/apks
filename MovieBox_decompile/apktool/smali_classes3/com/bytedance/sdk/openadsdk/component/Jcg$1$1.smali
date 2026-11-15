.class Lcom/bytedance/sdk/openadsdk/component/Jcg$1$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/Jcg$1;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/core/model/TKC;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/component/Jcg$1;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/Jcg$1;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$1$1;->TKC:Lcom/bytedance/sdk/openadsdk/component/Jcg$1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$1$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$1$1;->sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

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
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$1$1;->TKC:Lcom/bytedance/sdk/openadsdk/component/Jcg$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/Jcg$1;->TKC:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;)Lcom/bytedance/sdk/openadsdk/core/model/ley;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x2

    .line 10
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/ley;->Sj(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$1$1;->TKC:Lcom/bytedance/sdk/openadsdk/component/Jcg$1;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/Jcg$1;->TKC:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    .line 16
    .line 17
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$1$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 20
    .line 21
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$1$1;->sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    const/16 v5, 0x64

    .line 25
    .line 26
    invoke-direct {v1, v4, v5, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;-><init>(IILcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;Lcom/bytedance/sdk/openadsdk/component/HiB/sP;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
