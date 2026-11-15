.class public final Llu/g;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llu/g$a;
    }
.end annotation


# instance fields
.field private final a:Llu/g$a;

.field private final b:Llu/i;

.field private c:Landroid/view/GestureDetector;

.field private d:Z

.field private e:Z

.field private f:F


# direct methods
.method public constructor <init>(Llu/g$a;Llu/i;)V
    .locals 1

    .line 1
    const-string v0, "host"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "reportDelegate"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Llu/g;->a:Llu/g$a;

    .line 15
    .line 16
    iput-object p2, p0, Llu/g;->b:Llu/i;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Llu/g;->j(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic b(Llu/g;)Llu/g$a;
    .locals 0

    .line 1
    iget-object p0, p0, Llu/g;->a:Llu/g$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic c(Llu/g;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Llu/g;->e:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic d(Llu/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Llu/g;->l()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic e(Llu/g;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Llu/g;->e:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic f(Llu/g;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Llu/g;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic g(Llu/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Llu/g;->n()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final h()V
    .locals 8

    .line 1
    iget v0, p0, Llu/g;->f:F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    cmpl-float v0, v0, v1

    .line 5
    .line 6
    if-lez v0, :cond_1

    .line 7
    .line 8
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 9
    .line 10
    iget-object v0, p0, Llu/g;->a:Llu/g$a;

    .line 11
    .line 12
    invoke-interface {v0}, Llu/g$a;->getLogTag()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    iget v0, p0, Llu/g;->f:F

    .line 17
    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v5, "endFastForward speed:"

    .line 24
    .line 25
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    const/4 v6, 0x4

    .line 36
    const/4 v7, 0x0

    .line 37
    const/4 v5, 0x0

    .line 38
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Llu/g;->a:Llu/g$a;

    .line 42
    .line 43
    invoke-interface {v0}, Llu/g$a;->getOrPlayer()Lcom/transsion/player/orplayer/f;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    iget v2, p0, Llu/g;->f:F

    .line 50
    .line 51
    invoke-interface {v0, v2}, Lcom/transsion/player/orplayer/f;->setSpeed(F)V

    .line 52
    .line 53
    .line 54
    :cond_0
    iget-object v0, p0, Llu/g;->a:Llu/g$a;

    .line 55
    .line 56
    invoke-interface {v0}, Llu/g$a;->a()Liu/r;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget-object v0, v0, Liu/r;->F:Lcom/noober/background/view/BLTextView;

    .line 61
    .line 62
    const-string v2, "tvUgcImmTopSpeed"

    .line 63
    .line 64
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 68
    .line 69
    .line 70
    iput v1, p0, Llu/g;->f:F

    .line 71
    .line 72
    iget-object v0, p0, Llu/g;->a:Llu/g$a;

    .line 73
    .line 74
    const/4 v1, 0x1

    .line 75
    invoke-interface {v0, v1}, Llu/g$a;->e(Z)V

    .line 76
    .line 77
    .line 78
    :cond_1
    return-void
.end method

.method private static final j(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method private final l()V
    .locals 2

    .line 1
    iget-object v0, p0, Llu/g;->a:Llu/g$a;

    .line 2
    .line 3
    invoke-interface {v0}, Llu/g$a;->isLoading()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Llu/g;->a:Llu/g$a;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-interface {v0, v1}, Llu/g$a;->e(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Llu/g;->a:Llu/g$a;

    .line 17
    .line 18
    invoke-interface {v0}, Llu/g$a;->getOrPlayer()Lcom/transsion/player/orplayer/f;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->isPlaying()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-ne v0, v1, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Llu/g;->a:Llu/g$a;

    .line 31
    .line 32
    invoke-interface {v0, v1}, Llu/g$a;->h(Z)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Llu/g;->a:Llu/g$a;

    .line 36
    .line 37
    invoke-interface {v0}, Llu/g$a;->getOrPlayer()Lcom/transsion/player/orplayer/f;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->pause()V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, p0, Llu/g;->a:Llu/g$a;

    .line 48
    .line 49
    invoke-interface {v0}, Llu/g$a;->g()V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Llu/g;->a:Llu/g$a;

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    invoke-interface {v0, v1}, Llu/g$a;->h(Z)V

    .line 56
    .line 57
    .line 58
    :cond_2
    :goto_0
    return-void
.end method

.method private final n()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Llu/g;->a:Llu/g$a;

    .line 4
    .line 5
    invoke-interface {v1}, Llu/g$a;->getOrPlayer()Lcom/transsion/player/orplayer/f;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-interface {v1}, Lcom/transsion/player/orplayer/f;->isPlaying()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v1, v0, Llu/g;->a:Llu/g$a;

    .line 19
    .line 20
    invoke-interface {v1}, Llu/g$a;->b()Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->X0()F

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    .line 32
    .line 33
    :goto_0
    iput v1, v0, Llu/g;->f:F

    .line 34
    .line 35
    iget-object v1, v0, Llu/g;->a:Llu/g$a;

    .line 36
    .line 37
    invoke-interface {v1}, Llu/g$a;->getOrPlayer()Lcom/transsion/player/orplayer/f;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const/high16 v2, 0x40000000    # 2.0f

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    iget v3, v0, Llu/g;->f:F

    .line 46
    .line 47
    mul-float/2addr v3, v2

    .line 48
    invoke-interface {v1, v3}, Lcom/transsion/player/orplayer/f;->setSpeed(F)V

    .line 49
    .line 50
    .line 51
    :cond_2
    iget-object v4, v0, Llu/g;->b:Llu/i;

    .line 52
    .line 53
    iget-object v1, v0, Llu/g;->a:Llu/g$a;

    .line 54
    .line 55
    invoke-interface {v1}, Llu/g$a;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const/4 v3, 0x0

    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    move-object v6, v1

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    move-object v6, v3

    .line 69
    :goto_1
    iget-object v1, v0, Llu/g;->a:Llu/g$a;

    .line 70
    .line 71
    invoke-interface {v1}, Llu/g$a;->b()Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    if-eqz v1, :cond_4

    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->Y0()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    move-object v7, v1

    .line 86
    goto :goto_2

    .line 87
    :cond_4
    move-object v7, v3

    .line 88
    :goto_2
    const/16 v10, 0x18

    .line 89
    .line 90
    const/4 v11, 0x0

    .line 91
    const-string v5, "long_pressed"

    .line 92
    .line 93
    const/4 v8, 0x0

    .line 94
    const/4 v9, 0x0

    .line 95
    invoke-static/range {v4 .. v11}, Llu/i;->b(Llu/i;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    sget-object v12, Lwf/a;->a:Lwf/a$a;

    .line 99
    .line 100
    iget-object v1, v0, Llu/g;->a:Llu/g$a;

    .line 101
    .line 102
    invoke-interface {v1}, Llu/g$a;->getLogTag()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v13

    .line 106
    iget v1, v0, Llu/g;->f:F

    .line 107
    .line 108
    mul-float/2addr v1, v2

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    const-string v4, "startFastForward speed:"

    .line 115
    .line 116
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v14

    .line 126
    const/16 v16, 0x4

    .line 127
    .line 128
    const/16 v17, 0x0

    .line 129
    .line 130
    const/4 v15, 0x0

    .line 131
    invoke-static/range {v12 .. v17}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    iget-object v1, v0, Llu/g;->a:Llu/g$a;

    .line 135
    .line 136
    invoke-interface {v1}, Llu/g$a;->a()Liu/r;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    iget-object v1, v1, Liu/r;->F:Lcom/noober/background/view/BLTextView;

    .line 141
    .line 142
    iget v3, v0, Llu/g;->f:F

    .line 143
    .line 144
    mul-float/2addr v3, v2

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v3, "x"

    .line 154
    .line 155
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    .line 164
    .line 165
    iget-object v1, v0, Llu/g;->a:Llu/g$a;

    .line 166
    .line 167
    invoke-interface {v1}, Llu/g$a;->a()Liu/r;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    iget-object v1, v1, Liu/r;->F:Lcom/noober/background/view/BLTextView;

    .line 172
    .line 173
    const-string v2, "tvUgcImmTopSpeed"

    .line 174
    .line 175
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-static {v1}, Luf/c;->k(Landroid/view/View;)V

    .line 179
    .line 180
    .line 181
    iget-object v1, v0, Llu/g;->a:Llu/g$a;

    .line 182
    .line 183
    const/4 v2, 0x0

    .line 184
    invoke-interface {v1, v2}, Llu/g$a;->e(Z)V

    .line 185
    .line 186
    .line 187
    return-void
.end method


# virtual methods
.method public final i()V
    .locals 3

    .line 1
    iget-object v0, p0, Llu/g;->a:Llu/g$a;

    .line 2
    .line 3
    invoke-interface {v0}, Llu/g$a;->a()Liu/r;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Liu/r;->getRoot()Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Landroid/view/GestureDetector;

    .line 16
    .line 17
    new-instance v2, Llu/g$b;

    .line 18
    .line 19
    invoke-direct {v2, p0}, Llu/g$b;-><init>(Llu/g;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v0, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Llu/g;->c:Landroid/view/GestureDetector;

    .line 26
    .line 27
    new-instance v1, Lcom/transsion/baseui/widget/f;

    .line 28
    .line 29
    iget-object v2, p0, Llu/g;->a:Llu/g$a;

    .line 30
    .line 31
    invoke-interface {v2}, Llu/g$a;->a()Liu/r;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iget-object v2, v2, Liu/r;->L:Lcom/transsion/shorttv/ui/widget/ShortTvVideoProgressDragGestureView;

    .line 36
    .line 37
    invoke-direct {v1, v0, v2}, Lcom/transsion/baseui/widget/f;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    new-instance v2, Llu/g$c;

    .line 41
    .line 42
    invoke-direct {v2, p0, v0}, Llu/g$c;-><init>(Llu/g;Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Lcom/transsion/baseui/widget/f;->s(Lcom/transsion/baseui/widget/f$a;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Llu/g;->a:Llu/g$a;

    .line 49
    .line 50
    invoke-interface {v0}, Llu/g$a;->a()Liu/r;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-object v0, v0, Liu/r;->y:Lcom/tn/lib/view/SecondariesSeekBar;

    .line 55
    .line 56
    new-instance v1, Llu/f;

    .line 57
    .line 58
    invoke-direct {v1}, Llu/f;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Llu/g;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public final m(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq v0, v2, :cond_0

    .line 13
    .line 14
    const/4 v3, 0x3

    .line 15
    if-eq v0, v3, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-boolean v0, p0, Llu/g;->d:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iput-boolean v1, p0, Llu/g;->d:Z

    .line 23
    .line 24
    invoke-direct {p0}, Llu/g;->h()V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    iget-object v0, p0, Llu/g;->c:Landroid/view/GestureDetector;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-ne p1, v2, :cond_2

    .line 36
    .line 37
    move v1, v2

    .line 38
    :cond_2
    return v1
.end method
