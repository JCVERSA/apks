.class public abstract Lcom/bytedance/adsdk/ugeno/vS/Sj;
.super Landroid/widget/FrameLayout;
.source "source.java"

# interfaces
.implements Lcom/bytedance/adsdk/ugeno/Dq/TKC$EjP;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/adsdk/ugeno/vS/Sj$sP;,
        Lcom/bytedance/adsdk/ugeno/vS/Sj$Sj;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/FrameLayout;",
        "Lcom/bytedance/adsdk/ugeno/Dq/TKC$EjP;"
    }
.end annotation


# instance fields
.field private Dq:Ljava/lang/String;

.field private EjP:I

.field private Fmk:Z

.field private HiB:I

.field private Jcg:I

.field private RiZ:Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;

.field protected Sj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private TEQ:Z

.field private TKC:I

.field private TzV:Landroid/widget/FrameLayout;

.field private Ym:Z

.field private Zq:I

.field private aa:Z

.field private dNu:I

.field private dx:Lcom/bytedance/adsdk/ugeno/vS/TKC;

.field private final ib:Ljava/lang/Runnable;

.field protected sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

.field private sU:Lcom/bytedance/adsdk/ugeno/vS/Sj$Sj;

.field private sef:I

.field private uA:F

.field private uvD:I

.field private vS:I

