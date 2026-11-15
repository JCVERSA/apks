.class Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/common/Zq$Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->sP(Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public Sj(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Ym:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    const-string v0, "landing_page"

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->EjP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    .line 3
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->TEQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    const-string v0, "playable"

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ei()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    const-string v0, "endcard"

    goto :goto_0

    .line 9
    :cond_3
    const-string v0, "video_player"

    .line 10
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->sP(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/common/Zq;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/common/Zq;->setDislikeSource(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->HiB:Z

    const/16 v0, 0x8

    if-eqz p1, :cond_6

    .line 12
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->wE:Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;

    if-eqz p1, :cond_5

    .line 13
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->wE:Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->Sj(IZ)V

    :cond_5
    return-void

    .line 14
    :cond_6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->uvD()V

    .line 15
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->sP()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 16
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->uvD()V

    .line 17
    :cond_7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HS:Lcom/bytedance/sdk/openadsdk/activity/vS;

    instance-of p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TKC;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HS:Lcom/bytedance/sdk/openadsdk/activity/vS;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/vS;->kF()Z

    move-result p1

    if-nez p1, :cond_8

    .line 18
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HS:Lcom/bytedance/sdk/openadsdk/activity/vS;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/vS;->uP()Lcom/bytedance/sdk/openadsdk/activity/sP;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj(I)V

    .line 19
    :cond_8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/kF/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/FilterWord;)V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->aa:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->hasSecondOptions()Z

    move-result p1

    if-nez p1, :cond_0

    .line 21
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->aa:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 22
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)V

    :cond_0
    return-void
.end method

.method public sP(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Ym:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    .line 20
    .line 21
    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->HiB:Z

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->wE:Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->wE:Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;

    .line 43
    .line 44
    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->Sj(IZ)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void

    .line 48
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    .line 49
    .line 50
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    .line 55
    .line 56
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    .line 62
    .line 63
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->EjP()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_2

    .line 74
    .line 75
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    .line 76
    .line 77
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Zq()V

    .line 84
    .line 85
    .line 86
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    .line 87
    .line 88
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HS:Lcom/bytedance/sdk/openadsdk/activity/vS;

    .line 93
    .line 94
    instance-of p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TKC;

    .line 95
    .line 96
    if-eqz p1, :cond_3

    .line 97
    .line 98
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    .line 99
    .line 100
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HS:Lcom/bytedance/sdk/openadsdk/activity/vS;

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/vS;->kF()Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-nez p1, :cond_3

    .line 111
    .line 112
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    .line 113
    .line 114
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HS:Lcom/bytedance/sdk/openadsdk/activity/vS;

    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/vS;->uP()Lcom/bytedance/sdk/openadsdk/activity/sP;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj(I)V

    .line 125
    .line 126
    .line 127
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC$1;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    .line 128
    .line 129
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 134
    .line 135
    const/4 v0, 0x4

    .line 136
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/kF/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V

    .line 137
    .line 138
    .line 139
    return-void
.end method
