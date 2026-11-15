.class public abstract Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lw5/b;
.implements Lcom/bytedance/sdk/component/utils/LqL$Sj;
.implements Lcom/bytedance/sdk/openadsdk/core/aa/sP/Sj;


# instance fields
.field protected final Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected EjP:Landroid/view/SurfaceHolder;

.field private final FPG:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected Fmk:Z

.field protected HiB:Landroid/graphics/SurfaceTexture;

.field private JcM:J

.field protected Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

.field protected LD:Ljava/lang/Runnable;

.field protected LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

.field private Mts:I

.field protected RiZ:Z

.field protected Sj:Ljava/lang/String;

.field protected TEQ:J

.field protected final TKC:Lcom/bytedance/sdk/component/utils/LqL;

.field protected TzV:Z

.field private WMZ:Z

.field protected Yf:J

.field protected final Ym:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected Zq:Z

.field protected final aa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected dNu:Z

.field protected dx:Z

.field private fF:J

.field protected ib:Lcom/bytedance/sdk/openadsdk/core/aa/Sj/sP;

.field protected kF:Z

.field protected ley:Lw5/b$b;

.field protected final sP:I

.field protected sU:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected sef:Z

.field protected uA:J

.field protected final uP:Landroid/view/ViewGroup;

.field protected uvD:Z

.field protected vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

.field protected wE:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lw5/b$d;",
            ">;"
        }
    .end annotation
.end field

