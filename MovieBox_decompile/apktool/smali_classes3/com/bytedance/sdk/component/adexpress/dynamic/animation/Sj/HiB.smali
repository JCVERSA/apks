.class public Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/HiB;
.super Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;
.source "source.java"


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;-><init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private EjP(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/ObjectAnimator;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->Sj()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;->sU()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    int-to-float v1, v1

    .line 12
    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/adexpress/EjP/Jcg;->Sj(Landroid/content/Context;F)F

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    neg-float v0, v0

    .line 17
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;->TKC:Landroid/view/View;

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    new-array v2, v2, [F

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x0

    .line 24
    aput v3, v2, v4

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    aput v0, v2, v3

    .line 28
    .line 29
    const-string v0, "translationY"

    .line 30
    .line 31
    invoke-static {v1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;->TEQ()D

    .line 38
    .line 39
    .line 40
    move-result-wide v1

    .line 41
    const-wide v3, 0x408f400000000000L    # 1000.0

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    mul-double/2addr v1, v3

    .line 47
    double-to-int v1, v1

    .line 48
    int-to-long v1, v1

    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    new-instance v1, Landroid/view/animation/BounceInterpolator;

    .line 54
    .line 55
    invoke-direct {v1}, Landroid/view/animation/BounceInterpolator;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;->Sj(Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method private Sj(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/ObjectAnimator;",
            ">;)V"
        }
    .end annotation

    .line 7
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->Sj()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;->sU()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/adexpress/EjP/Jcg;->Sj(Landroid/content/Context;F)F

    move-result v0

    neg-float v0, v0

    .line 8
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;->TEQ()D

    move-result-wide v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double/2addr v1, v3

    double-to-int v1, v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    .line 9
    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;->TKC:Landroid/view/View;

    new-array v4, v2, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v5, v4, v6

    const/4 v5, 0x1

    aput v0, v4, v5

    const-string v0, "translationY"

    invoke-static {v3, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v3, v1

    .line 10
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 11
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 12
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 13
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;->Zq()I

    move-result v3

    mul-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;->vS(I)V

    .line 14
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;->Sj(Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private TKC(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/ObjectAnimator;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->Sj()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;->sU()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    int-to-float v1, v1

    .line 12
    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/adexpress/EjP/Jcg;->Sj(Landroid/content/Context;F)F

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    neg-float v0, v0

    .line 17
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;->TKC:Landroid/view/View;

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    new-array v2, v2, [F

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x0

    .line 24
    aput v3, v2, v4

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    aput v0, v2, v3

    .line 28
    .line 29
    const-string v0, "translationY"

    .line 30
    .line 31
    invoke-static {v1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;->TEQ()D

    .line 38
    .line 39
    .line 40
    move-result-wide v1

    .line 41
    const-wide v3, 0x408f400000000000L    # 1000.0

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    mul-double/2addr v1, v3

    .line 47
    double-to-int v1, v1

    .line 48
    int-to-long v1, v1

    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    new-instance v1, Landroid/view/animation/BounceInterpolator;

    .line 54
    .line 55
    invoke-direct {v1}, Landroid/view/animation/BounceInterpolator;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 59
    .line 60
    .line 61
    new-instance v1, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/HiB$2;

    .line 62
    .line 63
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/HiB$2;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/HiB;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;->Sj(Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method private sP(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/ObjectAnimator;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->Sj()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;->sU()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    int-to-float v1, v1

    .line 12
    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/adexpress/EjP/Jcg;->Sj(Landroid/content/Context;F)F

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    neg-float v0, v0

    .line 17
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;->TKC:Landroid/view/View;

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    new-array v2, v2, [F

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x0

    .line 24
    aput v3, v2, v4

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    aput v0, v2, v3

    .line 28
    .line 29
    const-string v0, "translationY"

    .line 30
    .line 31
    invoke-static {v1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;->TEQ()D

    .line 38
    .line 39
    .line 40
    move-result-wide v1

    .line 41
    const-wide v3, 0x408f400000000000L    # 1000.0

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    mul-double/2addr v1, v3

    .line 47
    double-to-int v1, v1

    .line 48
    int-to-long v1, v1

    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    new-instance v1, Landroid/view/animation/BounceInterpolator;

    .line 54
    .line 55
    invoke-direct {v1}, Landroid/view/animation/BounceInterpolator;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 59
    .line 60
    .line 61
    new-instance v1, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/HiB$1;

    .line 62
    .line 63
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/HiB$1;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/HiB;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;->Sj(Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    return-void
.end method


# virtual methods
.method Sj()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;->dx()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "backwards"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :sswitch_1
    const-string v2, "forwards"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :sswitch_2
    const-string v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_3
    const-string v2, "both"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-eq v1, v4, :cond_1

    .line 3
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/HiB;->TKC(Ljava/util/List;)V

    goto :goto_2

    .line 4
    :cond_1
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/HiB;->sP(Ljava/util/List;)V

    goto :goto_2

    .line 5
    :cond_2
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/HiB;->EjP(Ljava/util/List;)V

    goto :goto_2

    .line 6
    :cond_3
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/HiB;->Sj(Ljava/util/List;)V

    :goto_2
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x2e3b81 -> :sswitch_3
        0x33af38 -> :sswitch_2
        0x1ccec64e -> :sswitch_1
        0x50deb0f0 -> :sswitch_0
    .end sparse-switch
.end method
