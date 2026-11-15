.class public Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field final EjP:Z

.field private Fmk:I

.field protected HiB:Z

.field private final Jcg:Landroid/app/Activity;

.field private RiZ:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$Sj;

.field protected Sj:Z

.field private final TEQ:Ljava/lang/String;

.field TKC:Z

.field private TzV:Z

.field private Ym:J

.field private Zq:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private aa:J

.field private final dNu:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

.field sP:Z

.field private sU:Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

.field private sef:Ljava/lang/String;

.field private uA:Landroid/widget/FrameLayout;

.field private uvD:Z

.field vS:Lw5/b;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Sj:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->sP:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->HiB:Z

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Fmk:I

    .line 13
    .line 14
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->dNu:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 15
    .line 16
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Jcg:Landroid/app/Activity;

    .line 19
    .line 20
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 23
    .line 24
    iget-boolean v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->EjP:Z

    .line 25
    .line 26
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->EjP:Z

    .line 27
    .line 28
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HiB:Ljava/lang/String;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->TEQ:Ljava/lang/String;

    .line 31
    .line 32
    new-instance p1, Ljava/util/HashSet;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Zq:Ljava/util/HashSet;

    .line 38
    .line 39
    return-void
.end method

.method private Mts()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lw5/b;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-interface {v0}, Lw5/b;->aa()Lv5/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lw5/b;

    .line 13
    .line 14
    invoke-interface {v0}, Lw5/b;->HiB()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Ym:J

    .line 19
    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lw5/b;

    .line 21
    .line 22
    invoke-interface {v0}, Lw5/b;->aa()Lv5/a;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Lv5/a;->TKC()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lw5/b;

    .line 33
    .line 34
    invoke-interface {v0}, Lw5/b;->aa()Lv5/a;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v0}, Lv5/a;->sP()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lw5/b;

    .line 45
    .line 46
    invoke-interface {v0}, Lw5/b;->Sj()V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lw5/b;

    .line 50
    .line 51
    invoke-interface {v0}, Lw5/b;->TKC()V

    .line 52
    .line 53
    .line 54
    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Sj:Z

    .line 56
    .line 57
    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Fmk:I

    return p0
.end method

.method private Sj(JZ)Z
    .locals 6

    .line 64
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lw5/b;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Gn()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lz5/b;

    move-result-object v0

    invoke-interface {v0}, Lz5/b;->Sj()Ljava/lang/String;

    move-result-object v0

    .line 66
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    move-result-object v2

    invoke-virtual {v2}, La6/b;->G()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-lez v1, :cond_1

    .line 68
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->sP:Z

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/core/aa/Sj/sP;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aZ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sP(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->uA:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Sj(I)V

    .line 72
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->uA:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sP(I)V

    .line 73
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->mZN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->TKC(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0, p1, p2}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Sj(J)V

    .line 75
    invoke-virtual {v0, p3}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Sj(Z)V

    .line 76
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->dNu:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EjP()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->dNu:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->wE:Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->Dq()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 77
    iput v3, v0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->EjP:I

    .line 78
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lw5/b;

    invoke-interface {p1, v0}, Lw5/b;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->dNu:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    return-object p0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->sef:Ljava/lang/String;

    return-object p0
.end method

.method private sP(JJ)V
    .locals 5

    .line 3
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Fmk:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    long-to-int v0, v0

    .line 4
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Fmk:I

    if-ltz v1, :cond_2

    const/16 v2, 0x1f4

    if-gt v0, v2, :cond_2

    int-to-long v3, v1

    cmp-long p3, v3, p3

    if-lez p3, :cond_0

    goto :goto_1

    :cond_0
    if-ge v0, v2, :cond_2

    .line 5
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Zq:Ljava/util/HashSet;

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->sef:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 6
    iget p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Fmk:I

    int-to-long p3, p3

    cmp-long p1, p3, p1

    if-lez p1, :cond_1

    .line 7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/sef;->TKC()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu$1;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;)V

    int-to-long p3, v0

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->ley()V

    .line 9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->dNu:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->wE:Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Fmk:I

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->sef:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->Sj(ILjava/lang/String;)V

    .line 10
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Zq:Ljava/util/HashSet;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->sef:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public Dq()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->aa:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public EjP()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lw5/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lw5/b;->aa()Lv5/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lw5/b;

    .line 12
    .line 13
    invoke-interface {v0}, Lw5/b;->aa()Lv5/a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Lv5/a;->Jcg()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    return v0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    return v0
