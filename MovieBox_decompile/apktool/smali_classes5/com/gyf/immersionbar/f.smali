.class Lcom/gyf/immersionbar/f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private a:Lcom/gyf/immersionbar/ImmersionBar;

.field private b:Landroid/view/Window;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Z


# direct methods
.method constructor <init>(Lcom/gyf/immersionbar/ImmersionBar;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/gyf/immersionbar/f;->f:I

    .line 6
    .line 7
    iput v0, p0, Lcom/gyf/immersionbar/f;->g:I

    .line 8
    .line 9
    iput v0, p0, Lcom/gyf/immersionbar/f;->h:I

    .line 10
    .line 11
    iput v0, p0, Lcom/gyf/immersionbar/f;->i:I

    .line 12
    .line 13
    iput-object p1, p0, Lcom/gyf/immersionbar/f;->a:Lcom/gyf/immersionbar/ImmersionBar;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/gyf/immersionbar/ImmersionBar;->getWindow()Landroid/view/Window;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iput-object v1, p0, Lcom/gyf/immersionbar/f;->b:Landroid/view/Window;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iput-object v1, p0, Lcom/gyf/immersionbar/f;->c:Landroid/view/View;

    .line 26
    .line 27
    const v2, 0x1020002

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Landroid/widget/FrameLayout;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/gyf/immersionbar/ImmersionBar;->isDialogFragment()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/gyf/immersionbar/ImmersionBar;->getSupportFragment()Landroidx/fragment/app/Fragment;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iput-object p1, p0, Lcom/gyf/immersionbar/f;->e:Landroid/view/View;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p1}, Lcom/gyf/immersionbar/ImmersionBar;->getFragment()Landroid/app/Fragment;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iput-object p1, p0, Lcom/gyf/immersionbar/f;->e:Landroid/view/View;

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iput-object p1, p0, Lcom/gyf/immersionbar/f;->e:Landroid/view/View;

    .line 73
    .line 74
    if-eqz p1, :cond_2

    .line 75
    .line 76
    instance-of v2, p1, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 77
    .line 78
    if-eqz v2, :cond_2

    .line 79
    .line 80
    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 81
    .line 82
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iput-object p1, p0, Lcom/gyf/immersionbar/f;->e:Landroid/view/View;

    .line 87
    .line 88
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/gyf/immersionbar/f;->e:Landroid/view/View;

    .line 89
    .line 90
    if-eqz p1, :cond_3

    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    iput p1, p0, Lcom/gyf/immersionbar/f;->f:I

    .line 97
    .line 98
    iget-object p1, p0, Lcom/gyf/immersionbar/f;->e:Landroid/view/View;

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    iput p1, p0, Lcom/gyf/immersionbar/f;->g:I

    .line 105
    .line 106
    iget-object p1, p0, Lcom/gyf/immersionbar/f;->e:Landroid/view/View;

    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    iput p1, p0, Lcom/gyf/immersionbar/f;->h:I

    .line 113
    .line 114
    iget-object p1, p0, Lcom/gyf/immersionbar/f;->e:Landroid/view/View;

    .line 115
    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    iput p1, p0, Lcom/gyf/immersionbar/f;->i:I

    .line 121
    .line 122
    :cond_3
    iget-object p1, p0, Lcom/gyf/immersionbar/f;->e:Landroid/view/View;

    .line 123
    .line 124
    if-eqz p1, :cond_4

    .line 125
    .line 126
    move-object v1, p1

    .line 127
    :cond_4
    iput-object v1, p0, Lcom/gyf/immersionbar/f;->d:Landroid/view/View;

    .line 128
    .line 129
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gyf/immersionbar/f;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/gyf/immersionbar/f;->c:Landroid/view/View;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/gyf/immersionbar/f;->k:Z

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method b()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/gyf/immersionbar/f;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/gyf/immersionbar/f;->e:Landroid/view/View;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/gyf/immersionbar/f;->d:Landroid/view/View;

    .line 10
    .line 11
    iget v1, p0, Lcom/gyf/immersionbar/f;->f:I

    .line 12
    .line 13
    iget v2, p0, Lcom/gyf/immersionbar/f;->g:I

    .line 14
    .line 15
    iget v3, p0, Lcom/gyf/immersionbar/f;->h:I

    .line 16
    .line 17
    iget v4, p0, Lcom/gyf/immersionbar/f;->i:I

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/gyf/immersionbar/f;->d:Landroid/view/View;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/gyf/immersionbar/f;->a:Lcom/gyf/immersionbar/ImmersionBar;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/gyf/immersionbar/ImmersionBar;->getPaddingLeft()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iget-object v2, p0, Lcom/gyf/immersionbar/f;->a:Lcom/gyf/immersionbar/ImmersionBar;

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/gyf/immersionbar/ImmersionBar;->getPaddingTop()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    iget-object v3, p0, Lcom/gyf/immersionbar/f;->a:Lcom/gyf/immersionbar/ImmersionBar;

    .line 38
    .line 39
    invoke-virtual {v3}, Lcom/gyf/immersionbar/ImmersionBar;->getPaddingRight()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    iget-object v4, p0, Lcom/gyf/immersionbar/f;->a:Lcom/gyf/immersionbar/ImmersionBar;

    .line 44
    .line 45
    invoke-virtual {v4}, Lcom/gyf/immersionbar/ImmersionBar;->getPaddingBottom()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_0
    return-void
