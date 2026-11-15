.class public Lcom/airbnb/lottie/model/layer/b;
.super Lcom/airbnb/lottie/model/layer/a;
.source "source.java"


# instance fields
.field private E:Lp4/a;

.field private final F:Ljava/util/List;

.field private final G:Landroid/graphics/RectF;

.field private final H:Landroid/graphics/RectF;

.field private final I:Landroid/graphics/Paint;

.field private J:Ljava/lang/Boolean;

.field private K:Ljava/lang/Boolean;

.field private L:F

.field private M:Z


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;Ljava/util/List;Lcom/airbnb/lottie/h;)V
    .locals 9

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/a;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->F:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/RectF;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->G:Landroid/graphics/RectF;

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/RectF;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->H:Landroid/graphics/RectF;

    .line 24
    .line 25
    new-instance v0, Landroid/graphics/Paint;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->I:Landroid/graphics/Paint;

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/airbnb/lottie/model/layer/b;->M:Z

    .line 34
    .line 35
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->v()Ls4/b;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    const/4 v1, 0x0

    .line 40
    if-eqz p2, :cond_0

    .line 41
    .line 42
    invoke-virtual {p2}, Ls4/b;->d()Lp4/d;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/b;->E:Lp4/a;

    .line 47
    .line 48
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/a;->i(Lp4/a;)V

    .line 49
    .line 50
    .line 51
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/b;->E:Lp4/a;

    .line 52
    .line 53
    invoke-virtual {p2, p0}, Lp4/a;->a(Lp4/a$b;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/b;->E:Lp4/a;

    .line 58
    .line 59
    :goto_0
    new-instance p2, Landroidx/collection/x;

    .line 60
    .line 61
    invoke-virtual {p4}, Lcom/airbnb/lottie/h;->k()Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    invoke-direct {p2, v2}, Landroidx/collection/x;-><init>(I)V

    .line 70
    .line 71
    .line 72
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    sub-int/2addr v2, v0

    .line 77
    move-object v3, v1

    .line 78
    :goto_1
    const/4 v4, 0x0

    .line 79
    if-ltz v2, :cond_4

    .line 80
    .line 81
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    check-cast v5, Lcom/airbnb/lottie/model/layer/Layer;

    .line 86
    .line 87
    invoke-static {p0, v5, p1, p4}, Lcom/airbnb/lottie/model/layer/a;->u(Lcom/airbnb/lottie/model/layer/b;Lcom/airbnb/lottie/model/layer/Layer;Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/h;)Lcom/airbnb/lottie/model/layer/a;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    if-nez v6, :cond_1

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_1
    invoke-virtual {v6}, Lcom/airbnb/lottie/model/layer/a;->z()Lcom/airbnb/lottie/model/layer/Layer;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    invoke-virtual {v7}, Lcom/airbnb/lottie/model/layer/Layer;->e()J

    .line 99
    .line 100
    .line 101
    move-result-wide v7

    .line 102
    invoke-virtual {p2, v7, v8, v6}, Landroidx/collection/x;->k(JLjava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    if-eqz v3, :cond_2

    .line 106
    .line 107
    invoke-virtual {v3, v6}, Lcom/airbnb/lottie/model/layer/a;->J(Lcom/airbnb/lottie/model/layer/a;)V

    .line 108
    .line 109
    .line 110
    move-object v3, v1

    .line 111
    goto :goto_2

    .line 112
    :cond_2
    iget-object v7, p0, Lcom/airbnb/lottie/model/layer/b;->F:Ljava/util/List;

    .line 113
    .line 114
    invoke-interface {v7, v4, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    sget-object v4, Lcom/airbnb/lottie/model/layer/b$a;->a:[I

    .line 118
    .line 119
    invoke-virtual {v5}, Lcom/airbnb/lottie/model/layer/Layer;->i()Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    aget v4, v4, v5

    .line 128
    .line 129
    if-eq v4, v0, :cond_3

    .line 130
    .line 131
    const/4 v5, 0x2

    .line 132
    if-eq v4, v5, :cond_3

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_3
    move-object v3, v6

    .line 136
    :goto_2
    add-int/lit8 v2, v2, -0x1

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_4
    :goto_3
    invoke-virtual {p2}, Landroidx/collection/x;->n()I

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    if-ge v4, p1, :cond_7

    .line 144
    .line 145
    invoke-virtual {p2, v4}, Landroidx/collection/x;->j(I)J

    .line 146
    .line 147
    .line 148
    move-result-wide p3

    .line 149
    invoke-virtual {p2, p3, p4}, Landroidx/collection/x;->e(J)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    check-cast p1, Lcom/airbnb/lottie/model/layer/a;

    .line 154
    .line 155
    if-nez p1, :cond_5

    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_5
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/layer/a;->z()Lcom/airbnb/lottie/model/layer/Layer;

    .line 159
    .line 160
    .line 161
    move-result-object p3

    .line 162
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/layer/Layer;->k()J

    .line 163
    .line 164
    .line 165
    move-result-wide p3

    .line 166
    invoke-virtual {p2, p3, p4}, Landroidx/collection/x;->e(J)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object p3

    .line 170
    check-cast p3, Lcom/airbnb/lottie/model/layer/a;

    .line 171
    .line 172
    if-eqz p3, :cond_6

    .line 173
    .line 174
    invoke-virtual {p1, p3}, Lcom/airbnb/lottie/model/layer/a;->L(Lcom/airbnb/lottie/model/layer/a;)V

    .line 175
    .line 176
    .line 177
    :cond_6
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_7
    return-void
.end method


# virtual methods
.method protected I(Lr4/d;ILjava/util/List;Lr4/d;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/b;->F:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/b;->F:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/airbnb/lottie/model/layer/a;

    .line 17
    .line 18
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/airbnb/lottie/model/layer/a;->c(Lr4/d;ILjava/util/List;Lr4/d;)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method public K(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->K(Z)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->F:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/airbnb/lottie/model/layer/a;

    .line 21
    .line 22
    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/model/layer/a;->K(Z)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method public M(F)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "CompositionLayer#setProgress"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v1}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iput p1, p0, Lcom/airbnb/lottie/model/layer/b;->L:F

    .line 13
    .line 14
    invoke-super {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->M(F)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->E:Lp4/a;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/a;->p:Lcom/airbnb/lottie/LottieDrawable;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieDrawable;->O()Lcom/airbnb/lottie/h;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lcom/airbnb/lottie/h;->e()F

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const v0, 0x3c23d70a    # 0.01f

    .line 32
    .line 33
    .line 34
    add-float/2addr p1, v0

    .line 35
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->q:Lcom/airbnb/lottie/model/layer/Layer;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->c()Lcom/airbnb/lottie/h;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/airbnb/lottie/h;->p()F

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/b;->E:Lp4/a;

    .line 46
    .line 47
    invoke-virtual {v2}, Lp4/a;->h()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Ljava/lang/Float;

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/a;->q:Lcom/airbnb/lottie/model/layer/Layer;

    .line 58
    .line 59
    invoke-virtual {v3}, Lcom/airbnb/lottie/model/layer/Layer;->c()Lcom/airbnb/lottie/h;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v3}, Lcom/airbnb/lottie/h;->i()F

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    mul-float/2addr v2, v3

    .line 68
    sub-float/2addr v2, v0

    .line 69
    div-float p1, v2, p1

    .line 70
    .line 71
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->E:Lp4/a;

    .line 72
    .line 73
    if-nez v0, :cond_2

    .line 74
    .line 75
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->q:Lcom/airbnb/lottie/model/layer/Layer;

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->s()F

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    sub-float/2addr p1, v0

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->q:Lcom/airbnb/lottie/model/layer/Layer;

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->w()F

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    const/4 v2, 0x0

    .line 89
    cmpl-float v0, v0, v2

    .line 90
    .line 91
    if-eqz v0, :cond_3

    .line 92
    .line 93
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->q:Lcom/airbnb/lottie/model/layer/Layer;

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->j()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    const-string v2, "__container"

    .line 100
    .line 101
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-nez v0, :cond_3

    .line 106
    .line 107
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->q:Lcom/airbnb/lottie/model/layer/Layer;

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->w()F

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    div-float/2addr p1, v0

    .line 114
    :cond_3
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->F:Ljava/util/List;

    .line 115
    .line 116
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    add-int/lit8 v0, v0, -0x1

    .line 121
    .line 122
    :goto_0
    if-ltz v0, :cond_4

    .line 123
    .line 124
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/b;->F:Ljava/util/List;

    .line 125
    .line 126
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    check-cast v2, Lcom/airbnb/lottie/model/layer/a;

    .line 131
    .line 132
    invoke-virtual {v2, p1}, Lcom/airbnb/lottie/model/layer/a;->M(F)V

    .line 133
    .line 134
    .line 135
    add-int/lit8 v0, v0, -0x1

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_4
    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-eqz p1, :cond_5

    .line 143
    .line 144
    invoke-static {v1}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    .line 145
    .line 146
    .line 147
    :cond_5
    return-void
.end method

.method public P()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/model/layer/b;->L:F

    .line 2
    .line 3
    return v0
.end method

.method public Q()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->K:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->F:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    sub-int/2addr v0, v1

    .line 13
    :goto_0
    if-ltz v0, :cond_2

    .line 14
    .line 15
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/b;->F:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/airbnb/lottie/model/layer/a;

    .line 22
    .line 23
    instance-of v3, v2, Lcom/airbnb/lottie/model/layer/e;

    .line 24
    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/layer/a;->A()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->K:Ljava/lang/Boolean;

    .line 36
    .line 37
    return v1

    .line 38
    :cond_0
    instance-of v3, v2, Lcom/airbnb/lottie/model/layer/b;

    .line 39
    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    check-cast v2, Lcom/airbnb/lottie/model/layer/b;

    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/layer/b;->Q()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 51
    .line 52
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->K:Ljava/lang/Boolean;

    .line 53
    .line 54
    return v1

    .line 55
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 59
    .line 60
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->K:Ljava/lang/Boolean;

    .line 61
    .line 62
    :cond_3
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->K:Ljava/lang/Boolean;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    return v0
.end method

.method public R()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->J:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/a;->B()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->J:Ljava/lang/Boolean;

    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->F:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    sub-int/2addr v0, v1

    .line 24
    :goto_0
    if-ltz v0, :cond_2

    .line 25
    .line 26
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/b;->F:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lcom/airbnb/lottie/model/layer/a;

    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/layer/a;->B()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->J:Ljava/lang/Boolean;

    .line 43
    .line 44
    return v1

    .line 45
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 49
    .line 50
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->J:Ljava/lang/Boolean;

    .line 51
    .line 52
    :cond_3
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->J:Ljava/lang/Boolean;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    return v0
.end method

.method public S(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/airbnb/lottie/model/layer/b;->M:Z

    .line 2
    .line 3
    return-void
.end method

.method public d(Ljava/lang/Object;Ly4/c;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/a;->d(Ljava/lang/Object;Ly4/c;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/airbnb/lottie/p0;->E:Ljava/lang/Float;

    .line 5
    .line 6
    if-ne p1, v0, :cond_1

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/b;->E:Lp4/a;

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    invoke-virtual {p1, p2}, Lp4/a;->o(Ly4/c;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Lp4/q;

    .line 20
    .line 21
    invoke-direct {p1, p2}, Lp4/q;-><init>(Ly4/c;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/b;->E:Lp4/a;

    .line 25
    .line 26
    invoke-virtual {p1, p0}, Lp4/a;->a(Lp4/a$b;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/b;->E:Lp4/a;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Lp4/a;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    return-void
.end method

.method public f(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/a;->f(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/b;->F:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    const/4 p3, 0x1

    .line 11
    sub-int/2addr p2, p3

    .line 12
    :goto_0
    if-ltz p2, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->G:Landroid/graphics/RectF;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->F:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/airbnb/lottie/model/layer/a;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/b;->G:Landroid/graphics/RectF;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/a;->o:Landroid/graphics/Matrix;

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2, p3}, Lcom/airbnb/lottie/model/layer/a;->f(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->G:Landroid/graphics/RectF;

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 38
    .line 39
    .line 40
    add-int/lit8 p2, p2, -0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method

.method t(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "CompositionLayer#draw"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v1}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->H:Landroid/graphics/RectF;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/a;->q:Lcom/airbnb/lottie/model/layer/Layer;

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/layer/Layer;->m()F

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/a;->q:Lcom/airbnb/lottie/model/layer/Layer;

    .line 21
    .line 22
    invoke-virtual {v3}, Lcom/airbnb/lottie/model/layer/Layer;->l()F

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->H:Landroid/graphics/RectF;

    .line 31
    .line 32
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->p:Lcom/airbnb/lottie/LottieDrawable;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->m0()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/16 v2, 0xff

    .line 42
    .line 43
    const/4 v3, 0x1

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->F:Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-le v0, v3, :cond_1

    .line 53
    .line 54
    if-eq p3, v2, :cond_1

    .line 55
    .line 56
    move v0, v3

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const/4 v0, 0x0

    .line 59
    :goto_0
    if-eqz v0, :cond_2

    .line 60
    .line 61
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/b;->I:Landroid/graphics/Paint;

    .line 62
    .line 63
    invoke-virtual {v4, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 64
    .line 65
    .line 66
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/b;->H:Landroid/graphics/RectF;

    .line 67
    .line 68
    iget-object v5, p0, Lcom/airbnb/lottie/model/layer/b;->I:Landroid/graphics/Paint;

    .line 69
    .line 70
    invoke-static {p1, v4, v5}, Lx4/l;->n(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 75
    .line 76
    .line 77
    :goto_1
    if-eqz v0, :cond_3

    .line 78
    .line 79
    move p3, v2

    .line 80
    :cond_3
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/b;->F:Ljava/util/List;

    .line 81
    .line 82
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    sub-int/2addr v0, v3

    .line 87
    :goto_2
    if-ltz v0, :cond_7

    .line 88
    .line 89
    iget-boolean v2, p0, Lcom/airbnb/lottie/model/layer/b;->M:Z

    .line 90
    .line 91
    if-nez v2, :cond_4

    .line 92
    .line 93
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/a;->q:Lcom/airbnb/lottie/model/layer/Layer;

    .line 94
    .line 95
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/layer/Layer;->j()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    const-string v4, "__container"

    .line 100
    .line 101
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_4

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_4
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/b;->H:Landroid/graphics/RectF;

    .line 109
    .line 110
    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-nez v2, :cond_5

    .line 115
    .line 116
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/b;->H:Landroid/graphics/RectF;

    .line 117
    .line 118
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    goto :goto_4

    .line 123
    :cond_5
    :goto_3
    move v2, v3

    .line 124
    :goto_4
    if-eqz v2, :cond_6

    .line 125
    .line 126
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/b;->F:Ljava/util/List;

    .line 127
    .line 128
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    check-cast v2, Lcom/airbnb/lottie/model/layer/a;

    .line 133
    .line 134
    invoke-virtual {v2, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/a;->h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 135
    .line 136
    .line 137
    :cond_6
    add-int/lit8 v0, v0, -0x1

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 141
    .line 142
    .line 143
    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    if-eqz p1, :cond_8

    .line 148
    .line 149
    invoke-static {v1}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    .line 150
    .line 151
    .line 152
    :cond_8
    return-void
.end method
