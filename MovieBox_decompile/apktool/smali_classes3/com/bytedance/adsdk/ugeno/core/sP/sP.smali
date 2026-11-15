.class public Lcom/bytedance/adsdk/ugeno/core/sP/sP;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private EjP:Landroid/content/Context;

.field private HiB:Z

.field private Sj:F

.field private TKC:Lcom/bytedance/adsdk/ugeno/core/TEQ;

.field private sP:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/adsdk/ugeno/core/TEQ;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/sP/sP;->EjP:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/core/sP/sP;->TKC:Lcom/bytedance/adsdk/ugeno/core/TEQ;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public Sj(Lcom/bytedance/adsdk/ugeno/core/aa;Lcom/bytedance/adsdk/ugeno/sP/TKC;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_7

    .line 7
    .line 8
    const/high16 v2, 0x41700000    # 15.0f

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-eq v0, v1, :cond_3

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    if-eq v0, p1, :cond_1

    .line 15
    .line 16
    const/4 p1, 0x3

    .line 17
    if-eq v0, p1, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iput-boolean v3, p0, Lcom/bytedance/adsdk/ugeno/core/sP/sP;->HiB:Z

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    iget p3, p0, Lcom/bytedance/adsdk/ugeno/core/sP/sP;->Sj:F

    .line 32
    .line 33
    sub-float/2addr p1, p3

    .line 34
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    cmpl-float p1, p1, v2

    .line 39
    .line 40
    if-gez p1, :cond_2

    .line 41
    .line 42
    iget p1, p0, Lcom/bytedance/adsdk/ugeno/core/sP/sP;->sP:F

    .line 43
    .line 44
    sub-float/2addr p2, p1

    .line 45
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    cmpl-float p1, p1, v2

    .line 50
    .line 51
    if-ltz p1, :cond_8

    .line 52
    .line 53
    :cond_2
    iput-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/core/sP/sP;->HiB:Z

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/core/sP/sP;->HiB:Z

    .line 57
    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    iput-boolean v3, p0, Lcom/bytedance/adsdk/ugeno/core/sP/sP;->HiB:Z

    .line 61
    .line 62
    return v3

    .line 63
    :cond_4
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    .line 68
    .line 69
    .line 70
    move-result p3

    .line 71
    iget v4, p0, Lcom/bytedance/adsdk/ugeno/core/sP/sP;->Sj:F

    .line 72
    .line 73
    sub-float/2addr v0, v4

    .line 74
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    cmpl-float v0, v0, v2

    .line 79
    .line 80
    if-gez v0, :cond_6

    .line 81
    .line 82
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/core/sP/sP;->sP:F

    .line 83
    .line 84
    sub-float/2addr p3, v0

    .line 85
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 86
    .line 87
    .line 88
    move-result p3

    .line 89
    cmpl-float p3, p3, v2

    .line 90
    .line 91
    if-ltz p3, :cond_5

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_5
    if-eqz p1, :cond_8

    .line 95
    .line 96
    iget-object p3, p0, Lcom/bytedance/adsdk/ugeno/core/sP/sP;->TKC:Lcom/bytedance/adsdk/ugeno/core/TEQ;

    .line 97
    .line 98
    invoke-interface {p1, p3, p2, p2}, Lcom/bytedance/adsdk/ugeno/core/aa;->Sj(Lcom/bytedance/adsdk/ugeno/core/TEQ;Lcom/bytedance/adsdk/ugeno/core/aa$sP;Lcom/bytedance/adsdk/ugeno/core/aa$Sj;)V

    .line 99
    .line 100
    .line 101
    return v1

    .line 102
    :cond_6
    :goto_0
    iput-boolean v3, p0, Lcom/bytedance/adsdk/ugeno/core/sP/sP;->HiB:Z

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_7
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/core/sP/sP;->Sj:F

    .line 110
    .line 111
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/core/sP/sP;->sP:F

    .line 116
    .line 117
    :cond_8
    :goto_1
    return v1
.end method
