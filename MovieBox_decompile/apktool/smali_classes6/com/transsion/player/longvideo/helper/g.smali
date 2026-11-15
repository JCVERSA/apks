.class public final Lcom/transsion/player/longvideo/helper/g;
.super Lcom/transsion/player/longvideo/helper/d;
.source "source.java"


# instance fields
.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/player/longvideo/helper/d;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lcom/transsion/player/longvideo/helper/g;Lmn/j;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/player/longvideo/helper/g;->g(Lcom/transsion/player/longvideo/helper/g;Lmn/j;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Lcom/transsion/player/longvideo/helper/g;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/longvideo/helper/g;->i(Lcom/transsion/player/longvideo/helper/g;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final g(Lcom/transsion/player/longvideo/helper/g;Lmn/j;Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p0, Lcom/transsion/player/longvideo/helper/g;->d:Z

    .line 3
    .line 4
    iget-object p0, p1, Lmn/j;->o:Lmn/k;

    .line 5
    .line 6
    iget-object p0, p0, Lmn/k;->g:Landroid/widget/FrameLayout;

    .line 7
    .line 8
    const-string p2, "gameContainer"

    .line 9
    .line 10
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Luf/c;->g(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p1, Lmn/j;->o:Lmn/k;

    .line 17
    .line 18
    iget-object p0, p0, Lmn/k;->j:Landroidx/appcompat/widget/AppCompatImageView;

    .line 19
    .line 20
    const-string p1, "ivGameClose"

    .line 21
    .line 22
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p0}, Luf/c;->g(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private static final i(Lcom/transsion/player/longvideo/helper/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/player/longvideo/helper/d;->b()Lmn/j;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lmn/j;->o:Lmn/k;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lmn/k;->j:Landroidx/appcompat/widget/AppCompatImageView;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-static {p0}, Luf/c;->k(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;Lmn/j;)V
    .locals 1

    .line 1
    const-string v0, "viewBinding"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/transsion/player/longvideo/helper/d;->c(Ljava/lang/String;Lmn/j;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p2, Lmn/j;->o:Lmn/k;

    .line 10
    .line 11
    iget-object p1, p1, Lmn/k;->j:Landroidx/appcompat/widget/AppCompatImageView;

    .line 12
    .line 13
    new-instance v0, Lcom/transsion/player/longvideo/helper/f;

    .line 14
    .line 15
    invoke-direct {v0, p0, p2}, Lcom/transsion/player/longvideo/helper/f;-><init>(Lcom/transsion/player/longvideo/helper/g;Lmn/j;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final h(Lcom/transsion/player/longvideo/ui/LongVodUiType;)V
    .locals 4

    .line 1
    const-string v0, "uiType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/transsion/player/longvideo/helper/d;->a()Lkn/a$b;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0, p1}, Lkn/a$b;->d(Lcom/transsion/player/longvideo/ui/LongVodUiType;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    sget-object v0, Lcom/transsion/player/longvideo/ui/LongVodUiType;->MIDDLE:Lcom/transsion/player/longvideo/ui/LongVodUiType;

    .line 16
    .line 17
    if-eq p1, v0, :cond_9

    .line 18
    .line 19
    iget-boolean p1, p0, Lcom/transsion/player/longvideo/helper/g;->d:Z

    .line 20
    .line 21
    if-nez p1, :cond_9

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/transsion/player/longvideo/helper/d;->a()Lkn/a$b;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_9

    .line 28
    .line 29
    invoke-interface {p1}, Lkn/a$b;->e()Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_9

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    check-cast v0, Landroid/view/ViewGroup;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move-object v0, v2

    .line 48
    :goto_0
    if-eqz v0, :cond_2

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    instance-of v0, p1, Lwj/c;

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    move-object v2, p1

    .line 58
    check-cast v2, Lwj/c;

    .line 59
    .line 60
    :cond_3
    if-eqz v2, :cond_4

    .line 61
    .line 62
    const-string v0, "fullscreen"

    .line 63
    .line 64
    invoke-interface {v2, v0}, Lwj/c;->setPageStyle(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/player/longvideo/helper/d;->b()Lmn/j;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-eqz v0, :cond_5

    .line 72
    .line 73
    iget-object v0, v0, Lmn/j;->o:Lmn/k;

    .line 74
    .line 75
    if-eqz v0, :cond_5

    .line 76
    .line 77
    iget-object v0, v0, Lmn/k;->g:Landroid/widget/FrameLayout;

    .line 78
    .line 79
    if-eqz v0, :cond_5

    .line 80
    .line 81
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 82
    .line 83
    .line 84
    :cond_5
    invoke-virtual {p0}, Lcom/transsion/player/longvideo/helper/d;->b()Lmn/j;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    if-eqz v0, :cond_6

    .line 89
    .line 90
    iget-object v0, v0, Lmn/j;->o:Lmn/k;

    .line 91
    .line 92
    if-eqz v0, :cond_6

    .line 93
    .line 94
    iget-object v0, v0, Lmn/k;->j:Landroidx/appcompat/widget/AppCompatImageView;

    .line 95
    .line 96
    if-eqz v0, :cond_6

    .line 97
    .line 98
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 99
    .line 100
    .line 101
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/player/longvideo/helper/d;->b()Lmn/j;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    if-eqz v0, :cond_7

    .line 106
    .line 107
    iget-object v0, v0, Lmn/j;->o:Lmn/k;

    .line 108
    .line 109
    if-eqz v0, :cond_7

    .line 110
    .line 111
    iget-object v0, v0, Lmn/k;->g:Landroid/widget/FrameLayout;

    .line 112
    .line 113
    if-eqz v0, :cond_7

    .line 114
    .line 115
    new-instance v1, Lcom/transsion/player/longvideo/helper/e;

    .line 116
    .line 117
    invoke-direct {v1, p0}, Lcom/transsion/player/longvideo/helper/e;-><init>(Lcom/transsion/player/longvideo/helper/g;)V

    .line 118
    .line 119
    .line 120
    const-wide/16 v2, 0xbb8

    .line 121
    .line 122
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 123
    .line 124
    .line 125
    :cond_7
    invoke-virtual {p0}, Lcom/transsion/player/longvideo/helper/d;->b()Lmn/j;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    if-eqz v0, :cond_8

    .line 130
    .line 131
    iget-object v0, v0, Lmn/j;->o:Lmn/k;

    .line 132
    .line 133
    if-eqz v0, :cond_8

    .line 134
    .line 135
    iget-object v0, v0, Lmn/k;->g:Landroid/widget/FrameLayout;

    .line 136
    .line 137
    if-eqz v0, :cond_8

    .line 138
    .line 139
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 140
    .line 141
    .line 142
    :cond_8
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 143
    .line 144
    const/4 v1, -0x1

    .line 145
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Lcom/transsion/player/longvideo/helper/d;->b()Lmn/j;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    if-eqz v1, :cond_9

    .line 153
    .line 154
    iget-object v1, v1, Lmn/j;->o:Lmn/k;

    .line 155
    .line 156
    if-eqz v1, :cond_9

    .line 157
    .line 158
    iget-object v1, v1, Lmn/k;->g:Landroid/widget/FrameLayout;

    .line 159
    .line 160
    if-eqz v1, :cond_9

    .line 161
    .line 162
    invoke-virtual {v1, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    .line 164
    .line 165
    :cond_9
    return-void
.end method
