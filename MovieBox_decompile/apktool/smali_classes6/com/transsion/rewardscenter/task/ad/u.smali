.class public final Lcom/transsion/rewardscenter/task/ad/u;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/rewardscenter/task/ad/u;

.field private static final b:Lkotlin/Lazy;

.field private static c:Lcom/transsion/rewardscenter/task/ad/v$c;

.field private static d:Ljava/util/List;

.field private static e:Ljava/util/List;

.field private static f:Lcom/transsion/rewardscenterapi/MemberTaskItem;

.field private static g:Lcom/transsion/rewardscenterapi/MemberTaskItem;

.field private static h:Lcom/transsion/rewardscenterapi/MemberTaskItem;

.field private static i:Lcom/transsion/rewardscenterapi/MemberTaskItem;

.field private static j:Lcom/transsion/rewardscenterapi/MemberTaskItem;

.field public static final k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/rewardscenter/task/ad/u;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/rewardscenter/task/ad/u;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/rewardscenter/task/ad/u;->a:Lcom/transsion/rewardscenter/task/ad/u;

    .line 7
    .line 8
    new-instance v0, Lcom/transsion/rewardscenter/task/ad/t;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/transsion/rewardscenter/task/ad/t;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/transsion/rewardscenter/task/ad/u;->b:Lkotlin/Lazy;

    .line 18
    .line 19
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/transsion/rewardscenter/task/ad/u;->d:Ljava/util/List;

    .line 24
    .line 25
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/transsion/rewardscenter/task/ad/u;->e:Ljava/util/List;

    .line 30
    .line 31
    const/16 v0, 0x8

    .line 32
    .line 33
    sput v0, Lcom/transsion/rewardscenter/task/ad/u;->k:I

    .line 34
    .line 35
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a()Lcom/tencent/mmkv/MMKV;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/rewardscenter/task/ad/u;->o()Lcom/tencent/mmkv/MMKV;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final f()Lcom/tencent/mmkv/MMKV;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/rewardscenter/task/ad/u;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/tencent/mmkv/MMKV;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final o()Lcom/tencent/mmkv/MMKV;
    .locals 1

    .line 1
    const-string v0, "StageTaskAdCache"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/mmkv/MMKV;->I(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method


# virtual methods
.method public final b(Lcom/transsion/rewardscenter/task/ad/v;Lcom/transsion/rewardscenterapi/MemberTaskItem;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    sget-object v1, Lcom/transsion/rewardscenter/task/ad/u;->f:Lcom/transsion/rewardscenterapi/MemberTaskItem;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getTaskId()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    move-object v1, v2

    .line 16
    :goto_0
    sget-object v3, Lcom/transsion/rewardscenter/task/ad/u;->f:Lcom/transsion/rewardscenterapi/MemberTaskItem;

    .line 17
    .line 18
    invoke-static {v1, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    sget-object v3, Lcom/transsion/rewardscenter/task/ad/u;->g:Lcom/transsion/rewardscenterapi/MemberTaskItem;

    .line 23
    .line 24
    if-eqz v3, :cond_2

    .line 25
    .line 26
    invoke-virtual {v3}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getTaskId()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    move-object v3, v2

    .line 32
    :goto_1
    sget-object v4, Lcom/transsion/rewardscenter/task/ad/u;->g:Lcom/transsion/rewardscenterapi/MemberTaskItem;

    .line 33
    .line 34
    invoke-static {v3, v4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    sget-object v4, Lcom/transsion/rewardscenter/task/ad/u;->h:Lcom/transsion/rewardscenterapi/MemberTaskItem;

    .line 39
    .line 40
    if-eqz v4, :cond_3

    .line 41
    .line 42
    invoke-virtual {v4}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getTaskId()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    goto :goto_2

    .line 47
    :cond_3
    move-object v4, v2

    .line 48
    :goto_2
    sget-object v5, Lcom/transsion/rewardscenter/task/ad/u;->h:Lcom/transsion/rewardscenterapi/MemberTaskItem;

    .line 49
    .line 50
    invoke-static {v4, v5}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    sget-object v5, Lcom/transsion/rewardscenter/task/ad/u;->j:Lcom/transsion/rewardscenterapi/MemberTaskItem;

    .line 55
    .line 56
    if-eqz v5, :cond_4

    .line 57
    .line 58
    invoke-virtual {v5}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getTaskId()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    goto :goto_3

    .line 63
    :cond_4
    move-object v5, v2

    .line 64
    :goto_3
    sget-object v6, Lcom/transsion/rewardscenter/task/ad/u;->j:Lcom/transsion/rewardscenterapi/MemberTaskItem;

    .line 65
    .line 66
    invoke-static {v5, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    sget-object v6, Lcom/transsion/rewardscenter/task/ad/u;->i:Lcom/transsion/rewardscenterapi/MemberTaskItem;

    .line 71
    .line 72
    if-eqz v6, :cond_5

    .line 73
    .line 74
    invoke-virtual {v6}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getTaskId()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    :cond_5
    sget-object v6, Lcom/transsion/rewardscenter/task/ad/u;->i:Lcom/transsion/rewardscenterapi/MemberTaskItem;

    .line 79
    .line 80
    invoke-static {v2, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    const/4 v6, 0x5

    .line 85
    new-array v6, v6, [Lkotlin/Pair;

    .line 86
    .line 87
    aput-object v1, v6, v0

    .line 88
    .line 89
    const/4 v1, 0x1

    .line 90
    aput-object v3, v6, v1

    .line 91
    .line 92
    const/4 v1, 0x2

    .line 93
    aput-object v4, v6, v1

    .line 94
    .line 95
    const/4 v1, 0x3

    .line 96
    aput-object v5, v6, v1

    .line 97
    .line 98
    const/4 v1, 0x4

    .line 99
    aput-object v2, v6, v1

    .line 100
    .line 101
    invoke-static {v6}, Lkotlin/collections/MapsKt;->l([Lkotlin/Pair;)Ljava/util/Map;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {p2}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getTaskId()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    check-cast v1, Lcom/transsion/rewardscenterapi/MemberTaskItem;

    .line 114
    .line 115
    if-eqz v1, :cond_6

    .line 116
    .line 117
    invoke-virtual {p2}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getProgress()Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v1, v2}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->setProgress(Ljava/lang/Integer;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getTotalProgress()Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {v1, v2}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->setTotalProgress(Ljava/lang/Integer;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getStatus()Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {v1, v2}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->setStatus(Ljava/lang/Integer;)V

    .line 136
    .line 137
    .line 138
    :cond_6
    invoke-virtual {p2}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getTotalProgress()Ljava/lang/Integer;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    if-eqz v1, :cond_8

    .line 143
    .line 144
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    invoke-virtual {p2}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getProgress()Ljava/lang/Integer;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    if-eqz p2, :cond_7

    .line 153
    .line 154
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    :cond_7
    sub-int v0, v1, v0

    .line 159
    .line 160
    :cond_8
    if-gtz v0, :cond_9

    .line 161
    .line 162
    invoke-virtual {p0, p1}, Lcom/transsion/rewardscenter/task/ad/u;->p(Lcom/transsion/rewardscenter/task/ad/v;)V

    .line 163
    .line 164
    .line 165
    :cond_9
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1
    const-string v0, "sceneId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "packageName"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const v1, 0x44cbe256

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    const/4 v3, 0x0

    .line 20
    if-eq v0, v1, :cond_18

    .line 21
    .line 22
    const v1, 0x5276b338

    .line 23
    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    if-eq v0, v1, :cond_b

    .line 27
    .line 28
    const v1, 0x7f85caa6

    .line 29
    .line 30
    .line 31
    if-eq v0, v1, :cond_0

    .line 32
    .line 33
    goto/16 :goto_6

    .line 34
    .line 35
    :cond_0
    const-string v0, "MemberCenterStageNativeScene"

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_1

    .line 42
    .line 43
    goto/16 :goto_6

    .line 44
    .line 45
    :cond_1
    sget-object p1, Lcom/transsion/rewardscenter/task/ad/u;->c:Lcom/transsion/rewardscenter/task/ad/v$c;

    .line 46
    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$c;->i()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    :cond_2
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Ljava/lang/Iterable;

    .line 58
    .line 59
    instance-of v0, p1, Ljava/util/Collection;

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    move-object v0, p1

    .line 64
    check-cast v0, Ljava/util/Collection;

    .line 65
    .line 66
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_5

    .line 82
    .line 83
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Ljava/lang/String;

    .line 88
    .line 89
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_4

    .line 94
    .line 95
    goto/16 :goto_9

    .line 96
    .line 97
    :cond_5
    :goto_0
    sget-object p1, Lcom/transsion/rewardscenter/task/ad/u;->e:Ljava/util/List;

    .line 98
    .line 99
    check-cast p1, Ljava/lang/Iterable;

    .line 100
    .line 101
    new-instance v0, Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    :cond_6
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_7

    .line 115
    .line 116
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    move-object v4, v1

    .line 121
    check-cast v4, Lcom/transsion/rewardscenter/task/ad/v$a;

    .line 122
    .line 123
    invoke-virtual {v4}, Lcom/transsion/rewardscenter/task/ad/v$a;->k()Z

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    if-eqz v4, :cond_6

    .line 128
    .line 129
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_7
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    if-eqz p1, :cond_8

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-eqz v0, :cond_a

    .line 149
    .line 150
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    check-cast v0, Lcom/transsion/rewardscenter/task/ad/v$a;

    .line 155
    .line 156
    invoke-virtual {v0}, Lcom/transsion/rewardscenter/task/ad/v$a;->i()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-eqz v0, :cond_9

    .line 165
    .line 166
    goto/16 :goto_9

    .line 167
    .line 168
    :cond_a
    :goto_2
    move v2, v3

    .line 169
    goto/16 :goto_9

    .line 170
    .line 171
    :cond_b
    const-string v0, "MemberTaskRegularNativeScene"

    .line 172
    .line 173
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    if-nez p1, :cond_c

    .line 178
    .line 179
    goto/16 :goto_6

    .line 180
    .line 181
    :cond_c
    sget-object p1, Lcom/transsion/rewardscenter/task/ad/u;->c:Lcom/transsion/rewardscenter/task/ad/v$c;

    .line 182
    .line 183
    if-eqz p1, :cond_d

    .line 184
    .line 185
    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$c;->i()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    :cond_d
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    check-cast p1, Ljava/lang/Iterable;

    .line 194
    .line 195
    instance-of v0, p1, Ljava/util/Collection;

    .line 196
    .line 197
    if-eqz v0, :cond_e

    .line 198
    .line 199
    move-object v0, p1

    .line 200
    check-cast v0, Ljava/util/Collection;

    .line 201
    .line 202
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-eqz v0, :cond_e

    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_e
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    :cond_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    if-eqz v0, :cond_10

    .line 218
    .line 219
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    check-cast v0, Ljava/lang/String;

    .line 224
    .line 225
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    if-eqz v0, :cond_f

    .line 230
    .line 231
    goto/16 :goto_9

    .line 232
    .line 233
    :cond_10
    :goto_3
    sget-object p1, Lcom/transsion/rewardscenter/task/ad/u;->d:Ljava/util/List;

    .line 234
    .line 235
    check-cast p1, Ljava/lang/Iterable;

    .line 236
    .line 237
    instance-of v0, p1, Ljava/util/Collection;

    .line 238
    .line 239
    if-eqz v0, :cond_11

    .line 240
    .line 241
    move-object v0, p1

    .line 242
    check-cast v0, Ljava/util/Collection;

    .line 243
    .line 244
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    if-eqz v0, :cond_11

    .line 249
    .line 250
    goto :goto_4

    .line 251
    :cond_11
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    :cond_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    if-eqz v0, :cond_13

    .line 260
    .line 261
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    check-cast v0, Lcom/transsion/rewardscenter/task/ad/v$c;

    .line 266
    .line 267
    invoke-virtual {v0}, Lcom/transsion/rewardscenter/task/ad/v$c;->i()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    if-eqz v0, :cond_12

    .line 276
    .line 277
    goto/16 :goto_9

    .line 278
    .line 279
    :cond_13
    :goto_4
    sget-object p1, Lcom/transsion/rewardscenter/task/ad/u;->e:Ljava/util/List;

    .line 280
    .line 281
    check-cast p1, Ljava/lang/Iterable;

    .line 282
    .line 283
    new-instance v0, Ljava/util/ArrayList;

    .line 284
    .line 285
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .line 287
    .line 288
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    :cond_14
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 293
    .line 294
    .line 295
    move-result v1

    .line 296
    if-eqz v1, :cond_15

    .line 297
    .line 298
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    move-object v4, v1

    .line 303
    check-cast v4, Lcom/transsion/rewardscenter/task/ad/v$a;

    .line 304
    .line 305
    invoke-virtual {v4}, Lcom/transsion/rewardscenter/task/ad/v$a;->k()Z

    .line 306
    .line 307
    .line 308
    move-result v4

    .line 309
    if-eqz v4, :cond_14

    .line 310
    .line 311
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    goto :goto_5

    .line 315
    :cond_15
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 316
    .line 317
    .line 318
    move-result p1

    .line 319
    if-eqz p1, :cond_16

    .line 320
    .line 321
    goto/16 :goto_2

    .line 322
    .line 323
    :cond_16
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 324
    .line 325
    .line 326
    move-result-object p1

    .line 327
    :cond_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 328
    .line 329
    .line 330
    move-result v0

    .line 331
    if-eqz v0, :cond_a

    .line 332
    .line 333
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    check-cast v0, Lcom/transsion/rewardscenter/task/ad/v$a;

    .line 338
    .line 339
    invoke-virtual {v0}, Lcom/transsion/rewardscenter/task/ad/v$a;->i()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    move-result v0

    .line 347
    if-eqz v0, :cond_17

    .line 348
    .line 349
    goto/16 :goto_9

    .line 350
    .line 351
    :cond_18
    const-string v0, "MemberTaskStageNativeScene"

    .line 352
    .line 353
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result p1

    .line 357
    if-nez p1, :cond_19

    .line 358
    .line 359
    :goto_6
    goto/16 :goto_2

    .line 360
    .line 361
    :cond_19
    sget-object p1, Lcom/transsion/rewardscenter/task/ad/u;->d:Ljava/util/List;

    .line 362
    .line 363
    check-cast p1, Ljava/lang/Iterable;

    .line 364
    .line 365
    instance-of v0, p1, Ljava/util/Collection;

    .line 366
    .line 367
    if-eqz v0, :cond_1a

    .line 368
    .line 369
    move-object v0, p1

    .line 370
    check-cast v0, Ljava/util/Collection;

    .line 371
    .line 372
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 373
    .line 374
    .line 375
    move-result v0

    .line 376
    if-eqz v0, :cond_1a

    .line 377
    .line 378
    goto :goto_7

    .line 379
    :cond_1a
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 380
    .line 381
    .line 382
    move-result-object p1

    .line 383
    :cond_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 384
    .line 385
    .line 386
    move-result v0

    .line 387
    if-eqz v0, :cond_1c

    .line 388
    .line 389
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    check-cast v0, Lcom/transsion/rewardscenter/task/ad/v$c;

    .line 394
    .line 395
    invoke-virtual {v0}, Lcom/transsion/rewardscenter/task/ad/v$c;->i()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    move-result v0

    .line 403
    if-eqz v0, :cond_1b

    .line 404
    .line 405
    goto :goto_9

    .line 406
    :cond_1c
    :goto_7
    sget-object p1, Lcom/transsion/rewardscenter/task/ad/u;->e:Ljava/util/List;

    .line 407
    .line 408
    check-cast p1, Ljava/lang/Iterable;

    .line 409
    .line 410
    new-instance v0, Ljava/util/ArrayList;

    .line 411
    .line 412
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 413
    .line 414
    .line 415
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 416
    .line 417
    .line 418
    move-result-object p1

    .line 419
    :cond_1d
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 420
    .line 421
    .line 422
    move-result v1

    .line 423
    if-eqz v1, :cond_1e

    .line 424
    .line 425
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v1

    .line 429
    move-object v4, v1

    .line 430
    check-cast v4, Lcom/transsion/rewardscenter/task/ad/v$a;

    .line 431
    .line 432
    invoke-virtual {v4}, Lcom/transsion/rewardscenter/task/ad/v$a;->k()Z

    .line 433
    .line 434
    .line 435
    move-result v4

    .line 436
    if-eqz v4, :cond_1d

    .line 437
    .line 438
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 439
    .line 440
    .line 441
    goto :goto_8

    .line 442
    :cond_1e
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 443
    .line 444
    .line 445
    move-result p1

    .line 446
    if-eqz p1, :cond_1f

    .line 447
    .line 448
    goto/16 :goto_2

    .line 449
    .line 450
    :cond_1f
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 451
    .line 452
    .line 453
    move-result-object p1

    .line 454
    :cond_20
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 455
    .line 456
    .line 457
    move-result v0

    .line 458
    if-eqz v0, :cond_a

    .line 459
    .line 460
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    check-cast v0, Lcom/transsion/rewardscenter/task/ad/v$a;

    .line 465
    .line 466
    invoke-virtual {v0}, Lcom/transsion/rewardscenter/task/ad/v$a;->i()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 471
    .line 472
    .line 473
    move-result v0

    .line 474
    if-eqz v0, :cond_20

    .line 475
    .line 476
    :goto_9
    return v2
.end method

.method public final d()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/rewardscenter/task/ad/u;->e:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/rewardscenter/task/ad/u;->d:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Lcom/transsion/rewardscenterapi/MemberTaskItem;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/rewardscenter/task/ad/u;->i:Lcom/transsion/rewardscenterapi/MemberTaskItem;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Lcom/transsion/rewardscenterapi/MemberTaskItem;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/rewardscenter/task/ad/u;->h:Lcom/transsion/rewardscenterapi/MemberTaskItem;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i()Lcom/transsion/rewardscenterapi/MemberTaskItem;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/rewardscenter/task/ad/u;->j:Lcom/transsion/rewardscenterapi/MemberTaskItem;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()Lcom/transsion/rewardscenterapi/MemberTaskItem;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/rewardscenter/task/ad/u;->f:Lcom/transsion/rewardscenterapi/MemberTaskItem;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k()Lcom/transsion/rewardscenterapi/MemberTaskItem;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/rewardscenter/task/ad/u;->g:Lcom/transsion/rewardscenterapi/MemberTaskItem;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l(Ljava/lang/String;)Lcom/transsion/rewardscenter/task/ad/AdTaskState;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/transsion/rewardscenter/task/ad/u;->f()Lcom/tencent/mmkv/MMKV;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v3, "task_state_"

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/4 v2, -0x1

    .line 27
    invoke-virtual {v1, p1, v2}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eq p1, v2, :cond_1

    .line 32
    .line 33
    invoke-static {}, Lcom/transsion/rewardscenter/task/ad/AdTaskState;->getEntries()Lkotlin/enums/EnumEntries;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    move-object v0, p1

    .line 42
    check-cast v0, Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    .line 43
    .line 44
    :cond_1
    return-object v0
.end method

.method public final m(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    .line 1
    const-string v0, "sceneId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz p2, :cond_2

    .line 9
    .line 10
    sget-object v2, Lcom/transsion/rewardscenter/task/ad/u;->a:Lcom/transsion/rewardscenter/task/ad/u;

    .line 11
    .line 12
    invoke-virtual {v2, p1, p2}, Lcom/transsion/rewardscenter/task/ad/u;->c(Ljava/lang/String;Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-virtual {v2, p2}, Lcom/transsion/rewardscenter/task/ad/u;->n(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-static {p2}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_1

    .line 25
    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v0, v1

    .line 32
    :cond_1
    :goto_0
    move v1, p1

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    move v2, v1

    .line 35
    :goto_1
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 36
    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v4, "isFiltered = "

    .line 43
    .line 44
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v4, ", packageName: "

    .line 51
    .line 52
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string p2, ", isDuplicate: "

    .line 59
    .line 60
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string p2, ", isInCooldown: "

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    const/4 v7, 0x4

    .line 79
    const/4 v8, 0x0

    .line 80
    const-string v4, "StageTaskAd"

    .line 81
    .line 82
    const/4 v6, 0x0

    .line 83
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    return v0
.end method

.method public final n(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const-string v0, "packageName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/transsion/rewardscenter/task/ad/u;->f()Lcom/tencent/mmkv/MMKV;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, "package_cooldown_"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-wide/16 v1, 0x0

    .line 28
    .line 29
    invoke-virtual {v0, p1, v1, v2}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    cmp-long p1, v2, v0

    .line 38
    .line 39
    if-gez p1, :cond_0

    .line 40
    .line 41
    const/4 p1, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 p1, 0x0

    .line 44
    :goto_0
    return p1
.end method

.method public final p(Lcom/transsion/rewardscenter/task/ad/v;)V
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/transsion/rewardscenter/task/ad/v$c;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    sget-object p1, Lcom/transsion/rewardscenter/task/ad/u;->c:Lcom/transsion/rewardscenter/task/ad/v$c;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$c;->e()Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    sget-object v0, Lcom/transsion/rewardscenter/task/ad/AdTaskState;->CLAIMED_STAGE1:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-ge p1, v0, :cond_0

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    sput-object p1, Lcom/transsion/rewardscenter/task/ad/u;->c:Lcom/transsion/rewardscenter/task/ad/v$c;

    .line 29
    .line 30
    :cond_0
    sget-object p1, Lcom/transsion/rewardscenter/task/ad/u;->d:Ljava/util/List;

    .line 31
    .line 32
    check-cast p1, Ljava/lang/Iterable;

    .line 33
    .line 34
    new-instance v0, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    move-object v2, v1

    .line 54
    check-cast v2, Lcom/transsion/rewardscenter/task/ad/v$c;

    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/transsion/rewardscenter/task/ad/v$c;->e()Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    sget-object v3, Lcom/transsion/rewardscenter/task/ad/AdTaskState;->CLAIMED_STAGE1:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-lt v2, v3, :cond_1

    .line 71
    .line 72
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    sput-object v0, Lcom/transsion/rewardscenter/task/ad/u;->d:Ljava/util/List;

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_3
    instance-of v0, p1, Lcom/transsion/rewardscenter/task/ad/v$a;

    .line 80
    .line 81
    if-eqz v0, :cond_8

    .line 82
    .line 83
    check-cast p1, Lcom/transsion/rewardscenter/task/ad/v$a;

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$a;->k()Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_5

    .line 90
    .line 91
    sget-object p1, Lcom/transsion/rewardscenter/task/ad/u;->e:Ljava/util/List;

    .line 92
    .line 93
    check-cast p1, Ljava/lang/Iterable;

    .line 94
    .line 95
    new-instance v0, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_7

    .line 109
    .line 110
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    move-object v2, v1

    .line 115
    check-cast v2, Lcom/transsion/rewardscenter/task/ad/v$a;

    .line 116
    .line 117
    invoke-virtual {v2}, Lcom/transsion/rewardscenter/task/ad/v$a;->k()Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-nez v2, :cond_4

    .line 122
    .line 123
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_5
    sget-object p1, Lcom/transsion/rewardscenter/task/ad/u;->e:Ljava/util/List;

    .line 128
    .line 129
    check-cast p1, Ljava/lang/Iterable;

    .line 130
    .line 131
    new-instance v0, Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .line 135
    .line 136
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-eqz v1, :cond_7

    .line 145
    .line 146
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    move-object v2, v1

    .line 151
    check-cast v2, Lcom/transsion/rewardscenter/task/ad/v$a;

    .line 152
    .line 153
    invoke-virtual {v2}, Lcom/transsion/rewardscenter/task/ad/v$a;->k()Z

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    if-eqz v2, :cond_6

    .line 158
    .line 159
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_7
    sput-object v0, Lcom/transsion/rewardscenter/task/ad/u;->e:Ljava/util/List;

    .line 164
    .line 165
    :cond_8
    :goto_3
    return-void
.end method

.method public final q(Lcom/transsion/rewardscenter/task/ad/v$a;)V
    .locals 4

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/rewardscenter/task/ad/u;->e:Ljava/util/List;

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Iterable;

    .line 9
    .line 10
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    move-object v3, v2

    .line 30
    check-cast v3, Lcom/transsion/rewardscenter/task/ad/v$a;

    .line 31
    .line 32
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_0

    .line 37
    .line 38
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    sput-object v1, Lcom/transsion/rewardscenter/task/ad/u;->e:Ljava/util/List;

    .line 43
    .line 44
    return-void
.end method

.method public final r(Ljava/util/List;)V
    .locals 5

    .line 1
    const-string v0, "taskInfos"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/lang/Iterable;

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    move-object v3, v1

    .line 24
    check-cast v3, Lcom/transsion/rewardscenterapi/MemberTaskItem;

    .line 25
    .line 26
    invoke-virtual {v3}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getTaskSubType()Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    sget-object v4, Lcom/transsion/rewardscenterapi/TaskType;->AD_STAGE_1ST:Lcom/transsion/rewardscenterapi/TaskType;

    .line 31
    .line 32
    invoke-virtual {v4}, Lcom/transsion/rewardscenterapi/TaskType;->getValue()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-nez v3, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-ne v3, v4, :cond_0

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    move-object v1, v2

    .line 47
    :goto_1
    check-cast v1, Lcom/transsion/rewardscenterapi/MemberTaskItem;

    .line 48
    .line 49
    sput-object v1, Lcom/transsion/rewardscenter/task/ad/u;->f:Lcom/transsion/rewardscenterapi/MemberTaskItem;

    .line 50
    .line 51
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_5

    .line 60
    .line 61
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    move-object v3, v1

    .line 66
    check-cast v3, Lcom/transsion/rewardscenterapi/MemberTaskItem;

    .line 67
    .line 68
    invoke-virtual {v3}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getTaskSubType()Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    sget-object v4, Lcom/transsion/rewardscenterapi/TaskType;->AD_STAGE_2ND:Lcom/transsion/rewardscenterapi/TaskType;

    .line 73
    .line 74
    invoke-virtual {v4}, Lcom/transsion/rewardscenterapi/TaskType;->getValue()I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-nez v3, :cond_4

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-ne v3, v4, :cond_3

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_5
    move-object v1, v2

    .line 89
    :goto_3
    check-cast v1, Lcom/transsion/rewardscenterapi/MemberTaskItem;

    .line 90
    .line 91
    sput-object v1, Lcom/transsion/rewardscenter/task/ad/u;->g:Lcom/transsion/rewardscenterapi/MemberTaskItem;

    .line 92
    .line 93
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    :cond_6
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_8

    .line 102
    .line 103
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    move-object v3, v1

    .line 108
    check-cast v3, Lcom/transsion/rewardscenterapi/MemberTaskItem;

    .line 109
    .line 110
    invoke-virtual {v3}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getTaskSubType()Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    sget-object v4, Lcom/transsion/rewardscenterapi/TaskType;->AD_REGULAR_PULL_NEW:Lcom/transsion/rewardscenterapi/TaskType;

    .line 115
    .line 116
    invoke-virtual {v4}, Lcom/transsion/rewardscenterapi/TaskType;->getValue()I

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    if-nez v3, :cond_7

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_7
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    if-ne v3, v4, :cond_6

    .line 128
    .line 129
    goto :goto_5

    .line 130
    :cond_8
    move-object v1, v2

    .line 131
    :goto_5
    check-cast v1, Lcom/transsion/rewardscenterapi/MemberTaskItem;

    .line 132
    .line 133
    sput-object v1, Lcom/transsion/rewardscenter/task/ad/u;->h:Lcom/transsion/rewardscenterapi/MemberTaskItem;

    .line 134
    .line 135
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    :cond_9
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-eqz v1, :cond_b

    .line 144
    .line 145
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    move-object v3, v1

    .line 150
    check-cast v3, Lcom/transsion/rewardscenterapi/MemberTaskItem;

    .line 151
    .line 152
    invoke-virtual {v3}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getTaskSubType()Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    sget-object v4, Lcom/transsion/rewardscenterapi/TaskType;->AD_REGULAR_PULL_LIVE:Lcom/transsion/rewardscenterapi/TaskType;

    .line 157
    .line 158
    invoke-virtual {v4}, Lcom/transsion/rewardscenterapi/TaskType;->getValue()I

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    if-nez v3, :cond_a

    .line 163
    .line 164
    goto :goto_6

    .line 165
    :cond_a
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    if-ne v3, v4, :cond_9

    .line 170
    .line 171
    goto :goto_7

    .line 172
    :cond_b
    move-object v1, v2

    .line 173
    :goto_7
    check-cast v1, Lcom/transsion/rewardscenterapi/MemberTaskItem;

    .line 174
    .line 175
    sput-object v1, Lcom/transsion/rewardscenter/task/ad/u;->i:Lcom/transsion/rewardscenterapi/MemberTaskItem;

    .line 176
    .line 177
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    :cond_c
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    if-eqz v0, :cond_e

    .line 186
    .line 187
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    move-object v1, v0

    .line 192
    check-cast v1, Lcom/transsion/rewardscenterapi/MemberTaskItem;

    .line 193
    .line 194
    invoke-virtual {v1}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getTaskSubType()Ljava/lang/Integer;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    sget-object v3, Lcom/transsion/rewardscenterapi/TaskType;->AD_REWARD:Lcom/transsion/rewardscenterapi/TaskType;

    .line 199
    .line 200
    invoke-virtual {v3}, Lcom/transsion/rewardscenterapi/TaskType;->getValue()I

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    if-nez v1, :cond_d

    .line 205
    .line 206
    goto :goto_8

    .line 207
    :cond_d
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    if-ne v1, v3, :cond_c

    .line 212
    .line 213
    move-object v2, v0

    .line 214
    :cond_e
    check-cast v2, Lcom/transsion/rewardscenterapi/MemberTaskItem;

    .line 215
    .line 216
    sput-object v2, Lcom/transsion/rewardscenter/task/ad/u;->j:Lcom/transsion/rewardscenterapi/MemberTaskItem;

    .line 217
    .line 218
    return-void
.end method

.method public final s(Ljava/util/List;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lcom/transsion/rewardscenter/task/ad/u;->e:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public final t(Ljava/util/List;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lcom/transsion/rewardscenter/task/ad/u;->d:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public final u(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 6

    .line 1
    const-string v0, "packageName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    int-to-long v2, p2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-wide/16 v2, 0x3

    .line 19
    .line 20
    :goto_0
    const/16 p2, 0x18

    .line 21
    .line 22
    int-to-long v4, p2

    .line 23
    mul-long/2addr v2, v4

    .line 24
    const/16 p2, 0x3c

    .line 25
    .line 26
    int-to-long v4, p2

    .line 27
    mul-long/2addr v2, v4

    .line 28
    mul-long/2addr v2, v4

    .line 29
    const-wide/16 v4, 0x3e8

    .line 30
    .line 31
    mul-long/2addr v2, v4

    .line 32
    add-long/2addr v0, v2

    .line 33
    invoke-direct {p0}, Lcom/transsion/rewardscenter/task/ad/u;->f()Lcom/tencent/mmkv/MMKV;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v3, "package_cooldown_"

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p2, p1, v0, v1}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final v(Ljava/lang/String;Lcom/transsion/rewardscenter/task/ad/AdTaskState;)V
    .locals 3

    .line 1
    const-string v0, "adTaskState"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/transsion/rewardscenter/task/ad/u;->f()Lcom/tencent/mmkv/MMKV;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "task_state_"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    invoke-virtual {v0, p1, p2}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 35
    .line 36
    .line 37
    return-void
.end method
