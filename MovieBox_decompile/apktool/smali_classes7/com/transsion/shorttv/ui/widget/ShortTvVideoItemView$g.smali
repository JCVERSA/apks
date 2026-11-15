.class public final Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/shorttv/base/widget/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->e0()V
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

.field final synthetic f:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->f:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string p1, ""

    .line 7
    .line 8
    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->d:Ljava/lang/String;

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
    iput p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->e:I

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
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->f:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$isHorizontalDragging$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Z

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
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->f:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getPagerLayoutManager$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/transsion/shorttv/base/pager/PagerLayoutManager;->W(Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->f:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getViewBinding$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lqr/k0;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v0, v0, Lqr/k0;->s:Landroid/widget/ProgressBar;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iput v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->a:I

    .line 34
    .line 35
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->f:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getViewBinding$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lqr/k0;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v0, v0, Lqr/k0;->C:Landroidx/appcompat/widget/AppCompatTextView;

    .line 42
    .line 43
    const-string v2, "tvProgressDes"

    .line 44
    .line 45
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lcr/b;->e(Landroid/view/View;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->f:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 52
    .line 53
    invoke-static {v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getViewBinding$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lqr/k0;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object v0, v0, Lqr/k0;->u:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 58
    .line 59
    const-string v2, "seekBar"

    .line 60
    .line 61
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Lcr/b;->e(Landroid/view/View;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->f:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 68
    .line 69
    invoke-static {v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getViewBinding$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lqr/k0;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget-object v0, v0, Lqr/k0;->s:Landroid/widget/ProgressBar;

    .line 74
    .line 75
    const-string v2, "progressBar"

    .line 76
    .line 77
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-static {v0}, Lcr/b;->b(Landroid/view/View;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->f:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 84
    .line 85
    invoke-static {v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getViewBinding$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lqr/k0;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iget-object v0, v0, Lqr/k0;->s:Landroid/widget/ProgressBar;

    .line 90
    .line 91
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    iput v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->c:I

    .line 96
    .line 97
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->f:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 98
    .line 99
    invoke-static {v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getViewBinding$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lqr/k0;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iget-object v0, v0, Lqr/k0;->s:Landroid/widget/ProgressBar;

    .line 104
    .line 105
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    iput v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->b:I

    .line 110
    .line 111
    invoke-static {v0}, Lcom/transsion/shorttv/utils/m;->a(I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    iput-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->d:Ljava/lang/String;

    .line 116
    .line 117
    :cond_1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->f:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 118
    .line 119
    const/4 v2, 0x1

    .line 120
    invoke-static {v0, v2}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$setHorizontalDragging$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Z)V

    .line 121
    .line 122
    .line 123
    sub-float/2addr p2, p1

    .line 124
    iget p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->b:I

    .line 125
    .line 126
    int-to-float v0, p1

    .line 127
    mul-float/2addr p2, v0

    .line 128
    iget v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->c:I

    .line 129
    .line 130
    int-to-float v0, v0

    .line 131
    div-float/2addr p2, v0

    .line 132
    iget v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->a:I

    .line 133
    .line 134
    int-to-float v0, v0

    .line 135
    add-float/2addr v0, p2

    .line 136
    float-to-int p2, v0

    .line 137
    if-gez p2, :cond_2

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_2
    if-le p2, p1, :cond_3

    .line 141
    .line 142
    move v1, p1

    .line 143
    goto :goto_0

    .line 144
    :cond_3
    move v1, p2

    .line 145
    :goto_0
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->f:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 146
    .line 147
    invoke-static {p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getViewBinding$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lqr/k0;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    iget-object p1, p1, Lqr/k0;->C:Landroidx/appcompat/widget/AppCompatTextView;

    .line 152
    .line 153
    invoke-static {v1}, Lcom/transsion/shorttv/utils/m;->a(I)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->d:Ljava/lang/String;

    .line 158
    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string p2, " / "

    .line 168
    .line 169
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    .line 181
    .line 182
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->f:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 183
    .line 184
    int-to-long v0, v1

    .line 185
    invoke-static {p1, v0, v1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$updateProgress(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;J)V

    .line 186
    .line 187
    .line 188
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
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->f:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getPagerLayoutManager$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/transsion/shorttv/base/pager/PagerLayoutManager;->W(Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->f:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$isHorizontalDragging$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->f:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-static {v0, v2}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$setHorizontalDragging$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Z)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->f:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getViewBinding$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lqr/k0;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v0, v0, Lqr/k0;->C:Landroidx/appcompat/widget/AppCompatTextView;

    .line 34
    .line 35
    const-string v2, "tvProgressDes"

    .line 36
    .line 37
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lcr/b;->b(Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->f:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getViewBinding$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lqr/k0;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v0, v0, Lqr/k0;->u:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 50
    .line 51
    const-string v2, "seekBar"

    .line 52
    .line 53
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Lcr/b;->b(Landroid/view/View;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->f:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 60
    .line 61
    invoke-static {v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getViewBinding$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lqr/k0;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-object v0, v0, Lqr/k0;->s:Landroid/widget/ProgressBar;

    .line 66
    .line 67
    const-string v2, "progressBar"

    .line 68
    .line 69
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {v0}, Lcr/b;->e(Landroid/view/View;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->f:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 76
    .line 77
    invoke-static {v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getViewBinding$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lqr/k0;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iget-object v0, v0, Lqr/k0;->s:Landroid/widget/ProgressBar;

    .line 82
    .line 83
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    int-to-long v2, v0

    .line 88
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->f:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 89
    .line 90
    invoke-static {v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getData$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lnr/e;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    if-eqz v0, :cond_2

    .line 95
    .line 96
    invoke-static {v0}, Lnr/l;->a(Lnr/e;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-ne v0, v1, :cond_2

    .line 101
    .line 102
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->f:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 103
    .line 104
    invoke-static {v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getOrPlayer$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lcom/transsion/player/orplayer/f;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    if-eqz v0, :cond_1

    .line 109
    .line 110
    invoke-interface {v0, v2, v3}, Lcom/transsion/player/orplayer/f;->seekTo(J)V

    .line 111
    .line 112
    .line 113
    :cond_1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->f:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 114
    .line 115
    invoke-static {v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getOrPlayer$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lcom/transsion/player/orplayer/f;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    if-eqz v0, :cond_3

    .line 120
    .line 121
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->isPlaying()Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-nez v0, :cond_3

    .line 126
    .line 127
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->f:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 128
    .line 129
    invoke-static {v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$playVideo(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_2
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 134
    .line 135
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;->f:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 136
    .line 137
    invoke-static {v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getTAG$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    const/4 v5, 0x4

    .line 142
    const/4 v6, 0x0

    .line 143
    const-string v3, "\u6570\u636e\u8fd8\u6ca1\u6709\u62c9\u4e0b\u6765\uff0c\u4e0d\u8fdb\u884cseek"

    .line 144
    .line 145
    const/4 v4, 0x0

    .line 146
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    :cond_3
    :goto_0
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
