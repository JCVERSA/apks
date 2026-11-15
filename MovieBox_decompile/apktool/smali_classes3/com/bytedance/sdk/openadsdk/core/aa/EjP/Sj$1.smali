.class Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC$sP;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

.field private sP:Z


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->sP:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public EjP(Lv5/a;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->RrR(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->SP(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;->sP(J)V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->dLt(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const/4 v0, 0x3

    .line 39
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/kF/sP/HiB;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    .line 43
    .line 44
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->zwV(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Xqg(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const/4 v0, 0x0

    .line 57
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->Sj(I)V

    .line 58
    .line 59
    .line 60
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    .line 61
    .line 62
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->uA(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$Sj;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-eqz p1, :cond_2

    .line 67
    .line 68
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    .line 69
    .line 70
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->uA(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$Sj;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    const/4 v0, 0x2

    .line 75
    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$Sj;->Sj(I)V

    .line 76
    .line 77
    .line 78
    :cond_2
    return-void
.end method

.method public HiB(Lv5/a;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->oWa(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/kF/sP/HiB;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->mj(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v0, 0x1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->gq(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->Sj(I)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->uA(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$Sj;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    .line 38
    .line 39
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->uA(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$Sj;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$Sj;->Sj(I)V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void
.end method

.method public Sj(II)V
    .locals 0

    .line 62
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->dNu(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->TKC(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V

    .line 63
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Ph(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/aa/Sj/sP;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->GMp(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;->sU()I

    move-result p2

    iput p2, p1, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->EjP:I

    .line 64
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->hzV(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)V

    .line 65
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->TX(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 66
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->dNu(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->EjP(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V

    return-void
.end method

.method public Sj(Lv5/a;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->HiB(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/component/utils/LqL;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->vS(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->HiB()J

    move-result-wide v0

    .line 6
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;->EjP(J)V

    .line 7
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;->HiB(J)V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Jcg(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object p1

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/kF/sP/HiB;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V

    .line 9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Dq(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/kF/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V

    .line 10
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->uA(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$Sj;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 11
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->uA(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$Sj;

    move-result-object p1

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$Sj;->Sj(I)V

    :cond_1
    return-void
.end method

.method public Sj(Lv5/a;I)V
    .locals 1

    .line 45
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->mZN(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Ljava/lang/String;

    .line 46
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->TKC(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;Z)Z

    .line 47
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->HcZ(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/component/utils/LqL;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Ym(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 48
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->TO(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/component/utils/LqL;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$8;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$8;-><init>(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->eI(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/kF/sP/HiB;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V

    .line 50
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->QZ(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 51
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->nP(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->Sj(I)V

    :cond_0
    return-void
.end method

.method public Sj(Lv5/a;II)V
    .locals 0

    .line 36
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->dwU(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Ljava/lang/String;

    .line 37
    invoke-static {}, Lcom/bytedance/sdk/component/utils/uA;->Sj()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public Sj(Lv5/a;III)V
    .locals 0

    .line 38
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Uc(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Ljava/lang/String;

    .line 39
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->sP(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;Z)Z

    .line 40
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->xu(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)V

    .line 41
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->aZ(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/component/utils/LqL;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$7;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 42
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->HS(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object p1

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/kF/sP/HiB;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V

    .line 43
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->tz(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 44
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->TFd(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->Sj(I)V

    :cond_0
    return-void
.end method

.method public Sj(Lv5/a;J)V
    .locals 2

    .line 12
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->TEQ(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Ljava/lang/String;

    .line 13
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;Z)Z

    .line 14
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->aa(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/component/utils/LqL;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Ym(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Zq(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/component/utils/LqL;

    move-result-object p1

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->uvD(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    .line 17
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    iput-wide p2, p1, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->fF:J

    .line 18
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->dNu(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V

    .line 19
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->TzV(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)V

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->RiZ(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 21
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->sU(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->TKC()V

    .line 22
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->dx(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/kF/sP/HiB;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V

    return-void
.end method

.method public Sj(Lv5/a;JJ)V
    .locals 8

    .line 52
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->liH(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)J

    move-result-wide v0

    sub-long v0, p2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x32

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->dNu(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->sP(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V

    .line 54
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {v0, p2, p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;JJ)V

    .line 55
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {v0, p2, p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->sP(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;JJ)V

    .line 56
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->tY(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 58
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->AVc(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    move-result-object v7

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;->Sj(JJLcom/bytedance/sdk/openadsdk/core/Ym/vS;)V

    .line 59
    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->sP:Z

    if-eqz v0, :cond_2

    sub-long/2addr p4, p2

    const-wide/16 p2, 0x1f4

    cmp-long p2, p4, p2

    if-gez p2, :cond_2

    const/4 p2, 0x0

    .line 60
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->sP:Z

    .line 61
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj(Lv5/a;)V

    :cond_2
    return-void
.end method

.method public Sj(Lv5/a;La6/a;)V
    .locals 1

    .line 23
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->ley(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Ljava/lang/String;

    invoke-virtual {p2}, La6/a;->a()I

    invoke-virtual {p2}, La6/a;->d()I

    invoke-virtual {p2}, La6/a;->c()Ljava/lang/String;

    .line 24
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->LqL(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/component/utils/LqL;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Ym(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 25
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Wjd(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/component/utils/LqL;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$4;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;La6/a;)V

    .line 27
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->xD(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object p1

    const/4 p2, 0x6

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/kF/sP/HiB;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V

    .line 28
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Fm(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/kF/Sj/TKC;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 29
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->jb(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 30
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Ei(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    move-result-object p1

    const/16 p2, 0xe

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->Sj(I)V

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->uA(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$Sj;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 32
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->uA(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$Sj;

    move-result-object p1

    const/4 p2, 0x4

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$Sj;->Sj(I)V

    :cond_1
    return-void
.end method

.method public Sj(Lv5/a;Z)V
    .locals 0

    .line 33
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->HpB(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Ljava/lang/String;

    .line 34
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->xhi(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/component/utils/LqL;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Ym(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 35
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->qRN(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/component/utils/LqL;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$5;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public TKC(Lv5/a;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->UHs(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public sP(Lv5/a;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->zR(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->ib(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/component/utils/LqL;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Ym(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->wE(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/component/utils/LqL;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sP(Lv5/a;I)V
    .locals 0

    .line 4
    return-void
.end method
