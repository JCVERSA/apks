.class public final Lcom/transsion/postdetail/control/a;
.super Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/control/a$a;,
        Lcom/transsion/postdetail/control/a$b;
    }
.end annotation


# static fields
.field public static final o:Lcom/transsion/postdetail/control/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/postdetail/control/a$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/postdetail/control/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/postdetail/control/a;->o:Lcom/transsion/postdetail/control/a$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;Lcom/transsion/postdetail/ui/adapter/i;Lcom/transsion/player/orplayer/f;Lcom/transsion/player/ui/ORPlayerView;Lcom/transsion/shorttv/base/pager/PagerLayoutManager;)V
    .locals 1

    .line 1
    const-string v0, "fragment"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct/range {p0 .. p5}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;-><init>(Landroidx/fragment/app/Fragment;Lcom/transsion/postdetail/ui/adapter/i;Lcom/transsion/player/orplayer/f;Lcom/transsion/player/ui/ORPlayerView;Lcom/transsion/shorttv/base/pager/PagerLayoutManager;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public e(ZILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->e(ZILandroid/view/View;)V

    .line 2
    .line 3
    .line 4
    instance-of p1, p3, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    check-cast p3, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;

    .line 9
    .line 10
    invoke-virtual {p3}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->onPlayerReset()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public g(Ljava/util/List;)V
    .locals 13

    .line 1
    const-string v0, "datas"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->g(Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v0, 0x0

    .line 14
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_7

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->getShortTVFirstEp()Lcom/transsion/moviedetailapi/bean/ShortTVItem;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const/4 v3, 0x0

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/ShortTVItem;->getVideo()Lcom/transsion/moviedetailapi/bean/Media;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Media;->getVideoAddress()Lcom/transsion/moviedetailapi/bean/Video;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move-object v2, v3

    .line 45
    :goto_1
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 46
    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Video;->getUrl()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    move-object v5, v3

    .line 55
    :goto_2
    if-eqz v2, :cond_3

    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Video;->getWidth()Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    goto :goto_3

    .line 62
    :cond_3
    move-object v6, v3

    .line 63
    :goto_3
    if-eqz v2, :cond_4

    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Video;->getHeight()Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    goto :goto_4

    .line 70
    :cond_4
    move-object v7, v3

    .line 71
    :goto_4
    if-eqz v2, :cond_5

    .line 72
    .line 73
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Video;->getDuration()Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    goto :goto_5

    .line 78
    :cond_5
    move-object v2, v3

    .line 79
    :goto_5
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->getBuiltIn()Z

    .line 80
    .line 81
    .line 82
    move-result v8

    .line 83
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    new-instance v9, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v10, "play url="

    .line 93
    .line 94
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v5, "  width:"

    .line 101
    .line 102
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v5, ",height:"

    .line 109
    .line 110
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v5, ", duration: "

    .line 117
    .line 118
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v2, ", builtIn = "

    .line 125
    .line 126
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    const/4 v8, 0x4

    .line 137
    const/4 v9, 0x0

    .line 138
    const-string v5, "ShortTvImmVideoPlayer"

    .line 139
    .line 140
    const/4 v7, 0x0

    .line 141
    invoke-static/range {v4 .. v9}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    sget-object v2, Lcom/transsion/postdetail/control/a;->o:Lcom/transsion/postdetail/control/a$a;

    .line 145
    .line 146
    invoke-virtual {v2, v1}, Lcom/transsion/postdetail/control/a$a;->a(Lcom/transsion/moviedetailapi/bean/Subject;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    if-eqz v6, :cond_0

    .line 151
    .line 152
    invoke-virtual {p0}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->k()Lcom/transsion/player/orplayer/f;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    if-eqz v2, :cond_0

    .line 157
    .line 158
    new-instance v12, Lgn/e;

    .line 159
    .line 160
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->getShortTVFirstEp()Lcom/transsion/moviedetailapi/bean/ShortTVItem;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    if-eqz v1, :cond_6

    .line 165
    .line 166
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/ShortTVItem;->getId()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    :cond_6
    move-object v5, v3

    .line 171
    const/16 v10, 0x1c

    .line 172
    .line 173
    const/4 v11, 0x0

    .line 174
    const/4 v7, 0x0

    .line 175
    const/4 v8, 0x0

    .line 176
    const/4 v9, 0x0

    .line 177
    move-object v4, v12

    .line 178
    invoke-direct/range {v4 .. v11}, Lgn/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/transsion/player/enum/PlayMimeType;Lcom/transsion/player/mediasession/MediaItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 179
    .line 180
    .line 181
    invoke-interface {v2, v12}, Lcom/transsion/player/orplayer/f;->addDataSource(Lgn/e;)Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-nez v0, :cond_0

    .line 186
    .line 187
    move v0, v1

    .line 188
    goto/16 :goto_0

    .line 189
    .line 190
    :cond_7
    if-eqz v0, :cond_8

    .line 191
    .line 192
    invoke-virtual {p0}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->k()Lcom/transsion/player/orplayer/f;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    if-eqz p1, :cond_8

    .line 197
    .line 198
    invoke-interface {p1}, Lcom/transsion/player/orplayer/f;->prepare()V

    .line 199
    .line 200
    .line 201
    :cond_8
    return-void
.end method

.method public n(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onStateChanged(Landroidx/lifecycle/u;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "event"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/transsion/postdetail/control/a$b;->a:[I

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    aget p1, p1, p2

    .line 18
    .line 19
    const/4 p2, 0x1

    .line 20
    if-ne p1, p2, :cond_0

    .line 21
    .line 22
    sget-object p1, Lcom/transsion/baselib/report/k;->a:Lcom/transsion/baselib/report/k;

    .line 23
    .line 24
    invoke-virtual {p1, p0}, Lcom/transsion/baselib/report/k;->t(Lcom/transsion/baselib/report/k$a;)Z

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->v(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->j()Landroidx/fragment/app/Fragment;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->d(Landroidx/lifecycle/t;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->k()Lcom/transsion/player/orplayer/f;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    invoke-interface {p1}, Lcom/transsion/player/orplayer/f;->release()V

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void
.end method

.method protected q(ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->q(ILandroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public s(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public t(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/moviedetailapi/bean/Video;)V
    .locals 1

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "video"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected u()V
    .locals 0

    .line 1
    return-void
.end method

.method protected w()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->k()Lcom/transsion/player/orplayer/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->pause()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method protected x(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 8

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getShortTVFirstEp()Lcom/transsion/moviedetailapi/bean/ShortTVItem;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/ShortTVItem;->getVideo()Lcom/transsion/moviedetailapi/bean/Media;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Media;->getVideoAddress()Lcom/transsion/moviedetailapi/bean/Video;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v1, v0

    .line 27
    :goto_0
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Video;->getUrl()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move-object v3, v0

    .line 37
    :goto_1
    if-eqz v1, :cond_2

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Video;->getWidth()Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    move-object v4, v0

    .line 45
    :goto_2
    if-eqz v1, :cond_3

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Video;->getHeight()Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    goto :goto_3

    .line 52
    :cond_3
    move-object v5, v0

    .line 53
    :goto_3
    if-eqz v1, :cond_4

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Video;->getDuration()Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    goto :goto_4

    .line 60
    :cond_4
    move-object v1, v0

    .line 61
    :goto_4
    if-eqz p2, :cond_5

    .line 62
    .line 63
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getBuiltIn()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v7, "play url="

    .line 77
    .line 78
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v3, "  width:"

    .line 85
    .line 86
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v3, ",height:"

    .line 93
    .line 94
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v3, ", duration: "

    .line 101
    .line 102
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v1, ", builtIn = "

    .line 109
    .line 110
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    const/4 v6, 0x4

    .line 121
    const/4 v7, 0x0

    .line 122
    const-string v3, "ShortTvImmVideoPlayer"

    .line 123
    .line 124
    const/4 v5, 0x0

    .line 125
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    sget-object v0, Lcom/transsion/postdetail/control/a;->o:Lcom/transsion/postdetail/control/a$a;

    .line 129
    .line 130
    invoke-virtual {v0, p2}, Lcom/transsion/postdetail/control/a$a;->a(Lcom/transsion/moviedetailapi/bean/Subject;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    if-eqz p2, :cond_8

    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->k()Lcom/transsion/player/orplayer/f;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    if-eqz v0, :cond_6

    .line 141
    .line 142
    sget-object v1, Lcom/transsion/player/shorttv/preload/q;->a:Lcom/transsion/player/shorttv/preload/q;

    .line 143
    .line 144
    invoke-virtual {v1, p2}, Lcom/transsion/player/shorttv/preload/q;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    const-wide/16 v2, 0x0

    .line 149
    .line 150
    invoke-interface {v0, v1, v2, v3}, Lcom/transsion/player/orplayer/f;->seekTo(Ljava/lang/String;J)V

    .line 151
    .line 152
    .line 153
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->k()Lcom/transsion/player/orplayer/f;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    if-eqz v0, :cond_7

    .line 158
    .line 159
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->play()V

    .line 160
    .line 161
    .line 162
    :cond_7
    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->setVideoUrl(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    goto :goto_5

    .line 166
    :cond_8
    invoke-virtual {p0}, Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;->k()Lcom/transsion/player/orplayer/f;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    if-eqz p1, :cond_9

    .line 171
    .line 172
    invoke-interface {p1}, Lcom/transsion/player/orplayer/f;->pause()V

    .line 173
    .line 174
    .line 175
    :cond_9
    :goto_5
    return-void
.end method
