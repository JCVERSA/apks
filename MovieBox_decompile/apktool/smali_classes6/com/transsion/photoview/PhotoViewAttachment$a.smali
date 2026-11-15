.class Lcom/transsion/photoview/PhotoViewAttachment$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/photoview/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/photoview/PhotoViewAttachment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/photoview/PhotoViewAttachment;


# direct methods
.method constructor <init>(Lcom/transsion/photoview/PhotoViewAttachment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public b(FF)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/photoview/PhotoViewAttachment;->n(Lcom/transsion/photoview/PhotoViewAttachment;)Lcom/transsion/photoview/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/transsion/photoview/b;->g()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/transsion/photoview/PhotoViewAttachment;->j(Lcom/transsion/photoview/PhotoViewAttachment;)Lcom/transsion/photoview/j;

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/transsion/photoview/PhotoViewAttachment;->p(Lcom/transsion/photoview/PhotoViewAttachment;)Landroid/graphics/Matrix;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/transsion/photoview/PhotoViewAttachment;->w(Lcom/transsion/photoview/PhotoViewAttachment;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/transsion/photoview/PhotoViewAttachment;->e(Lcom/transsion/photoview/PhotoViewAttachment;)Landroid/widget/ImageView;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 44
    .line 45
    invoke-static {v1}, Lcom/transsion/photoview/PhotoViewAttachment;->a(Lcom/transsion/photoview/PhotoViewAttachment;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    const/4 v2, 0x1

    .line 50
    if-eqz v1, :cond_6

    .line 51
    .line 52
    iget-object v1, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 53
    .line 54
    invoke-static {v1}, Lcom/transsion/photoview/PhotoViewAttachment;->n(Lcom/transsion/photoview/PhotoViewAttachment;)Lcom/transsion/photoview/b;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1}, Lcom/transsion/photoview/b;->g()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-nez v1, :cond_6

    .line 63
    .line 64
    iget-object v1, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 65
    .line 66
    invoke-static {v1}, Lcom/transsion/photoview/PhotoViewAttachment;->b(Lcom/transsion/photoview/PhotoViewAttachment;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-nez v1, :cond_6

    .line 71
    .line 72
    iget-object v1, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 73
    .line 74
    invoke-static {v1}, Lcom/transsion/photoview/PhotoViewAttachment;->d(Lcom/transsion/photoview/PhotoViewAttachment;)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    const/4 v3, 0x2

    .line 79
    if-eq v1, v3, :cond_4

    .line 80
    .line 81
    iget-object v1, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 82
    .line 83
    invoke-static {v1}, Lcom/transsion/photoview/PhotoViewAttachment;->d(Lcom/transsion/photoview/PhotoViewAttachment;)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    const/high16 v3, 0x3f800000    # 1.0f

    .line 88
    .line 89
    if-nez v1, :cond_1

    .line 90
    .line 91
    cmpl-float v1, p1, v3

    .line 92
    .line 93
    if-gez v1, :cond_4

    .line 94
    .line 95
    :cond_1
    iget-object v1, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 96
    .line 97
    invoke-static {v1}, Lcom/transsion/photoview/PhotoViewAttachment;->d(Lcom/transsion/photoview/PhotoViewAttachment;)I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    const/high16 v4, -0x40800000    # -1.0f

    .line 102
    .line 103
    if-ne v1, v2, :cond_2

    .line 104
    .line 105
    cmpg-float p1, p1, v4

    .line 106
    .line 107
    if-lez p1, :cond_4

    .line 108
    .line 109
    :cond_2
    iget-object p1, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 110
    .line 111
    invoke-static {p1}, Lcom/transsion/photoview/PhotoViewAttachment;->q(Lcom/transsion/photoview/PhotoViewAttachment;)I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-nez p1, :cond_3

    .line 116
    .line 117
    cmpl-float p1, p2, v3

    .line 118
    .line 119
    if-gez p1, :cond_4

    .line 120
    .line 121
    :cond_3
    iget-object p1, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 122
    .line 123
    invoke-static {p1}, Lcom/transsion/photoview/PhotoViewAttachment;->q(Lcom/transsion/photoview/PhotoViewAttachment;)I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-ne p1, v2, :cond_7

    .line 128
    .line 129
    cmpg-float p1, p2, v4

    .line 130
    .line 131
    if-gtz p1, :cond_7

    .line 132
    .line 133
    :cond_4
    if-nez v0, :cond_5

    .line 134
    .line 135
    return-void

    .line 136
    :cond_5
    const/4 p1, 0x0

    .line 137
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 138
    .line 139
    .line 140
    iget-object p1, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 141
    .line 142
    invoke-static {p1}, Lcom/transsion/photoview/PhotoViewAttachment;->u(Lcom/transsion/photoview/PhotoViewAttachment;)Lcom/transsion/photoview/n;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    iget-object p2, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 147
    .line 148
    invoke-virtual {p2}, Lcom/transsion/photoview/PhotoViewAttachment;->M()F

    .line 149
    .line 150
    .line 151
    move-result p2

    .line 152
    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 153
    .line 154
    invoke-static {v0}, Lcom/transsion/photoview/PhotoViewAttachment;->n(Lcom/transsion/photoview/PhotoViewAttachment;)Lcom/transsion/photoview/b;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {v0}, Lcom/transsion/photoview/b;->d()F

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    iget-object v1, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 163
    .line 164
    invoke-static {v1}, Lcom/transsion/photoview/PhotoViewAttachment;->n(Lcom/transsion/photoview/PhotoViewAttachment;)Lcom/transsion/photoview/b;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-virtual {v1}, Lcom/transsion/photoview/b;->e()F

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    invoke-virtual {p1, p2, v0, v1}, Lcom/transsion/photoview/n;->e(FFF)V

    .line 173
    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_6
    if-eqz v0, :cond_7

    .line 177
    .line 178
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 179
    .line 180
    .line 181
    :cond_7
    :goto_0
    return-void
.end method

.method public c(FFFFF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/photoview/PhotoViewAttachment;->u(Lcom/transsion/photoview/PhotoViewAttachment;)Lcom/transsion/photoview/n;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/transsion/photoview/n;->h()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/transsion/photoview/PhotoViewAttachment;->M()F

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object v1, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/transsion/photoview/PhotoViewAttachment;->h(Lcom/transsion/photoview/PhotoViewAttachment;)F

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    cmpg-float v0, v0, v1

    .line 27
    .line 28
    if-ltz v0, :cond_1

    .line 29
    .line 30
    const/high16 v0, 0x3f800000    # 1.0f

    .line 31
    .line 32
    cmpg-float v0, p1, v0

    .line 33
    .line 34
    if-gez v0, :cond_2

    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/transsion/photoview/PhotoViewAttachment;->m(Lcom/transsion/photoview/PhotoViewAttachment;)Lcom/transsion/photoview/g;

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/transsion/photoview/PhotoViewAttachment;->p(Lcom/transsion/photoview/PhotoViewAttachment;)Landroid/graphics/Matrix;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/transsion/photoview/PhotoViewAttachment;->p(Lcom/transsion/photoview/PhotoViewAttachment;)Landroid/graphics/Matrix;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1, p4, p5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 60
    .line 61
    invoke-static {p1}, Lcom/transsion/photoview/PhotoViewAttachment;->w(Lcom/transsion/photoview/PhotoViewAttachment;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    return-void
.end method

.method public d(FFF)V
    .locals 6

    .line 1
    const/4 v4, 0x0

    .line 2
    const/4 v5, 0x0

    .line 3
    move-object v0, p0

    .line 4
    move v1, p1

    .line 5
    move v2, p2

    .line 6
    move v3, p3

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/photoview/PhotoViewAttachment$a;->c(FFFFF)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public e(FFFF)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 2
    .line 3
    new-instance p2, Lcom/transsion/photoview/PhotoViewAttachment$FlingRunnable;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/transsion/photoview/PhotoViewAttachment;->e(Lcom/transsion/photoview/PhotoViewAttachment;)Landroid/widget/ImageView;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-direct {p2, p1, v0}, Lcom/transsion/photoview/PhotoViewAttachment$FlingRunnable;-><init>(Lcom/transsion/photoview/PhotoViewAttachment;Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p2}, Lcom/transsion/photoview/PhotoViewAttachment;->v(Lcom/transsion/photoview/PhotoViewAttachment;Lcom/transsion/photoview/PhotoViewAttachment$FlingRunnable;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/transsion/photoview/PhotoViewAttachment;->c(Lcom/transsion/photoview/PhotoViewAttachment;)Lcom/transsion/photoview/PhotoViewAttachment$FlingRunnable;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object p2, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 26
    .line 27
    invoke-static {p2}, Lcom/transsion/photoview/PhotoViewAttachment;->e(Lcom/transsion/photoview/PhotoViewAttachment;)Landroid/widget/ImageView;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {p2, v0}, Lcom/transsion/photoview/PhotoViewAttachment;->y(Lcom/transsion/photoview/PhotoViewAttachment;Landroid/widget/ImageView;)I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/transsion/photoview/PhotoViewAttachment;->e(Lcom/transsion/photoview/PhotoViewAttachment;)Landroid/widget/ImageView;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v0, v1}, Lcom/transsion/photoview/PhotoViewAttachment;->x(Lcom/transsion/photoview/PhotoViewAttachment;Landroid/widget/ImageView;)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    float-to-int p3, p3

    .line 46
    float-to-int p4, p4

    .line 47
    invoke-virtual {p1, p2, v0, p3, p4}, Lcom/transsion/photoview/PhotoViewAttachment$FlingRunnable;->fling(IIII)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/transsion/photoview/PhotoViewAttachment;->e(Lcom/transsion/photoview/PhotoViewAttachment;)Landroid/widget/ImageView;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget-object p2, p0, Lcom/transsion/photoview/PhotoViewAttachment$a;->a:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 57
    .line 58
    invoke-static {p2}, Lcom/transsion/photoview/PhotoViewAttachment;->c(Lcom/transsion/photoview/PhotoViewAttachment;)Lcom/transsion/photoview/PhotoViewAttachment$FlingRunnable;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 63
    .line 64
    .line 65
    return-void
.end method
