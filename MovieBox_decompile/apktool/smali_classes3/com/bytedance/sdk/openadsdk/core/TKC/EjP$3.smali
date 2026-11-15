.class Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$3;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/Jcg$Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic EjP:Ljava/lang/String;

.field final synthetic HiB:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;

.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/core/Jcg;

.field final synthetic vS:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/Jcg;Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$3;->vS:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/core/Jcg;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$3;->TKC:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$3;->EjP:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$3;->HiB:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$3;->vS:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->EjP(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;)V

    return-void
.end method

.method public Sj(Landroid/view/View;)V
    .locals 7

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$3;->vS:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->HiB(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$3;->vS:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$3;->TKC:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$3;->EjP:Ljava/lang/String;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$3;->HiB:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;)V

    :cond_0
    return-void
.end method

.method public Sj(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$3;->vS:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;ZLcom/bytedance/sdk/openadsdk/core/model/sU;)V

    return-void
.end method

.method public sP()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$3;->vS:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/core/Jcg;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 7
    .line 8
    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;Lcom/bytedance/sdk/openadsdk/core/Jcg;ZLcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