.field private final zR:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Sj:Ljava/util/List;

    .line 10
    .line 11
    const/16 v0, 0x7d0

    .line 12
    .line 13
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->TKC:I

    .line 14
    .line 15
    const/16 v0, 0x1f4

    .line 16
    .line 17
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->EjP:I

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->HiB:I

    .line 21
    .line 22
    const/4 v1, -0x1

    .line 23
    iput v1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->vS:I

    .line 24
    .line 25
    iput v1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Jcg:I

    .line 26
    .line 27
    const-string v2, "normal"

    .line 28
    .line 29
    iput-object v2, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Dq:Ljava/lang/String;

    .line 30
    .line 31
    const/high16 v2, 0x3f800000    # 1.0f

    .line 32
    .line 33
    iput v2, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->uA:F

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    iput-boolean v2, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->TEQ:Z

    .line 37
    .line 38
    iput-boolean v2, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Ym:Z

    .line 39
    .line 40
    iput-boolean v2, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->aa:Z

    .line 41
    .line 42
    iput-boolean v2, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Fmk:Z

    .line 43
    .line 44
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sef:I

    .line 45
    .line 46
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Zq:I

    .line 47
    .line 48
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->uvD:I

    .line 49
    .line 50
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->dNu:I

    .line 51
    .line 52
    new-instance v0, Lcom/bytedance/adsdk/ugeno/vS/Sj$1;

    .line 53
    .line 54
    invoke-direct {v0, p0}, Lcom/bytedance/adsdk/ugeno/vS/Sj$1;-><init>(Lcom/bytedance/adsdk/ugeno/vS/Sj;)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->zR:Ljava/lang/Runnable;

    .line 58
    .line 59
    new-instance v0, Lcom/bytedance/adsdk/ugeno/vS/Sj$2;

    .line 60
    .line 61
    invoke-direct {v0, p0}, Lcom/bytedance/adsdk/ugeno/vS/Sj$2;-><init>(Lcom/bytedance/adsdk/ugeno/vS/Sj;)V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->ib:Ljava/lang/Runnable;

    .line 65
    .line 66
    new-instance v0, Landroid/widget/FrameLayout;

    .line 67
    .line 68
    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->TzV:Landroid/widget/FrameLayout;

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Sj()Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    .line 78
    .line 79
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 80
    .line 81
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 82
    .line 83
    .line 84
    const/16 v1, 0x11

    .line 85
    .line 86
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 87
    .line 88
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->TzV:Landroid/widget/FrameLayout;

    .line 89
    .line 90
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    .line 91
    .line 92
    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->TzV:Landroid/widget/FrameLayout;

    .line 96
    .line 97
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 98
    .line 99
    .line 100
    new-instance v0, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;

    .line 101
    .line 102
    invoke-direct {v0, p1}, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;-><init>(Landroid/content/Context;)V

    .line 103
    .line 104
    .line 105
    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->RiZ:Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;

    .line 106
    .line 107
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method static synthetic EjP(Lcom/bytedance/adsdk/ugeno/vS/Sj;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->ib:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic HiB(Lcom/bytedance/adsdk/ugeno/vS/Sj;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->TKC:I

    return p0
.end method

.method static synthetic Jcg(Lcom/bytedance/adsdk/ugeno/vS/Sj;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->dNu:I

    return p0
.end method

.method static synthetic Sj(Lcom/bytedance/adsdk/ugeno/vS/Sj;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->aa:Z

    return p0
.end method

.method static synthetic TKC(Lcom/bytedance/adsdk/ugeno/vS/Sj;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Ym:Z

    return p0
.end method

.method static synthetic sP(Lcom/bytedance/adsdk/ugeno/vS/Sj;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->uA:F

    return p0
.end method

.method static synthetic vS(Lcom/bytedance/adsdk/ugeno/vS/Sj;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Fmk:Z

    return p0
.end method


# virtual methods
.method public Dq(I)Lcom/bytedance/adsdk/ugeno/vS/Sj;
    .locals 6

    .line 1
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Jcg:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Dq:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->HiB:I

    .line 6
    .line 7
    iget v3, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->vS:I

    .line 8
    .line 9
    const/4 v5, 0x1

    .line 10
    move-object v0, p0

    .line 11
    move v4, p1

    .line 12
    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Sj(Ljava/lang/String;IIIZ)V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public EjP(I)Lcom/bytedance/adsdk/ugeno/vS/Sj;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->RiZ:Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->setSelectedColor(I)V

    return-object p0
.end method

.method public EjP()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->ib:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public HiB(I)Lcom/bytedance/adsdk/ugeno/vS/Sj;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->RiZ:Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->setUnSelectedColor(I)V

    return-object p0
.end method

.method public Jcg(I)Lcom/bytedance/adsdk/ugeno/vS/Sj;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bytedance/adsdk/ugeno/vS/Sj<",
            "TT;>;"
        }
    .end annotation

    .line 2
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->vS:I

    .line 3
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Dq:Ljava/lang/String;

    iget v2, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->HiB:I

    iget v4, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Jcg:I

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Sj(Ljava/lang/String;IIIZ)V

    return-object p0
.end method

.method public Sj(II)Landroid/view/View;
    .locals 3

    .line 29
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Sj:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 30
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 31
    :cond_0
    invoke-virtual {p0, p2}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->uA(I)Landroid/view/View;

    move-result-object p1

    .line 32
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 33
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 34
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 35
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 37
    :cond_2
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    .line 38
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 39
    invoke-virtual {p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object p2
.end method

.method public Sj()Lcom/bytedance/adsdk/ugeno/Dq/TKC;
    .locals 2

    .line 2
    new-instance v0, Lcom/bytedance/adsdk/ugeno/vS/Sj$sP;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bytedance/adsdk/ugeno/vS/Sj$sP;-><init>(Lcom/bytedance/adsdk/ugeno/vS/Sj;Landroid/content/Context;)V

    return-object v0
.end method

.method public Sj(F)Lcom/bytedance/adsdk/ugeno/vS/Sj;
    .locals 0

    .line 6
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->uA:F

    return-object p0
.end method

.method public Sj(I)Lcom/bytedance/adsdk/ugeno/vS/Sj;
    .locals 0

    .line 3
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->dNu:I

    return-object p0
.end method

.method public Sj(Ljava/lang/Object;)Lcom/bytedance/adsdk/ugeno/vS/Sj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/bytedance/adsdk/ugeno/vS/Sj<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 42
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Sj:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    iget-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->TEQ:Z

    if-eqz p1, :cond_0

    .line 44
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->RiZ:Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->sP()V

    .line 45
    :cond_0
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sU:Lcom/bytedance/adsdk/ugeno/vS/Sj$Sj;

    if-eqz p1, :cond_1

    .line 46
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/Dq/sP;->TKC()V

    .line 47
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->RiZ:Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sef:I

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->getCurrentItem()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->Sj(II)V

    :cond_1
    return-object p0
.end method

.method public Sj(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/vS/Sj;
    .locals 6

    .line 7
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Dq:Ljava/lang/String;

    .line 8
    iget v2, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->HiB:I

    iget v3, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->vS:I

    iget v4, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Jcg:I

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Sj(Ljava/lang/String;IIIZ)V

    return-object p0
.end method

.method public Sj(Z)Lcom/bytedance/adsdk/ugeno/vS/Sj;
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Ym:Z

    .line 5
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->TKC()V

    return-object p0
.end method

.method public Sj(IFI)V
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->dx:Lcom/bytedance/adsdk/ugeno/vS/TKC;

    if-eqz v0, :cond_0

    .line 49
    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->aa:Z

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Sj:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, p1, v2}, Lcom/bytedance/adsdk/ugeno/vS/EjP;->Sj(ZII)I

    move-result p1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/bytedance/adsdk/ugeno/vS/TKC;->Sj(ZIFI)V

    :cond_0
    return-void
.end method

.method public Sj(Ljava/lang/String;IIIZ)V
    .locals 3

    .line 9
    iget-object p5, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sU:Lcom/bytedance/adsdk/ugeno/vS/Sj$Sj;

    if-eqz p5, :cond_0

    .line 10
    invoke-virtual {p5}, Lcom/bytedance/adsdk/ugeno/Dq/sP;->TKC()V

    .line 11
    :cond_0
    iget-object p5, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    invoke-virtual {p5, p2}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->setPageMargin(I)V

    .line 12
    iget-object p5, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    .line 13
    instance-of v0, p5, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 14
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->dNu:I

    if-ne v0, v1, :cond_1

    .line 15
    move-object v0, p5

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    add-int v2, p3, p2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p2, p4

    .line 16
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 17
    :cond_1
    move-object v0, p5

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    add-int v2, p3, p2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p2, p4

    .line 18
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 19
    :goto_0
    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    invoke-virtual {p2, p5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    const/4 p2, 0x0

    if-gtz p3, :cond_3

    if-lez p4, :cond_4

    .line 20
    :cond_3
    iget-object p3, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->TzV:Landroid/widget/FrameLayout;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 21
    iget-object p3, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 22
    :cond_4
    iget p3, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->dNu:I

    if-ne p3, v1, :cond_5

    .line 23
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    new-instance p2, Lcom/bytedance/adsdk/ugeno/vS/sP/sP;

    invoke-direct {p2}, Lcom/bytedance/adsdk/ugeno/vS/sP/sP;-><init>()V

    invoke-virtual {p1, v1, p2}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(ZLcom/bytedance/adsdk/ugeno/Dq/TKC$HiB;)V

    .line 24
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/view/View;->setOverScrollMode(I)V

    goto :goto_1

    .line 25
    :cond_5
    const-string p3, "linear"

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 26
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    new-instance p3, Lcom/bytedance/adsdk/ugeno/vS/sP/Sj;

    invoke-direct {p3}, Lcom/bytedance/adsdk/ugeno/vS/sP/Sj;-><init>()V

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(ZLcom/bytedance/adsdk/ugeno/Dq/TKC$HiB;)V

    goto :goto_1

    .line 27
    :cond_6
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(ZLcom/bytedance/adsdk/ugeno/Dq/TKC$HiB;)V

    .line 28
    :goto_1
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    iget p2, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->uA:F

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->setOffscreenPageLimit(I)V

    return-void
.end method

.method public TEQ(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->dx:Lcom/bytedance/adsdk/ugeno/vS/TKC;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->aa:Z

    .line 6
    .line 7
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Sj:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v0, p1, v1}, Lcom/bytedance/adsdk/ugeno/vS/EjP;->Sj(ZII)I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->dx:Lcom/bytedance/adsdk/ugeno/vS/TKC;

    .line 18
    .line 19
    iget-boolean v3, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->aa:Z

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    const/4 v1, 0x1

    .line 23
    if-nez v4, :cond_0

    .line 24
    .line 25
    move v6, v1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v6, v0

    .line 28
    :goto_0
    iget-object v5, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Sj:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    sub-int/2addr v5, v1

    .line 35
    if-ne v4, v5, :cond_1

    .line 36
    .line 37
    move v7, v1

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move v7, v0

    .line 40
    :goto_1
    move v5, p1

    .line 41
    invoke-interface/range {v2 .. v7}, Lcom/bytedance/adsdk/ugeno/vS/TKC;->Sj(ZIIZZ)V

    .line 42
    .line 43
    .line 44
    :cond_2
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->TEQ:Z

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->RiZ:Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->Sj(I)V

    .line 51
    .line 52
    .line 53
    :cond_3
    return-void
.end method

.method public TKC(I)Lcom/bytedance/adsdk/ugeno/vS/Sj;
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->TKC:I

    .line 3
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->TKC()V

    return-object p0
.end method

.method public TKC(Z)Lcom/bytedance/adsdk/ugeno/vS/Sj;
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->RiZ:Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->setLoop(Z)V

    .line 5
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->aa:Z

    if-eq v0, p1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Sj:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/bytedance/adsdk/ugeno/vS/EjP;->Sj(ZII)I

    move-result v0

    .line 7
    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->aa:Z

    .line 8
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sU:Lcom/bytedance/adsdk/ugeno/vS/Sj$Sj;

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/Dq/sP;->TKC()V

    .line 10
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->setCurrentItem(I)V

    :cond_0
    return-object p0
.end method

.method public TKC()V
    .locals 3

    .line 11
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->ib:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 12
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->ib:Ljava/lang/Runnable;

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->TKC:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public Ym(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->dx:Lcom/bytedance/adsdk/ugeno/vS/TKC;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->aa:Z

    .line 6
    .line 7
    invoke-interface {v0, v1, p1}, Lcom/bytedance/adsdk/ugeno/vS/TKC;->Sj(ZI)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public aa(I)V
    .locals 6

    .line 1
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Dq:Ljava/lang/String;

    .line 2
    .line 3
    iget v2, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->HiB:I

    .line 4
    .line 5
    iget v3, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->vS:I

    .line 6
    .line 7
    iget v4, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Jcg:I

    .line 8
    .line 9
    const/4 v5, 0x1

    .line 10
    move-object v0, p0

    .line 11
    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Sj(Ljava/lang/String;IIIZ)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sU:Lcom/bytedance/adsdk/ugeno/vS/Sj$Sj;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Lcom/bytedance/adsdk/ugeno/vS/Sj$Sj;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/bytedance/adsdk/ugeno/vS/Sj$Sj;-><init>(Lcom/bytedance/adsdk/ugeno/vS/Sj;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sU:Lcom/bytedance/adsdk/ugeno/vS/Sj$Sj;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(Lcom/bytedance/adsdk/ugeno/Dq/TKC$EjP;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sU:Lcom/bytedance/adsdk/ugeno/vS/Sj$Sj;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->setAdapter(Lcom/bytedance/adsdk/ugeno/Dq/sP;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->aa:Z

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    const/16 v0, 0x400

    .line 43
    .line 44
    if-lt p1, v0, :cond_1

    .line 45
    .line 46
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    .line 47
    .line 48
    const/16 v0, 0x200

    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    invoke-virtual {p1, v0, v1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(IZ)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    .line 56
    .line 57
    invoke-virtual {v0, p1, v1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(IZ)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_2
    if-ltz p1, :cond_4

    .line 62
    .line 63
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Sj:Ljava/util/List;

    .line 64
    .line 65
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-lt p1, v0, :cond_3

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    .line 73
    .line 74
    invoke-virtual {v0, p1, v1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(IZ)V

    .line 75
    .line 76
    .line 77
    :cond_4
    :goto_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Ym:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x3

    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x4

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    if-nez v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->EjP()V

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->TKC()V

    .line 26
    .line 27
    .line 28
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    return p1
.end method

.method public getAdapter()Lcom/bytedance/adsdk/ugeno/Dq/sP;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->getAdapter()Lcom/bytedance/adsdk/ugeno/Dq/sP;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getCurrentItem()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->getCurrentItem()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getViewPager()Lcom/bytedance/adsdk/ugeno/Dq/TKC;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    .line 2
    .line 3
    return-object v0
.end method

.method public sP(I)Lcom/bytedance/adsdk/ugeno/vS/Sj;
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->EjP:I

    return-object p0
.end method

.method public sP(Z)Lcom/bytedance/adsdk/ugeno/vS/Sj;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->TEQ:Z

    return-object p0
.end method

.method public sP()V
    .locals 6

    .line 4
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Dq:Ljava/lang/String;

    iget v2, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->HiB:I

    iget v3, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->vS:I

    iget v4, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Jcg:I

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Sj(Ljava/lang/String;IIIZ)V

    .line 5
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sU:Lcom/bytedance/adsdk/ugeno/vS/Sj$Sj;

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Lcom/bytedance/adsdk/ugeno/vS/Sj$Sj;

    invoke-direct {v0, p0}, Lcom/bytedance/adsdk/ugeno/vS/Sj$Sj;-><init>(Lcom/bytedance/adsdk/ugeno/vS/Sj;)V

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sU:Lcom/bytedance/adsdk/ugeno/vS/Sj$Sj;

    .line 7
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    invoke-virtual {v0, p0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(Lcom/bytedance/adsdk/ugeno/Dq/TKC$EjP;)V

    .line 8
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sU:Lcom/bytedance/adsdk/ugeno/vS/Sj$Sj;

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->setAdapter(Lcom/bytedance/adsdk/ugeno/Dq/sP;)V

    .line 9
    :cond_0
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sef:I

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Sj:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sef:I

    .line 11
    :cond_2
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->aa:Z

    if-eqz v0, :cond_3

    .line 12
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sef:I

    add-int/lit16 v0, v0, 0x200

    goto :goto_0

    .line 13
    :cond_3
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sef:I

    .line 14
    :goto_0
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(IZ)V

    .line 15
    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->aa:Z

    if-nez v1, :cond_4

    .line 16
    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->TEQ(I)V

    .line 17
    :cond_4
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Ym:Z

    if-eqz v0, :cond_5

    .line 18
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->TKC()V

    :cond_5
    return-void
.end method

.method public setOnPageChangeListener(Lcom/bytedance/adsdk/ugeno/vS/TKC;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->dx:Lcom/bytedance/adsdk/ugeno/vS/TKC;

    .line 2
    .line 3
    return-void
.end method

.method public abstract uA(I)Landroid/view/View;
.end method

.method public vS(I)Lcom/bytedance/adsdk/ugeno/vS/Sj;
    .locals 6

    .line 2
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->HiB:I

    .line 3
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Dq:Ljava/lang/String;

    iget v3, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->vS:I

    iget v4, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Jcg:I

    const/4 v5, 0x1

    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Sj(Ljava/lang/String;IIIZ)V

    return-object p0
.end method
