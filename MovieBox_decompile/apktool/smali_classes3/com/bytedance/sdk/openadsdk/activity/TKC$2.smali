.class Lcom/bytedance/sdk/openadsdk/activity/TKC$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/component/reward/top/sP;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/TKC;->ib()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Landroid/view/View;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/activity/TKC;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/TKC;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$2;->sP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$2;->Sj:Landroid/view/View;

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
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$2;->sP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/activity/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/activity/TKC;ZZLjava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$2;->sP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/activity/TKC;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$2;->sP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$2;->sP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->TEQ(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$2;->sP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->dNu()V

    return-void

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$2;->Sj:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    return-void

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$2;->sP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/vS;->ley()V

    return-void

    .line 9
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$2;->sP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->Dq(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 10
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$2;->sP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->Sj()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 11
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$2;->sP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->Sj(I)V

    return-void

    .line 12
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$2;->sP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->JcM:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Dq()V

    return-void

    .line 13
    :cond_6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$2;->sP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->TzV(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$2;->sP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 14
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$2;->sP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uvD:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    .line 15
    :cond_7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$2;->sP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/vS;->ley()V

    return-void

    .line 16
    :cond_8
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$2;->sP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->Dq(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$2;->sP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->Sj()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 17
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$2;->sP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->Sj(I)V

    .line 18
    :cond_9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$2;->sP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/vS;->ley()V

    return-void
.end method

.method public Sj(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    .line 19
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$2;->sP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TKC;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->EjP()Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP$Sj;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 20
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$2;->sP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TKC;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->EjP()Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP$Sj;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$2;->sP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ndK:Z

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP$Sj;->Sj(Z)V

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$2;->sP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-boolean v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ndK:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ndK:Z

    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "will set is Mute "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$2;->sP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ndK:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mLastVolume="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$2;->sP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->fF:Lcom/bytedance/sdk/openadsdk/aa/TEQ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/aa/TEQ;->Sj()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$2;->sP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ndK:Z

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Sj(ZLjava/lang/String;)V

    .line 24
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$2;->sP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->RiZ(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$2;->sP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->TEQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 25
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$2;->sP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p2, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->JcM:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ndK:Z

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->HiB(Z)V

    .line 26
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$2;->sP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$2;->sP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$2;->sP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p2, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    if-eqz p2, :cond_3

    .line 27
    iget-boolean p2, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ndK:Z

    if-eqz p2, :cond_2

    .line 28
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$2;->sP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Jcg()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;->Dq(J)V

    goto :goto_0

    .line 29
    :cond_2
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$2;->sP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Jcg()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;->uA(J)V

    .line 30
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$2;->sP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p2, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ndK:Z

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS(Z)V

    return-void
.end method

.method public TKC(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$2;->Sj:Landroid/view/View;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public sP(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$2;->sP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->LD:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TKC;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
