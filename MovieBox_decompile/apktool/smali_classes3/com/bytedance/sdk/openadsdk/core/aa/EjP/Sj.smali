.class public Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;
.super Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$Sj;
    }
.end annotation


# instance fields
.field private Ei:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$Sj;

.field private FPG:J

.field private final Fm:I

.field protected JcM:Z

.field private final Mts:Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

.field final WMZ:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC$sP;

.field private Wjd:J

.field protected fF:J

.field private final jb:Ljava/lang/Runnable;

.field private xD:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1, p3, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Landroid/view/ViewGroup;)V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->FPG:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Wjd:J

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->xD:Z

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->fF:J

    .line 14
    .line 15
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->JcM:Z

    .line 16
    .line 17
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;

    .line 18
    .line 19
    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)V

    .line 20
    .line 21
    .line 22
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->WMZ:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC$sP;

    .line 23
    .line 24
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$3;

    .line 25
    .line 26
    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)V

    .line 27
    .line 28
    .line 29
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->jb:Ljava/lang/Runnable;

    .line 30
    .line 31
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Mts:Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    .line 32
    .line 33
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->If()I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Fm:I

    .line 38
    .line 39
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ph()Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-eqz p2, :cond_1

    .line 44
    .line 45
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    if-eqz p2, :cond_1

    .line 50
    .line 51
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uP:Landroid/view/ViewGroup;

    .line 52
    .line 53
    if-eqz p2, :cond_1

    .line 54
    .line 55
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    .line 56
    .line 57
    if-nez p2, :cond_0

    .line 58
    .line 59
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    .line 64
    .line 65
    :cond_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    .line 66
    .line 67
    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uP:Landroid/view/ViewGroup;

    .line 68
    .line 69
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->sef()Ljava/util/Set;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    invoke-virtual {p2, p4, p3}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->Sj(Landroid/view/View;Ljava/util/Set;)V

    .line 78
    .line 79
    .line 80
    :cond_1
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    new-instance v2, Lcom/bytedance/sdk/openadsdk/sef/sef;

    .line 87
    .line 88
    invoke-direct {v2, p1}, Lcom/bytedance/sdk/openadsdk/sef/sef;-><init>(Landroid/content/Context;)V

    .line 89
    .line 90
    .line 91
    const/16 v4, 0x11

    .line 92
    .line 93
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 94
    .line 95
    const/4 v3, 0x1

    .line 96
    move-object v0, p2

    .line 97
    move-object v6, p0

    .line 98
    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ZILcom/bytedance/sdk/openadsdk/core/model/sU;Lw5/b;)V

    .line 99
    .line 100
    .line 101
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    .line 102
    .line 103
    invoke-virtual {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Sj(Lw5/a;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method static synthetic AVc(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Aw(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uvD:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic Bml(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Chv(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/aa/Sj/sP;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/core/aa/Sj/sP;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic DPc(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Dq(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic EZ(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Ei()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic Ei(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    return-object p0
.end method

.method private Ei()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tY()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->jb()V

    return-void
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V

    return-void
.end method

.method static synthetic FPG(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lw5/b$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->ley:Lw5/b$b;

    return-object p0
.end method

.method static synthetic Fm(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    return-object p0
.end method

.method private Fm()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/core/aa/Sj/sP;

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/sP;->HiB:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Fm:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->uA(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_1
    const/16 v0, 0x1388

    goto :goto_1

    .line 4
    :cond_2
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->xD()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 5
    :goto_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TKC:Lcom/bytedance/sdk/component/utils/LqL;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->jb:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TKC:Lcom/bytedance/sdk/component/utils/LqL;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->jb:Ljava/lang/Runnable;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic Fmk(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic GMp(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Gn(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Grp(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic HS(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic HcZ(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/component/utils/LqL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TKC:Lcom/bytedance/sdk/component/utils/LqL;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic HiB(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/component/utils/LqL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TKC:Lcom/bytedance/sdk/component/utils/LqL;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic HpB(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj:Ljava/lang/String;

    return-object p0
.end method

.method private HpB()Z
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->fF()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP;->Sj(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->ndK()Lcom/bytedance/sdk/openadsdk/core/model/LqL;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xhi()Lcom/bytedance/sdk/openadsdk/core/model/sU$Sj;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :goto_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Mts()Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    if-eqz v3, :cond_3

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->FPG()I

    move-result v0

    if-ne v0, v2, :cond_2

    goto :goto_2

    :cond_2
    return v1

    :cond_3
    :goto_2
    return v2
.end method

.method static synthetic IOh(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Ir(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic JcM(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Wjd:J

    return-wide v0
.end method

.method static synthetic Jcg(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic LD(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic LqL(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/component/utils/LqL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TKC:Lcom/bytedance/sdk/component/utils/LqL;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Mts(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Yf:J

    return-wide v0
.end method

.method static synthetic MuB(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Ov(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Ph(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/aa/Sj/sP;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/core/aa/Sj/sP;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic QZ(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic RiZ(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic RrR(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic SP(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uA:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->FPG:J

    return-wide p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj:Ljava/lang/String;

    return-object p0
.end method

.method private Sj(FF)V
    .locals 4

    .line 67
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Mts()Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uP:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto :goto_1

    .line 68
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 69
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uP:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v3, v0, v2

    div-float v3, p1, v3

    int-to-float v1, v1

    mul-float/2addr v2, v1

    div-float v2, p2, v2

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_1

    div-float p2, v1, p2

    mul-float v0, p1, p2

    goto :goto_0

    :cond_1
    div-float p1, v0, p1

    mul-float v1, p2, p1

    .line 70
    :goto_0
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int p2, v0

    float-to-int v0, v1

    invoke-direct {p1, p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0xd

    .line 71
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 72
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Mts()Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;

    move-result-object p2

    instance-of p2, p2, Landroid/view/TextureView;

    if-eqz p2, :cond_2

    .line 73
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Mts()Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;

    move-result-object p2

    check-cast p2, Landroid/view/TextureView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 74
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Mts()Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;

    move-result-object p2

    instance-of p2, p2, Landroid/view/SurfaceView;

    if-eqz p2, :cond_3

    .line 75
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Mts()Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;

    move-result-object p2

    check-cast p2, Landroid/view/SurfaceView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    return-void

    .line 76
    :goto_2
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj:Ljava/lang/String;

    const-string v0, "changeVideoSizeSupportInteraction error"

    invoke-static {p2, v0, p1}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private Sj(FFFFZ)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-lez v1, :cond_0

    cmpg-float v1, p4, v0

    if-gtz v1, :cond_1

    .line 77
    :cond_0
    :try_start_0
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    move-result-object p3

    invoke-virtual {p3}, La6/b;->t()I

    move-result p3

    int-to-float p3, p3

    .line 78
    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    move-result-object p4

    invoke-virtual {p4}, La6/b;->C()I

    move-result p4

    int-to-float p4, p4

    :cond_1
    cmpg-float v1, p4, v0

    if-lez v1, :cond_8

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_2

    goto/16 :goto_2

    :cond_2
    if-eqz p5, :cond_4

    cmpg-float p2, p3, p4

    if-gez p2, :cond_3

    return-void

    :cond_3
    mul-float/2addr p4, p1

    div-float/2addr p4, p3

    .line 79
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int p1, p1

    float-to-int p3, p4

    invoke-direct {p2, p1, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_4
    cmpl-float p1, p3, p4

    if-lez p1, :cond_5

    return-void

    :cond_5
    mul-float/2addr p3, p2

    div-float/2addr p3, p4

    .line 80
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int p3, p3

    float-to-int p2, p2

    invoke-direct {p1, p3, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object p2, p1

    :goto_0
    const/16 p1, 0xd

    .line 81
    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 82
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Mts()Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 83
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Mts()Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;

    move-result-object p1

    instance-of p1, p1, Landroid/view/TextureView;

    if-eqz p1, :cond_6

    .line 84
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Mts()Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;

    move-result-object p1

    check-cast p1, Landroid/view/TextureView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 85
    :cond_6
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Mts()Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;

    move-result-object p1

    instance-of p1, p1, Landroid/view/SurfaceView;

    if-eqz p1, :cond_7

    .line 86
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Mts()Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uP:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 88
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/bytedance/sdk/component/adexpress/EjP/sP;->Sj(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_8

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uP:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    if-lez p3, :cond_8

    if-eqz p1, :cond_8

    .line 89
    iget p3, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 90
    iget p2, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 91
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uP:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_8
    :goto_2
    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;FF)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->TKC(FF)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;JJ)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj(JJ)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;La6/a;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj(La6/a;)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;Z)Z
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->kF:Z

    return p1
.end method

.method static synthetic TEQ(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic TFd(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    return-object p0
.end method

.method private TKC(FF)V
    .locals 9

    .line 14
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Mts()Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    if-nez v0, :cond_0

    goto :goto_1

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->liH()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v8, v2

    goto :goto_0

    :cond_1
    move v8, v1

    .line 16
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;)[I

    move-result-object v0

    .line 17
    aget v1, v0, v1

    int-to-float v4, v1

    .line 18
    aget v0, v0, v2

    int-to-float v5, v0

    move-object v3, p0

    move v6, p1

    move v7, p2

    .line 19
    invoke-direct/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Sj(FFFFZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;FF)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Sj(FF)V

    return-void
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->sP(Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V

    return-void
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->kF:Z

    return p1
.end method

.method static synthetic TO(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/component/utils/LqL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TKC:Lcom/bytedance/sdk/component/utils/LqL;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic TX(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->sU:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic TzV(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->fF()V

    return-void
.end method

.method static synthetic UHs(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Uc(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic WMZ(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uA:J

    return-wide v0
.end method

.method static synthetic Wjd(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/component/utils/LqL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TKC:Lcom/bytedance/sdk/component/utils/LqL;

    return-object p0
.end method

.method static synthetic WxP(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lw5/b$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->ley:Lw5/b$b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Xqg(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Yf(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Ym(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->jb:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Zq(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/component/utils/LqL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TKC:Lcom/bytedance/sdk/component/utils/LqL;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic aNB(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic aZ(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/component/utils/LqL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TKC:Lcom/bytedance/sdk/component/utils/LqL;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic aa(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/component/utils/LqL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TKC:Lcom/bytedance/sdk/component/utils/LqL;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic cX(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic dLt(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic dNu(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/EjP/Jcg;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Mts:Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic dU(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic db(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic dwU(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic dx(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic eI(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic eMB(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic fF(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lw5/b$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->ley:Lw5/b$b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic gR(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic gY(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic gq(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic hif(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lw5/b$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->ley:Lw5/b$b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic hzV(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Yf()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic ib(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/component/utils/LqL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TKC:Lcom/bytedance/sdk/component/utils/LqL;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic jb(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    return-object p0
.end method

.method private jb()V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TKC:Lcom/bytedance/sdk/component/utils/LqL;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->jb:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->sP()V

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->FPG:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Wjd:J

    .line 6
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->xD:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 7
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->xD:Z

    .line 8
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Yf:J

    invoke-direct {p0, v2, v3, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->sP(JJ)V

    .line 9
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Yf:J

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uA:J

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TEQ:J

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Mts:Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->sP(Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->ley:Lw5/b$b;

    if-eqz v0, :cond_2

    .line 12
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Wjd:J

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uA:J

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Yf:J

    invoke-static {v4, v5, v6, v7}, Le6/a;->a(JJ)I

    move-result v4

    invoke-interface {v0, v2, v3, v4}, Lw5/b$b;->Sj(JI)V

    .line 13
    :cond_2
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->sef:Z

    return-void
.end method

.method static synthetic kF(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    return-object p0
.end method

.method static synthetic kb(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/component/utils/LqL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TKC:Lcom/bytedance/sdk/component/utils/LqL;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic ley(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic liH(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uA:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic mZN(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic mj(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic nP(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic ndK(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic nru(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic oWa(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic pfr(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic qRN(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/component/utils/LqL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TKC:Lcom/bytedance/sdk/component/utils/LqL;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    return-object p0
.end method

.method private sP(FF)V
    .locals 11

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xD()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->HpB()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 26
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;)[I

    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->liH()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 28
    :goto_0
    aget v4, v0, v2

    int-to-float v6, v4

    .line 29
    aget v0, v0, v3

    int-to-float v7, v0

    if-eqz v1, :cond_2

    cmpl-float v0, p1, p2

    if-lez v0, :cond_3

    const/4 v10, 0x1

    move-object v5, p0

    move v8, p1

    move v9, p2

    .line 30
    invoke-direct/range {v5 .. v10}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Sj(FFFFZ)V

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_2
    cmpg-float v0, p1, p2

    if-gez v0, :cond_3

    const/4 v10, 0x0

    move-object v5, p0

    move v8, p1

    move v9, p2

    .line 31
    invoke-direct/range {v5 .. v10}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Sj(FFFFZ)V

    return-void

    :cond_3
    div-float v0, p1, p2

    div-float v4, v6, v7

    const/high16 v5, 0x41800000    # 16.0f

    const/high16 v8, 0x41100000    # 9.0f

    if-eqz v1, :cond_4

    const/high16 v1, 0x3f100000    # 0.5625f

    cmpg-float v4, v4, v1

    if-gez v4, :cond_5

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    mul-float/2addr v8, v7

    div-float p1, v8, v5

    move v2, v3

    move p2, v7

    goto :goto_1

    :cond_4
    const v1, 0x3fe38e39

    cmpl-float v4, v4, v1

    if-lez v4, :cond_5

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    mul-float/2addr v8, v6

    div-float p2, v8, v5

    move v2, v3

    move p1, v6

    :cond_5
    :goto_1
    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    move v6, p1

    move v7, p2

    .line 32
    :goto_2
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int p2, v6

    float-to-int v0, v7

    invoke-direct {p1, p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    .line 33
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 34
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Mts()Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 35
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Mts()Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;

    move-result-object v1

    instance-of v1, v1, Landroid/view/TextureView;

    if-eqz v1, :cond_7

    .line 36
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Mts()Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 37
    :cond_7
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Mts()Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;

    move-result-object v1

    instance-of v1, v1, Landroid/view/SurfaceView;

    if-eqz v1, :cond_8

    .line 38
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Mts()Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uP:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 40
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 41
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 42
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uP:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    return-void

    .line 43
    :goto_4
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj:Ljava/lang/String;

    const-string v0, "changeSize error"

    invoke-static {p2, v0, p1}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private sP(JJ)V
    .locals 9

    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TKC(J)V

    .line 45
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uA:J

    .line 46
    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Yf:J

    .line 47
    invoke-static {p1, p2, p3, p4}, Le6/a;->a(JJ)I

    move-result v7

    .line 48
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TKC:Lcom/bytedance/sdk/component/utils/LqL;

    new-instance v8, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$4;

    move-object v1, v8

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;JJI)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;FF)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->sP(FF)V

    return-void
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;JJ)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->sP(JJ)V

    return-void
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V

    return-void
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;Z)Z
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->kF:Z

    return p1
.end method

.method static synthetic sU(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic sdp(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic sef(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic tPD(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lw5/b$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->ley:Lw5/b$b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic tX(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uA:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic tY(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic tz(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic uA(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$Sj;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Ei:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$Sj;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic uP(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic uvD(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->sU:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic vS(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic vb(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic wE(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/component/utils/LqL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TKC:Lcom/bytedance/sdk/component/utils/LqL;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic xD(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    return-object p0
.end method

.method private xD()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LD()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;->TKC(I)V

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/core/aa/Sj/sP;

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->FPG:J

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->TKC(I)V

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->TKC(I)V

    .line 7
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic xhi(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/component/utils/LqL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TKC:Lcom/bytedance/sdk/component/utils/LqL;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic xu(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Fm()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic xzt(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lw5/b$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->ley:Lw5/b$b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic zR(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic zwV(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public EjP()V
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->TKC()V

    return-void
.end method

.method public FPG()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 3
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->Sj(I)V

    :cond_0
    return-void
.end method

.method public JcM()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->WMZ:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC$sP;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC$sP;->Sj(Lv5/a;II)V

    return-void
.end method

.method public Mts()Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Fmk()Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$Sj;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Ei:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$Sj;

    return-void
.end method

.method public Sj(Lw5/c;Landroid/view/View;)V
    .locals 2

    .line 92
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    if-nez p1, :cond_0

    return-void

    .line 93
    :cond_0
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj()V

    .line 95
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->sP(ZZ)V

    .line 96
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->vS()V

    return-void

    .line 97
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Jcg()Z

    move-result p1

    if-nez p1, :cond_3

    .line 98
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    if-eqz p1, :cond_2

    .line 99
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uP:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->TKC(Landroid/view/ViewGroup;)V

    .line 100
    :cond_2
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uA:J

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->EjP(J)V

    .line 101
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    if-eqz p1, :cond_4

    .line 102
    invoke-virtual {p1, p2, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->sP(ZZ)V

    return-void

    .line 103
    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->sP()V

    .line 104
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    if-eqz p1, :cond_4

    .line 105
    invoke-virtual {p1, p2, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->sP(ZZ)V

    :cond_4
    return-void
.end method

.method protected Sj(ZFF)V
    .locals 3

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xD()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->HpB()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    return-void

    .line 10
    :cond_0
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int v0, p2

    float-to-int v1, p3

    invoke-direct {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    .line 11
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 12
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Mts()Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 13
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Mts()Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;

    move-result-object v0

    instance-of v0, v0, Landroid/view/TextureView;

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Mts()Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    .line 15
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Mts()Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;

    move-result-object v0

    instance-of v0, v0, Landroid/view/SurfaceView;

    if-eqz v0, :cond_2

    .line 16
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Mts()Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uP:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uP:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v1, :cond_5

    .line 19
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uP:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p2

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uP:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    if-eqz v0, :cond_5

    mul-float/2addr p2, v1

    float-to-int p2, p2

    .line 20
    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    mul-float/2addr p3, v1

    float-to-int p2, p3

    .line 21
    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 22
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Mts()Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;

    move-result-object p2

    instance-of p2, p2, Landroid/view/TextureView;

    if-eqz p2, :cond_3

    .line 23
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Mts()Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;

    move-result-object p2

    check-cast p2, Landroid/view/TextureView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 24
    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Mts()Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;

    move-result-object p2

    instance-of p2, p2, Landroid/view/SurfaceView;

    if-eqz p2, :cond_4

    .line 25
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Mts()Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;

    move-result-object p2

    check-cast p2, Landroid/view/SurfaceView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/core/aa/Sj/sP;

    iget p2, p2, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/sP;->HiB:I

    const/4 p3, 0x4

    if-ne p2, p3, :cond_5

    .line 27
    iget p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 28
    iget p1, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 29
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uP:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    return-void

    .line 30
    :goto_2
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj:Ljava/lang/String;

    const-string p3, "changeSize error"

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public Sj(ZI)V
    .locals 0

    .line 66
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->TKC()V

    return-void
.end method

.method public Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Z
    .locals 7
    .param p1    # Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 32
    :cond_0
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Fmk()Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Fmk()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 34
    :cond_1
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->sP(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)V

    const/4 v0, 0x1

    .line 35
    invoke-virtual {p1, v0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->TKC(I)V

    .line 36
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Fmk()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    xor-int/2addr v2, v0

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->JcM:Z

    .line 37
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    if-eqz v2, :cond_7

    .line 38
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/core/aa/Sj/sP;

    iget v2, v2, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/sP;->HiB:I

    if-ne v2, v0, :cond_3

    .line 39
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sP()I

    move-result v2

    if-ltz v2, :cond_2

    .line 40
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sP()I

    move-result v2

    goto :goto_0

    .line 41
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v2

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Fm:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->TEQ(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 42
    :cond_3
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj()I

    move-result v2

    if-ltz v2, :cond_4

    .line 43
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj()I

    move-result v2

    goto :goto_0

    .line 44
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v2

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Fm:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->RiZ(Ljava/lang/String;)I

    move-result v2

    .line 45
    :goto_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uP:Landroid/view/ViewGroup;

    if-eqz v3, :cond_5

    .line 46
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_5

    .line 47
    :try_start_0
    sget v4, Lcom/bytedance/sdk/openadsdk/utils/Zq;->aa:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 48
    sget v5, Lcom/bytedance/sdk/openadsdk/utils/Zq;->IPx:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 49
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    sget-object v6, Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;->OTHER:Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;

    invoke-virtual {v5, v3, v6}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->Sj(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V

    .line 50
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    invoke-virtual {v3, v4, v6}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->Sj(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :catchall_0
    :cond_5
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    if-lez v2, :cond_6

    move v1, v0

    :cond_6
    int-to-float v2, v2

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v2, v4

    invoke-virtual {v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->Sj(ZF)V

    .line 52
    :cond_7
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Yf()V

    .line 53
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Jcg()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_8

    .line 54
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Jcg()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uA:J

    .line 55
    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TEQ:J

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TEQ:J

    .line 56
    :cond_8
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    if-eqz v1, :cond_9

    .line 57
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Sj()V

    .line 58
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Jcg()V

    .line 59
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->HiB()I

    move-result v2

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->vS()I

    move-result p1

    invoke-virtual {v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->TKC(II)V

    .line 60
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uP:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->TKC(Landroid/view/ViewGroup;)V

    .line 61
    :cond_9
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    .line 62
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->WMZ:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC$sP;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;->Sj(Lv5/a$a;)V

    .line 63
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->RiZ()V

    .line 64
    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Wjd:J

    .line 65
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->xD()V

    return v0
.end method

.method public TKC()V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->aa()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    .line 8
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uA()V

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TKC:Lcom/bytedance/sdk/component/utils/LqL;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->jb:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TKC:Lcom/bytedance/sdk/component/utils/LqL;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->EjP()V

    :cond_2
    return-void
.end method

.method protected TzV()V
    .locals 0

    .line 1
    return-void
.end method

.method public WMZ()V
    .locals 3

    .line 2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->xD:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->sU:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->ley()V

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->HiB()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;->TKC(J)V

    :cond_0
    return-void
.end method

.method public Wjd()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    if-eqz v0, :cond_0

    const/16 v1, 0xd

    .line 3
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->Sj(I)V

    :cond_0
    return-void
.end method

.method public kF()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public sP()V
    .locals 5

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Sj()V

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Zq()V

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->TzV()V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Jcg()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 12
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Fmk:Z

    if-eqz v0, :cond_2

    .line 13
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->kF()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->sP(I)V

    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;->dNu()J

    move-result-wide v2

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uvD:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(ZJZ)V

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->dx()V

    goto :goto_0

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LD:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->sP(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 18
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uA:J

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uvD:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(ZJZ)V

    .line 19
    :cond_4
    :goto_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->xD:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->sU:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 20
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->ley()V

    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 22
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 23
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->HiB()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;->TKC(J)V

    :cond_5
    return-void
.end method
