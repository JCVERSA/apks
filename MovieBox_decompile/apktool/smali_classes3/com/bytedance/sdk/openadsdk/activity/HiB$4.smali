.class Lcom/bytedance/sdk/openadsdk/activity/HiB$4;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lw5/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/HiB;->Sj(JZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field Sj:Z

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/HiB;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

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

    .line 38
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->Sj:Lcom/bytedance/sdk/component/utils/LqL;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/Sj;->Fmk()V

    .line 40
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/HiB;->ib()V

    .line 41
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->uP()Lcom/bytedance/sdk/openadsdk/activity/sP;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/activity/Sj;->sP(I)Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj(Lcom/bytedance/sdk/openadsdk/activity/vS;Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;)V

    return-void
.end method

.method public Sj(JI)V
    .locals 4

    .line 1
    iget-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->Sj:Z

    if-eqz p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    .line 2
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->Sj:Z

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->Sj:Lcom/bytedance/sdk/component/utils/LqL;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/Sj;->Fmk()V

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-boolean v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->gR:Z

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/HiB;->ib()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    invoke-virtual {v0, p1, p2, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Sj(JJ)V

    .line 8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->RiZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->oDQ()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xD(I)V

    .line 11
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->dNu()V

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dx()I

    move-result p1

    const/16 p2, 0x15

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Dq()Z

    move-result p1

    if-nez p1, :cond_3

    .line 13
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sP(Z)V

    .line 14
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->dNu()V

    .line 15
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int p2, v0

    iput p2, p1, Lcom/bytedance/sdk/openadsdk/activity/HiB;->HiB:I

    .line 16
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    iget-object p2, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-boolean v0, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->gR:Z

    const/4 v1, 0x5

    if-eqz v0, :cond_4

    .line 17
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/activity/Sj;->sP(I)Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;

    move-result-object p1

    .line 18
    iput-boolean p3, p1, Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;->HiB:Z

    .line 19
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/activity/vS;->uP()Lcom/bytedance/sdk/openadsdk/activity/sP;

    move-result-object p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    invoke-virtual {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj(Lcom/bytedance/sdk/openadsdk/activity/vS;Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;)V

    return-void

    .line 20
    :cond_4
    iget-object p1, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->EjP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto/16 :goto_0

    .line 21
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uvD:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_6

    .line 22
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Sj(Z)V

    .line 23
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Mts:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->HiB(Z)V

    return-void

    .line 24
    :cond_6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-boolean v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->TKC:Z

    const-string v2, "skip"

    if-eqz v0, :cond_8

    .line 25
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->WM()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 26
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Mts:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->TKC()V

    return-void

    .line 27
    :cond_7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    invoke-virtual {p1, p2, v1}, Lcom/bytedance/sdk/openadsdk/activity/Sj;->Sj(ZI)V

    .line 28
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 29
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    invoke-virtual {p1, v2, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Sj(Ljava/lang/String;Z)V

    return-void

    .line 30
    :cond_8
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->WM()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 31
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Mts:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->TKC()V

    return-void

    .line 32
    :cond_9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 33
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    invoke-virtual {p1, v2, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Sj(Ljava/lang/String;Z)V

    .line 34
    :cond_a
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/vS;->ley()V

    :cond_b
    return-void

    .line 35
    :cond_c
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    invoke-virtual {p1, p2, v1}, Lcom/bytedance/sdk/openadsdk/activity/Sj;->Sj(ZI)V

    .line 36
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->xu:Lcom/bytedance/sdk/openadsdk/utils/Fmk;

    if-eqz p1, :cond_d

    const-wide/16 p2, 0x0

    .line 37
    invoke-interface {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/Fmk;->Sj(J)V

    :cond_d
    return-void
.end method

.method public Sj(JJ)V
    .locals 9

    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->qRN:Z

    if-nez v1, :cond_0

    .line 43
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->sP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->uvD()V

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->TEQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->Sj:Lcom/bytedance/sdk/component/utils/LqL;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 47
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Dq()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2

    .line 48
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/Sj;->Fmk()V

    .line 49
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Sj(JJ)V

    .line 50
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Yf()D

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long v3, p1, v3

    long-to-double v5, v3

    sub-double/2addr v1, v5

    double-to-int v1, v1

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/activity/HiB;->Jcg:I

    .line 51
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    iget v1, v0, Lcom/bytedance/sdk/openadsdk/activity/HiB;->Jcg:I

    const/4 v2, 0x0

    if-ltz v1, :cond_3

    .line 52
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Mts:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->Sj(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 53
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Yf()D

    move-result-wide v7

    sub-double/2addr v7, v5

    double-to-int v1, v7

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/activity/HiB;->Jcg:I

    long-to-int v0, v3

    .line 54
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/activity/vS;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sP()I

    move-result v1

    if-ltz v1, :cond_4

    .line 55
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/activity/vS;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sP()I

    move-result v1

    goto :goto_0

    .line 56
    :cond_4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    if-eqz v1, :cond_5

    .line 57
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget v3, v3, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->vS:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->TEQ(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_5
    const/16 v1, 0x1e

    :goto_0
    const/4 v3, 0x1

    if-ltz v1, :cond_6

    move v4, v3

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    .line 58
    :goto_1
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sU:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Ym:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 59
    :cond_7
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->sP()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 60
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->uvD()V

    .line 61
    :cond_8
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    invoke-virtual {v5, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->EjP(I)V

    .line 62
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    invoke-virtual {v5, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/activity/HiB;->Sj(JJ)V

    .line 63
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    long-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p1, p2

    long-to-float p2, p3

    div-float/2addr p1, p2

    invoke-virtual {v5, p1}, Lcom/bytedance/sdk/openadsdk/activity/Sj;->Sj(F)V

    .line 64
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    iget p2, p1, Lcom/bytedance/sdk/openadsdk/activity/HiB;->Jcg:I

    if-lez p2, :cond_a

    .line 65
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Mts:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->EjP(Z)V

    if-eqz v4, :cond_9

    if-lt v0, v1, :cond_9

    .line 66
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Sj(Z)V

    .line 67
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    iget-object p2, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Mts:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/activity/HiB;->Jcg:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;->getSkipText()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->Sj(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 68
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Mts:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->HiB(Z)V

    return-void

    .line 69
    :cond_9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    iget-object p2, p1, Lcom/bytedance/sdk/openadsdk/activity/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Mts:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/activity/HiB;->Jcg:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->Sj(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_a
    return-void
.end method

.method public sP(JI)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

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
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

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
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

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
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/Sj;->HiB()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

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
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/HiB;->ib()V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/vS;->uP()Lcom/bytedance/sdk/openadsdk/activity/sP;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/HiB$4;->sP:Lcom/bytedance/sdk/openadsdk/activity/HiB;

    .line 62
    .line 63
    const/4 p3, 0x3

    .line 64
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/activity/Sj;->sP(I)Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj(Lcom/bytedance/sdk/openadsdk/activity/vS;Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method
