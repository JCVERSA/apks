.class public abstract Lcom/bytedance/sdk/openadsdk/kF/sP/sP;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final Dq:Ljava/lang/Integer;

.field private final EjP:Ljava/util/concurrent/atomic/AtomicLong;

.field private final HiB:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final Jcg:I

.field protected Sj:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected final TKC:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field private volatile uA:Z

.field private final vS:Lcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/model/sU;ILcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->Dq:Ljava/lang/Integer;

    .line 5
    .line 6
    iput p4, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->Jcg:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->uA:Z

    .line 14
    .line 15
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->Sj(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 21
    .line 22
    .line 23
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->TKC:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    new-instance p2, Ljava/util/concurrent/atomic/AtomicLong;

    .line 26
    .line 27
    const-wide/16 p3, -0x1

    .line 28
    .line 29
    invoke-direct {p2, p3, p4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 30
    .line 31
    .line 32
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->EjP:Ljava/util/concurrent/atomic/AtomicLong;

    .line 33
    .line 34
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    .line 36
    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 37
    .line 38
    .line 39
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->HiB:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    .line 41
    return-void
.end method

.method public static Sj(ZLjava/lang/Integer;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;)Lcom/bytedance/sdk/openadsdk/kF/sP/sP;
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    new-instance p0, Lcom/bytedance/sdk/openadsdk/kF/sP/Dq;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/kF/sP/Dq;-><init>(Ljava/lang/Integer;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;)V

    return-object p0

    :cond_0
    new-instance p0, Lcom/bytedance/sdk/openadsdk/kF/sP/TKC;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/kF/sP/TKC;-><init>(Ljava/lang/Integer;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;)V

    return-object p0
.end method


# virtual methods
.method public Dq()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->EjP:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    const-wide/16 v1, -0x1

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method protected EjP()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->HiB:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->HiB()Lcom/bytedance/sdk/openadsdk/kF/sP/Sj;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;

    .line 18
    .line 19
    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/kF/sP/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/kF/sP/Sj;Lcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public Fmk()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->TKC:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->Dq()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method protected HiB()Lcom/bytedance/sdk/openadsdk/kF/sP/Sj;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->Sj:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/bytedance/sdk/openadsdk/kF/sP/Sj;

    .line 6
    .line 7
    const/high16 v1, -0x40800000    # -1.0f

    .line 8
    .line 9
    const/4 v2, -0x1

    .line 10
    invoke-direct {v0, v2, v2, v1}, Lcom/bytedance/sdk/openadsdk/kF/sP/Sj;-><init>(IIF)V

    .line 11
    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/view/View;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    new-instance v0, Lcom/bytedance/sdk/openadsdk/kF/sP/Sj;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-direct {v0, v2, v2, v1}, Lcom/bytedance/sdk/openadsdk/kF/sP/Sj;-><init>(IIF)V

    .line 27
    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_1
    new-instance v1, Lcom/bytedance/sdk/openadsdk/kF/sP/Sj;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-direct {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/kF/sP/Sj;-><init>(IIF)V

    .line 45
    .line 46
    .line 47
    return-object v1
.end method

.method public Jcg()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->uA()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->TKC:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->Dq()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->EjP:Ljava/util/concurrent/atomic/AtomicLong;

    .line 21
    .line 22
    const-wide/16 v1, -0x1

    .line 23
    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->EjP:Ljava/util/concurrent/atomic/AtomicLong;

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 42
    .line 43
    .line 44
    move-result-wide v2

    .line 45
    sub-long/2addr v0, v2

    .line 46
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->Jcg:I

    .line 47
    .line 48
    int-to-long v2, v2

    .line 49
    cmp-long v0, v0, v2

    .line 50
    .line 51
    if-ltz v0, :cond_3

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->EjP()V

    .line 54
    .line 55
    .line 56
    :cond_3
    return-void
.end method

.method public Sj()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->TKC:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/kF/sP/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/kF/sP/sP;)V

    :cond_0
    return-void
.end method

.method public Sj(I)V
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->Sj()V

    return-void

    :cond_0
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->Fmk()V

    return-void

    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->EjP()V

    return-void

    .line 7
    :cond_2
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->sP(I)V

    return-void
.end method

.method public Sj(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    const v0, 0x2000001

    .line 8
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->Ym()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->Sj:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public TEQ()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->uA:Z

    .line 3
    .line 4
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/kF/sP/Jcg;->sP(Lcom/bytedance/sdk/openadsdk/kF/sP/sP;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected abstract TKC()Z
.end method

.method public Ym()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->Dq:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public aa()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->TKC:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public sP()I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->uA()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->Sj:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x3

    if-eqz v0, :cond_5

    .line 3
    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->uA:Z

    if-eqz v3, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->Ym()Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x2000001

    invoke-virtual {v0, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->TEQ()V

    .line 6
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->Ym()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/kF/sP/HiB;->sP(Ljava/lang/Integer;)V

    return v2

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->Ym()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->TKC()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x2

    return v0

    :cond_5
    :goto_1
    return v2
.end method

.method protected abstract sP(I)V
.end method

.method public uA()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->HiB:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public abstract vS()I
.end method