.end method

.method public Fmk()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lw5/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-interface {v0}, Lw5/b;->TKC()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lw5/b;

    .line 11
    .line 12
    return-void
.end method

.method public HiB()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lw5/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lw5/b;->uvD()Z

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

.method public JcM()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lw5/b;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->FPG()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public Jcg()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lw5/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lw5/b;->HiB()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0

    .line 10
    :cond_0
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Ym:J

    .line 11
    .line 12
    return-wide v0
.end method

.method public LD()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lw5/b;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->JcM()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public LqL()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lw5/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lw5/b;->aa()Lv5/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lw5/b;

    .line 12
    .line 13
    invoke-interface {v0}, Lw5/b;->aa()Lv5/a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Lv5/a;->Sj()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    return v0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    return v0
.end method

.method public RiZ()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lw5/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lw5/b;->Jcg()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public Sj()Lcom/bytedance/sdk/openadsdk/EjP/Jcg;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->sU:Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    return-object v0
.end method

.method public Sj(II)V
    .locals 3

    .line 22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lw5/b;

    if-eqz v0, :cond_0

    .line 23
    new-instance v0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;-><init>()V

    .line 24
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Ym()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->sP(J)V

    .line 25
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->sU()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TKC(J)V

    .line 26
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Jcg()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Sj(J)V

    .line 27
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Sj(I)V

    .line 28
    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->sP(I)V

    .line 29
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lw5/b;

    invoke-interface {p1}, Lw5/b;->Fmk()Lw5/c;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->EjP(Lb6/a;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;)V

    :cond_0
    return-void
.end method

.method public Sj(ILjava/lang/String;)V
    .locals 0

    .line 18
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Fmk:I

    .line 19
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->sef:Ljava/lang/String;

    return-void
.end method

.method public Sj(J)V
    .locals 0

    .line 20
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Ym:J

    return-void
.end method

.method public Sj(JJ)V
    .locals 0

    .line 16
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->aa:J

    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->sP(JJ)V

    return-void
.end method

