.class public final Llu/h;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llu/h$a;
    }
.end annotation


# instance fields
.field private final a:Llu/h$a;


# direct methods
.method public constructor <init>(Llu/h$a;)V
    .locals 1

    .line 1
    const-string v0, "host"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Llu/h;->a:Llu/h$a;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 7

    .line 1
    iget-object v0, p0, Llu/h;->a:Llu/h$a;

    .line 2
    .line 3
    invoke-interface {v0}, Llu/h$a;->b()Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Llu/h;->a:Llu/h$a;

    .line 10
    .line 11
    invoke-interface {v0}, Llu/h$a;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    move-wide v3, p3

    .line 16
    move-wide v5, p1

    .line 17
    invoke-virtual/range {v1 .. v6}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->f1(Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;JJ)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final b(JZ)V
    .locals 8

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object p3, p0, Llu/h;->a:Llu/h$a;

    .line 5
    .line 6
    invoke-interface {p3}, Llu/h$a;->a()Liu/r;

    .line 7
    .line 8
    .line 9
    move-result-object p3

    .line 10
    iget-object p3, p3, Liu/r;->y:Lcom/tn/lib/view/SecondariesSeekBar;

    .line 11
    .line 12
    invoke-virtual {p3}, Lcom/tn/lib/view/SecondariesSeekBar;->getMaxProgress()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    const-wide/16 v2, 0x0

    .line 17
    .line 18
    cmp-long p3, v0, v2

    .line 19
    .line 20
    if-lez p3, :cond_1

    .line 21
    .line 22
    const-wide/16 v4, 0x64

    .line 23
    .line 24
    cmp-long p3, v0, v4

    .line 25
    .line 26
    if-eqz p3, :cond_1

    .line 27
    .line 28
    iget-object p3, p0, Llu/h;->a:Llu/h$a;

    .line 29
    .line 30
    invoke-interface {p3}, Llu/h$a;->getOrPlayer()Lcom/transsion/player/orplayer/f;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    if-eqz p3, :cond_1

    .line 35
    .line 36
    invoke-interface {p3}, Lcom/transsion/player/orplayer/f;->getDuration()J

    .line 37
    .line 38
    .line 39
    move-result-wide v4

    .line 40
    cmp-long p3, v0, v4

    .line 41
    .line 42
    if-nez p3, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    iget-object p3, p0, Llu/h;->a:Llu/h$a;

    .line 46
    .line 47
    invoke-interface {p3}, Llu/h$a;->getOrPlayer()Lcom/transsion/player/orplayer/f;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    if-eqz p3, :cond_2

    .line 52
    .line 53
    invoke-interface {p3}, Lcom/transsion/player/orplayer/f;->getDuration()J

    .line 54
    .line 55
    .line 56
    move-result-wide v0

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    move-wide v0, v2

    .line 59
    :goto_0
    cmp-long p3, v0, v2

    .line 60
    .line 61
    if-gtz p3, :cond_3

    .line 62
    .line 63
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 64
    .line 65
    iget-object p1, p0, Llu/h;->a:Llu/h$a;

    .line 66
    .line 67
    invoke-interface {p1}, Llu/h$a;->getLogTag()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    const/4 v6, 0x4

    .line 72
    const/4 v7, 0x0

    .line 73
    const-string v4, "onProgress- duration <= 0, return"

    .line 74
    .line 75
    const/4 v5, 0x0

    .line 76
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_3
    invoke-virtual {p0, v0, v1}, Llu/h;->h(J)V

    .line 81
    .line 82
    .line 83
    :goto_1
    iget-object p3, p0, Llu/h;->a:Llu/h$a;

    .line 84
    .line 85
    invoke-interface {p3}, Llu/h$a;->f()Lcom/transsion/ugcvideodetail/hepler/a;

    .line 86
    .line 87
    .line 88
    move-result-object p3

    .line 89
    if-eqz p3, :cond_4

    .line 90
    .line 91
    invoke-virtual {p3, p1, p2}, Lcom/transsion/ugcvideodetail/hepler/a;->l(J)V

    .line 92
    .line 93
    .line 94
    :cond_4
    iget-object p3, p0, Llu/h;->a:Llu/h$a;

    .line 95
    .line 96
    invoke-interface {p3}, Llu/h$a;->e()Llu/n;

    .line 97
    .line 98
    .line 99
    move-result-object p3

    .line 100
    invoke-virtual {p3, p1, p2}, Llu/n;->q(J)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, p1, p2}, Llu/h;->g(J)V

    .line 104
    .line 105
    .line 106
    const/4 p1, 0x0

    .line 107
    invoke-virtual {p0, p1}, Llu/h;->f(Z)V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Llu/h;->a:Llu/h$a;

    .line 2
    .line 3
    invoke-interface {v0}, Llu/h$a;->f()Lcom/transsion/ugcvideodetail/hepler/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/hepler/a;->n()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Llu/h;->a:Llu/h$a;

    .line 13
    .line 14
    invoke-interface {v0}, Llu/h$a;->a()Liu/r;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v0, v0, Liu/r;->n:Landroidx/appcompat/widget/AppCompatImageView;

    .line 19
    .line 20
    const-string v1, "ivUgcImmPlayStatus"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Llu/h;->a:Llu/h$a;

    .line 29
    .line 30
    invoke-interface {v0}, Llu/h$a;->e()Llu/n;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-virtual {v0, v1}, Llu/n;->p(Z)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Llu/h;->a:Llu/h$a;

    .line 39
    .line 40
    invoke-interface {v0, v1}, Llu/h$a;->c(Z)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Llu/h;->a:Llu/h$a;

    .line 2
    .line 3
    invoke-interface {v0}, Llu/h$a;->f()Lcom/transsion/ugcvideodetail/hepler/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/hepler/a;->o()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Llu/h;->a:Llu/h$a;

    .line 13
    .line 14
    invoke-interface {v0}, Llu/h$a;->e()Llu/n;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, v1}, Llu/n;->p(Z)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, v0}, Llu/h;->f(Z)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Llu/h;->a:Llu/h$a;

    .line 27
    .line 28
    invoke-interface {v0, v1}, Llu/h$a;->c(Z)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Llu/h;->a:Llu/h$a;

    .line 32
    .line 33
    invoke-interface {v0}, Llu/h$a;->a()Liu/r;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v0, v0, Liu/r;->n:Landroidx/appcompat/widget/AppCompatImageView;

    .line 38
    .line 39
    const-string v1, "ivUgcImmPlayStatus"

    .line 40
    .line 41
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final e()V
    .locals 7

    .line 1
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v0, p0, Llu/h;->a:Llu/h$a;

    .line 4
    .line 5
    invoke-interface {v0}, Llu/h$a;->getLogTag()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v0, p0, Llu/h;->a:Llu/h$a;

    .line 10
    .line 11
    invoke-interface {v0}, Llu/h$a;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v2, p0, Llu/h;->a:Llu/h$a;

    .line 16
    .line 17
    invoke-interface {v2}, Llu/h$a;->getOrPlayer()Lcom/transsion/player/orplayer/f;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v4, "playVideo data:"

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v0, " orPlayer:"

    .line 35
    .line 36
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const/4 v4, 0x4

    .line 47
    const/4 v5, 0x0

    .line 48
    const/4 v3, 0x0

    .line 49
    move-object v0, v6

    .line 50
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Llu/h;->a:Llu/h$a;

    .line 54
    .line 55
    invoke-interface {v0}, Llu/h$a;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    if-nez v0, :cond_0

    .line 60
    .line 61
    return-void

    .line 62
    :cond_0
    iget-object v1, p0, Llu/h;->a:Llu/h$a;

    .line 63
    .line 64
    invoke-interface {v1}, Llu/h$a;->getOrPlayer()Lcom/transsion/player/orplayer/f;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    if-nez v1, :cond_1

    .line 69
    .line 70
    return-void

    .line 71
    :cond_1
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->isFree()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    invoke-interface {v1}, Lcom/transsion/player/orplayer/f;->isComplete()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    const/4 v2, 0x1

    .line 82
    if-ne v0, v2, :cond_2

    .line 83
    .line 84
    const-wide/16 v2, 0x0

    .line 85
    .line 86
    invoke-interface {v1, v2, v3}, Lcom/transsion/player/orplayer/f;->seekTo(J)V

    .line 87
    .line 88
    .line 89
    :cond_2
    invoke-interface {v1}, Lcom/transsion/player/orplayer/f;->play()V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Llu/h;->a:Llu/h$a;

    .line 93
    .line 94
    invoke-interface {v0}, Llu/h$a;->getLogTag()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    const/4 v4, 0x4

    .line 99
    const/4 v5, 0x0

    .line 100
    const-string v2, "player- startplay"

    .line 101
    .line 102
    const/4 v3, 0x0

    .line 103
    move-object v0, v6

    .line 104
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_3
    iget-object v0, p0, Llu/h;->a:Llu/h$a;

    .line 109
    .line 110
    invoke-interface {v0}, Llu/h$a;->getLogTag()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    const/4 v4, 0x4

    .line 115
    const/4 v5, 0x0

    .line 116
    const-string v2, "player- no free now, show pay dialog"

    .line 117
    .line 118
    const/4 v3, 0x0

    .line 119
    move-object v0, v6

    .line 120
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    const/4 v0, 0x0

    .line 124
    invoke-virtual {p0, v0}, Llu/h;->f(Z)V

    .line 125
    .line 126
    .line 127
    :goto_0
    return-void
