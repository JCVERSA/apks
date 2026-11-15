.class Lcom/bytedance/sdk/openadsdk/TKC/TKC$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TKC/EjP$Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/TKC/TKC;->Sj(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/TKC/TKC;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/TKC/TKC;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/TKC$2;->Sj:Lcom/bytedance/sdk/openadsdk/TKC/TKC;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TKC$2;->Sj:Lcom/bytedance/sdk/openadsdk/TKC/TKC;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->Sj(Z)V

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TKC$2;->Sj:Lcom/bytedance/sdk/openadsdk/TKC/TKC;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/TKC/TKC;)Lcom/bytedance/sdk/openadsdk/TKC/EjP;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TKC$2;->Sj:Lcom/bytedance/sdk/openadsdk/TKC/TKC;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/TKC/TKC;)Lcom/bytedance/sdk/openadsdk/TKC/EjP;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TKC$2;->Sj:Lcom/bytedance/sdk/openadsdk/TKC/TKC;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/TKC/TKC;)Lcom/bytedance/sdk/openadsdk/TKC/EjP;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TKC$2;->Sj:Lcom/bytedance/sdk/openadsdk/TKC/TKC;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->sP(Lcom/bytedance/sdk/openadsdk/TKC/TKC;)V

    return-void
.end method

.method public Sj(ILcom/bytedance/sdk/openadsdk/FilterWord;)V
    .locals 2

    .line 5
    :try_start_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/FilterWord;->hasSecondOptions()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TKC$2;->Sj:Lcom/bytedance/sdk/openadsdk/TKC/TKC;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/TKC/TKC;)Lcom/bytedance/sdk/openadsdk/core/uP$Sj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TKC$2;->Sj:Lcom/bytedance/sdk/openadsdk/TKC/TKC;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/TKC/TKC;)Lcom/bytedance/sdk/openadsdk/core/uP$Sj;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/FilterWord;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/uP$Sj;->Sj(ILjava/lang/String;)V

    .line 8
    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/FilterWord;->getName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public sP()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TKC$2;->Sj:Lcom/bytedance/sdk/openadsdk/TKC/TKC;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/TKC/TKC;)Lcom/bytedance/sdk/openadsdk/core/uP$Sj;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TKC$2;->Sj:Lcom/bytedance/sdk/openadsdk/TKC/TKC;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/TKC/TKC;)Lcom/bytedance/sdk/openadsdk/core/uP$Sj;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/uP$Sj;->Sj()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    return-void

    .line 22
    :goto_1
    const-string v1, "TTAdDislikeImpl"

    .line 23
    .line 24
    const-string v2, "dislike callback cancel error: "

    .line 25
    .line 26
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
