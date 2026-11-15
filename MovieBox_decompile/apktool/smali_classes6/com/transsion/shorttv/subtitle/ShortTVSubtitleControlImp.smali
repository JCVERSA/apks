.class public final Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/shorttv/subtitle/a;
.implements Lzr/a;


# instance fields
.field private final b:Landroidx/fragment/app/FragmentActivity;

.field private final c:Lqr/k0;

.field private final d:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

.field private final e:Lnr/e;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Las/a;

.field private i:Lkotlin/jvm/functions/Function1;

.field private j:Lkotlin/jvm/functions/Function1;

.field private k:Z

.field private l:J

.field private m:F

.field private final n:Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$downloadListener$1;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Lqr/k0;Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Lnr/e;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "viewBinding"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "epItem"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->b:Landroidx/fragment/app/FragmentActivity;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->c:Lqr/k0;

    .line 22
    .line 23
    iput-object p3, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->d:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 24
    .line 25
    iput-object p4, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->e:Lnr/e;

    .line 26
    .line 27
    iput-object p5, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->f:Ljava/lang/String;

    .line 28
    .line 29
    const-string p3, "ShortTVSubtitleCtr"

    .line 30
    .line 31
    iput-object p3, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->g:Ljava/lang/String;

    .line 32
    .line 33
    new-instance p3, Landroidx/lifecycle/v0;

    .line 34
    .line 35
    invoke-direct {p3, p1}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    .line 36
    .line 37
    .line 38
    const-class p4, Las/a;

    .line 39
    .line 40
    invoke-virtual {p3, p4}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    check-cast p3, Las/a;

    .line 45
    .line 46
    iput-object p3, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->h:Las/a;

    .line 47
    .line 48
    const/4 p4, 0x1

    .line 49
    iput-boolean p4, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->k:Z

    .line 50
    .line 51
    const/high16 p4, 0x3f800000    # 1.0f

    .line 52
    .line 53
    iput p4, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->m:F

    .line 54
    .line 55
    new-instance p4, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$downloadListener$1;

    .line 56
    .line 57
    invoke-direct {p4, p0}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$downloadListener$1;-><init>(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)V

    .line 58
    .line 59
    .line 60
    iput-object p4, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->n:Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$downloadListener$1;

    .line 61
    .line 62
    invoke-virtual {p3}, Las/a;->b()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p3}, Las/a;->e()Landroidx/lifecycle/b0;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    new-instance p5, Lcom/transsion/shorttv/subtitle/b;

    .line 70
    .line 71
    invoke-direct {p5, p0}, Lcom/transsion/shorttv/subtitle/b;-><init>(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)V

    .line 72
    .line 73
    .line 74
    new-instance v0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$b;

    .line 75
    .line 76
    invoke-direct {v0, p5}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3, p1, v0}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 80
    .line 81
    .line 82
    sget-object p1, Lcom/transsion/shorttv/subtitle/manager/b;->a:Lcom/transsion/shorttv/subtitle/manager/b$a;

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/transsion/shorttv/subtitle/manager/b$a;->b()Lcom/transsion/shorttv/subtitle/manager/b;

    .line 85
    .line 86
    .line 87
    move-result-object p3

    .line 88
    invoke-interface {p3, p4}, Lcom/transsion/shorttv/subtitle/manager/b;->b(Lcom/transsion/subtitle_download/a;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/transsion/shorttv/subtitle/manager/b$a;->b()Lcom/transsion/shorttv/subtitle/manager/b;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-interface {p1, p0}, Lcom/transsion/shorttv/subtitle/manager/b;->f(Lzr/a;)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p2, Lqr/k0;->K:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 99
    .line 100
    invoke-direct {p0, p1}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->z(Lcom/avery/subtitle/widget/SimpleSubtitleView;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method private final A(Z)V
    .locals 5

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->g:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " --> onSubtitleSwitchClick() --> turnOn = "

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, " --> \u5b57\u5e55\u5f00\u5173\u72b6\u6001\u53d8\u5316"

    .line 22
    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const/4 v2, 0x2

    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-static {v0, v1, v4, v2, v3}, Lwf/a$a;->g(Lwf/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    invoke-direct {p0}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->E()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-direct {p0}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->x()V

    .line 43
    .line 44
    .line 45
    :goto_0
    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->h:Las/a;

    .line 46
    .line 47
    invoke-virtual {v0}, Las/a;->f()Landroidx/lifecycle/b0;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    xor-int/lit8 p1, p1, 0x1

    .line 52
    .line 53
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method private final B(Lxr/b;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->e:Lnr/e;

    .line 7
    .line 8
    invoke-virtual {v1}, Lnr/e;->e()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "subject_id"

    .line 13
    .line 14
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->e:Lnr/e;

    .line 18
    .line 19
    invoke-virtual {v1}, Lnr/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, ""

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/ShortTVItem;->getId()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    :cond_0
    move-object v1, v2

    .line 34
    :cond_1
    const-string v3, "mini_id"

    .line 35
    .line 36
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->e:Lnr/e;

    .line 40
    .line 41
    invoke-virtual {v1}, Lnr/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/ShortTVItem;->getSe()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    const/4 v1, 0x0

    .line 57
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const-string v3, "se"

    .line 62
    .line 63
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->e:Lnr/e;

    .line 67
    .line 68
    invoke-virtual {v1}, Lnr/e;->c()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    const-string v3, "ep"

    .line 77
    .line 78
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->e:Lnr/e;

    .line 82
    .line 83
    invoke-virtual {v1}, Lnr/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    if-eqz v1, :cond_3

    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/ShortTVItem;->getVideoId()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    if-nez v1, :cond_4

    .line 94
    .line 95
    :cond_3
    move-object v1, v2

    .line 96
    :cond_4
    const-string v3, "video_id"

    .line 97
    .line 98
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    const-string v1, "opt_type"

    .line 102
    .line 103
    const-string v3, "subtitle_select"

    .line 104
    .line 105
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Lxr/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getOps()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    if-eqz v1, :cond_5

    .line 117
    .line 118
    const-string v3, "ops"

    .line 119
    .line 120
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    :cond_5
    invoke-virtual {p1}, Lxr/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getName()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    const-string v3, "name"

    .line 132
    .line 133
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Lxr/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    if-nez v1, :cond_6

    .line 145
    .line 146
    move-object v1, v2

    .line 147
    :cond_6
    const-string v3, "lan"

    .line 148
    .line 149
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1}, Lxr/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanName()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    if-nez p1, :cond_7

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_7
    move-object v2, p1

    .line 164
    :goto_1
    const-string p1, "lan_name"

    .line 165
    .line 166
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    sget-object p1, Lqi/h;->a:Lqi/h;

    .line 170
    .line 171
    const-string v1, "minitv_play"

    .line 172
    .line 173
    invoke-virtual {p1, v1, v0}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 174
    .line 175
    .line 176
    return-void
.end method

.method private final C()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->h:Las/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Las/a;->d()Landroidx/lifecycle/b0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->h:Las/a;

    .line 12
    .line 13
    invoke-virtual {v0}, Las/a;->e()Landroidx/lifecycle/b0;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->c:Lqr/k0;

    .line 21
    .line 22
    iget-object v0, v0, Lqr/k0;->K:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->reset()V

    .line 25
    .line 26
    .line 27
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->g:Ljava/lang/String;

    .line 30
    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v2, " --> reset() --> \u91cd\u7f6e\u8d44\u6e90"

    .line 40
    .line 41
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const/4 v3, 0x0

    .line 49
    const/4 v4, 0x2

    .line 50
    invoke-static {v0, v2, v3, v4, v1}, Lwf/a$a;->g(Lwf/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private static final D(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method private final E()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->c:Lqr/k0;

    .line 2
    .line 3
    iget-object v0, v0, Lqr/k0;->K:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->turnOff(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->c:Lqr/k0;

    .line 10
    .line 11
    iget-object v0, v0, Lqr/k0;->f:Landroid/widget/FrameLayout;

    .line 12
    .line 13
    const-string v1, "flSubtitle"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcr/b;->e(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static synthetic i(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->D(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic j(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;Lxr/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->k(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;Lxr/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final k(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;Lxr/b;)Lkotlin/Unit;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lxr/b;->c()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    sget-object v0, Ljr/b;->a:Ljr/b$a;

    .line 13
    .line 14
    sget v1, Lcom/transsion/shorttv/R$string;->short_tv_subtitle_turn_off_toast:I

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljr/b$a;->d(I)V

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-virtual {p1}, Lxr/b;->c()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    xor-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    invoke-direct {p0, v0}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->A(Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lxr/b;->c()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->h(Lxr/b;)V

    .line 35
    .line 36
    .line 37
    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 38
    .line 39
    return-object p0
.end method

.method public static final synthetic l(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)Landroidx/fragment/app/FragmentActivity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->b:Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic m(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->i:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic n(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->k:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic o(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->l:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic p(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->m:F

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic q(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)Lnr/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->e:Lnr/e;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic r(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic s(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic t(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->d:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic u(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)Lqr/k0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->c:Lqr/k0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic v(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)Las/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->h:Las/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic w(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->y(Ljava/util/List;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final x()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->c:Lqr/k0;

    .line 2
    .line 3
    iget-object v0, v0, Lqr/k0;->K:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->turnOff(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->c:Lqr/k0;

    .line 10
    .line 11
    iget-object v0, v0, Lqr/k0;->f:Landroid/widget/FrameLayout;

    .line 12
    .line 13
    const-string v1, "flSubtitle"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcr/b;->b(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private final y(Ljava/util/List;Ljava/lang/String;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-static {}, Lyr/a;->a()Ljava/util/Locale;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 10
    .line 11
    iget-object v4, v0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->g:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    new-instance v7, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v4, " --> initDefaultSubtitle() --> cur language = "

    .line 30
    .line 31
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v4, " -- country = "

    .line 38
    .line 39
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    const/4 v5, 0x0

    .line 50
    const/4 v6, 0x2

    .line 51
    const/4 v7, 0x0

    .line 52
    invoke-static {v3, v4, v5, v6, v7}, Lwf/a$a;->g(Lwf/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    sget-object v4, Lcom/transsion/shorttv/utils/h;->a:Lcom/transsion/shorttv/utils/h;

    .line 56
    .line 57
    invoke-virtual {v4}, Lcom/transsion/shorttv/utils/h;->d()Lcom/tencent/mmkv/MMKV;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    const-string v8, "k_subtitle_language"

    .line 62
    .line 63
    const-string v9, ""

    .line 64
    .line 65
    invoke-virtual {v4, v8, v9}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    sget-object v8, Lcom/transsion/subtitle_download/utils/d;->a:Lcom/transsion/subtitle_download/utils/d;

    .line 70
    .line 71
    invoke-virtual {v8}, Lcom/transsion/subtitle_download/utils/d;->b()Lcom/tencent/mmkv/MMKV;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    const-string v10, "k_subtitle_select_lan"

    .line 76
    .line 77
    invoke-virtual {v8, v10, v9}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    const-string v8, "off"

    .line 81
    .line 82
    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    const-string v10, "OFF"

    .line 87
    .line 88
    if-eqz v8, :cond_1

    .line 89
    .line 90
    iget-object v1, v0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->i:Lkotlin/jvm/functions/Function1;

    .line 91
    .line 92
    if-eqz v1, :cond_0

    .line 93
    .line 94
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 95
    .line 96
    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    :cond_0
    iget-object v1, v0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->h:Las/a;

    .line 100
    .line 101
    invoke-virtual {v1}, Las/a;->f()Landroidx/lifecycle/b0;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    iget-object v1, v0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->h:Las/a;

    .line 111
    .line 112
    invoke-virtual {v1, v10}, Las/a;->g(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_1
    iget-object v8, v0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->g:Ljava/lang/String;

    .line 117
    .line 118
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 119
    .line 120
    .line 121
    move-result v11

    .line 122
    new-instance v12, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v8, " --> initDefaultSubtitle() --> savedDiffId = "

    .line 131
    .line 132
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v8, " -- savedLan = "

    .line 139
    .line 140
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v8, ", subListSize:"

    .line 147
    .line 148
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v8

    .line 158
    invoke-static {v3, v8, v5, v6, v7}, Lwf/a$a;->g(Lwf/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    move-object v8, v7

    .line 166
    move-object v11, v8

    .line 167
    move-object v12, v11

    .line 168
    move-object v13, v12

    .line 169
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 170
    .line 171
    .line 172
    move-result v14

    .line 173
    const-string v15, "en"

    .line 174
    .line 175
    if-eqz v14, :cond_8

    .line 176
    .line 177
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v14

    .line 181
    check-cast v14, Lxr/b;

    .line 182
    .line 183
    if-nez v8, :cond_3

    .line 184
    .line 185
    if-eqz v4, :cond_3

    .line 186
    .line 187
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 188
    .line 189
    .line 190
    move-result v16

    .line 191
    if-nez v16, :cond_2

    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_2
    invoke-virtual {v14}, Lxr/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 195
    .line 196
    .line 197
    move-result-object v16

    .line 198
    invoke-virtual/range {v16 .. v16}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanName()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v5

    .line 206
    if-eqz v5, :cond_3

    .line 207
    .line 208
    move-object v8, v14

    .line 209
    :cond_3
    :goto_1
    if-nez v11, :cond_4

    .line 210
    .line 211
    invoke-virtual {v14}, Lxr/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    invoke-virtual {v5}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanAbbr()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v6

    .line 223
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v5

    .line 227
    if-eqz v5, :cond_4

    .line 228
    .line 229
    move-object v11, v14

    .line 230
    :cond_4
    invoke-virtual {v14}, Lxr/b;->b()Z

    .line 231
    .line 232
    .line 233
    move-result v5

    .line 234
    if-nez v5, :cond_6

    .line 235
    .line 236
    :cond_5
    const/4 v5, 0x0

    .line 237
    const/4 v6, 0x2

    .line 238
    goto :goto_0

    .line 239
    :cond_6
    invoke-virtual {v14}, Lxr/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 240
    .line 241
    .line 242
    move-result-object v5

    .line 243
    invoke-virtual {v5}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v5

    .line 247
    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v5

    .line 251
    if-eqz v5, :cond_7

    .line 252
    .line 253
    move-object v12, v14

    .line 254
    :cond_7
    invoke-virtual {v14}, Lxr/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 255
    .line 256
    .line 257
    move-result-object v5

    .line 258
    invoke-virtual {v5}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v5

    .line 262
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v5

    .line 266
    if-eqz v5, :cond_5

    .line 267
    .line 268
    invoke-virtual {v14}, Lxr/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 269
    .line 270
    .line 271
    move-result-object v5

    .line 272
    invoke-virtual {v5}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v9

    .line 276
    sget-object v5, Lwf/a;->a:Lwf/a$a;

    .line 277
    .line 278
    iget-object v6, v0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->g:Ljava/lang/String;

    .line 279
    .line 280
    new-instance v13, Ljava/lang/StringBuilder;

    .line 281
    .line 282
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    const-string v6, " --> initDefaultSubtitle() --> \u4f7f\u7528\u4e4b\u524d\u9009\u62e9\u7684\u5b57\u5e55 saved flag = "

    .line 289
    .line 290
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v6

    .line 300
    const/4 v13, 0x0

    .line 301
    const/4 v15, 0x2

    .line 302
    invoke-static {v5, v6, v13, v15, v7}, Lwf/a$a;->g(Lwf/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 303
    .line 304
    .line 305
    move v5, v13

    .line 306
    move-object v13, v14

    .line 307
    move v6, v15

    .line 308
    goto/16 :goto_0

    .line 309
    .line 310
    :cond_8
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    .line 311
    .line 312
    .line 313
    move-result v1

    .line 314
    if-nez v1, :cond_a

    .line 315
    .line 316
    if-eqz v8, :cond_9

    .line 317
    .line 318
    invoke-virtual {v8}, Lxr/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v9

    .line 326
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 327
    .line 328
    iget-object v2, v0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->g:Ljava/lang/String;

    .line 329
    .line 330
    new-instance v3, Ljava/lang/StringBuilder;

    .line 331
    .line 332
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    const-string v2, " --> initDefaultSubtitle() --> \u4f7f\u7528\u4e4b\u524d\u9009\u62e9\u7684\u8bed\u8a00 local set savedLan = "

    .line 339
    .line 340
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    const/4 v3, 0x0

    .line 351
    const/4 v4, 0x2

    .line 352
    invoke-static {v1, v2, v3, v4, v7}, Lwf/a$a;->g(Lwf/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 353
    .line 354
    .line 355
    goto :goto_2

    .line 356
    :cond_9
    if-eqz v11, :cond_a

    .line 357
    .line 358
    invoke-virtual {v11}, Lxr/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 359
    .line 360
    .line 361
    move-result-object v1

    .line 362
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v9

    .line 366
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 367
    .line 368
    iget-object v2, v0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->g:Ljava/lang/String;

    .line 369
    .line 370
    new-instance v3, Ljava/lang/StringBuilder;

    .line 371
    .line 372
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    const-string v2, " --> initDefaultSubtitle() --> \u6ca1\u6709\u81ea\u5df1\u9009\u62e9\u7684\u9ed8\u8ba4\u8bed\u8a00\uff0c\u4f7f\u7528\u624b\u673a\u8bed\u8a00 -- phone set def language = "

    .line 379
    .line 380
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v2

    .line 390
    const/4 v3, 0x0

    .line 391
    const/4 v4, 0x2

    .line 392
    invoke-static {v1, v2, v3, v4, v7}, Lwf/a$a;->g(Lwf/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 393
    .line 394
    .line 395
    move-object v8, v11

    .line 396
    goto :goto_2

    .line 397
    :cond_a
    move-object v8, v13

    .line 398
    :goto_2
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    .line 399
    .line 400
    .line 401
    move-result v1

    .line 402
    if-nez v1, :cond_e

    .line 403
    .line 404
    if-eqz v12, :cond_b

    .line 405
    .line 406
    invoke-virtual {v12}, Lxr/b;->b()Z

    .line 407
    .line 408
    .line 409
    move-result v1

    .line 410
    if-eqz v1, :cond_b

    .line 411
    .line 412
    invoke-virtual {v12}, Lxr/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 413
    .line 414
    .line 415
    move-result-object v1

    .line 416
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v1

    .line 420
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 421
    .line 422
    iget-object v3, v0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->g:Ljava/lang/String;

    .line 423
    .line 424
    new-instance v4, Ljava/lang/StringBuilder;

    .line 425
    .line 426
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    const-string v3, " --> initDefaultSubtitle() --> \u6ca1\u6709\u8bbe\u7f6e\u9ed8\u8ba4\u8bed\u8a00 --> english set def language = "

    .line 433
    .line 434
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    const/4 v3, 0x0

    .line 445
    const/4 v4, 0x2

    .line 446
    invoke-static {v2, v1, v3, v4, v7}, Lwf/a$a;->g(Lwf/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 447
    .line 448
    .line 449
    goto :goto_4

    .line 450
    :cond_b
    move-object/from16 v1, p1

    .line 451
    .line 452
    check-cast v1, Ljava/util/Collection;

    .line 453
    .line 454
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 455
    .line 456
    .line 457
    move-result v1

    .line 458
    if-nez v1, :cond_e

    .line 459
    .line 460
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 461
    .line 462
    .line 463
    move-result-object v1

    .line 464
    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 465
    .line 466
    .line 467
    move-result v2

    .line 468
    if-eqz v2, :cond_d

    .line 469
    .line 470
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v2

    .line 474
    check-cast v2, Lxr/b;

    .line 475
    .line 476
    invoke-virtual {v2}, Lxr/b;->b()Z

    .line 477
    .line 478
    .line 479
    move-result v3

    .line 480
    if-eqz v3, :cond_c

    .line 481
    .line 482
    invoke-virtual {v2}, Lxr/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 483
    .line 484
    .line 485
    move-result-object v1

    .line 486
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v9

    .line 490
    move-object v12, v2

    .line 491
    goto :goto_3

    .line 492
    :cond_d
    move-object v12, v8

    .line 493
    :goto_3
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    .line 494
    .line 495
    .line 496
    move-result v1

    .line 497
    if-nez v1, :cond_f

    .line 498
    .line 499
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 500
    .line 501
    iget-object v2, v0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->g:Ljava/lang/String;

    .line 502
    .line 503
    new-instance v3, Ljava/lang/StringBuilder;

    .line 504
    .line 505
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 506
    .line 507
    .line 508
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    const-string v2, " --> initDefaultSubtitle() --> \u53ef\u80fd\u5916\u90e8\u53ea\u8bfb\u53d6\u5230\u4e86\u6570\u636e\u5e93\u524d\u9762\u6ca1\u4e0b\u8f7d\u7684\u5b57\u5e55 --> \u6ca1\u6709\u5bf9\u5e94\u7684\u8bed\u8a00\uff0c\u4e0d\u8bbe\u7f6e\uff0c\u9700\u8981\u7528\u6237\u624b\u52a8\u8bbe\u7f6e\u6216\u5f53\u524d\u4e0b\u8f7d\u540e\u81ea\u52a8\u8bbe\u7f6e\u4e0a"

    .line 512
    .line 513
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v2

    .line 520
    const/4 v3, 0x0

    .line 521
    const/4 v4, 0x2

    .line 522
    invoke-static {v1, v2, v3, v4, v7}, Lwf/a$a;->g(Lwf/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 523
    .line 524
    .line 525
    return-void

    .line 526
    :cond_e
    move-object v12, v8

    .line 527
    :cond_f
    :goto_4
    move-object/from16 v1, p1

    .line 528
    .line 529
    check-cast v1, Ljava/lang/Iterable;

    .line 530
    .line 531
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 532
    .line 533
    .line 534
    move-result-object v2

    .line 535
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 536
    .line 537
    .line 538
    move-result v3

    .line 539
    if-eqz v3, :cond_10

    .line 540
    .line 541
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    move-result-object v3

    .line 545
    check-cast v3, Lxr/b;

    .line 546
    .line 547
    iget-object v4, v0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->c:Lqr/k0;

    .line 548
    .line 549
    iget-object v4, v4, Lqr/k0;->K:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 550
    .line 551
    invoke-virtual {v3}, Lxr/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 552
    .line 553
    .line 554
    move-result-object v5

    .line 555
    invoke-virtual {v5}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getPath()Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v5

    .line 559
    invoke-static {v3}, Lyr/a;->b(Lxr/b;)Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v3

    .line 563
    invoke-virtual {v4, v5, v3}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->setSubtitlePath(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    .line 565
    .line 566
    goto :goto_5

    .line 567
    :cond_10
    const/4 v2, 0x1

    .line 568
    if-eqz v12, :cond_17

    .line 569
    .line 570
    invoke-virtual {v12}, Lxr/b;->b()Z

    .line 571
    .line 572
    .line 573
    move-result v3

    .line 574
    if-nez v3, :cond_17

    .line 575
    .line 576
    invoke-virtual {v12}, Lxr/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 577
    .line 578
    .line 579
    move-result-object v3

    .line 580
    const/4 v4, 0x0

    .line 581
    invoke-virtual {v3, v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->setAutoDownload(Z)V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v12}, Lxr/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 585
    .line 586
    .line 587
    move-result-object v3

    .line 588
    invoke-virtual {v3, v2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->setSetImmediately(Z)V

    .line 589
    .line 590
    .line 591
    sget-object v3, Lcom/transsion/shorttv/subtitle/manager/b;->a:Lcom/transsion/shorttv/subtitle/manager/b$a;

    .line 592
    .line 593
    invoke-virtual {v3}, Lcom/transsion/shorttv/subtitle/manager/b$a;->b()Lcom/transsion/shorttv/subtitle/manager/b;

    .line 594
    .line 595
    .line 596
    move-result-object v3

    .line 597
    invoke-interface {v3, v12}, Lcom/transsion/shorttv/subtitle/manager/b;->d(Lxr/b;)V

    .line 598
    .line 599
    .line 600
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 601
    .line 602
    .line 603
    move-result-object v3

    .line 604
    :cond_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 605
    .line 606
    .line 607
    move-result v4

    .line 608
    if-eqz v4, :cond_12

    .line 609
    .line 610
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 611
    .line 612
    .line 613
    move-result-object v4

    .line 614
    move-object v5, v4

    .line 615
    check-cast v5, Lxr/b;

    .line 616
    .line 617
    invoke-virtual {v5}, Lxr/b;->b()Z

    .line 618
    .line 619
    .line 620
    move-result v6

    .line 621
    if-eqz v6, :cond_11

    .line 622
    .line 623
    invoke-virtual {v5}, Lxr/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 624
    .line 625
    .line 626
    move-result-object v5

    .line 627
    invoke-virtual {v5}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object v5

    .line 631
    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 632
    .line 633
    .line 634
    move-result v5

    .line 635
    if-eqz v5, :cond_11

    .line 636
    .line 637
    goto :goto_6

    .line 638
    :cond_12
    move-object v4, v7

    .line 639
    :goto_6
    check-cast v4, Lxr/b;

    .line 640
    .line 641
    if-nez v4, :cond_15

    .line 642
    .line 643
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 644
    .line 645
    .line 646
    move-result-object v1

    .line 647
    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 648
    .line 649
    .line 650
    move-result v3

    .line 651
    if-eqz v3, :cond_14

    .line 652
    .line 653
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 654
    .line 655
    .line 656
    move-result-object v3

    .line 657
    move-object v4, v3

    .line 658
    check-cast v4, Lxr/b;

    .line 659
    .line 660
    invoke-virtual {v4}, Lxr/b;->b()Z

    .line 661
    .line 662
    .line 663
    move-result v4

    .line 664
    if-eqz v4, :cond_13

    .line 665
    .line 666
    move-object v7, v3

    .line 667
    :cond_14
    move-object v4, v7

    .line 668
    check-cast v4, Lxr/b;

    .line 669
    .line 670
    :cond_15
    if-eqz v4, :cond_16

    .line 671
    .line 672
    invoke-virtual {v0, v4}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->h(Lxr/b;)V

    .line 673
    .line 674
    .line 675
    invoke-virtual {v4, v2}, Lxr/b;->f(Z)V

    .line 676
    .line 677
    .line 678
    iget-object v1, v0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->h:Las/a;

    .line 679
    .line 680
    invoke-virtual {v1}, Las/a;->f()Landroidx/lifecycle/b0;

    .line 681
    .line 682
    .line 683
    move-result-object v1

    .line 684
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 685
    .line 686
    invoke-virtual {v1, v2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 687
    .line 688
    .line 689
    invoke-virtual {v4}, Lxr/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 690
    .line 691
    .line 692
    move-result-object v1

    .line 693
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 694
    .line 695
    .line 696
    move-result-object v1

    .line 697
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 698
    .line 699
    .line 700
    move-result v1

    .line 701
    if-lez v1, :cond_16

    .line 702
    .line 703
    iget-object v1, v0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->h:Las/a;

    .line 704
    .line 705
    invoke-virtual {v4}, Lxr/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 706
    .line 707
    .line 708
    move-result-object v2

    .line 709
    invoke-virtual {v2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 710
    .line 711
    .line 712
    move-result-object v2

    .line 713
    invoke-virtual {v1, v2}, Las/a;->g(Ljava/lang/String;)V

    .line 714
    .line 715
    .line 716
    :cond_16
    return-void

    .line 717
    :cond_17
    invoke-virtual {v0, v12}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->h(Lxr/b;)V

    .line 718
    .line 719
    .line 720
    if-eqz v12, :cond_18

    .line 721
    .line 722
    invoke-virtual {v12, v2}, Lxr/b;->f(Z)V

    .line 723
    .line 724
    .line 725
    :cond_18
    iget-object v1, v0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->h:Las/a;

    .line 726
    .line 727
    invoke-virtual {v1}, Las/a;->f()Landroidx/lifecycle/b0;

    .line 728
    .line 729
    .line 730
    move-result-object v1

    .line 731
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 732
    .line 733
    invoke-virtual {v1, v2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 734
    .line 735
    .line 736
    if-eqz v12, :cond_19

    .line 737
    .line 738
    iget-object v1, v0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->h:Las/a;

    .line 739
    .line 740
    invoke-virtual {v12}, Lxr/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 741
    .line 742
    .line 743
    move-result-object v2

    .line 744
    invoke-virtual {v2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 745
    .line 746
    .line 747
    move-result-object v2

    .line 748
    invoke-virtual {v1, v2}, Las/a;->g(Ljava/lang/String;)V

    .line 749
    .line 750
    .line 751
    goto :goto_7

    .line 752
    :cond_19
    iget-object v1, v0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->h:Las/a;

    .line 753
    .line 754
    invoke-virtual {v1, v10}, Las/a;->g(Ljava/lang/String;)V

    .line 755
    .line 756
    .line 757
    :goto_7
    return-void
.end method

.method private final z(Lcom/avery/subtitle/widget/SimpleSubtitleView;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget v1, Lcom/transsion/shorttv/R$color;->short_tv_black_80:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p1, v0}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->setBgColor(I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    if-eqz p1, :cond_1

    .line 21
    .line 22
    const/16 v0, 0x8

    .line 23
    .line 24
    invoke-static {v0}, Lcr/a;->a(I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p1, v0}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->setBgdRadius(I)V

    .line 29
    .line 30
    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    new-instance v1, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$a;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$a;-><init>(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v1, v0}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->initSubtitle(Lk5/a;Z)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    sget-object p1, Lwf/a;->a:Lwf/a$a;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->g:Ljava/lang/String;

    .line 46
    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v1, " --> vdSubtitle --> initSubtitle() --> null"

    .line 56
    .line 57
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    const/4 v2, 0x2

    .line 65
    const/4 v3, 0x0

    .line 66
    invoke-static {p1, v1, v0, v2, v3}, Lwf/a$a;->g(Lwf/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->i:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public b(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->j:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->k:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->c:Lqr/k0;

    .line 6
    .line 7
    iget-object p1, p1, Lqr/k0;->K:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->resume()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->c:Lqr/k0;

    .line 14
    .line 15
    iget-object p1, p1, Lqr/k0;->K:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->pause()V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public d(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->l:J

    .line 2
    .line 3
    return-void
.end method

.method public e()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->b:Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v4, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$checkSubtitle$1;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-direct {v4, p0, v0}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$checkSubtitle$1;-><init>(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;Lkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    const/4 v5, 0x3

    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public f()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->x()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->h:Las/a;

    .line 5
    .line 6
    invoke-virtual {v0}, Las/a;->d()Landroidx/lifecycle/b0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/util/List;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    check-cast v0, Ljava/lang/Iterable;

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lxr/b;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-virtual {v1, v2}, Lxr/b;->f(Z)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->h:Las/a;

    .line 42
    .line 43
    invoke-virtual {v0}, Las/a;->f()Landroidx/lifecycle/b0;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    sget-object v0, Lcom/transsion/shorttv/utils/h;->a:Lcom/transsion/shorttv/utils/h;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/transsion/shorttv/utils/h;->d()Lcom/tencent/mmkv/MMKV;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v1, "k_subtitle_language"

    .line 59
    .line 60
    const-string v2, "off"

    .line 61
    .line 62
    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 63
    .line 64
    .line 65
    sget-object v0, Lcom/transsion/subtitle_download/utils/d;->a:Lcom/transsion/subtitle_download/utils/d;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/transsion/subtitle_download/utils/d;->b()Lcom/tencent/mmkv/MMKV;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const-string v1, "k_subtitle_select_lan"

    .line 72
    .line 73
    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 74
    .line 75
    .line 76
    sget-object v0, Lpq/a;->a:Lpq/a;

    .line 77
    .line 78
    invoke-virtual {v0}, Lpq/a;->c()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_1

    .line 83
    .line 84
    sget-object v0, Ljr/b;->a:Ljr/b$a;

    .line 85
    .line 86
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    sget v2, Lcom/transsion/shorttv/R$string;->short_tv_subtitles_off:I

    .line 91
    .line 92
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Ljr/b$a;->e(Ljava/lang/CharSequence;)V

    .line 97
    .line 98
    .line 99
    :cond_1
    return-void
.end method

.method public g(Z)V
    .locals 5

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->g:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " --> checkResult --> "

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x2

    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-static {v0, v1, v4, v2, v3}, Lwf/a$a;->g(Lwf/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->i:Lkotlin/jvm/functions/Function1;

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public h(Lxr/b;)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->h:Las/a;

    .line 3
    .line 4
    invoke-virtual {v1}, Las/a;->d()Landroidx/lifecycle/b0;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Ljava/util/List;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v1, Ljava/lang/Iterable;

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Lxr/b;

    .line 34
    .line 35
    invoke-virtual {v3}, Lxr/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    invoke-virtual {p1}, Lxr/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    if-eqz v5, :cond_0

    .line 50
    .line 51
    invoke-virtual {v5}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    goto :goto_1

    .line 56
    :cond_0
    move-object v5, v2

    .line 57
    :goto_1
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    invoke-virtual {v3, v4}, Lxr/b;->f(Z)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->j:Lkotlin/jvm/functions/Function1;

    .line 66
    .line 67
    if-eqz v1, :cond_2

    .line 68
    .line 69
    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    :cond_2
    if-eqz p1, :cond_3

    .line 73
    .line 74
    invoke-virtual {p1}, Lxr/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    if-eqz v1, :cond_3

    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getPath()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    if-eqz v1, :cond_3

    .line 85
    .line 86
    invoke-direct {p0}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->E()V

    .line 87
    .line 88
    .line 89
    iget-object v3, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->c:Lqr/k0;

    .line 90
    .line 91
    iget-object v3, v3, Lqr/k0;->K:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 92
    .line 93
    invoke-static {p1}, Lyr/a;->b(Lxr/b;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    new-instance v5, Lcom/transsion/shorttv/subtitle/c;

    .line 98
    .line 99
    invoke-direct {v5}, Lcom/transsion/shorttv/subtitle/c;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3, v1, v4, v5}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->selectSubtitle(Ljava/lang/String;Ljava/lang/String;Lk5/b;)V

    .line 103
    .line 104
    .line 105
    :cond_3
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 106
    .line 107
    if-eqz p1, :cond_4

    .line 108
    .line 109
    invoke-virtual {p1}, Lxr/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    if-eqz v3, :cond_4

    .line 114
    .line 115
    invoke-virtual {v3}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getDelay()Ljava/lang/Long;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    goto :goto_2

    .line 120
    :cond_4
    move-object v3, v2

    .line 121
    :goto_2
    if-eqz p1, :cond_5

    .line 122
    .line 123
    invoke-virtual {p1}, Lxr/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    if-eqz v4, :cond_5

    .line 128
    .line 129
    invoke-virtual {v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanName()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    goto :goto_3

    .line 134
    :cond_5
    move-object v4, v2

    .line 135
    :goto_3
    if-eqz p1, :cond_6

    .line 136
    .line 137
    invoke-virtual {p1}, Lxr/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    if-eqz v5, :cond_6

    .line 142
    .line 143
    invoke-virtual {v5}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->isAutoDownload()Z

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    goto :goto_4

    .line 152
    :cond_6
    move-object v5, v2

    .line 153
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    const-string v7, "selectSubtitle delayDuration:"

    .line 159
    .line 160
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v3, ", name:"

    .line 167
    .line 168
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const-string v3, ", isAutoDownload:"

    .line 175
    .line 176
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    const-string v4, "short_tv_subtitle"

    .line 187
    .line 188
    invoke-virtual {v1, v4, v3, v0}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 189
    .line 190
    .line 191
    if-eqz p1, :cond_7

    .line 192
    .line 193
    invoke-virtual {p1}, Lxr/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    if-eqz v1, :cond_7

    .line 198
    .line 199
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getDelay()Ljava/lang/Long;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    if-eqz v1, :cond_7

    .line 204
    .line 205
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 206
    .line 207
    .line 208
    move-result-wide v3

    .line 209
    iget-object v1, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->c:Lqr/k0;

    .line 210
    .line 211
    iget-object v1, v1, Lqr/k0;->K:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 212
    .line 213
    invoke-virtual {v1, v3, v4}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->subtitleDelay(J)V

    .line 214
    .line 215
    .line 216
    :cond_7
    if-eqz p1, :cond_9

    .line 217
    .line 218
    invoke-virtual {p1}, Lxr/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    if-eqz v1, :cond_9

    .line 223
    .line 224
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->isAutoDownload()Z

    .line 225
    .line 226
    .line 227
    move-result v3

    .line 228
    if-nez v3, :cond_8

    .line 229
    .line 230
    sget-object v3, Lcom/transsion/shorttv/utils/h;->a:Lcom/transsion/shorttv/utils/h;

    .line 231
    .line 232
    invoke-virtual {v3}, Lcom/transsion/shorttv/utils/h;->d()Lcom/tencent/mmkv/MMKV;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    const-string v4, "k_subtitle_language"

    .line 237
    .line 238
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanName()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    invoke-virtual {v3, v4, v5}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 243
    .line 244
    .line 245
    sget-object v3, Lcom/transsion/subtitle_download/utils/d;->a:Lcom/transsion/subtitle_download/utils/d;

    .line 246
    .line 247
    invoke-virtual {v3}, Lcom/transsion/subtitle_download/utils/d;->b()Lcom/tencent/mmkv/MMKV;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    const-string v4, "k_subtitle_select_lan"

    .line 252
    .line 253
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    invoke-virtual {v3, v4, v5}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 258
    .line 259
    .line 260
    :cond_8
    sget-object v3, Lpq/a;->a:Lpq/a;

    .line 261
    .line 262
    invoke-virtual {v3}, Lpq/a;->c()Z

    .line 263
    .line 264
    .line 265
    move-result v3

    .line 266
    if-nez v3, :cond_9

    .line 267
    .line 268
    sget-object v3, Ljr/b;->a:Ljr/b$a;

    .line 269
    .line 270
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 271
    .line 272
    .line 273
    move-result-object v4

    .line 274
    sget v5, Lcom/transsion/shorttv/R$string;->short_tv_subtitle_enable_toast:I

    .line 275
    .line 276
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getName()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    new-array v0, v0, [Ljava/lang/Object;

    .line 281
    .line 282
    const/4 v6, 0x0

    .line 283
    aput-object v1, v0, v6

    .line 284
    .line 285
    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-virtual {v3, v0}, Ljr/b$a;->e(Ljava/lang/CharSequence;)V

    .line 290
    .line 291
    .line 292
    :cond_9
    if-eqz p1, :cond_a

    .line 293
    .line 294
    invoke-direct {p0, p1}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->B(Lxr/b;)V

    .line 295
    .line 296
    .line 297
    :cond_a
    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->b:Landroidx/fragment/app/FragmentActivity;

    .line 298
    .line 299
    invoke-static {v0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    new-instance v6, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$selectSubtitle$6;

    .line 304
    .line 305
    invoke-direct {v6, p1, p0, v2}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$selectSubtitle$6;-><init>(Lxr/b;Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;Lkotlin/coroutines/Continuation;)V

    .line 306
    .line 307
    .line 308
    const/4 v7, 0x3

    .line 309
    const/4 v8, 0x0

    .line 310
    const/4 v4, 0x0

    .line 311
    const/4 v5, 0x0

    .line 312
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 313
    .line 314
    .line 315
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->C()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->c:Lqr/k0;

    .line 5
    .line 6
    iget-object v0, v0, Lqr/k0;->f:Landroid/widget/FrameLayout;

    .line 7
    .line 8
    const-string v1, "flSubtitle"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcr/b;->b(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->c:Lqr/k0;

    .line 17
    .line 18
    iget-object v0, v0, Lqr/k0;->K:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->stop()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->c:Lqr/k0;

    .line 24
    .line 25
    iget-object v0, v0, Lqr/k0;->K:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->destroy()V

    .line 28
    .line 29
    .line 30
    sget-object v0, Lcom/transsion/shorttv/subtitle/manager/b;->a:Lcom/transsion/shorttv/subtitle/manager/b$a;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/transsion/shorttv/subtitle/manager/b$a;->b()Lcom/transsion/shorttv/subtitle/manager/b;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-interface {v1, p0}, Lcom/transsion/shorttv/subtitle/manager/b;->g(Lzr/a;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/transsion/shorttv/subtitle/manager/b$a;->b()Lcom/transsion/shorttv/subtitle/manager/b;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->n:Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$downloadListener$1;

    .line 44
    .line 45
    invoke-interface {v0, v1}, Lcom/transsion/shorttv/subtitle/manager/b;->c(Lcom/transsion/subtitle_download/a;)V

    .line 46
    .line 47
    .line 48
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->g:Ljava/lang/String;

    .line 51
    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v1, " --> onDestroy()"

    .line 61
    .line 62
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    const/4 v2, 0x2

    .line 70
    const/4 v3, 0x0

    .line 71
    const/4 v4, 0x0

    .line 72
    invoke-static {v0, v1, v4, v2, v3}, Lwf/a$a;->g(Lwf/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method
