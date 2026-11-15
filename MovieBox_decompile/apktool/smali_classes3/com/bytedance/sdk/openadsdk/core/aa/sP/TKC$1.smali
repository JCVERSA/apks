.class Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lv5/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public EjP(Lv5/a;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->tz(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

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
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->TFd(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)J

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
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->mZN(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

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
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    .line 43
    .line 44
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->HcZ(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->nru(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

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
    return-void
.end method

.method public HiB(Lv5/a;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->eMB(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

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
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->TO(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;->TKC(J)V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->eI(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->QZ(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const/4 v0, 0x1

    .line 47
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->Sj(I)V

    .line 48
    .line 49
    .line 50
    :cond_1
    return-void
.end method

.method public Sj(Lv5/a;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->vS(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/component/utils/LqL;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Jcg(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Dq(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->TEQ(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->uA(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;->EjP(J)V

    :cond_0
    return-void
.end method

.method public Sj(Lv5/a;I)V
    .locals 1

    .line 29
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;Z)Z

    .line 30
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->cX(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/component/utils/LqL;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Ym(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 31
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Uc(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/component/utils/LqL;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$8;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$8;-><init>(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 32
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->xu(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/kF/sP/HiB;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V

    .line 33
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->gR(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 34
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Ir(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->Sj(I)V

    :cond_0
    return-void
.end method

.method public Sj(Lv5/a;II)V
    .locals 0

    .line 23
    invoke-static {}, Lcom/bytedance/sdk/component/utils/uA;->Sj()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$6;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public Sj(Lv5/a;III)V
    .locals 0

    .line 24
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->sP(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;Z)Z

    .line 25
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->gY(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/component/utils/LqL;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$7;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Chv(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/kF/sP/HiB;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V

    .line 27
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Bml(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 28
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->aNB(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->Sj(I)V

    :cond_0
    return-void
.end method

.method public Sj(Lv5/a;J)V
    .locals 0

    .line 4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;Z)Z

    .line 5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->aa(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/component/utils/LqL;

    move-result-object p1

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Ym(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Ljava/lang/Runnable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->dNu(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/component/utils/LqL;

    move-result-object p1

    new-instance p3, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$2;

    invoke-direct {p3, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->TzV(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)V

    .line 8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->RiZ(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/kF/sP/HiB;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V

    .line 9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->sU(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->dx(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->TKC()V

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->zR(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V

    return-void
.end method

.method public Sj(Lv5/a;JJ)V
    .locals 7

    .line 35
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->aZ(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)J

    move-result-wide v0

    sub-long v0, p2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x32

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    return-void

    .line 36
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->zR(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V

    .line 37
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->HS(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/component/utils/LqL;

    move-result-object p1

    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$9;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$9;-><init>(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;JJ)V

    invoke-virtual {p1, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public Sj(Lv5/a;La6/a;)V
    .locals 1

    .line 12
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Yf(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Ljava/lang/String;

    invoke-virtual {p2}, La6/a;->a()I

    invoke-virtual {p2}, La6/a;->d()I

    invoke-virtual {p2}, La6/a;->c()Ljava/lang/String;

    .line 13
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Ei(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/component/utils/LqL;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$4;

    invoke-direct {v0, p0, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;La6/a;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;La6/a;)V

    .line 15
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->HpB(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 17
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    move-result-object p1

    sget-object p2, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj;->HiB:Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj;)V

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->xhi(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object p1

    const/4 p2, 0x6

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/kF/sP/HiB;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V

    .line 19
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->db(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/kF/Sj/TKC;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 20
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->ndK(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 21
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->qRN(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    move-result-object p1

    const/16 p2, 0xe

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->Sj(I)V

    :cond_1
    return-void
.end method

.method public Sj(Lv5/a;Z)V
    .locals 0

    .line 22
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->sdp(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/component/utils/LqL;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$5;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public TKC(Lv5/a;)V
    .locals 0

    .line 1
    return-void
.end method

.method public sP(Lv5/a;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->ib(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/component/utils/LqL;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Ym(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->ley(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/component/utils/LqL;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->LqL(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->zR(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->sP(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V

    :cond_0
    return-void
.end method

.method public sP(Lv5/a;I)V
    .locals 0

    .line 5
    return-void
.end method
