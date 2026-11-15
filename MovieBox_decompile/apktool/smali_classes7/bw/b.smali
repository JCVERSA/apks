.class public final Lbw/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lwv/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lkotlin/jvm/functions/Function1;Lcom/transsion/moviedetailapi/bean/DubsInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lbw/b;->f(Lkotlin/jvm/functions/Function1;Lcom/transsion/moviedetailapi/bean/DubsInfo;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final f(Lkotlin/jvm/functions/Function1;Lcom/transsion/moviedetailapi/bean/DubsInfo;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/moviedetail/fragment/HotFragment;->Companion:Lcom/transsion/moviedetail/fragment/HotFragment$a;

    .line 2
    .line 3
    sget-object v1, Lcom/transsion/moviedetailapi/PostRankType;->POST_RANK_TYPE_HOT:Lcom/transsion/moviedetailapi/PostRankType;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/transsion/moviedetail/fragment/HotFragment$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/PostRankType;)Landroidx/fragment/app/Fragment;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public b(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;ZZ)Landroidx/fragment/app/Fragment;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "pageName"

    .line 3
    .line 4
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v2, v1

    .line 16
    :goto_0
    sget-object v3, Lcom/transsion/moviedetailapi/SubjectType;->EDUCATION:Lcom/transsion/moviedetailapi/SubjectType;

    .line 17
    .line 18
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-ne v4, v3, :cond_2

    .line 30
    .line 31
    new-instance v2, Lcom/transsion/moviedetail/fragment/SubjectEduHeaderFragment;

    .line 32
    .line 33
    invoke-direct {v2}, Lcom/transsion/moviedetail/fragment/SubjectEduHeaderFragment;-><init>()V

    .line 34
    .line 35
    .line 36
    goto :goto_3

    .line 37
    :cond_2
    :goto_1
    sget-object v3, Lcom/transsion/moviedetailapi/SubjectType;->MUSIC:Lcom/transsion/moviedetailapi/SubjectType;

    .line 38
    .line 39
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-nez v2, :cond_3

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-ne v2, v3, :cond_4

    .line 51
    .line 52
    new-instance v2, Lcom/transsion/videodetail/music/ui/SubjectMusicHeaderFragment;

    .line 53
    .line 54
    invoke-direct {v2}, Lcom/transsion/videodetail/music/ui/SubjectMusicHeaderFragment;-><init>()V

    .line 55
    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_4
    :goto_2
    new-instance v2, Lcom/transsion/videodetail/SubjectDetailHeaderFragment;

    .line 59
    .line 60
    invoke-direct {v2}, Lcom/transsion/videodetail/SubjectDetailHeaderFragment;-><init>()V

    .line 61
    .line 62
    .line 63
    :goto_3
    const-string v3, "data_key_resource_detectors"

    .line 64
    .line 65
    invoke-static {v3, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    if-eqz p1, :cond_5

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    goto :goto_4

    .line 76
    :cond_5
    move-object v4, v1

    .line 77
    :goto_4
    const-string v5, "ops"

    .line 78
    .line 79
    invoke-static {v5, v4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    const-string v5, "module_name"

    .line 84
    .line 85
    invoke-static {v5, p3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 86
    .line 87
    .line 88
    move-result-object p3

    .line 89
    if-eqz p1, :cond_6

    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    :cond_6
    const-string v5, "id"

    .line 96
    .line 97
    invoke-static {v5, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    if-eqz p1, :cond_7

    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSeason()I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    goto :goto_5

    .line 108
    :cond_7
    move p1, v0

    .line 109
    :goto_5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    const-string v5, "season"

    .line 114
    .line 115
    invoke-static {v5, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    const-string v5, "page_from"

    .line 120
    .line 121
    invoke-static {v5, p2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 126
    .line 127
    .line 128
    move-result-object p4

    .line 129
    const-string v5, "is_Intercept_detail"

    .line 130
    .line 131
    invoke-static {v5, p4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 132
    .line 133
    .line 134
    move-result-object p4

    .line 135
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 136
    .line 137
    .line 138
    move-result-object p5

    .line 139
    const-string v5, "isOutsideVideo"

    .line 140
    .line 141
    invoke-static {v5, p5}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 142
    .line 143
    .line 144
    move-result-object p5

    .line 145
    const/16 v5, 0x8

    .line 146
    .line 147
    new-array v5, v5, [Lkotlin/Pair;

    .line 148
    .line 149
    aput-object v3, v5, v0

    .line 150
    .line 151
    const/4 v0, 0x1

    .line 152
    aput-object v4, v5, v0

    .line 153
    .line 154
    const/4 v0, 0x2

    .line 155
    aput-object p3, v5, v0

    .line 156
    .line 157
    const/4 p3, 0x3

    .line 158
    aput-object v1, v5, p3

    .line 159
    .line 160
    const/4 p3, 0x4

    .line 161
    aput-object p1, v5, p3

    .line 162
    .line 163
    const/4 p1, 0x5

    .line 164
    aput-object p2, v5, p1

    .line 165
    .line 166
    const/4 p1, 0x6

    .line 167
    aput-object p4, v5, p1

    .line 168
    .line 169
    const/4 p1, 0x7

    .line 170
    aput-object p5, v5, p1

    .line 171
    .line 172
    invoke-static {v5}, Landroidx/core/os/d;->b([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 177
    .line 178
    .line 179
    return-object v2
.end method

.method public c(Landroidx/fragment/app/Fragment;ILjava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    const-string v0, "targetFragment"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "subjectId"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "callback"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/transsion/videodetail/VideoDetailAudioTrackSelectDialog;

    .line 17
    .line 18
    invoke-direct {v0}, Lcom/transsion/videodetail/VideoDetailAudioTrackSelectDialog;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p3}, Lcom/transsion/videodetail/VideoDetailAudioTrackSelectDialog;->A0(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1, p2}, Lcom/transsion/play/detail/fragment/BaseBottomDialogFragment;->n0(Landroidx/fragment/app/Fragment;I)V

    .line 25
    .line 26
    .line 27
    new-instance p1, Lbw/a;

    .line 28
    .line 29
    invoke-direct {p1, p4}, Lbw/a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Lcom/transsion/videodetail/VideoDetailAudioTrackSelectDialog;->z0(Lkotlin/jvm/functions/Function1;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public d(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;ZZ)Landroidx/fragment/app/Fragment;
    .locals 6

    .line 1
    sget-object v0, Lcom/transsion/moviedetail/fragment/ForYouFragment;->r:Lcom/transsion/moviedetail/fragment/ForYouFragment$a;

    .line 2
    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move v4, p4

    .line 7
    move v5, p5

    .line 8
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/moviedetail/fragment/ForYouFragment$a;->a(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/transsion/moviedetail/fragment/ForYouFragment;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method