.method public Sj(Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V
    .locals 3

    .line 3
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->uvD:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->uvD:Z

    .line 5
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->uA:Landroid/widget/FrameLayout;

    .line 6
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->sU:Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    .line 7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Jcg:Landroid/app/Activity;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->uA:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lw5/b;

    .line 9
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->TzV:Z

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->TKC(Z)V

    .line 10
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->RiZ:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$Sj;

    if-eqz p1, :cond_2

    .line 11
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lw5/b;

    check-cast p2, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$Sj;)V

    return-void

    .line 12
    :cond_1
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-direct {p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lw5/b;

    .line 13
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->RiZ:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$Sj;

    if-eqz p2, :cond_2

    .line 14
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$Sj;)V

    :cond_2
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->sU:Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;)V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->dNu:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->TEQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->dNu:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->qRN:Z

    if-eqz v1, :cond_4

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->dNu:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 56
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->dNu:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->vS:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->Fmk(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->dNu:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->wE:Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->EjP()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->dNu:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 57
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->EjP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->dNu:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 58
    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->HiB:Z

    if-eqz v0, :cond_2

    return-void

    .line 59
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->vS()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 60
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->dNu:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HpB:Lcom/bytedance/sdk/component/utils/LqL;

    const/16 v0, 0x12c

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 61
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 62
    iput v0, p1, Landroid/os/Message;->what:I

    .line 63
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->dNu:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HpB:Lcom/bytedance/sdk/component/utils/LqL;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$Sj;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->RiZ:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$Sj;

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;)V
    .locals 2

    const/4 v0, 0x0

    .line 79
    :try_start_0
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->HiB:Z

    .line 80
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Mts()V

    .line 82
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->sP(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->EjP()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Zq()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    .line 85
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onContinue throw Exception :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TTAD.RFVideoPlayerMag"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Sj(Ljava/lang/String;Z)V
    .locals 10

    .line 34
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lw5/b;

    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Jcg()J

    move-result-wide v0

    .line 36
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->WM()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->dNu:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->TKC()J

    move-result-wide v0

    :cond_0
    move-wide v5, v0

    .line 38
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lw5/b;

    .line 39
    invoke-interface {v1}, Lw5/b;->vS()J

    move-result-wide v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lw5/b;

    .line 40
    invoke-interface {v3}, Lw5/b;->aa()Lv5/a;

    move-result-object v3

    .line 41
    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;JLv5/a;)Lorg/json/JSONObject;

    move-result-object v8

    .line 42
    :try_start_0
    const-string v0, "auto_click"

    invoke-virtual {v8, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :catch_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->TEQ:Ljava/lang/String;

    .line 44
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->TzV()I

    move-result v7

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->sU:Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    move-object v4, p1

    .line 45
    invoke-static/range {v2 .. v9}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;JILorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V

    .line 46
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->sU()J

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->TzV()I

    .line 47
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->JcM()V

    return-void
.end method

.method public Sj(Lw5/b$b;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lw5/b;

    if-eqz v0, :cond_0

    .line 31
    invoke-interface {v0, p1}, Lw5/b;->Sj(Lw5/b$b;)V

    :cond_0
    return-void
.end method

.method public Sj(Z)V
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Sj:Z

    return-void
.end method

.method public Sj(ZLcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;Z)V
    .locals 0

    if-eqz p3, :cond_2

    if-nez p1, :cond_2

    .line 86
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->HiB:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->EjP()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Zq()V

    return-void

    .line 89
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Mts()V

    .line 90
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->sP(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public Sj(ZLjava/lang/String;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lw5/b;

    if-eqz v0, :cond_0

    .line 33
    invoke-interface {v0, p1, p2}, Lw5/b;->Sj(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public Sj(JZLjava/util/Map;Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;",
            ")Z"
        }
    .end annotation

    .line 48
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->ib()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->dNu:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->EjP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->dNu:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    .line 50
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->kF()Z

    move-result v0

    if-nez v0, :cond_3

    .line 51
    :cond_2
    invoke-virtual {p0, p5}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;)V

    .line 52
    :cond_3
    :try_start_0
    iget-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->dNu:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-boolean p5, p5, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ndK:Z

    invoke-direct {p0, p1, p2, p5}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Sj(JZ)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 53
    const-string p2, "TTAD.RFVideoPlayerMag"

    const-string p5, "playVideo: "

    invoke-static {p2, p5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-eqz v1, :cond_4

    if-nez p3, :cond_4

    .line 54
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->dNu:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;

    invoke-virtual {p1, p4}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;->Sj(Ljava/util/Map;)V

    :cond_4
    return v1

    :cond_5
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public TEQ()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->sP()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lw5/b;

    .line 8
    .line 9
    invoke-interface {v0}, Lw5/b;->Sj()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    return-void

    .line 16
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, "RewardFullVideoPlayerManager onPause throw Exception :"

    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v1, 0x0

    .line 35
    new-array v1, v1, [Ljava/lang/Object;

    .line 36
    .line 37
    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public TKC()Lb6/a;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lw5/b;

    if-eqz v0, :cond_1

    .line 3
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->TzV()Lb6/a;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    invoke-interface {v0}, Lw5/b;->Fmk()Lw5/c;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public TKC(Z)V
    .locals 1

    .line 6
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->TzV:Z

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lw5/b;

    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    move-result-object p1

    invoke-virtual {p1}, La6/b;->N()I

    move-result p1

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lw5/b;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->sP(I)V

    return-void

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, La6/b;->s(I)V

    .line 11
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lw5/b;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->sP(I)V

    return-void
.end method

.method public TzV()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lw5/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lw5/b;->TEQ()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public WMZ()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lw5/b;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Wjd()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public Yf()D
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Fmk()Lcom/bytedance/sdk/openadsdk/core/model/RiZ;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->EjP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->sP()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    :goto_0
    long-to-double v0, v0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->EjP()J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-virtual {v0}, La6/b;->K()D

    .line 47
    .line 48
    .line 49
    move-result-wide v1

    .line 50
    invoke-virtual {v0}, La6/b;->N()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    int-to-double v3, v0

    .line 55
    mul-double v0, v1, v3

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    const-wide/16 v0, 0x0

    .line 59
    .line 60
    :goto_1
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->dNu:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 61
    .line 62
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->tz:Lcom/bytedance/sdk/openadsdk/component/reward/Ym;

    .line 63
    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    double-to-long v3, v0

    .line 67
    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->Sj(J)V

    .line 68
    .line 69
    .line 70
    :cond_3
    return-wide v0
.end method

.method public Ym()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lw5/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lw5/b;->vS()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0

    .line 10
    :cond_0
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    return-wide v0
.end method

.method public Zq()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lw5/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lw5/b;->sP()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public aa()Lv5/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lw5/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lw5/b;->aa()Lv5/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public dNu()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lw5/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lw5/b;->Dq()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0

    .line 10
    :cond_0
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    return-wide v0
.end method

.method public dx()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lw5/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lw5/b;->Dq()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0

    .line 10
    :cond_0
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    return-wide v0
.end method

.method public fF()Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lw5/b;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Mts()Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/View;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return-object v0
.end method

.method public ib()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lw5/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public kF()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lw5/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lw5/b;->aa()Lv5/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

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

.method public ley()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->sP()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->HiB:Z

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->uvD()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    return-void

    .line 17
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v2, "onPause throw Exception :"

    .line 20
    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "TTAD.RFVideoPlayerMag"

    .line 36
    .line 37
    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method protected sP(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;)V
    .locals 3

    .line 12
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->zR()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->uA()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;->Sj(JZ)Z

    :cond_0
    return-void
.end method

.method public sP(Z)V
    .locals 0

    .line 11
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->TKC:Z

    return-void
.end method

.method public sP()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lw5/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lw5/b;->aa()Lv5/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lw5/b;

    invoke-interface {v0}, Lw5/b;->aa()Lv5/a;

    move-result-object v0

    invoke-interface {v0}, Lv5/a;->vS()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public sU()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lw5/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lw5/b;->Dq()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lw5/b;

    .line 10
    .line 11
    invoke-interface {v2}, Lw5/b;->vS()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    add-long/2addr v0, v2

    .line 16
    return-wide v0

    .line 17
    :cond_0
    const-wide/16 v0, 0x0

    .line 18
    .line 19
    return-wide v0
.end method

.method public sef()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lw5/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lw5/b;->EjP()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public uA()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Ym:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public uP()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->TKC:Z

    .line 2
    .line 3
    return v0
.end method

.method public uvD()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lw5/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lw5/b;->Sj()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public vS()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Sj:Z

    .line 2
    .line 3
    return v0
.end method

.method public wE()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Fmk()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public zR()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lw5/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    invoke-interface {v0}, Lw5/b;->aa()Lv5/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lw5/b;

    .line 14
    .line 15
    invoke-interface {v0}, Lw5/b;->aa()Lv5/a;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Lv5/a;->Jcg()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    invoke-interface {v0}, Lv5/a;->Dq()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_4

    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lw5/b;

    .line 32
    .line 33
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->WMZ()V

    .line 40
    .line 41
    .line 42
    :cond_1
    return v2

    .line 43
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_4

    .line 48
    .line 49
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Sj(Z)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lw5/b;

    .line 53
    .line 54
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    .line 55
    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->WMZ()V

    .line 61
    .line 62
    .line 63
    :cond_3
    return v2

    .line 64
    :cond_4
    return v1
.end method
