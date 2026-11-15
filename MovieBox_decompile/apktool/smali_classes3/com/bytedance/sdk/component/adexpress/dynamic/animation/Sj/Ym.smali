.class public Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/Ym;
.super Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;
.source "source.java"


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;-><init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Landroid/view/ViewGroup;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Landroid/view/ViewGroup;

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    instance-of v0, p1, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Landroid/view/ViewGroup;

    .line 42
    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    instance-of v0, p1, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;

    .line 46
    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 53
    .line 54
    .line 55
    :cond_0
    return-void
.end method


# virtual methods
.method Sj()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;

    .line 5
    .line 6
    invoke-virtual {v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;->Ym()D

    .line 7
    .line 8
    .line 9
    move-result-wide v3

    .line 10
    double-to-float v3, v3

    .line 11
    iget-object v4, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;

    .line 12
    .line 13
    invoke-virtual {v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;->aa()D

    .line 14
    .line 15
    .line 16
    move-result-wide v4

    .line 17
    double-to-float v4, v4

    .line 18
    iget-object v5, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;

    .line 19
    .line 20
    invoke-virtual {v5}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;->uvD()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    const-string v6, "reverse"

    .line 25
    .line 26
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    const/high16 v7, 0x3f800000    # 1.0f

    .line 31
    .line 32
    if-nez v6, :cond_1

    .line 33
    .line 34
    const-string v6, "alternate-reverse"

    .line 35
    .line 36
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move v5, v4

    .line 44
    move v4, v7

    .line 45
    move v7, v3

    .line 46
    move v3, v4

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    :goto_0
    move v5, v7

    .line 49
    :goto_1
    iget-object v6, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;->TKC:Landroid/view/View;

    .line 50
    .line 51
    iget-object v8, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;

    .line 52
    .line 53
    invoke-virtual {v8}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;->sP()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    const v9, 0x7d06ffd6

    .line 58
    .line 59
    .line 60
    invoke-virtual {v6, v9, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iget-object v6, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;->TKC:Landroid/view/View;

    .line 64
    .line 65
    const-string v8, "scaleX"

    .line 66
    .line 67
    new-array v9, v2, [F

    .line 68
    .line 69
    aput v3, v9, v1

    .line 70
    .line 71
    aput v7, v9, v0

    .line 72
    .line 73
    invoke-static {v6, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    iget-object v6, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;

    .line 78
    .line 79
    invoke-virtual {v6}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;->TEQ()D

    .line 80
    .line 81
    .line 82
    move-result-wide v6

    .line 83
    const-wide v8, 0x408f400000000000L    # 1000.0

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    mul-double/2addr v6, v8

    .line 89
    double-to-int v6, v6

    .line 90
    int-to-long v6, v6

    .line 91
    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    iget-object v6, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;->TKC:Landroid/view/View;

    .line 96
    .line 97
    const-string v7, "scaleY"

    .line 98
    .line 99
    new-array v2, v2, [F

    .line 100
    .line 101
    aput v4, v2, v1

    .line 102
    .line 103
    aput v5, v2, v0

    .line 104
    .line 105
    invoke-static {v6, v7, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;

    .line 110
    .line 111
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Sj;->TEQ()D

    .line 112
    .line 113
    .line 114
    move-result-wide v1

    .line 115
    mul-double/2addr v1, v8

    .line 116
    double-to-int v1, v1

    .line 117
    int-to-long v1, v1

    .line 118
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    new-instance v1, Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;->Sj(Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/EjP;->Sj(Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    return-object v1
.end method
