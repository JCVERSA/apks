.class public final Lcom/transsion/postdetail/ui/view/ImmVideoItemView$d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/baseui/widget/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->C()V
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

.field final synthetic f:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$d;->f:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string p1, ""

    .line 7
    .line 8
    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$d;->d:Ljava/lang/String;

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
    iput p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$d;->e:I

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
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$d;->f:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$isHorizontalDragging$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Z

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
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$d;->f:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getPagerLayoutManager$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

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
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$d;->f:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getViewBinding$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lwn/t;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v0, v0, Lwn/t;->u:Landroid/widget/ProgressBar;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iput v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$d;->a:I

    .line 34
    .line 35
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$d;->f:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 36
    .line 37
    invoke-static {v0, v1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$setContentVisibility(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Z)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$d;->f:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getViewBinding$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lwn/t;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v0, v0, Lwn/t;->D:Landroidx/appcompat/widget/AppCompatTextView;

    .line 47
    .line 48
    const-string v2, "tvProgressDes"

    .line 49
    .line 50
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$d;->f:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getViewBinding$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lwn/t;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v0, v0, Lwn/t;->w:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 63
    .line 64
    const-string v2, "seekBar"

    .line 65
    .line 66
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$d;->f:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 73
    .line 74
    invoke-static {v0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getViewBinding$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lwn/t;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iget-object v0, v0, Lwn/t;->u:Landroid/widget/ProgressBar;

    .line 79
    .line 80
    const-string v2, "progressBar"

    .line 81
    .line 82
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$d;->f:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 89
    .line 90
    invoke-static {v0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getViewBinding$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lwn/t;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iget-object v0, v0, Lwn/t;->u:Landroid/widget/ProgressBar;

    .line 95
    .line 96
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    iput v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$d;->c:I

    .line 101
    .line 102
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$d;->f:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 103
    .line 104
    invoke-static {v0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getViewBinding$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lwn/t;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iget-object v0, v0, Lwn/t;->u:Landroid/widget/ProgressBar;

    .line 109
    .line 110
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    iput v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$d;->b:I

    .line 115
    .line 116
    invoke-static {v0}, Lcom/transsion/postdetail/util/m;->c(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    iput-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$d;->d:Ljava/lang/String;

    .line 121
    .line 122
    :cond_1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$d;->f:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 123
    .line 124
    const/4 v2, 0x1

    .line 125
    invoke-static {v0, v2}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$setHorizontalDragging$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Z)V

    .line 126
    .line 127
    .line 128
    sub-float/2addr p2, p1

    .line 129
    iget p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$d;->b:I

    .line 130
    .line 131
    int-to-float v0, p1

    .line 132
    mul-float/2addr p2, v0

    .line 133
    iget v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$d;->c:I

    .line 134
    .line 135
    int-to-float v0, v0

    .line 136
    div-float/2addr p2, v0

    .line 137
    iget v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$d;->a:I

    .line 138
    .line 139
    int-to-float v0, v0

    .line 140
    add-float/2addr v0, p2

    .line 141
    float-to-int p2, v0

    .line 142
    if-gez p2, :cond_2

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_2
    if-le p2, p1, :cond_3

    .line 146
    .line 147
    move v1, p1

    .line 148
    goto :goto_0

    .line 149
    :cond_3
    move v1, p2

    .line 150
    :goto_0
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$d;->f:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 151
    .line 152
    invoke-static {p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getViewBinding$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lwn/t;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    iget-object p1, p1, Lwn/t;->D:Landroidx/appcompat/widget/AppCompatTextView;

    .line 157
    .line 158
    invoke-static {v1}, Lcom/transsion/postdetail/util/m;->c(I)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$d;->d:Ljava/lang/String;

    .line 163
    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string p2, " / "

    .line 173
    .line 174
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    .line 186
    .line 187
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$d;->f:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 188
    .line 189
    invoke-static {p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getViewBinding$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lwn/t;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    iget-object p1, p1, Lwn/t;->u:Landroid/widget/ProgressBar;

    .line 194
    .line 195
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 196
    .line 197
    .line 198
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$d;->f:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 199
    .line 200
    invoke-static {p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getViewBinding$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lwn/t;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    iget-object p1, p1, Lwn/t;->w:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 205
    .line 206
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 207
    .line 208
    .line 209
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
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$d;->f:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getPagerLayoutManager$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

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
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$d;->f:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$isHorizontalDragging$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$d;->f:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-static {v0, v2}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$setHorizontalDragging$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Z)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$d;->f:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$setContentVisibility(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Z)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$d;->f:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getViewBinding$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lwn/t;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v0, v0, Lwn/t;->D:Landroidx/appcompat/widget/AppCompatTextView;

    .line 39
    .line 40
    const-string v3, "tvProgressDes"

    .line 41
    .line 42
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$d;->f:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getViewBinding$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lwn/t;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-object v0, v0, Lwn/t;->w:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 55
    .line 56
    const-string v3, "seekBar"

    .line 57
    .line 58
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$d;->f:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 65
    .line 66
    invoke-static {v0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getViewBinding$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lwn/t;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-object v0, v0, Lwn/t;->u:Landroid/widget/ProgressBar;

    .line 71
    .line 72
    const-string v3, "progressBar"

    .line 73
    .line 74
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$d;->f:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 81
    .line 82
    invoke-static {v0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getViewBinding$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lwn/t;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iget-object v0, v0, Lwn/t;->u:Landroid/widget/ProgressBar;

    .line 87
    .line 88
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    int-to-long v3, v0

    .line 93
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$d;->f:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 94
    .line 95
    invoke-static {v0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$isSeekToFinish$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    invoke-virtual {v5, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_2

    .line 104
    .line 105
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$d;->f:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 106
    .line 107
    invoke-static {v1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getOrPlayer$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lcom/transsion/player/orplayer/f;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    if-eqz v1, :cond_1

    .line 112
    .line 113
    invoke-interface {v1, v3, v4}, Lcom/transsion/player/orplayer/f;->seekTo(J)V

    .line 114
    .line 115
    .line 116
    :cond_1
    const-wide/16 v3, 0x0

    .line 117
    .line 118
    :cond_2
    invoke-static {v0, v3, v4}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$setNextSeekTo$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;J)V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$d;->f:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 122
    .line 123
    invoke-static {v0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getOrPlayer$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lcom/transsion/player/orplayer/f;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    if-eqz v0, :cond_3

    .line 128
    .line 129
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->isPlaying()Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-nez v0, :cond_3

    .line 134
    .line 135
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$d;->f:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    .line 136
    .line 137
    invoke-static {v0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getOrPlayer$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lcom/transsion/player/orplayer/f;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    if-eqz v0, :cond_3

    .line 142
    .line 143
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->play()V

    .line 144
    .line 145
    .line 146
    :cond_3
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