.end method

.method c(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/f;->b:Landroid/view/Window;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 4
    .line 5
    .line 6
    iget-boolean p1, p0, Lcom/gyf/immersionbar/f;->k:Z

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/gyf/immersionbar/f;->c:Landroid/view/View;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lcom/gyf/immersionbar/f;->k:Z

    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method d()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/gyf/immersionbar/f;->j:I

    .line 3
    .line 4
    return-void
.end method

.method public onGlobalLayout()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/f;->a:Lcom/gyf/immersionbar/ImmersionBar;

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/gyf/immersionbar/ImmersionBar;->getBarParams()Lcom/gyf/immersionbar/b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_9

    .line 10
    .line 11
    iget-object v0, p0, Lcom/gyf/immersionbar/f;->a:Lcom/gyf/immersionbar/ImmersionBar;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/gyf/immersionbar/ImmersionBar;->getBarParams()Lcom/gyf/immersionbar/b;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-boolean v0, v0, Lcom/gyf/immersionbar/b;->F:Z

    .line 18
    .line 19
    if-eqz v0, :cond_9

    .line 20
    .line 21
    iget-object v0, p0, Lcom/gyf/immersionbar/f;->a:Lcom/gyf/immersionbar/ImmersionBar;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/gyf/immersionbar/ImmersionBar;->getBarConfig()Lcom/gyf/immersionbar/a;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/gyf/immersionbar/a;->n()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/gyf/immersionbar/a;->d()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v0}, Lcom/gyf/immersionbar/a;->g()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    :goto_0
    new-instance v2, Landroid/graphics/Rect;

    .line 43
    .line 44
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 45
    .line 46
    .line 47
    iget-object v3, p0, Lcom/gyf/immersionbar/f;->c:Landroid/view/View;

    .line 48
    .line 49
    invoke-virtual {v3, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 50
    .line 51
    .line 52
    iget-object v3, p0, Lcom/gyf/immersionbar/f;->d:Landroid/view/View;

    .line 53
    .line 54
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 59
    .line 60
    sub-int/2addr v3, v2

    .line 61
    iget v2, p0, Lcom/gyf/immersionbar/f;->j:I

    .line 62
    .line 63
    if-eq v3, v2, :cond_9

    .line 64
    .line 65
    iput v3, p0, Lcom/gyf/immersionbar/f;->j:I

    .line 66
    .line 67
    iget-object v2, p0, Lcom/gyf/immersionbar/f;->b:Landroid/view/Window;

    .line 68
    .line 69
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    const v4, 0x1020002

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-static {v2}, Lcom/gyf/immersionbar/ImmersionBar;->checkFitsSystemWindows(Landroid/view/View;)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    const/4 v4, 0x0

    .line 85
    const/4 v5, 0x1

    .line 86
    if-nez v2, :cond_6

    .line 87
    .line 88
    iget-object v2, p0, Lcom/gyf/immersionbar/f;->e:Landroid/view/View;

    .line 89
    .line 90
    if-eqz v2, :cond_4

    .line 91
    .line 92
    iget-object v2, p0, Lcom/gyf/immersionbar/f;->a:Lcom/gyf/immersionbar/ImmersionBar;

    .line 93
    .line 94
    invoke-virtual {v2}, Lcom/gyf/immersionbar/ImmersionBar;->getBarParams()Lcom/gyf/immersionbar/b;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    iget-boolean v2, v2, Lcom/gyf/immersionbar/b;->E:Z

    .line 99
    .line 100
    if-eqz v2, :cond_1

    .line 101
    .line 102
    iget-object v2, p0, Lcom/gyf/immersionbar/f;->a:Lcom/gyf/immersionbar/ImmersionBar;

    .line 103
    .line 104
    invoke-virtual {v2}, Lcom/gyf/immersionbar/ImmersionBar;->getActionBarHeight()I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    invoke-virtual {v0}, Lcom/gyf/immersionbar/a;->k()I

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    add-int/2addr v2, v6

    .line 113
    add-int/2addr v3, v2

    .line 114
    :cond_1
    iget-object v2, p0, Lcom/gyf/immersionbar/f;->a:Lcom/gyf/immersionbar/ImmersionBar;

    .line 115
    .line 116
    invoke-virtual {v2}, Lcom/gyf/immersionbar/ImmersionBar;->getBarParams()Lcom/gyf/immersionbar/b;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    iget-boolean v2, v2, Lcom/gyf/immersionbar/b;->y:Z

    .line 121
    .line 122
    if-eqz v2, :cond_2

    .line 123
    .line 124
    invoke-virtual {v0}, Lcom/gyf/immersionbar/a;->k()I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    add-int/2addr v3, v0

    .line 129
    :cond_2
    if-le v3, v1, :cond_3

    .line 130
    .line 131
    iget v0, p0, Lcom/gyf/immersionbar/f;->i:I

    .line 132
    .line 133
    add-int v4, v3, v0

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_3
    move v5, v4

    .line 137
    :goto_1
    iget-object v0, p0, Lcom/gyf/immersionbar/f;->d:Landroid/view/View;

    .line 138
    .line 139
    iget v1, p0, Lcom/gyf/immersionbar/f;->f:I

    .line 140
    .line 141
    iget v2, p0, Lcom/gyf/immersionbar/f;->g:I

    .line 142
    .line 143
    iget v3, p0, Lcom/gyf/immersionbar/f;->h:I

    .line 144
    .line 145
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 146
    .line 147
    .line 148
    :goto_2
    move v4, v5

    .line 149
    goto :goto_3

    .line 150
    :cond_4
    iget-object v0, p0, Lcom/gyf/immersionbar/f;->a:Lcom/gyf/immersionbar/ImmersionBar;

    .line 151
    .line 152
    invoke-virtual {v0}, Lcom/gyf/immersionbar/ImmersionBar;->getPaddingBottom()I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    sub-int/2addr v3, v1

    .line 157
    if-le v3, v1, :cond_5

    .line 158
    .line 159
    add-int v0, v3, v1

    .line 160
    .line 161
    move v4, v5

    .line 162
    :cond_5
    iget-object v1, p0, Lcom/gyf/immersionbar/f;->d:Landroid/view/View;

    .line 163
    .line 164
    iget-object v2, p0, Lcom/gyf/immersionbar/f;->a:Lcom/gyf/immersionbar/ImmersionBar;

    .line 165
    .line 166
    invoke-virtual {v2}, Lcom/gyf/immersionbar/ImmersionBar;->getPaddingLeft()I

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    iget-object v3, p0, Lcom/gyf/immersionbar/f;->a:Lcom/gyf/immersionbar/ImmersionBar;

    .line 171
    .line 172
    invoke-virtual {v3}, Lcom/gyf/immersionbar/ImmersionBar;->getPaddingTop()I

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    iget-object v5, p0, Lcom/gyf/immersionbar/f;->a:Lcom/gyf/immersionbar/ImmersionBar;

    .line 177
    .line 178
    invoke-virtual {v5}, Lcom/gyf/immersionbar/ImmersionBar;->getPaddingRight()I

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    invoke-virtual {v1, v2, v3, v5, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 183
    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_6
    sub-int/2addr v3, v1

    .line 187
    if-le v3, v1, :cond_7

    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/gyf/immersionbar/f;->a:Lcom/gyf/immersionbar/ImmersionBar;

    .line 191
    .line 192
    invoke-virtual {v0}, Lcom/gyf/immersionbar/ImmersionBar;->getBarParams()Lcom/gyf/immersionbar/b;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    if-nez v4, :cond_8

    .line 200
    .line 201
    iget-object v0, p0, Lcom/gyf/immersionbar/f;->a:Lcom/gyf/immersionbar/ImmersionBar;

    .line 202
    .line 203
    invoke-virtual {v0}, Lcom/gyf/immersionbar/ImmersionBar;->getBarParams()Lcom/gyf/immersionbar/b;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    iget-object v0, v0, Lcom/gyf/immersionbar/b;->j:Lcom/gyf/immersionbar/BarHide;

    .line 208
    .line 209
    sget-object v1, Lcom/gyf/immersionbar/BarHide;->FLAG_SHOW_BAR:Lcom/gyf/immersionbar/BarHide;

    .line 210
    .line 211
    if-eq v0, v1, :cond_8

    .line 212
    .line 213
    iget-object v0, p0, Lcom/gyf/immersionbar/f;->a:Lcom/gyf/immersionbar/ImmersionBar;

    .line 214
    .line 215
    invoke-virtual {v0}, Lcom/gyf/immersionbar/ImmersionBar;->setBar()V

    .line 216
    .line 217
    .line 218
    :cond_8
    if-nez v4, :cond_9

    .line 219
    .line 220
    iget-object v0, p0, Lcom/gyf/immersionbar/f;->a:Lcom/gyf/immersionbar/ImmersionBar;

    .line 221
    .line 222
    invoke-virtual {v0}, Lcom/gyf/immersionbar/ImmersionBar;->fitsParentBarKeyboard()V

    .line 223
    .line 224
    .line 225
    :cond_9
    return-void
.end method
