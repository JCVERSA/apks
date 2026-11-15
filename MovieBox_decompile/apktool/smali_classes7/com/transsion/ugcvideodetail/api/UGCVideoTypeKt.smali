.class public abstract Lcom/transsion/ugcvideodetail/api/UGCVideoTypeKt;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/util/Map;

.field private static final c:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/ugcvideodetail/api/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/ugcvideodetail/api/b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/transsion/ugcvideodetail/api/UGCVideoTypeKt;->c:Lkotlin/Lazy;

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic a()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/ugcvideodetail/api/UGCVideoTypeKt;->b()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method private static final b()I
    .locals 1

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    invoke-static {v0}, Llj/a;->b(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private static final c()Ljava/util/Map;
    .locals 5

    .line 1
    sget-object v0, Lcm/f;->c:Lcm/f$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcm/f$a;->a()Lcm/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "sa_ugc_category_icon_config"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x2

    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-static {v0, v1, v2, v3, v4}, Lcm/f;->d(Lcm/f;Ljava/lang/String;ZILjava/lang/Object;)Lcom/transsion/mb/config/manager/ConfigBean;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v0, v4

    .line 24
    :goto_0
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_1
    sget-object v1, Lcom/transsion/ugcvideodetail/api/UGCVideoTypeKt;->a:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    sget-object v0, Lcom/transsion/ugcvideodetail/api/UGCVideoTypeKt;->b:Ljava/util/Map;

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    :try_start_0
    new-instance v1, Lcom/transsion/ugcvideodetail/api/UGCVideoTypeKt$getCachedIconMap$type$1;

    .line 45
    .line 46
    invoke-direct {v1}, Lcom/transsion/ugcvideodetail/api/UGCVideoTypeKt$getCachedIconMap$type$1;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const-string v2, "fromJson(...)"

    .line 58
    .line 59
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    check-cast v1, Ljava/util/Map;

    .line 63
    .line 64
    sput-object v0, Lcom/transsion/ugcvideodetail/api/UGCVideoTypeKt;->a:Ljava/lang/String;

    .line 65
    .line 66
    sput-object v1, Lcom/transsion/ugcvideodetail/api/UGCVideoTypeKt;->b:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    move-object v4, v1

    .line 69
    :catchall_0
    move-object v0, v4

    .line 70
    :goto_1
    return-object v0

    .line 71
    :cond_3
    :goto_2
    return-object v4
.end method

.method private static final d()I
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/ugcvideodetail/api/UGCVideoTypeKt;->c:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public static final e(Ljava/lang/String;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->MOVIE:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget p0, Lcom/transsion/baseui/R$drawable;->ic_tag_movie:I

    .line 14
    .line 15
    goto/16 :goto_0

    .line 16
    .line 17
    :cond_0
    sget-object v0, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->TV:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    sget p0, Lcom/transsion/baseui/R$drawable;->ic_tag_tv:I

    .line 30
    .line 31
    goto/16 :goto_0

    .line 32
    .line 33
    :cond_1
    sget-object v0, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->MUSIC:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    sget p0, Lcom/transsion/baseui/R$drawable;->ic_tag_music:I

    .line 46
    .line 47
    goto/16 :goto_0

    .line 48
    .line 49
    :cond_2
    sget-object v0, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->EDUCATION:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    sget p0, Lcom/transsion/baseui/R$drawable;->ic_tag_edu:I

    .line 62
    .line 63
    goto/16 :goto_0

    .line 64
    .line 65
    :cond_3
    sget-object v0, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->SHORT_TV:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_4

    .line 76
    .line 77
    sget p0, Lcom/transsion/baseui/R$drawable;->ic_tag_short_tv:I

    .line 78
    .line 79
    goto/16 :goto_0

    .line 80
    .line 81
    :cond_4
    sget-object v0, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->SPORT:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_5

    .line 92
    .line 93
    sget p0, Lcom/transsion/baseui/R$drawable;->ic_tag_sport:I

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_5
    sget-object v0, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->ROOM:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_6

    .line 107
    .line 108
    sget p0, Lcom/transsion/baseui/R$drawable;->ic_tag_room:I

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_6
    sget-object v0, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->POST:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_7

    .line 122
    .line 123
    sget p0, Lcom/transsion/baseui/R$drawable;->ic_tag_room:I

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_7
    sget-object v0, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->NOVEL:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_8

    .line 137
    .line 138
    sget p0, Lcom/transsion/baseui/R$drawable;->ic_tag_novel:I

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_8
    sget-object v0, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->LIVE:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-eqz v0, :cond_9

    .line 152
    .line 153
    sget p0, Lcom/transsion/baseui/R$drawable;->ic_tag_live:I

    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_9
    sget-object v0, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->KIDS:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    .line 157
    .line 158
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-eqz v0, :cond_a

    .line 167
    .line 168
    sget p0, Lcom/transsion/baseui/R$drawable;->ic_tag_kids:I

    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_a
    sget-object v0, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->RECREATION:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    .line 172
    .line 173
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result p0

    .line 181
    if-eqz p0, :cond_b

    .line 182
    .line 183
    sget p0, Lcom/transsion/baseui/R$drawable;->ic_tag_breakdown:I

    .line 184
    .line 185
    goto :goto_0

    .line 186
    :cond_b
    sget p0, Lcom/transsion/baseui/R$drawable;->ic_tag_default:I

    .line 187
    .line 188
    :goto_0
    return p0
.end method

.method private static final f(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-static {}, Lcom/transsion/ugcvideodetail/api/UGCVideoTypeKt;->c()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCateLev4()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCategory;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCategory;->getId()Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move-object v2, v1

    .line 21
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCateLev3()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCategory;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    if-eqz v3, :cond_2

    .line 26
    .line 27
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCategory;->getId()Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    move-object v3, v1

    .line 33
    :goto_1
    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCateLev2()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCategory;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    if-eqz v4, :cond_3

    .line 38
    .line 39
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCategory;->getId()Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    goto :goto_2

    .line 44
    :cond_3
    move-object v4, v1

    .line 45
    :goto_2
    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCateLev1()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCategory;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    if-eqz p0, :cond_4

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCategory;->getId()Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    goto :goto_3

    .line 56
    :cond_4
    move-object p0, v1

    .line 57
    :goto_3
    const/4 v5, 0x4

    .line 58
    new-array v5, v5, [Ljava/lang/Integer;

    .line 59
    .line 60
    const/4 v6, 0x0

    .line 61
    aput-object v2, v5, v6

    .line 62
    .line 63
    const/4 v2, 0x1

    .line 64
    aput-object v3, v5, v2

    .line 65
    .line 66
    const/4 v2, 0x2

    .line 67
    aput-object v4, v5, v2

    .line 68
    .line 69
    const/4 v2, 0x3

    .line 70
    aput-object p0, v5, v2

    .line 71
    .line 72
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->p([Ljava/lang/Object;)Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    check-cast p0, Ljava/lang/Iterable;

    .line 77
    .line 78
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_6

    .line 87
    .line 88
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    check-cast v2, Ljava/lang/Number;

    .line 93
    .line 94
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    check-cast v2, Ljava/lang/String;

    .line 107
    .line 108
    if-eqz v2, :cond_5

    .line 109
    .line 110
    move-object v1, v2

    .line 111
    :cond_6
    return-object v1
.end method

.method public static final g(Ljava/lang/String;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->MOVIE:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget p0, Lcom/transsion/baseui/R$string;->ugc_video_movie:I

    .line 14
    .line 15
    goto/16 :goto_0

    .line 16
    .line 17
    :cond_0
    sget-object v0, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->TV:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    sget p0, Lcom/transsion/baseui/R$string;->ugc_video_tv_shows:I

    .line 30
    .line 31
    goto/16 :goto_0

    .line 32
    .line 33
    :cond_1
    sget-object v0, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->MUSIC:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    sget p0, Lcom/transsion/baseui/R$string;->ugc_video_music:I

    .line 46
    .line 47
    goto/16 :goto_0

    .line 48
    .line 49
    :cond_2
    sget-object v0, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->EDUCATION:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    sget p0, Lcom/transsion/baseui/R$string;->ugc_video_education:I

    .line 62
    .line 63
    goto/16 :goto_0

    .line 64
    .line 65
    :cond_3
    sget-object v0, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->SHORT_TV:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_4

    .line 76
    .line 77
    sget p0, Lcom/transsion/baseui/R$string;->ugc_video_short_tv:I

    .line 78
    .line 79
    goto/16 :goto_0

    .line 80
    .line 81
    :cond_4
    sget-object v0, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->SPORT:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_5

    .line 92
    .line 93
    sget p0, Lcom/transsion/baseui/R$string;->ugc_video_sports:I

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_5
    sget-object v0, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->ROOM:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_6

    .line 107
    .line 108
    sget p0, Lcom/transsion/baseui/R$string;->ugc_video_buzzbox:I

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_6
    sget-object v0, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->POST:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_7

    .line 122
    .line 123
    sget p0, Lcom/transsion/baseui/R$string;->ugc_video_buzzbox:I

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_7
    sget-object v0, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->NOVEL:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_8

    .line 137
    .line 138
    sget p0, Lcom/transsion/baseui/R$string;->ugc_video_novel:I

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_8
    sget-object v0, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->LIVE:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-eqz v0, :cond_9

    .line 152
    .line 153
    sget p0, Lcom/transsion/baseui/R$string;->ugc_video_live:I

    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_9
    sget-object v0, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->KIDS:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    .line 157
    .line 158
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-eqz v0, :cond_a

    .line 167
    .line 168
    sget p0, Lcom/transsion/baseui/R$string;->ugc_video_kids:I

    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_a
    sget-object v0, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->RECREATION:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    .line 172
    .line 173
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result p0

    .line 181
    if-eqz p0, :cond_b

    .line 182
    .line 183
    sget p0, Lcom/transsion/baseui/R$string;->ugc_video_recreation:I

    .line 184
    .line 185
    goto :goto_0

    .line 186
    :cond_b
    sget p0, Lcom/transsion/baseui/R$string;->ugc_video_video:I

    .line 187
    .line 188
    :goto_0
    return p0
.end method

.method public static final h(Landroid/widget/ImageView;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Integer;)V
    .locals 3

    .line 1
    const-string v0, "imageView"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "ugcVideo"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCategory()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/transsion/ugcvideodetail/api/UGCVideoTypeKt;->e(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {p1}, Lcom/transsion/ugcvideodetail/api/UGCVideoTypeKt;->f(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_4

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    if-eqz p2, :cond_1

    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-static {}, Lcom/transsion/ugcvideodetail/api/UGCVideoTypeKt;->d()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    :goto_0
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 50
    .line 51
    if-eqz p2, :cond_2

    .line 52
    .line 53
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    invoke-static {}, Lcom/transsion/ugcvideodetail/api/UGCVideoTypeKt;->d()I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    :goto_1
    iput p2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 63
    .line 64
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    .line 66
    .line 67
    sget-object p2, Lni/f;->a:Lni/f$a;

    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const-string v2, "getContext(...)"

    .line 74
    .line 75
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2, v1}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {p2, p1}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1, v0}, Lni/f$b;->i(I)Lni/f$b;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p1, p0}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 91
    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    .line 95
    .line 96
    const-string p1, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams"

    .line 97
    .line 98
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw p0

    .line 102
    :cond_4
    :goto_2
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    .line 104
    .line 105
    :goto_3
    return-void
.end method

.method public static synthetic i(Landroid/widget/ImageView;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Integer;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x4

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/transsion/ugcvideodetail/api/UGCVideoTypeKt;->h(Landroid/widget/ImageView;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Integer;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final j(Landroid/widget/ImageView;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "imageView"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p5}, Lcom/transsion/ugcvideodetail/api/UGCVideoTypeKt;->e(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result p5

    .line 10
    invoke-static {}, Lcom/transsion/ugcvideodetail/api/UGCVideoTypeKt;->c()Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x4

    .line 15
    new-array v1, v1, [Ljava/lang/Integer;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    aput-object p4, v1, v2

    .line 19
    .line 20
    const/4 p4, 0x1

    .line 21
    aput-object p3, v1, p4

    .line 22
    .line 23
    const/4 p3, 0x2

    .line 24
    aput-object p2, v1, p3

    .line 25
    .line 26
    const/4 p2, 0x3

    .line 27
    aput-object p1, v1, p2

    .line 28
    .line 29
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->p([Ljava/lang/Object;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Ljava/lang/Iterable;

    .line 34
    .line 35
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    const/4 p3, 0x0

    .line 44
    if-eqz p2, :cond_2

    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    check-cast p2, Ljava/lang/Number;

    .line 51
    .line 52
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    move-object p3, p2

    .line 67
    check-cast p3, Ljava/lang/String;

    .line 68
    .line 69
    :cond_1
    if-eqz p3, :cond_0

    .line 70
    .line 71
    :cond_2
    if-eqz p3, :cond_5

    .line 72
    .line 73
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-nez p1, :cond_3

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-eqz p1, :cond_4

    .line 85
    .line 86
    invoke-static {}, Lcom/transsion/ugcvideodetail/api/UGCVideoTypeKt;->d()I

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 91
    .line 92
    invoke-static {}, Lcom/transsion/ugcvideodetail/api/UGCVideoTypeKt;->d()I

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 97
    .line 98
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    .line 100
    .line 101
    sget-object p1, Lni/f;->a:Lni/f$a;

    .line 102
    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    const-string p4, "getContext(...)"

    .line 108
    .line 109
    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, p2}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p1, p3}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p1, p5}, Lni/f$b;->i(I)Lni/f$b;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p1, p0}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    .line 129
    .line 130
    const-string p1, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams"

    .line 131
    .line 132
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw p0

    .line 136
    :cond_5
    :goto_0
    invoke-virtual {p0, p5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 137
    .line 138
    .line 139
    :goto_1
    return-void
.end method
