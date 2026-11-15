.class public final Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/ugcvideodetail/hepler/subtitle/b;
.implements Llt/c;


# instance fields
.field private final a:Landroidx/fragment/app/FragmentActivity;

.field private final b:Ljava/lang/String;

.field private final c:Landroid/view/ViewGroup;

.field private final d:Lcom/avery/subtitle/widget/SimpleSubtitleView;

.field private final e:Lcom/transsion/ugcvideodetail/hepler/subtitle/a;

.field private final f:Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

.field private final g:Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;

.field private final h:Ljava/lang/String;

.field private i:Lkotlin/jvm/functions/Function1;

.field private j:Lkotlin/jvm/functions/Function1;

.field private k:Z

.field private l:J

.field private m:F

.field private final n:Ljava/lang/String;

.field private final o:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$downloadListener$1;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/avery/subtitle/widget/SimpleSubtitleView;Lcom/transsion/ugcvideodetail/hepler/subtitle/a;Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;)V
    .locals 1

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "pageName"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "subtitleLayout"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "subtitleView"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->a:Landroidx/fragment/app/FragmentActivity;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->b:Ljava/lang/String;

    .line 27
    .line 28
    iput-object p3, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->c:Landroid/view/ViewGroup;

    .line 29
    .line 30
    iput-object p4, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->d:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 31
    .line 32
    iput-object p5, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->e:Lcom/transsion/ugcvideodetail/hepler/subtitle/a;

    .line 33
    .line 34
    iput-object p6, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->f:Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 35
    .line 36
    iput-object p7, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->g:Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;

    .line 37
    .line 38
    const-string p1, "UGCVideoSubtitleCtr"

    .line 39
    .line 40
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->h:Ljava/lang/String;

    .line 41
    .line 42
    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->k:Z

    .line 44
    .line 45
    const/high16 p1, 0x3f800000    # 1.0f

    .line 46
    .line 47
    iput p1, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->m:F

    .line 48
    .line 49
    const/4 p1, 0x0

    .line 50
    if-eqz p6, :cond_0

    .line 51
    .line 52
    invoke-virtual {p6}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    if-eqz p2, :cond_0

    .line 57
    .line 58
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    move-object p2, p1

    .line 64
    :goto_0
    if-eqz p7, :cond_1

    .line 65
    .line 66
    invoke-virtual {p7}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;->getIdType()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string p2, "_"

    .line 79
    .line 80
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->n:Ljava/lang/String;

    .line 91
    .line 92
    new-instance p1, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$downloadListener$1;

    .line 93
    .line 94
    invoke-direct {p1, p0}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$downloadListener$1;-><init>(Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;)V

    .line 95
    .line 96
    .line 97
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->o:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$downloadListener$1;

    .line 98
    .line 99
    if-eqz p5, :cond_2

    .line 100
    .line 101
    invoke-virtual {p5}, Lcom/transsion/ugcvideodetail/hepler/subtitle/a;->b()V

    .line 102
    .line 103
    .line 104
    :cond_2
    sget-object p2, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b;->a:Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b$a;

    .line 105
    .line 106
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b$a;->b()Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b;

    .line 107
    .line 108
    .line 109
    move-result-object p3

    .line 110
    invoke-interface {p3, p1}, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b;->b(Lcom/transsion/subtitle_download/a;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b$a;->b()Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-interface {p1, p0}, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b;->d(Llt/c;)V

    .line 118
    .line 119
    .line 120
    invoke-direct {p0, p4}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->w(Lcom/avery/subtitle/widget/SimpleSubtitleView;)V

    .line 121
    .line 122
    .line 123
    return-void
.end method

.method private final A()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->d:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->turnOff(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->c:Landroid/view/ViewGroup;

    .line 8
    .line 9
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static synthetic h(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->z(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic i(Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;)Landroidx/fragment/app/FragmentActivity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->a:Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic j(Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->i:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic k(Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->k:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic l(Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->l:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic m(Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->m:F

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic n(Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic o(Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;)Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->g:Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic p(Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;)Lcom/avery/subtitle/widget/SimpleSubtitleView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->d:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic q(Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic r(Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;)Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->f:Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic s(Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;)Lcom/transsion/ugcvideodetail/hepler/subtitle/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->e:Lcom/transsion/ugcvideodetail/hepler/subtitle/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic t(Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->v(Ljava/util/List;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final v(Ljava/util/List;Ljava/lang/String;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-static {}, Lcom/transsion/subtitle/helper/c;->a()Ljava/util/Locale;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    sget-object v9, Lwf/a;->a:Lwf/a$a;

    .line 10
    .line 11
    iget-object v4, v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->h:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    new-instance v6, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v7, " initDefaultSubtitle() --> cur language = "

    .line 27
    .line 28
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v3, " -- country = "

    .line 35
    .line 36
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    const/4 v7, 0x4

    .line 47
    const/4 v8, 0x0

    .line 48
    const/4 v6, 0x0

    .line 49
    move-object v3, v9

    .line 50
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    sget-object v3, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 54
    .line 55
    invoke-virtual {v3}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    const-string v4, "k_subtitle_language"

    .line 60
    .line 61
    const-string v10, ""

    .line 62
    .line 63
    invoke-virtual {v3, v4, v10}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v11

    .line 67
    iget-object v4, v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->h:Ljava/lang/String;

    .line 68
    .line 69
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    new-instance v5, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v6, " initDefaultSubtitle() --> savedDiffId = "

    .line 79
    .line 80
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v6, " -- savedLan = "

    .line 87
    .line 88
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v6, ", subListSize:"

    .line 95
    .line 96
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    const/4 v6, 0x0

    .line 107
    move-object v3, v9

    .line 108
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    const/4 v4, 0x0

    .line 116
    move-object v5, v4

    .line 117
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    if-eqz v6, :cond_7

    .line 122
    .line 123
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    check-cast v6, Lht/a;

    .line 128
    .line 129
    invoke-virtual {v6}, Lht/a;->d()Z

    .line 130
    .line 131
    .line 132
    move-result v7

    .line 133
    if-nez v7, :cond_1

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_1
    invoke-virtual {v6}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 137
    .line 138
    .line 139
    move-result-object v7

    .line 140
    invoke-virtual {v7}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v7

    .line 144
    const-string v8, "en"

    .line 145
    .line 146
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v7

    .line 150
    if-eqz v7, :cond_2

    .line 151
    .line 152
    move-object v4, v6

    .line 153
    :cond_2
    if-eqz v1, :cond_3

    .line 154
    .line 155
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    .line 156
    .line 157
    .line 158
    move-result v7

    .line 159
    if-nez v7, :cond_4

    .line 160
    .line 161
    :cond_3
    invoke-virtual {v6}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 162
    .line 163
    .line 164
    move-result-object v7

    .line 165
    invoke-virtual {v7}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanName()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v7

    .line 169
    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v7

    .line 173
    if-eqz v7, :cond_4

    .line 174
    .line 175
    invoke-virtual {v6}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    invoke-virtual {v5}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v10

    .line 183
    sget-object v12, Lwf/a;->a:Lwf/a$a;

    .line 184
    .line 185
    iget-object v13, v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->h:Ljava/lang/String;

    .line 186
    .line 187
    new-instance v5, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .line 191
    .line 192
    const-string v7, " initDefaultSubtitle() --> \u4f7f\u7528\u4e4b\u524d\u9009\u62e9\u7684\u8bed\u8a00 local set savedLan = "

    .line 193
    .line 194
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v14

    .line 204
    const/16 v16, 0x4

    .line 205
    .line 206
    const/16 v17, 0x0

    .line 207
    .line 208
    const/4 v15, 0x0

    .line 209
    invoke-static/range {v12 .. v17}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    :goto_1
    move-object v5, v6

    .line 213
    goto :goto_0

    .line 214
    :cond_4
    if-eqz v1, :cond_5

    .line 215
    .line 216
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    .line 217
    .line 218
    .line 219
    move-result v7

    .line 220
    if-nez v7, :cond_6

    .line 221
    .line 222
    :cond_5
    invoke-virtual {v6}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 223
    .line 224
    .line 225
    move-result-object v7

    .line 226
    invoke-virtual {v7}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanAbbr()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v7

    .line 230
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v8

    .line 234
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v7

    .line 238
    if-eqz v7, :cond_6

    .line 239
    .line 240
    invoke-virtual {v6}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    invoke-virtual {v5}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v10

    .line 248
    sget-object v12, Lwf/a;->a:Lwf/a$a;

    .line 249
    .line 250
    iget-object v13, v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->h:Ljava/lang/String;

    .line 251
    .line 252
    new-instance v5, Ljava/lang/StringBuilder;

    .line 253
    .line 254
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .line 256
    .line 257
    const-string v7, " initDefaultSubtitle() --> \u6ca1\u6709\u81ea\u5df1\u9009\u62e9\u7684\u9ed8\u8ba4\u8bed\u8a00\uff0c\u4f7f\u7528\u624b\u673a\u8bed\u8a00 -- phone set def language = "

    .line 258
    .line 259
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v14

    .line 269
    const/16 v16, 0x4

    .line 270
    .line 271
    const/16 v17, 0x0

    .line 272
    .line 273
    const/4 v15, 0x0

    .line 274
    invoke-static/range {v12 .. v17}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    goto :goto_1

    .line 278
    :cond_6
    invoke-virtual {v6}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 279
    .line 280
    .line 281
    move-result-object v7

    .line 282
    invoke-virtual {v7}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v7

    .line 286
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v7

    .line 290
    if-eqz v7, :cond_0

    .line 291
    .line 292
    invoke-virtual {v6}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 293
    .line 294
    .line 295
    move-result-object v5

    .line 296
    invoke-virtual {v5}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v10

    .line 300
    sget-object v12, Lwf/a;->a:Lwf/a$a;

    .line 301
    .line 302
    iget-object v13, v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->h:Ljava/lang/String;

    .line 303
    .line 304
    new-instance v5, Ljava/lang/StringBuilder;

    .line 305
    .line 306
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    .line 308
    .line 309
    const-string v7, " initDefaultSubtitle() --> \u4f7f\u7528\u4e4b\u524d\u9009\u62e9\u7684\u5b57\u5e55 saved flag = "

    .line 310
    .line 311
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v14

    .line 321
    const/16 v16, 0x4

    .line 322
    .line 323
    const/16 v17, 0x0

    .line 324
    .line 325
    const/4 v15, 0x0

    .line 326
    invoke-static/range {v12 .. v17}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 327
    .line 328
    .line 329
    goto :goto_1

    .line 330
    :cond_7
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    .line 331
    .line 332
    .line 333
    move-result v1

    .line 334
    if-nez v1, :cond_b

    .line 335
    .line 336
    if-eqz v4, :cond_8

    .line 337
    .line 338
    invoke-virtual {v4}, Lht/a;->d()Z

    .line 339
    .line 340
    .line 341
    move-result v1

    .line 342
    if-eqz v1, :cond_8

    .line 343
    .line 344
    invoke-virtual {v4}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    sget-object v5, Lwf/a;->a:Lwf/a$a;

    .line 353
    .line 354
    iget-object v6, v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->h:Ljava/lang/String;

    .line 355
    .line 356
    new-instance v2, Ljava/lang/StringBuilder;

    .line 357
    .line 358
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    .line 360
    .line 361
    const-string v3, " initDefaultSubtitle() --> \u6ca1\u6709\u8bbe\u7f6e\u9ed8\u8ba4\u8bed\u8a00 --> english set def language = "

    .line 362
    .line 363
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v7

    .line 373
    const/4 v9, 0x4

    .line 374
    const/4 v10, 0x0

    .line 375
    const/4 v8, 0x0

    .line 376
    invoke-static/range {v5 .. v10}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 377
    .line 378
    .line 379
    goto :goto_3

    .line 380
    :cond_8
    move-object/from16 v1, p1

    .line 381
    .line 382
    check-cast v1, Ljava/util/Collection;

    .line 383
    .line 384
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 385
    .line 386
    .line 387
    move-result v1

    .line 388
    if-nez v1, :cond_b

    .line 389
    .line 390
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 395
    .line 396
    .line 397
    move-result v2

    .line 398
    if-eqz v2, :cond_a

    .line 399
    .line 400
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    check-cast v2, Lht/a;

    .line 405
    .line 406
    invoke-virtual {v2}, Lht/a;->d()Z

    .line 407
    .line 408
    .line 409
    move-result v3

    .line 410
    if-eqz v3, :cond_9

    .line 411
    .line 412
    invoke-virtual {v2}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 413
    .line 414
    .line 415
    move-result-object v1

    .line 416
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v10

    .line 420
    move-object v4, v2

    .line 421
    goto :goto_2

    .line 422
    :cond_a
    move-object v4, v5

    .line 423
    :goto_2
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    .line 424
    .line 425
    .line 426
    move-result v1

    .line 427
    if-nez v1, :cond_c

    .line 428
    .line 429
    sget-object v5, Lwf/a;->a:Lwf/a$a;

    .line 430
    .line 431
    iget-object v6, v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->h:Ljava/lang/String;

    .line 432
    .line 433
    const/4 v9, 0x4

    .line 434
    const/4 v10, 0x0

    .line 435
    const-string v7, " initDefaultSubtitle() --> \u53ef\u80fd\u5916\u90e8\u53ea\u8bfb\u53d6\u5230\u4e86\u6570\u636e\u5e93\u524d\u9762\u6ca1\u4e0b\u8f7d\u7684\u5b57\u5e55 --> \u6ca1\u6709\u5bf9\u5e94\u7684\u8bed\u8a00\uff0c\u4e0d\u8bbe\u7f6e\uff0c\u9700\u8981\u7528\u6237\u624b\u52a8\u8bbe\u7f6e\u6216\u5f53\u524d\u4e0b\u8f7d\u540e\u81ea\u52a8\u8bbe\u7f6e\u4e0a"

    .line 436
    .line 437
    const/4 v8, 0x0

    .line 438
    invoke-static/range {v5 .. v10}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 439
    .line 440
    .line 441
    return-void

    .line 442
    :cond_b
    move-object v4, v5

    .line 443
    :cond_c
    :goto_3
    move-object/from16 v1, p1

    .line 444
    .line 445
    check-cast v1, Ljava/lang/Iterable;

    .line 446
    .line 447
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 448
    .line 449
    .line 450
    move-result-object v1

    .line 451
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 452
    .line 453
    .line 454
    move-result v2

    .line 455
    if-eqz v2, :cond_d

    .line 456
    .line 457
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    move-result-object v2

    .line 461
    check-cast v2, Lht/a;

    .line 462
    .line 463
    iget-object v3, v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->d:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 464
    .line 465
    invoke-virtual {v2}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 466
    .line 467
    .line 468
    move-result-object v5

    .line 469
    invoke-virtual {v5}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getPath()Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v5

    .line 473
    invoke-static {v2}, Lcom/transsion/subtitle/helper/c;->b(Lht/a;)Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v2

    .line 477
    invoke-virtual {v3, v5, v2}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->setSubtitlePath(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    goto :goto_4

    .line 481
    :cond_d
    invoke-virtual {v0, v4}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->f(Lht/a;)V

    .line 482
    .line 483
    .line 484
    if-eqz v4, :cond_e

    .line 485
    .line 486
    const/4 v1, 0x1

    .line 487
    invoke-virtual {v4, v1}, Lht/a;->l(Z)V

    .line 488
    .line 489
    .line 490
    :cond_e
    iget-object v1, v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->e:Lcom/transsion/ugcvideodetail/hepler/subtitle/a;

    .line 491
    .line 492
    if-eqz v1, :cond_f

    .line 493
    .line 494
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/hepler/subtitle/a;->f()Landroidx/lifecycle/b0;

    .line 495
    .line 496
    .line 497
    move-result-object v1

    .line 498
    if-eqz v1, :cond_f

    .line 499
    .line 500
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 501
    .line 502
    invoke-virtual {v1, v2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 503
    .line 504
    .line 505
    :cond_f
    return-void
.end method

.method private final w(Lcom/avery/subtitle/widget/SimpleSubtitleView;)V
    .locals 8

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
    sget v1, Lcom/tn/lib/widget/R$color;->black_80:I

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
    invoke-static {v0}, Llj/a;->b(I)I

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
    if-eqz p1, :cond_2

    .line 32
    .line 33
    new-instance v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$a;

    .line 34
    .line 35
    invoke-direct {v0, p0}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$a;-><init>(Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;)V

    .line 36
    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-virtual {p1, v0, v1}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->initSubtitle(Lk5/a;Z)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 44
    .line 45
    iget-object v3, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->h:Ljava/lang/String;

    .line 46
    .line 47
    const/4 v6, 0x4

    .line 48
    const/4 v7, 0x0

    .line 49
    const-string v4, " vdSubtitle --> initSubtitle() --> null"

    .line 50
    .line 51
    const/4 v5, 0x0

    .line 52
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    return-void
.end method

.method private final x(Lht/a;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final y()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->e:Lcom/transsion/ugcvideodetail/hepler/subtitle/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/hepler/subtitle/a;->d()Landroidx/lifecycle/b0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->e:Lcom/transsion/ugcvideodetail/hepler/subtitle/a;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/hepler/subtitle/a;->e()Landroidx/lifecycle/b0;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->d:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->reset()V

    .line 31
    .line 32
    .line 33
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->h:Ljava/lang/String;

    .line 36
    .line 37
    const/4 v5, 0x4

    .line 38
    const/4 v6, 0x0

    .line 39
    const-string v3, " reset() --> \u91cd\u7f6e\u8d44\u6e90"

    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method private static final z(Z)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public K(ZLcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 7

    .line 1
    const-string v0, "bean"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->h:Ljava/lang/String;

    .line 9
    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v0, " checkResult --> "

    .line 16
    .line 17
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const/4 v5, 0x4

    .line 28
    const/4 v6, 0x0

    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object p2, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->i:Lkotlin/jvm/functions/Function1;

    .line 34
    .line 35
    if-eqz p2, :cond_0

    .line 36
    .line 37
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method public a(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->i:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public b(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->j:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->k:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->d:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->resume()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->d:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->pause()V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public d(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->l:J

    .line 2
    .line 3
    return-void
.end method

.method public e()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->a:Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v4, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-direct {v4, p0, v0}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$checkSubtitle$1;-><init>(Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;Lkotlin/coroutines/Continuation;)V

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

.method public f(Lht/a;)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->e:Lcom/transsion/ugcvideodetail/hepler/subtitle/a;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/hepler/subtitle/a;->d()Landroidx/lifecycle/b0;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/util/List;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    check-cast v1, Ljava/lang/Iterable;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lht/a;

    .line 38
    .line 39
    invoke-virtual {v3}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    if-eqz v5, :cond_0

    .line 54
    .line 55
    invoke-virtual {v5}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    goto :goto_1

    .line 60
    :cond_0
    move-object v5, v2

    .line 61
    :goto_1
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    invoke-virtual {v3, v4}, Lht/a;->l(Z)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->j:Lkotlin/jvm/functions/Function1;

    .line 70
    .line 71
    if-eqz v1, :cond_2

    .line 72
    .line 73
    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    :cond_2
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->e:Lcom/transsion/ugcvideodetail/hepler/subtitle/a;

    .line 77
    .line 78
    if-eqz v1, :cond_3

    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/hepler/subtitle/a;->c()Landroidx/lifecycle/b0;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    if-eqz v1, :cond_3

    .line 85
    .line 86
    invoke-virtual {v1, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    :cond_3
    if-eqz p1, :cond_4

    .line 90
    .line 91
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    if-eqz v1, :cond_4

    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getPath()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    if-eqz v1, :cond_4

    .line 102
    .line 103
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->A()V

    .line 104
    .line 105
    .line 106
    iget-object v3, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->d:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 107
    .line 108
    invoke-static {p1}, Lcom/transsion/subtitle/helper/c;->b(Lht/a;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    new-instance v5, Lcom/transsion/ugcvideodetail/hepler/subtitle/c;

    .line 113
    .line 114
    invoke-direct {v5}, Lcom/transsion/ugcvideodetail/hepler/subtitle/c;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3, v1, v4, v5}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->selectSubtitle(Ljava/lang/String;Ljava/lang/String;Lk5/b;)V

    .line 118
    .line 119
    .line 120
    :cond_4
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 121
    .line 122
    iget-object v3, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->h:Ljava/lang/String;

    .line 123
    .line 124
    if-eqz p1, :cond_5

    .line 125
    .line 126
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    if-eqz v4, :cond_5

    .line 131
    .line 132
    invoke-virtual {v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getDelay()Ljava/lang/Long;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    goto :goto_2

    .line 137
    :cond_5
    move-object v4, v2

    .line 138
    :goto_2
    if-eqz p1, :cond_6

    .line 139
    .line 140
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    if-eqz v5, :cond_6

    .line 145
    .line 146
    invoke-virtual {v5}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanName()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    goto :goto_3

    .line 151
    :cond_6
    move-object v5, v2

    .line 152
    :goto_3
    if-eqz p1, :cond_7

    .line 153
    .line 154
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    if-eqz v6, :cond_7

    .line 159
    .line 160
    invoke-virtual {v6}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->isAutoDownload()Z

    .line 161
    .line 162
    .line 163
    move-result v6

    .line 164
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    goto :goto_4

    .line 169
    :cond_7
    move-object v6, v2

    .line 170
    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    const-string v8, "selectSubtitle delayDuration:"

    .line 176
    .line 177
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v4, ", name:"

    .line 184
    .line 185
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string v4, ", isAutoDownload:"

    .line 192
    .line 193
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    invoke-virtual {v1, v3, v4, v0}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 204
    .line 205
    .line 206
    if-eqz p1, :cond_8

    .line 207
    .line 208
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    if-eqz v1, :cond_8

    .line 213
    .line 214
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getDelay()Ljava/lang/Long;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    if-eqz v1, :cond_8

    .line 219
    .line 220
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 221
    .line 222
    .line 223
    move-result-wide v3

    .line 224
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->d:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 225
    .line 226
    invoke-virtual {v1, v3, v4}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->subtitleDelay(J)V

    .line 227
    .line 228
    .line 229
    :cond_8
    if-eqz p1, :cond_a

    .line 230
    .line 231
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    if-eqz v1, :cond_a

    .line 236
    .line 237
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->isAutoDownload()Z

    .line 238
    .line 239
    .line 240
    move-result v3

    .line 241
    if-nez v3, :cond_9

    .line 242
    .line 243
    sget-object v3, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 244
    .line 245
    invoke-virtual {v3}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    const-string v4, "k_subtitle_language"

    .line 250
    .line 251
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanName()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v5

    .line 255
    invoke-virtual {v3, v4, v5}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 256
    .line 257
    .line 258
    sget-object v3, Lcom/transsion/subtitle_download/utils/d;->a:Lcom/transsion/subtitle_download/utils/d;

    .line 259
    .line 260
    invoke-virtual {v3}, Lcom/transsion/subtitle_download/utils/d;->b()Lcom/tencent/mmkv/MMKV;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    const-string v4, "k_subtitle_select_lan"

    .line 265
    .line 266
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v5

    .line 270
    invoke-virtual {v3, v4, v5}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 271
    .line 272
    .line 273
    :cond_9
    sget-object v3, Lfh/b;->a:Lfh/b$a;

    .line 274
    .line 275
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 276
    .line 277
    .line 278
    move-result-object v4

    .line 279
    sget v5, Lcom/transsion/ugcvideodetail/R$string;->ugc_imm_video_enable_toast:I

    .line 280
    .line 281
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getName()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    new-array v0, v0, [Ljava/lang/Object;

    .line 286
    .line 287
    const/4 v6, 0x0

    .line 288
    aput-object v1, v0, v6

    .line 289
    .line 290
    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    invoke-virtual {v3, v0}, Lfh/b$a;->e(Ljava/lang/CharSequence;)V

    .line 295
    .line 296
    .line 297
    :cond_a
    if-eqz p1, :cond_b

    .line 298
    .line 299
    invoke-direct {p0, p1}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->x(Lht/a;)V

    .line 300
    .line 301
    .line 302
    :cond_b
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->a:Landroidx/fragment/app/FragmentActivity;

    .line 303
    .line 304
    invoke-static {v0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 305
    .line 306
    .line 307
    move-result-object v3

    .line 308
    new-instance v6, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$selectSubtitle$6;

    .line 309
    .line 310
    invoke-direct {v6, p1, p0, v2}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$selectSubtitle$6;-><init>(Lht/a;Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;Lkotlin/coroutines/Continuation;)V

    .line 311
    .line 312
    .line 313
    const/4 v7, 0x3

    .line 314
    const/4 v8, 0x0

    .line 315
    const/4 v4, 0x0

    .line 316
    const/4 v5, 0x0

    .line 317
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 318
    .line 319
    .line 320
    return-void
.end method

.method public g(Lht/a;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Llt/c$a;->b(Llt/c;Lht/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onDestroy()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->y()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->c:Landroid/view/ViewGroup;

    .line 5
    .line 6
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->d:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->stop()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->d:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->destroy()V

    .line 17
    .line 18
    .line 19
    sget-object v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b;->a:Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b$a;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b$a;->b()Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v1, p0}, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b;->f(Llt/c;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b$a;->b()Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->o:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$downloadListener$1;

    .line 33
    .line 34
    invoke-interface {v0, v1}, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b;->c(Lcom/transsion/subtitle_download/a;)V

    .line 35
    .line 36
    .line 37
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 38
    .line 39
    iget-object v3, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->h:Ljava/lang/String;

    .line 40
    .line 41
    const/4 v6, 0x4

    .line 42
    const/4 v7, 0x0

    .line 43
    const-string v4, " onDestroy()"

    .line 44
    .line 45
    const/4 v5, 0x0

    .line 46
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final u()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
