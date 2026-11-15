.class Lcom/bytedance/sdk/openadsdk/activity/EjP$3;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lw5/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/EjP;->Sj(JZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field Sj:Z

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/EjP;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

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
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->Sj:Lcom/bytedance/sdk/component/utils/LqL;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/Sj;->Fmk()V

    .line 34
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->uP()Lcom/bytedance/sdk/openadsdk/activity/sP;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/activity/Sj;->sP(I)Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj(Lcom/bytedance/sdk/openadsdk/activity/vS;Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;)V

    return-void
.end method

.method public Sj(JI)V
    .locals 2

    .line 1
    iget-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->Sj:Z

    if-eqz p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    .line 2
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->Sj:Z

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->Sj:Lcom/bytedance/sdk/component/utils/LqL;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/Sj;->Fmk()V

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    invoke-virtual {v0, p1, p2, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Sj(JJ)V

    .line 6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->wE:Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->sP(Z)V

    .line 7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dx()I

    move-result p1

    const/16 p2, 0x24

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-boolean p2, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->TKC:Z

    if-eqz p2, :cond_1

    .line 8
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->kF:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/EjP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/EjP;->TKC()Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;->EjP()V

    .line 9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/sef;->sP()V

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dx()I

    move-result p1

    const/16 p2, 0x15

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Dq()Z

    move-result p1

    if-nez p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sP(Z)V

    .line 12
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->dNu()V

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    iget-object p2, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-boolean v0, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->gR:Z

    const/4 v1, 0x5

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/activity/Sj;->sP(I)Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;

    move-result-object p1

    .line 15
    iput-boolean p3, p1, Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;->HiB:Z

    .line 16
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/activity/vS;->uP()Lcom/bytedance/sdk/openadsdk/activity/sP;

    move-result-object p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    invoke-virtual {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj(Lcom/bytedance/sdk/openadsdk/activity/vS;Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;)V

    return-void

    .line 17
    :cond_3
    iget-boolean p1, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->TKC:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 18
    iget-object p1, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->WM()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 19
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->wE:Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->uA()I

    move-result p1

    if-ne p1, p3, :cond_7

    .line 20
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Mts:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->TKC()V

    return-void

    .line 21
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/Sj;->Sj(ZI)V

    .line 22
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 23
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    const-string p2, "skip"

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Sj(Ljava/lang/String;Z)V

    return-void

    .line 24
    :cond_5
    iget-object p1, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 25
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/vS;->ley()V

    return-void

    .line 26
    :cond_6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->wE:Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->Sj()Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 27
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->wE:Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->Sj()Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;

    move-result-object p1

    const-string p2, "0"

    invoke-virtual {p1, p2, v0, v0, v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->setTime(Ljava/lang/CharSequence;IIZ)V

    .line 28
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->wE:Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->Dq()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 29
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Mts:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    const-string v0, "X"

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->Sj(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 30
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Mts:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->HiB(Z)V

    .line 31
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Mts:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->TKC()V

    :cond_7
    return-void
.end method

.method public Sj(JJ)V
    .locals 7

    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->qRN:Z

    if-nez v1, :cond_0

    .line 36
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->sP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->uvD()V

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->TEQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->Sj:Lcom/bytedance/sdk/component/utils/LqL;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 40
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Dq()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2

    .line 41
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/Sj;->Fmk()V

    .line 42
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->sP()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 43
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Sj(JJ)V

    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Yf()D

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long v3, p1, v3

    long-to-double v5, v3

    sub-double/2addr v1, v5

    double-to-int v1, v1

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/activity/EjP;->HiB:I

    long-to-int v0, v3

    .line 45
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sU:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Ym:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 46
    :cond_4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->sP()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 47
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->uvD()V

    .line 48
    :cond_5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->wE:Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->Sj()Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 49
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->wE:Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->Sj()Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    iget v2, v2, Lcom/bytedance/sdk/openadsdk/activity/EjP;->HiB:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v3}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->setTime(Ljava/lang/CharSequence;IIZ)V

    .line 50
    :cond_6
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    long-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p1, p2

    long-to-float p2, p3

    div-float/2addr p1, p2

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/activity/Sj;->Sj(F)V

    .line 51
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->wE:Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->Dq()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Fqk()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 52
    :cond_7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/activity/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/activity/EjP;I)V

    .line 53
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    iget p2, p1, Lcom/bytedance/sdk/openadsdk/activity/EjP;->HiB:I

    if-ltz p2, :cond_8

    .line 54
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Mts:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->EjP(Z)V

    .line 55
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    iget-object p2, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Mts:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/activity/EjP;->HiB:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->Sj(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_8
    return-void
.end method

.method public sP(JI)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->Sj:Lcom/bytedance/sdk/component/utils/LqL;

    .line 4
    .line 5
    const/16 p2, 0x12c

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->Zq:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TEQ()V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->sP()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/Sj;->HiB()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 44
    .line 45
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->sef()V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    .line 51
    .line 52
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 53
    .line 54
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->wE:Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;

    .line 55
    .line 56
    const/4 p2, 0x1

    .line 57
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->Sj(Z)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/vS;->uP()Lcom/bytedance/sdk/openadsdk/activity/sP;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/activity/EjP;

    .line 67
    .line 68
    const/4 p3, 0x3

    .line 69
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/activity/Sj;->sP(I)Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj(Lcom/bytedance/sdk/openadsdk/activity/vS;Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method