.field protected zR:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Landroid/view/ViewGroup;)V
    .locals 5
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/model/sU;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "TTAD.VideoController"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj:Ljava/lang/String;

    .line 7
    .line 8
    const/16 v0, 0x64

    .line 9
    .line 10
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->sP:I

    .line 11
    .line 12
    new-instance v0, Lcom/bytedance/sdk/component/utils/LqL;

    .line 13
    .line 14
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/component/utils/LqL;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/component/utils/LqL$Sj;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TKC:Lcom/bytedance/sdk/component/utils/LqL;

    .line 22
    .line 23
    const-wide/16 v0, 0x0

    .line 24
    .line 25
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uA:J

    .line 26
    .line 27
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TEQ:J

    .line 28
    .line 29
    new-instance v2, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->aa:Ljava/util/List;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Fmk:Z

    .line 38
    .line 39
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->sef:Z

    .line 40
    .line 41
    const/4 v3, 0x1

    .line 42
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Zq:Z

    .line 43
    .line 44
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->dNu:Z

    .line 45
    .line 46
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TzV:Z

    .line 47
    .line 48
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->RiZ:Z

    .line 49
    .line 50
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    .line 52
    invoke-direct {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 53
    .line 54
    .line 55
    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->sU:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    .line 57
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->zR:Z

    .line 58
    .line 59
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj$1;

    .line 60
    .line 61
    invoke-direct {v4, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;)V

    .line 62
    .line 63
    .line 64
    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LD:Ljava/lang/Runnable;

    .line 65
    .line 66
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->JcM:J

    .line 67
    .line 68
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->WMZ:Z

    .line 69
    .line 70
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Mts:I

    .line 71
    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    .line 74
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 75
    .line 76
    .line 77
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->FPG:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 78
    .line 79
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 80
    .line 81
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Ym:Landroid/content/Context;

    .line 82
    .line 83
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uP:Landroid/view/ViewGroup;

    .line 84
    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj:Ljava/lang/String;

    .line 107
    .line 108
    return-void
.end method

.method private JcM()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->EjP(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    .line 10
    .line 11
    invoke-virtual {v0, v1, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Sj(ZZ)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->TKC(Z)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->HiB()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Jcg()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method private Sj(JZ)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 55
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->JcM()V

    .line 56
    :cond_1
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    invoke-virtual {p3, p1, p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(J)V

    return-void
.end method

.method private TKC(I)Z
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->sP(I)Z

    move-result p1

    return p1
.end method

.method private TzV()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Fmk()Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    instance-of v0, v0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/EjP;

    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0
.end method


# virtual methods
.method public final Dq()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;->uvD()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    return-wide v0
.end method

.method public abstract synthetic EjP()V
.end method

.method public final EjP(J)V
    .locals 3

    .line 8
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uA:J

    .line 9
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TEQ:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TEQ:J

    .line 10
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Sj()V

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    if-eqz p1, :cond_1

    .line 13
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uA:J

    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uvD:Z

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1, p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(ZJZ)V

    :cond_1
    return-void
.end method

.method public final EjP(Lw5/c;Landroid/view/View;)V
    .locals 1

    .line 2
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->RiZ:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->HiB(Z)V

    .line 4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    if-eqz p1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uP:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->sP(Landroid/view/ViewGroup;)V

    .line 6
    :cond_0
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj(I)V

    return-void

    :cond_1
    const/4 p1, 0x3

    .line 7
    invoke-virtual {p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj(ZI)V

    return-void
.end method

.method public EjP(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->zR:Z

    return-void
.end method

.method public synthetic Fmk()Lw5/c;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->zR()Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public HiB()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uA:J

    return-wide v0
.end method

.method public final HiB(Lw5/c;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj(Lw5/c;Landroid/view/View;Z)V

    return-void
.end method

.method protected HiB(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->RiZ:Z

    return-void
.end method

.method public final Jcg()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Zq()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public LD()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Mts:I

    .line 2
    .line 3
    return v0
.end method

.method protected final LqL()V
    .locals 5

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->HiB()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Sj(J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LD()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    int-to-long v3, v3

    .line 22
    div-long/2addr v1, v3

    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TKC(J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS()J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->sP(J)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    .line 34
    .line 35
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lb6/a;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method protected RiZ()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TzV()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->HiB:Landroid/graphics/SurfaceTexture;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->RiZ()Landroid/graphics/SurfaceTexture;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eq v0, v1, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->HiB:Landroid/graphics/SurfaceTexture;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(Landroid/graphics/SurfaceTexture;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->EjP:Landroid/view/SurfaceHolder;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->TzV()Landroid/view/SurfaceHolder;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-eq v0, v1, :cond_2

    .line 43
    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->EjP:Landroid/view/SurfaceHolder;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(Landroid/view/SurfaceHolder;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    return-void
.end method

.method public final Sj()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym()V

    .line 80
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->dx:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->sU:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL()V

    :cond_1
    return-void
.end method

.method public final Sj(I)V
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Ym:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 32
    :goto_1
    instance-of v2, v0, Landroid/app/Activity;

    if-nez v2, :cond_3

    return-void

    .line 33
    :cond_3
    check-cast v0, Landroid/app/Activity;

    .line 34
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/16 p1, 0x400

    if-nez v1, :cond_4

    .line 35
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p1}, Landroid/view/Window;->setFlags(II)V

    return-void

    .line 36
    :cond_4
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method public Sj(J)V
    .locals 2

    .line 2
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uA:J

    .line 3
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TEQ:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TEQ:J

    return-void
.end method

.method protected Sj(JJ)V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->FPG:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 83
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/vS/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/vS/Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/vS/Sj;->TKC()Z

    move-result v0

    if-eqz v0, :cond_1

    long-to-double p1, p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    mul-double/2addr p1, v0

    long-to-double p3, p3

    div-double/2addr p1, p3

    const-wide p3, 0x3fd3333333333333L    # 0.3

    cmpl-double p1, p1, p3

    if-lez p1, :cond_1

    .line 84
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->FPG:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 85
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz p1, :cond_1

    .line 86
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/vS/sP;->Sj()Lcom/bytedance/sdk/openadsdk/vS/sP;

    move-result-object p1

    const-string p2, "videoPercent30"

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/vS/sP;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    :cond_1
    return-void
.end method

.method protected final Sj(La6/a;)V
    .locals 5

    .line 64
    new-instance v0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;-><init>()V

    .line 65
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->sP(J)V

    .line 66
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LD()I

    move-result v3

    int-to-long v3, v3

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TKC(J)V

    .line 67
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->HiB()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Sj(J)V

    .line 68
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Sj(La6/a;)V

    .line 69
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->zR()Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->TKC(Lb6/a;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;)V

    return-void
.end method

.method public Sj(Landroid/os/Message;)V
    .locals 0

    .line 1
    return-void
.end method

.method protected final Sj(Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V
    .locals 4

    .line 57
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->sU:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->sef()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->Sj(JZ)V

    .line 60
    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;-><init>()V

    .line 61
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->kF()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Sj(Z)V

    .line 62
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TKC(J)V

    .line 63
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    invoke-static {v1, v2, v0, p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Landroid/content/Context;Lb6/a;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V

    return-void
.end method

.method public final Sj(Lcom/bytedance/sdk/openadsdk/core/widget/TzV$Sj;Ljava/lang/String;)V
    .locals 1

    .line 71
    sget-object p2, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj$4;->Sj:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->sP()V

    const/4 p1, 0x0

    .line 73
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->dNu:Z

    .line 74
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TzV:Z

    :goto_0
    return-void

    .line 75
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TKC()V

    return-void

    .line 76
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj()V

    return-void
.end method

.method protected Sj(Ljava/lang/Runnable;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->zR()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Fmk:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->sP(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Sj(Lw5/b$a;)V
    .locals 0

    .line 77
    return-void
.end method

.method public final Sj(Lw5/b$b;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->ley:Lw5/b$b;

    return-void
.end method

.method public final Sj(Lw5/b$d;)V
    .locals 1

    .line 29
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->wE:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final Sj(Lw5/c;I)V
    .locals 2

    .line 52
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    if-nez p1, :cond_0

    return-void

    .line 53
    :cond_0
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->fF:J

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TKC(I)Z

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj(JZ)V

    return-void
.end method

.method public final Sj(Lw5/c;IZ)V
    .locals 4

    .line 46
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Ym:Landroid/content/Context;

    if-nez p1, :cond_0

    return-void

    :cond_0
    int-to-long p1, p2

    .line 47
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Yf:J

    mul-long/2addr p1, v0

    long-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    float-to-long p1, p1

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-lez p3, :cond_1

    long-to-int p1, p1

    int-to-long p1, p1

    .line 48
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->fF:J

    goto :goto_0

    .line 49
    :cond_1
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->fF:J

    .line 50
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    if-eqz p1, :cond_2

    .line 51
    iget-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->fF:J

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Sj(J)V

    :cond_2
    return-void
.end method

.method public Sj(Lw5/c;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Fmk:Z

    .line 13
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->HiB:Landroid/graphics/SurfaceTexture;

    .line 14
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    if-eqz p1, :cond_0

    .line 15
    invoke-virtual {p1, p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(Landroid/graphics/SurfaceTexture;)V

    .line 16
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Fmk:Z

    invoke-virtual {p1, p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(Z)V

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->sU()V

    return-void
.end method

.method public Sj(Lw5/c;Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Fmk:Z

    .line 8
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->EjP:Landroid/view/SurfaceHolder;

    .line 9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    if-nez p1, :cond_0

    return-void

    .line 10
    :cond_0
    invoke-virtual {p1, p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(Landroid/view/SurfaceHolder;)V

    .line 11
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->sU()V

    return-void
.end method

.method public abstract synthetic Sj(Lw5/c;Landroid/view/View;)V
.end method

.method public Sj(Lw5/c;Landroid/view/View;Z)V
    .locals 0

    .line 30
    return-void
.end method

.method public final Sj(Lw5/c;Landroid/view/View;ZZ)V
    .locals 1

    .line 37
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Zq:Z

    if-eqz p1, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj()V

    :cond_0
    if-eqz p3, :cond_1

    .line 39
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Zq:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uP()Z

    move-result p1

    if-nez p1, :cond_1

    .line 40
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->wE()Z

    move-result p2

    const/4 p3, 0x1

    xor-int/2addr p2, p3

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->sP(ZZ)V

    .line 41
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    invoke-virtual {p1, p4, p3, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Sj(ZZZ)V

    .line 42
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 43
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->vS()V

    .line 44
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->HiB()V

    return-void

    .line 45
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->vS()V

    return-void
.end method

.method public Sj(Z)V
    .locals 1

    .line 18
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Zq:Z

    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->EjP(Z)V

    :cond_0
    return-void
.end method

.method public abstract synthetic Sj(ZI)V
.end method

.method public final Sj(ZLjava/lang/String;)V
    .locals 1

    .line 21
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uvD:Z

    .line 22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->sP(Z)V

    .line 24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lb6/a;ZLjava/lang/String;)V

    .line 25
    :cond_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    if-eqz p2, :cond_2

    .line 26
    invoke-static {}, Lh6/a;->x()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 27
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->Sj(Z)V

    return-void

    .line 28
    :cond_1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TKC:Lcom/bytedance/sdk/component/utils/LqL;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj$3;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;Z)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public abstract synthetic Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Z
.end method

.method public final TEQ()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TEQ:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Yf:J

    .line 4
    .line 5
    invoke-static {v0, v1, v2, v3}, Le6/a;->a(JJ)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public abstract synthetic TKC()V
.end method

.method public TKC(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Yf:J

    return-void
.end method

.method public final TKC(Lw5/c;Landroid/view/View;)V
    .locals 0

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uA()V

    :cond_0
    const/4 p1, 0x1

    const/4 p2, 0x3

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj(ZI)V

    return-void
.end method

.method public final TKC(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->WMZ:Z

    return-void
.end method

.method protected final Yf()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/core/aa/Sj/sP;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lb6/a;Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public Ym()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->dNu:Z

    .line 2
    .line 3
    return v0
.end method

.method public Zq()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->sef:Z

    .line 2
    .line 3
    return v0
.end method

.method public aa()Lv5/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    .line 2
    .line 3
    return-object v0
.end method

.method public dNu()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method protected dx()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TKC:Lcom/bytedance/sdk/component/utils/LqL;

    .line 2
    .line 3
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj$2;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected final fF()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Uc()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/kF/Sj;->Sj(Ljava/util/List;ZLcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aZ()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x5

    .line 21
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/EjP;->Sj(Ljava/util/List;ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public ib()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Zq:Z

    .line 2
    .line 3
    return v0
.end method

.method public kF()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->WMZ:Z

    .line 2
    .line 3
    return v0
.end method

.method protected final ley()V
    .locals 5

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->HiB()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Sj(J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LD()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    int-to-long v3, v3

    .line 22
    div-long/2addr v1, v3

    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TKC(J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS()J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->sP(J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->zR()Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->sP(Lb6/a;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public abstract synthetic sP()V
.end method

.method public sP(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Mts:I

    return-void
.end method

.method public sP(J)V
    .locals 0

    .line 11
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->JcM:J

    return-void
.end method

.method public sP(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)V
    .locals 1

    .line 13
    move-object v0, p1

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/sP;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/core/aa/Sj/sP;

    .line 14
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Dq()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uvD:Z

    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->If()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->EjP(Ljava/lang/String;)V

    return-void
.end method

.method protected final sP(Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V
    .locals 5

    .line 33
    new-instance v0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;-><init>()V

    .line 34
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->HiB()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Sj(J)V

    .line 35
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LD()I

    move-result v3

    int-to-long v3, v3

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TKC(J)V

    .line 36
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->sP(J)V

    .line 37
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->EjP(I)V

    .line 38
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    invoke-static {v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->sP(Lb6/a;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V

    return-void
.end method

.method protected sP(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->aa:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final sP(Lw5/c;I)V
    .locals 0

    .line 31
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    if-eqz p1, :cond_0

    .line 32
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->vS()V

    :cond_0
    return-void
.end method

.method public sP(Lw5/c;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Fmk:Z

    .line 7
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    if-eqz p2, :cond_0

    .line 8
    invoke-virtual {p2, p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(Z)V

    :cond_0
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->HiB:Landroid/graphics/SurfaceTexture;

    .line 10
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->sU()V

    return-void
.end method

.method public sP(Lw5/c;Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Fmk:Z

    const/4 p2, 0x0

    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->EjP:Landroid/view/SurfaceHolder;

    .line 4
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p2, p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(Z)V

    :cond_0
    return-void
.end method

.method public final sP(Lw5/c;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->sP(Lw5/c;Landroid/view/View;ZZ)V

    return-void
.end method

.method public final sP(Lw5/c;Landroid/view/View;ZZ)V
    .locals 0

    .line 17
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->RiZ:Z

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->HiB(Z)V

    .line 18
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Ym:Landroid/content/Context;

    if-nez p1, :cond_0

    return-void

    .line 19
    :cond_0
    instance-of p1, p1, Landroid/app/Activity;

    if-nez p1, :cond_1

    return-void

    .line 20
    :cond_1
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->RiZ:Z

    const/4 p4, 0x0

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    const/16 p1, 0x8

    goto :goto_0

    :cond_2
    move p1, p4

    .line 21
    :goto_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj(I)V

    .line 22
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    if-eqz p1, :cond_4

    .line 23
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uP:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Sj(Landroid/view/ViewGroup;)V

    .line 24
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    invoke-virtual {p1, p4}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->TKC(Z)V

    goto :goto_1

    .line 25
    :cond_3
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj(I)V

    .line 26
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    if-eqz p1, :cond_4

    .line 27
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uP:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->sP(Landroid/view/ViewGroup;)V

    .line 28
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    invoke-virtual {p1, p4}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->TKC(Z)V

    .line 29
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->wE:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw5/b$d;

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_6

    .line 30
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->RiZ:Z

    invoke-interface {p1, p2}, Lw5/b$d;->Sj(Z)V

    :cond_6
    return-void
.end method

.method public final sP(Z)V
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->sef:Z

    return-void
.end method

.method protected sU()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->aa:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->aa:Ljava/util/List;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/Runnable;

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->aa:Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public sef()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uvD:Z

    .line 2
    .line 3
    return v0
.end method

.method public final uA()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->HiB()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    add-long/2addr v0, v2

    .line 10
    return-wide v0
.end method

.method public final uP()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->sP()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    return v0
.end method

.method public final uvD()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->kF:Z

    .line 2
    .line 3
    return v0
.end method

.method public final vS()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->sef()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    return-wide v0
.end method

.method public final wE()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public final zR()Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    .line 2
    .line 3
    return-object v0
.end method