.end method

.method public final f(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Llu/h;->a:Llu/h$a;

    .line 4
    .line 5
    invoke-interface {p1}, Llu/h$a;->showLoading()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Llu/h;->a:Llu/h$a;

    .line 10
    .line 11
    invoke-interface {p1}, Llu/h$a;->d()V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public final g(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Llu/h;->a:Llu/h$a;

    .line 2
    .line 3
    invoke-interface {v0}, Llu/h$a;->a()Liu/r;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Liu/r;->y:Lcom/tn/lib/view/SecondariesSeekBar;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/tn/lib/view/SecondariesSeekBar;->setProgress(J)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Llu/h;->a:Llu/h$a;

    .line 13
    .line 14
    invoke-interface {v0}, Llu/h$a;->a()Liu/r;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v0, v0, Liu/r;->v:Lcom/tn/lib/view/SecondariesSeekBar;

    .line 19
    .line 20
    invoke-virtual {v0, p1, p2}, Lcom/tn/lib/view/SecondariesSeekBar;->setProgress(J)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final h(J)V
    .locals 7

    .line 1
    iget-object v0, p0, Llu/h;->a:Llu/h$a;

    .line 2
    .line 3
    invoke-interface {v0}, Llu/h$a;->a()Liu/r;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Liu/r;->y:Lcom/tn/lib/view/SecondariesSeekBar;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/tn/lib/view/SecondariesSeekBar;->setMax(J)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Llu/h;->a:Llu/h$a;

    .line 13
    .line 14
    invoke-interface {v0}, Llu/h$a;->a()Liu/r;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v0, v0, Liu/r;->v:Lcom/tn/lib/view/SecondariesSeekBar;

    .line 19
    .line 20
    invoke-virtual {v0, p1, p2}, Lcom/tn/lib/view/SecondariesSeekBar;->setMax(J)V

    .line 21
    .line 22
    .line 23
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 24
    .line 25
    iget-object v0, p0, Llu/h;->a:Llu/h$a;

    .line 26
    .line 27
    invoke-interface {v0}, Llu/h$a;->getLogTag()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v3, "updateProgressMax: "

    .line 37
    .line 38
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    const/4 v5, 0x4

    .line 49
    const/4 v6, 0x0

    .line 50
    const/4 v4, 0x0

    .line 51
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method
