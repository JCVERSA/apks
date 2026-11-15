.class public final Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/shorttv_pugc/base/widget/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->G()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:I

.field final synthetic f:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->f:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string p1, ""

    .line 7
    .line 8
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->d:Ljava/lang/String;

    .line 9
    .line 10
    const/high16 p1, 0x3fc00000    # 1.5f

    .line 11
    .line 12
    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iput p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->e:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public b(FF)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->f:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->access$isHorizontalDragging$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->f:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->access$getPagerLayoutManager$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;->W(Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->f:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->access$getViewBinding$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lqr/j0;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v0, v0, Lqr/j0;->r:Landroid/widget/ProgressBar;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iput v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->a:I

    .line 34
    .line 35
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->f:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->access$getViewBinding$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lqr/j0;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v0, v0, Lqr/j0;->u:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 42
    .line 43
    const-string v2, "seekBar"

    .line 44
    .line 45
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lgs/b;->d(Landroid/view/View;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->f:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    .line 52
    .line 53
    invoke-static {v0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->access$getViewBinding$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lqr/j0;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object v0, v0, Lqr/j0;->r:Landroid/widget/ProgressBar;

    .line 58
    .line 59
    const-string v2, "progressBar"

    .line 60
    .line 61
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Lgs/b;->b(Landroid/view/View;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->f:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    .line 68
    .line 69
    invoke-static {v0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->access$getViewBinding$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lqr/j0;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget-object v0, v0, Lqr/j0;->r:Landroid/widget/ProgressBar;

    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    iput v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->c:I

    .line 80
    .line 81
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->f:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    .line 82
    .line 83
    invoke-static {v0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->access$getViewBinding$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lqr/j0;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iget-object v0, v0, Lqr/j0;->r:Landroid/widget/ProgressBar;

    .line 88
    .line 89
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    iput v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->b:I

    .line 94
    .line 95
    invoke-static {v0}, Lcom/transsion/shorttv_pugc/utils/j;->a(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iput-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->d:Ljava/lang/String;

    .line 100
    .line 101
    :cond_1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->f:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    .line 102
    .line 103
    const/4 v2, 0x1

    .line 104
    invoke-static {v0, v2}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->access$setHorizontalDragging$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;Z)V

    .line 105
    .line 106
    .line 107
    sub-float/2addr p2, p1

    .line 108
    iget p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->b:I

    .line 109
    .line 110
    int-to-float v0, p1

    .line 111
    mul-float/2addr p2, v0

    .line 112
    iget v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->c:I

    .line 113
    .line 114
    int-to-float v0, v0

    .line 115
    div-float/2addr p2, v0

    .line 116
    iget v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->a:I

    .line 117
    .line 118
    int-to-float v0, v0

    .line 119
    add-float/2addr v0, p2

    .line 120
    float-to-int p2, v0

    .line 121
    if-gez p2, :cond_2

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_2
    if-le p2, p1, :cond_3

    .line 125
    .line 126
    move v1, p1

    .line 127
    goto :goto_0

    .line 128
    :cond_3
    move v1, p2

    .line 129
    :goto_0
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->f:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    .line 130
    .line 131
    int-to-long v0, v1

    .line 132
    invoke-static {p1, v0, v1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->access$updateProgress(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;J)V

    .line 133
    .line 134
    .line 135
    return-void
.end method

.method public c(FF)V
    .locals 0

    .line 1
    return-void
.end method

.method public d(FF)V
    .locals 0

    .line 1
    return-void
.end method

.method public e()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->f:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->access$getPagerLayoutManager$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;->W(Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->f:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->access$isHorizontalDragging$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_5

    .line 20
    .line 21
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->f:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-static {v0, v1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->access$setHorizontalDragging$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;Z)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->f:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->access$getViewBinding$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lqr/j0;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v0, v0, Lqr/j0;->u:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 34
    .line 35
    const-string v1, "seekBar"

    .line 36
    .line 37
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lgs/b;->b(Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->f:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->access$getViewBinding$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lqr/j0;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v0, v0, Lqr/j0;->r:Landroid/widget/ProgressBar;

    .line 50
    .line 51
    const-string v1, "progressBar"

    .line 52
    .line 53
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Lgs/b;->d(Landroid/view/View;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->f:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    .line 60
    .line 61
    invoke-static {v0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->access$getViewBinding$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lqr/j0;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-object v0, v0, Lqr/j0;->r:Landroid/widget/ProgressBar;

    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    int-to-long v0, v0

    .line 72
    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->f:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    .line 73
    .line 74
    invoke-static {v2}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->access$getData$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    if-eqz v2, :cond_1

    .line 79
    .line 80
    invoke-virtual {v2}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getPlayUrl()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    goto :goto_0

    .line 85
    :cond_1
    const/4 v2, 0x0

    .line 86
    :goto_0
    if-eqz v2, :cond_4

    .line 87
    .line 88
    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->f:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    .line 89
    .line 90
    invoke-static {v2}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->access$getOrPlayer$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lcom/transsion/player/orplayer/f;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    if-eqz v2, :cond_2

    .line 95
    .line 96
    invoke-interface {v2, v0, v1}, Lcom/transsion/player/orplayer/f;->seekTo(J)V

    .line 97
    .line 98
    .line 99
    :cond_2
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->f:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    .line 100
    .line 101
    invoke-static {v0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->access$getOrPlayer$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lcom/transsion/player/orplayer/f;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    if-eqz v0, :cond_3

    .line 106
    .line 107
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->isPlaying()Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-nez v0, :cond_3

    .line 112
    .line 113
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->f:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    .line 114
    .line 115
    invoke-static {v0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->access$getOrPlayer$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lcom/transsion/player/orplayer/f;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    if-eqz v0, :cond_3

    .line 120
    .line 121
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->play()V

    .line 122
    .line 123
    .line 124
    :cond_3
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->f:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    .line 125
    .line 126
    invoke-static {v0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->access$getDotLayer$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lxs/c;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    if-eqz v0, :cond_5

    .line 131
    .line 132
    invoke-virtual {v0}, Lxs/c;->h()V

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_4
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 137
    .line 138
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;->f:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    .line 139
    .line 140
    invoke-static {v0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->access$getTAG$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    const/4 v5, 0x4

    .line 145
    const/4 v6, 0x0

    .line 146
    const-string v3, "\u6570\u636e\u8fd8\u6ca1\u6709\u62c9\u4e0b\u6765\uff0c\u4e0d\u8fdb\u884cseek"

    .line 147
    .line 148
    const/4 v4, 0x0

    .line 149
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    :cond_5
    :goto_1
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
