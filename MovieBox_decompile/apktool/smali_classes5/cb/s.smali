.class Lcb/s;
.super Lcb/r;
.source "source.java"


# instance fields
.field private f:Z

.field private g:F


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcb/r;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcb/s;->f:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcb/s;->g:F

    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcb/s;->n(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method static synthetic l(Lcb/s;)F
    .locals 0

    .line 1
    iget p0, p0, Lcb/s;->g:F

    .line 2
    .line 3
    return p0
.end method

.method private m()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcb/r;->c:Lcb/n;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcb/r;->d:Landroid/graphics/RectF;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, v0, Lcb/n;->f:Lcb/d;

    .line 11
    .line 12
    invoke-interface {v0, v1}, Lcb/d;->a(Landroid/graphics/RectF;)F

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0

    .line 17
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method private n(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance v0, Lcb/s$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcb/s$a;-><init>(Lcb/s;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private o()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcb/r;->d:Landroid/graphics/RectF;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcb/r;->c:Lcb/n;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, p0, Lcb/r;->d:Landroid/graphics/RectF;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcb/n;->u(Landroid/graphics/RectF;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    return v0

    .line 21
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 22
    return v0
.end method

.method private p()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcb/r;->d:Landroid/graphics/RectF;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_4

    .line 9
    .line 10
    iget-object v0, p0, Lcb/r;->c:Lcb/n;

    .line 11
    .line 12
    if-eqz v0, :cond_4

    .line 13
    .line 14
    iget-boolean v2, p0, Lcb/r;->b:Z

    .line 15
    .line 16
    if-eqz v2, :cond_4

    .line 17
    .line 18
    iget-object v2, p0, Lcb/r;->d:Landroid/graphics/RectF;

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Lcb/n;->u(Landroid/graphics/RectF;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_4

    .line 25
    .line 26
    iget-object v0, p0, Lcb/r;->c:Lcb/n;

    .line 27
    .line 28
    invoke-static {v0}, Lcb/s;->q(Lcb/n;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    goto/16 :goto_1

    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Lcb/r;->c:Lcb/n;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcb/n;->r()Lcb/d;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v2, p0, Lcb/r;->d:Landroid/graphics/RectF;

    .line 43
    .line 44
    invoke-interface {v0, v2}, Lcb/d;->a(Landroid/graphics/RectF;)F

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iget-object v2, p0, Lcb/r;->c:Lcb/n;

    .line 49
    .line 50
    invoke-virtual {v2}, Lcb/n;->t()Lcb/d;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    iget-object v3, p0, Lcb/r;->d:Landroid/graphics/RectF;

    .line 55
    .line 56
    invoke-interface {v2, v3}, Lcb/d;->a(Landroid/graphics/RectF;)F

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    iget-object v3, p0, Lcb/r;->c:Lcb/n;

    .line 61
    .line 62
    invoke-virtual {v3}, Lcb/n;->j()Lcb/d;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    iget-object v4, p0, Lcb/r;->d:Landroid/graphics/RectF;

    .line 67
    .line 68
    invoke-interface {v3, v4}, Lcb/d;->a(Landroid/graphics/RectF;)F

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    iget-object v4, p0, Lcb/r;->c:Lcb/n;

    .line 73
    .line 74
    invoke-virtual {v4}, Lcb/n;->l()Lcb/d;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    iget-object v5, p0, Lcb/r;->d:Landroid/graphics/RectF;

    .line 79
    .line 80
    invoke-interface {v4, v5}, Lcb/d;->a(Landroid/graphics/RectF;)F

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    const/4 v5, 0x0

    .line 85
    cmpl-float v6, v0, v5

    .line 86
    .line 87
    if-nez v6, :cond_1

    .line 88
    .line 89
    cmpl-float v7, v3, v5

    .line 90
    .line 91
    if-nez v7, :cond_1

    .line 92
    .line 93
    cmpl-float v7, v2, v4

    .line 94
    .line 95
    if-nez v7, :cond_1

    .line 96
    .line 97
    iget-object v0, p0, Lcb/r;->d:Landroid/graphics/RectF;

    .line 98
    .line 99
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 100
    .line 101
    sub-float/2addr v1, v2

    .line 102
    iget v3, v0, Landroid/graphics/RectF;->top:F

    .line 103
    .line 104
    iget v4, v0, Landroid/graphics/RectF;->right:F

    .line 105
    .line 106
    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    .line 107
    .line 108
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 109
    .line 110
    .line 111
    iput v2, p0, Lcb/s;->g:F

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_1
    if-nez v6, :cond_2

    .line 115
    .line 116
    cmpl-float v6, v2, v5

    .line 117
    .line 118
    if-nez v6, :cond_2

    .line 119
    .line 120
    cmpl-float v6, v3, v4

    .line 121
    .line 122
    if-nez v6, :cond_2

    .line 123
    .line 124
    iget-object v0, p0, Lcb/r;->d:Landroid/graphics/RectF;

    .line 125
    .line 126
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 127
    .line 128
    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 129
    .line 130
    sub-float/2addr v2, v3

    .line 131
    iget v4, v0, Landroid/graphics/RectF;->right:F

    .line 132
    .line 133
    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    .line 134
    .line 135
    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 136
    .line 137
    .line 138
    iput v3, p0, Lcb/s;->g:F

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_2
    cmpl-float v6, v2, v5

    .line 142
    .line 143
    if-nez v6, :cond_3

    .line 144
    .line 145
    cmpl-float v6, v4, v5

    .line 146
    .line 147
    if-nez v6, :cond_3

    .line 148
    .line 149
    cmpl-float v6, v0, v3

    .line 150
    .line 151
    if-nez v6, :cond_3

    .line 152
    .line 153
    iget-object v1, p0, Lcb/r;->d:Landroid/graphics/RectF;

    .line 154
    .line 155
    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 156
    .line 157
    iget v3, v1, Landroid/graphics/RectF;->top:F

    .line 158
    .line 159
    iget v4, v1, Landroid/graphics/RectF;->right:F

    .line 160
    .line 161
    add-float/2addr v4, v0

    .line 162
    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    .line 163
    .line 164
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 165
    .line 166
    .line 167
    iput v0, p0, Lcb/s;->g:F

    .line 168
    .line 169
    goto :goto_0

    .line 170
    :cond_3
    cmpl-float v3, v3, v5

    .line 171
    .line 172
    if-nez v3, :cond_4

    .line 173
    .line 174
    cmpl-float v3, v4, v5

    .line 175
    .line 176
    if-nez v3, :cond_4

    .line 177
    .line 178
    cmpl-float v2, v0, v2

    .line 179
    .line 180
    if-nez v2, :cond_4

    .line 181
    .line 182
    iget-object v1, p0, Lcb/r;->d:Landroid/graphics/RectF;

    .line 183
    .line 184
    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 185
    .line 186
    iget v3, v1, Landroid/graphics/RectF;->top:F

    .line 187
    .line 188
    iget v4, v1, Landroid/graphics/RectF;->right:F

    .line 189
    .line 190
    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    .line 191
    .line 192
    add-float/2addr v5, v0

    .line 193
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 194
    .line 195
    .line 196
    iput v0, p0, Lcb/s;->g:F

    .line 197
    .line 198
    :goto_0
    const/4 v0, 0x1

    .line 199
    return v0

    .line 200
    :cond_4
    :goto_1
    return v1
.end method

.method private static q(Lcb/n;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcb/n;->q()Lcb/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lcb/m;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcb/n;->s()Lcb/e;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    instance-of v0, v0, Lcb/m;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcb/n;->i()Lcb/e;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    instance-of v0, v0, Lcb/m;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lcb/n;->k()Lcb/e;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    instance-of p0, p0, Lcb/m;

    .line 30
    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    const/4 p0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p0, 0x0

    .line 36
    :goto_0
    return p0
.end method


# virtual methods
.method b(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcb/s;->m()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcb/s;->g:F

    .line 6
    .line 7
    invoke-direct {p0}, Lcb/s;->o()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    invoke-direct {p0}, Lcb/s;->p()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    move v0, v1

    .line 24
    :goto_1
    iput-boolean v0, p0, Lcb/s;->f:Z

    .line 25
    .line 26
    invoke-virtual {p0}, Lcb/s;->j()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    xor-int/2addr v0, v1

    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcb/s;->j()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 41
    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->invalidateOutline()V

    .line 45
    .line 46
    .line 47
    :goto_2
    return-void
.end method

.method j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcb/s;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcb/r;->a:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
.end method
