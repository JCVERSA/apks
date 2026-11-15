.class public final Lcom/cloud/hisavana/sdk/d0;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/cloud/hisavana/sdk/d0;

.field private static final b:Ljava/util/concurrent/ConcurrentHashMap;

.field private static c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/d0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/d0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/hisavana/sdk/d0;->a:Lcom/cloud/hisavana/sdk/d0;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/cloud/hisavana/sdk/d0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/cloud/hisavana/sdk/d0;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
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

.method private final c(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/cloud/hisavana/sdk/d0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Map$Entry;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/util/List;

    .line 28
    .line 29
    new-instance v2, Lcom/cloud/hisavana/sdk/d0$c;

    .line 30
    .line 31
    invoke-direct {v2, p1}, Lcom/cloud/hisavana/sdk/d0$c;-><init>(I)V

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->P(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    sget-object v0, Lcom/cloud/hisavana/sdk/u2;->a:Lcom/cloud/hisavana/sdk/u2;

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/u2;->c(I)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method private final d(Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/cloud/hisavana/sdk/d0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getCodeSeatId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-nez v2, :cond_1

    .line 12
    .line 13
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v2, v0

    .line 26
    :cond_1
    :goto_0
    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 27
    .line 28
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_3

    .line 45
    .line 46
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    move-object v4, v3

    .line 51
    check-cast v4, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;

    .line 52
    .line 53
    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getCodeSeatId()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getCodeSeatId()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-eqz v5, :cond_2

    .line 66
    .line 67
    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getAdCreativeId()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getAdCreativeId()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-eqz v4, :cond_2

    .line 80
    .line 81
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-nez v1, :cond_4

    .line 90
    .line 91
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->W0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 96
    .line 97
    .line 98
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->i0(Ljava/util/List;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getDisplayedDate()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {p1, v1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->setDisplayedDate(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getDisplayedTimes()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->setDisplayedTimes(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_4
    invoke-virtual {v2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    :goto_2
    return-void
.end method

.method private final f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/cloud/hisavana/sdk/d0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v1, Lcom/cloud/hisavana/sdk/d0$b;

    .line 12
    .line 13
    invoke-direct {v1, p1}, Lcom/cloud/hisavana/sdk/d0$b;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->I(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    sget-object v0, Lcom/cloud/hisavana/sdk/u2;->a:Lcom/cloud/hisavana/sdk/u2;

    .line 20
    .line 21
    invoke-virtual {v0, p1, p2}, Lcom/cloud/hisavana/sdk/u2;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private final j(Ljava/util/concurrent/ConcurrentHashMap;Landroidx/collection/b;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    const-string v0, "s_default_return_filter"

    .line 4
    .line 5
    invoke-static {p2}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-static {p1, v0, p2}, Lcom/cloud/hisavana/sdk/common/util/f0;->h(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    :catchall_0
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;IZILjava/util/concurrent/ConcurrentHashMap;)Lcom/cloud/hisavana/sdk/data/bean/inapp/CachedAdInfos;
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    move/from16 v3, p5

    .line 6
    .line 7
    move-object/from16 v4, p6

    .line 8
    .line 9
    const-string v0, "codeSeatId"

    .line 10
    .line 11
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    new-instance v6, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v7, "take local default ad, code seat id is "

    .line 24
    .line 25
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    const-string v7, "DefaultMemoryCacheHelper"

    .line 36
    .line 37
    invoke-virtual {v5, v7, v6}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/cloud/hisavana/sdk/d0;->b()V

    .line 41
    .line 42
    .line 43
    new-instance v5, Lcom/cloud/hisavana/sdk/u4;

    .line 44
    .line 45
    invoke-direct {v5}, Lcom/cloud/hisavana/sdk/u4;-><init>()V

    .line 46
    .line 47
    .line 48
    new-instance v6, Landroidx/collection/b;

    .line 49
    .line 50
    invoke-direct {v6}, Landroidx/collection/b;-><init>()V

    .line 51
    .line 52
    .line 53
    new-instance v8, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    sget-object v9, Lcom/cloud/hisavana/sdk/d0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 59
    .line 60
    invoke-virtual {v9, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v9

    .line 64
    check-cast v9, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 65
    .line 66
    if-eqz v9, :cond_0

    .line 67
    .line 68
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v9

    .line 72
    goto :goto_0

    .line 73
    :cond_0
    const/4 v9, 0x0

    .line 74
    :goto_0
    if-eqz v9, :cond_1a

    .line 75
    .line 76
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    .line 77
    .line 78
    .line 79
    move-result v11

    .line 80
    if-eqz v11, :cond_1

    .line 81
    .line 82
    goto/16 :goto_f

    .line 83
    .line 84
    :cond_1
    new-instance v11, Ljava/util/LinkedHashMap;

    .line 85
    .line 86
    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object v9

    .line 93
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v12

    .line 97
    const-string v13, "Success"

    .line 98
    .line 99
    if-eqz v12, :cond_7

    .line 100
    .line 101
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v12

    .line 105
    move-object v14, v12

    .line 106
    check-cast v14, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;

    .line 107
    .line 108
    invoke-virtual {v14}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getAdType()I

    .line 109
    .line 110
    .line 111
    move-result v15

    .line 112
    move/from16 v10, p1

    .line 113
    .line 114
    if-eq v15, v10, :cond_2

    .line 115
    .line 116
    const/16 v13, 0x66

    .line 117
    .line 118
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v13

    .line 122
    invoke-virtual {v6, v13}, Landroidx/collection/b;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    const-string v13, "adType"

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_2
    invoke-virtual {v14}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getCodeSeatId()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v15

    .line 132
    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v15

    .line 136
    if-nez v15, :cond_3

    .line 137
    .line 138
    const/16 v13, 0x67

    .line 139
    .line 140
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object v13

    .line 144
    invoke-virtual {v6, v13}, Landroidx/collection/b;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-object v13, v0

    .line 148
    goto :goto_2

    .line 149
    :cond_3
    invoke-virtual {v14}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getFilePath()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v14

    .line 153
    if-eqz v14, :cond_4

    .line 154
    .line 155
    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    .line 156
    .line 157
    .line 158
    move-result v14

    .line 159
    if-nez v14, :cond_5

    .line 160
    .line 161
    :cond_4
    const/16 v13, 0x68

    .line 162
    .line 163
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 164
    .line 165
    .line 166
    move-result-object v13

    .line 167
    invoke-virtual {v6, v13}, Landroidx/collection/b;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    const-string v13, "filePath"

    .line 171
    .line 172
    :cond_5
    :goto_2
    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v14

    .line 176
    if-nez v14, :cond_6

    .line 177
    .line 178
    new-instance v14, Ljava/util/ArrayList;

    .line 179
    .line 180
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .line 182
    .line 183
    invoke-interface {v11, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    :cond_6
    check-cast v14, Ljava/util/List;

    .line 187
    .line 188
    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_7
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 201
    .line 202
    .line 203
    move-result v9

    .line 204
    const-string v10, "DefaultDBManager"

    .line 205
    .line 206
    if-eqz v9, :cond_9

    .line 207
    .line 208
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v9

    .line 212
    check-cast v9, Ljava/util/Map$Entry;

    .line 213
    .line 214
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v12

    .line 218
    check-cast v12, Ljava/lang/String;

    .line 219
    .line 220
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v9

    .line 224
    check-cast v9, Ljava/util/List;

    .line 225
    .line 226
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v14

    .line 230
    if-nez v14, :cond_8

    .line 231
    .line 232
    sget-object v22, Lcom/cloud/hisavana/sdk/d0$g;->a:Lcom/cloud/hisavana/sdk/d0$g;

    .line 233
    .line 234
    const/16 v23, 0x1e

    .line 235
    .line 236
    const/16 v24, 0x0

    .line 237
    .line 238
    const-string v17, ", "

    .line 239
    .line 240
    const/16 v18, 0x0

    .line 241
    .line 242
    const/16 v19, 0x0

    .line 243
    .line 244
    const/16 v20, 0x0

    .line 245
    .line 246
    const/16 v21, 0x0

    .line 247
    .line 248
    move-object/from16 v16, v9

    .line 249
    .line 250
    invoke-static/range {v16 .. v24}, Lkotlin/collections/CollectionsKt;->s0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v14

    .line 254
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 255
    .line 256
    .line 257
    move-result-object v15

    .line 258
    move-object/from16 p1, v0

    .line 259
    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    .line 261
    .line 262
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    .line 264
    .line 265
    const-string v1, "\u6709 "

    .line 266
    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 271
    .line 272
    .line 273
    move-result v1

    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    const-string v1, " \u4e2a\u5e7f\u544a\u8fc7\u6ee4\u5931\u8d25, "

    .line 278
    .line 279
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    const-string v1, ". \u5e7f\u544a\u4f4dID: ["

    .line 286
    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    const/16 v1, 0x5d

    .line 294
    .line 295
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    invoke-virtual {v15, v10, v0}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    move-object/from16 v1, p0

    .line 306
    .line 307
    move-object/from16 v0, p1

    .line 308
    .line 309
    goto :goto_3

    .line 310
    :cond_8
    move-object/from16 v1, p0

    .line 311
    .line 312
    goto :goto_3

    .line 313
    :cond_9
    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    check-cast v0, Ljava/util/List;

    .line 318
    .line 319
    if-nez v0, :cond_a

    .line 320
    .line 321
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    :cond_a
    const/16 v1, 0xa

    .line 326
    .line 327
    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    .line 328
    .line 329
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 330
    .line 331
    .line 332
    move-result v11

    .line 333
    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 334
    .line 335
    .line 336
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 341
    .line 342
    .line 343
    move-result v11

    .line 344
    if-eqz v11, :cond_b

    .line 345
    .line 346
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v11

    .line 350
    check-cast v11, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;

    .line 351
    .line 352
    sget-object v12, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    .line 353
    .line 354
    invoke-virtual {v12}, Lkotlin/random/Random$Default;->nextDouble()D

    .line 355
    .line 356
    .line 357
    move-result-wide v12

    .line 358
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 359
    .line 360
    .line 361
    move-result-object v12

    .line 362
    invoke-static {v11, v12}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 363
    .line 364
    .line 365
    move-result-object v11

    .line 366
    invoke-interface {v9, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    goto :goto_4

    .line 370
    :catch_0
    move-exception v0

    .line 371
    goto :goto_6

    .line 372
    :cond_b
    new-instance v0, Lcom/cloud/hisavana/sdk/d0$e;

    .line 373
    .line 374
    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/d0$e;-><init>()V

    .line 375
    .line 376
    .line 377
    new-instance v11, Lcom/cloud/hisavana/sdk/d0$f;

    .line 378
    .line 379
    invoke-direct {v11, v0}, Lcom/cloud/hisavana/sdk/d0$f;-><init>(Ljava/util/Comparator;)V

    .line 380
    .line 381
    .line 382
    invoke-static {v9, v11}, Lkotlin/collections/CollectionsKt;->I0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    new-instance v9, Ljava/util/ArrayList;

    .line 387
    .line 388
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 389
    .line 390
    .line 391
    move-result v11

    .line 392
    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 393
    .line 394
    .line 395
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 400
    .line 401
    .line 402
    move-result v11

    .line 403
    if-eqz v11, :cond_c

    .line 404
    .line 405
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v11

    .line 409
    check-cast v11, Lkotlin/Pair;

    .line 410
    .line 411
    invoke-virtual {v11}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v11

    .line 415
    check-cast v11, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;

    .line 416
    .line 417
    invoke-interface {v9, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    .line 419
    .line 420
    goto :goto_5

    .line 421
    :goto_6
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 422
    .line 423
    .line 424
    move-result-object v9

    .line 425
    new-instance v11, Ljava/lang/StringBuilder;

    .line 426
    .line 427
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 428
    .line 429
    .line 430
    const-string v12, "filter default ad error: "

    .line 431
    .line 432
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    invoke-virtual {v9, v10, v0}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    const/4 v9, 0x0

    .line 450
    :cond_c
    if-eqz v9, :cond_d

    .line 451
    .line 452
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    .line 453
    .line 454
    .line 455
    move-result v0

    .line 456
    if-eqz v0, :cond_e

    .line 457
    .line 458
    :cond_d
    move-object/from16 v1, p0

    .line 459
    .line 460
    goto/16 :goto_e

    .line 461
    .line 462
    :cond_e
    new-instance v10, Ljava/util/ArrayList;

    .line 463
    .line 464
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 465
    .line 466
    .line 467
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    const-string v11, "ad_internal_black_brands"

    .line 472
    .line 473
    const-string v12, "itel,tecno,oraimo,infinix"

    .line 474
    .line 475
    invoke-virtual {v0, v11, v12}, Ll7/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v11

    .line 479
    sget-object v0, Lcom/cloud/hisavana/sdk/a0;->a:Lcom/cloud/hisavana/sdk/a0;

    .line 480
    .line 481
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/a0;->d()Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v12

    .line 485
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 486
    .line 487
    .line 488
    move-result-object v9

    .line 489
    const/4 v0, 0x0

    .line 490
    move v13, v0

    .line 491
    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 492
    .line 493
    .line 494
    move-result v0

    .line 495
    if-eqz v0, :cond_18

    .line 496
    .line 497
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    move-object v14, v0

    .line 502
    check-cast v14, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;

    .line 503
    .line 504
    :try_start_1
    invoke-virtual {v14}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getAdBeanJson()Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    const-class v15, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 509
    .line 510
    invoke-static {v0, v15}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 511
    .line 512
    .line 513
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 514
    move-object/from16 v16, v9

    .line 515
    .line 516
    goto :goto_8

    .line 517
    :catch_1
    move-exception v0

    .line 518
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 519
    .line 520
    .line 521
    move-result-object v15

    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    .line 523
    .line 524
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 525
    .line 526
    .line 527
    move-object/from16 v16, v9

    .line 528
    .line 529
    const-string v9, "parse ad error: "

    .line 530
    .line 531
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    .line 533
    .line 534
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v0

    .line 545
    invoke-virtual {v15, v7, v0}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    .line 547
    .line 548
    const/4 v0, 0x0

    .line 549
    :goto_8
    if-nez v0, :cond_f

    .line 550
    .line 551
    :goto_9
    move/from16 v14, p3

    .line 552
    .line 553
    move-object/from16 v17, v7

    .line 554
    .line 555
    :goto_a
    const/16 v7, 0xa

    .line 556
    .line 557
    goto/16 :goto_c

    .line 558
    .line 559
    :cond_f
    const/4 v1, 0x1

    .line 560
    if-ne v3, v1, :cond_10

    .line 561
    .line 562
    move-object v1, v0

    .line 563
    check-cast v1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 564
    .line 565
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDefaultAdSupportNetType()I

    .line 566
    .line 567
    .line 568
    move-result v1

    .line 569
    if-eqz v1, :cond_10

    .line 570
    .line 571
    const/16 v0, 0x69

    .line 572
    .line 573
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 574
    .line 575
    .line 576
    move-result-object v0

    .line 577
    invoke-virtual {v6, v0}, Landroidx/collection/b;->add(Ljava/lang/Object;)Z

    .line 578
    .line 579
    .line 580
    invoke-virtual {v14}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getAdCreativeId()Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v0

    .line 584
    const/16 v1, 0xd

    .line 585
    .line 586
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 587
    .line 588
    .line 589
    move-result-object v1

    .line 590
    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    .line 592
    .line 593
    goto :goto_9

    .line 594
    :cond_10
    sget-object v1, Lcom/cloud/hisavana/sdk/a0;->a:Lcom/cloud/hisavana/sdk/a0;

    .line 595
    .line 596
    move-object v9, v0

    .line 597
    check-cast v9, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 598
    .line 599
    invoke-virtual {v9}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPackageName()Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object v15

    .line 603
    move-object/from16 v17, v7

    .line 604
    .line 605
    const/4 v7, 0x0

    .line 606
    invoke-virtual {v1, v12, v14, v15, v7}, Lcom/cloud/hisavana/sdk/a0;->b(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/inapp/PsAppInfo;)I

    .line 607
    .line 608
    .line 609
    move-result v15

    .line 610
    if-lez v15, :cond_13

    .line 611
    .line 612
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 613
    .line 614
    .line 615
    move-result-object v0

    .line 616
    invoke-virtual {v6, v0}, Landroidx/collection/b;->add(Ljava/lang/Object;)Z

    .line 617
    .line 618
    .line 619
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 620
    .line 621
    .line 622
    move-result-object v0

    .line 623
    invoke-virtual {v14}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getAdCreativeId()Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object v1

    .line 627
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    .line 629
    .line 630
    const/4 v0, 0x2

    .line 631
    if-eq v15, v0, :cond_11

    .line 632
    .line 633
    const/4 v0, 0x3

    .line 634
    if-eq v15, v0, :cond_11

    .line 635
    .line 636
    const/16 v1, 0xa

    .line 637
    .line 638
    if-eq v15, v1, :cond_12

    .line 639
    .line 640
    new-instance v0, Lkotlin/Pair;

    .line 641
    .line 642
    invoke-virtual {v14}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getAdCreativeId()Ljava/lang/String;

    .line 643
    .line 644
    .line 645
    move-result-object v1

    .line 646
    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 647
    .line 648
    .line 649
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 650
    .line 651
    .line 652
    :cond_11
    :goto_b
    move/from16 v14, p3

    .line 653
    .line 654
    goto :goto_a

    .line 655
    :cond_12
    move/from16 v14, p3

    .line 656
    .line 657
    move v7, v1

    .line 658
    goto :goto_c

    .line 659
    :cond_13
    new-instance v15, Ljava/io/File;

    .line 660
    .line 661
    invoke-virtual {v14}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getFilePath()Ljava/lang/String;

    .line 662
    .line 663
    .line 664
    move-result-object v7

    .line 665
    invoke-direct {v15, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 666
    .line 667
    .line 668
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    .line 669
    .line 670
    .line 671
    move-result v7

    .line 672
    const/4 v15, 0x4

    .line 673
    if-nez v7, :cond_14

    .line 674
    .line 675
    const/16 v0, 0x6a

    .line 676
    .line 677
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 678
    .line 679
    .line 680
    move-result-object v0

    .line 681
    invoke-virtual {v6, v0}, Landroidx/collection/b;->add(Ljava/lang/Object;)Z

    .line 682
    .line 683
    .line 684
    invoke-virtual {v14}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getAdCreativeId()Ljava/lang/String;

    .line 685
    .line 686
    .line 687
    move-result-object v0

    .line 688
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 689
    .line 690
    .line 691
    move-result-object v1

    .line 692
    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    .line 694
    .line 695
    invoke-virtual {v9}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isFromLocal()Z

    .line 696
    .line 697
    .line 698
    move-result v0

    .line 699
    if-eqz v0, :cond_11

    .line 700
    .line 701
    new-instance v0, Lkotlin/Pair;

    .line 702
    .line 703
    invoke-virtual {v14}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getAdCreativeId()Ljava/lang/String;

    .line 704
    .line 705
    .line 706
    move-result-object v1

    .line 707
    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 708
    .line 709
    .line 710
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 711
    .line 712
    .line 713
    goto :goto_b

    .line 714
    :cond_14
    invoke-virtual {v9}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getCampaignname()Ljava/lang/String;

    .line 715
    .line 716
    .line 717
    move-result-object v7

    .line 718
    invoke-virtual {v1, v7, v11}, Lcom/cloud/hisavana/sdk/a0;->g(Ljava/lang/String;Ljava/lang/String;)Z

    .line 719
    .line 720
    .line 721
    move-result v1

    .line 722
    if-eqz p4, :cond_15

    .line 723
    .line 724
    if-eqz v1, :cond_15

    .line 725
    .line 726
    const/16 v0, 0x6b

    .line 727
    .line 728
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 729
    .line 730
    .line 731
    move-result-object v0

    .line 732
    invoke-virtual {v6, v0}, Landroidx/collection/b;->add(Ljava/lang/Object;)Z

    .line 733
    .line 734
    .line 735
    invoke-virtual {v14}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getAdCreativeId()Ljava/lang/String;

    .line 736
    .line 737
    .line 738
    move-result-object v0

    .line 739
    const/16 v7, 0xa

    .line 740
    .line 741
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 742
    .line 743
    .line 744
    move-result-object v1

    .line 745
    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    .line 747
    .line 748
    move/from16 v14, p3

    .line 749
    .line 750
    goto :goto_c

    .line 751
    :cond_15
    const/16 v7, 0xa

    .line 752
    .line 753
    move/from16 v14, p3

    .line 754
    .line 755
    if-lt v13, v14, :cond_16

    .line 756
    .line 757
    const/16 v0, 0x6c

    .line 758
    .line 759
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 760
    .line 761
    .line 762
    move-result-object v0

    .line 763
    invoke-virtual {v6, v0}, Landroidx/collection/b;->add(Ljava/lang/Object;)Z

    .line 764
    .line 765
    .line 766
    :goto_c
    move v1, v7

    .line 767
    move-object/from16 v9, v16

    .line 768
    .line 769
    move-object/from16 v7, v17

    .line 770
    .line 771
    goto/16 :goto_7

    .line 772
    .line 773
    :cond_16
    invoke-virtual {v9, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setMatchVulgarBrand(Z)V

    .line 774
    .line 775
    .line 776
    invoke-virtual {v9, v15}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setSource(I)V

    .line 777
    .line 778
    .line 779
    sget-object v1, Lcom/cloud/hisavana/sdk/common/util/b;->a:Lcom/cloud/hisavana/sdk/common/util/b;

    .line 780
    .line 781
    invoke-virtual {v1, v9, v3}, Lcom/cloud/hisavana/sdk/common/util/b;->e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)Ljava/lang/String;

    .line 782
    .line 783
    .line 784
    move-result-object v1

    .line 785
    invoke-virtual {v9, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setUuid(Ljava/lang/String;)V

    .line 786
    .line 787
    .line 788
    invoke-virtual {v9}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getPslinkInfo()Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    .line 789
    .line 790
    .line 791
    move-result-object v1

    .line 792
    if-eqz v1, :cond_17

    .line 793
    .line 794
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 795
    .line 796
    .line 797
    invoke-virtual {v9}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getUuid()Ljava/lang/String;

    .line 798
    .line 799
    .line 800
    move-result-object v9

    .line 801
    invoke-virtual {v1, v9}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->setShowId(Ljava/lang/String;)V

    .line 802
    .line 803
    .line 804
    :cond_17
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 805
    .line 806
    .line 807
    add-int/lit8 v13, v13, 0x1

    .line 808
    .line 809
    goto :goto_c

    .line 810
    :cond_18
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    .line 811
    .line 812
    .line 813
    move-result v0

    .line 814
    if-nez v0, :cond_19

    .line 815
    .line 816
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 817
    .line 818
    .line 819
    move-result-object v0

    .line 820
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 821
    .line 822
    .line 823
    move-result v1

    .line 824
    if-eqz v1, :cond_19

    .line 825
    .line 826
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 827
    .line 828
    .line 829
    move-result-object v1

    .line 830
    check-cast v1, Lkotlin/Pair;

    .line 831
    .line 832
    sget-object v2, Lcom/cloud/hisavana/sdk/d0;->a:Lcom/cloud/hisavana/sdk/d0;

    .line 833
    .line 834
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 835
    .line 836
    .line 837
    move-result-object v3

    .line 838
    check-cast v3, Ljava/lang/String;

    .line 839
    .line 840
    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 841
    .line 842
    .line 843
    move-result-object v1

    .line 844
    check-cast v1, Ljava/lang/String;

    .line 845
    .line 846
    invoke-direct {v2, v3, v1}, Lcom/cloud/hisavana/sdk/d0;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    .line 848
    .line 849
    goto :goto_d

    .line 850
    :cond_19
    move-object/from16 v1, p0

    .line 851
    .line 852
    invoke-direct {v1, v4, v6}, Lcom/cloud/hisavana/sdk/d0;->j(Ljava/util/concurrent/ConcurrentHashMap;Landroidx/collection/b;)V

    .line 853
    .line 854
    .line 855
    new-instance v0, Lcom/cloud/hisavana/sdk/data/bean/inapp/CachedAdInfos;

    .line 856
    .line 857
    invoke-virtual {v5}, Lcom/cloud/hisavana/sdk/x1;->toString()Ljava/lang/String;

    .line 858
    .line 859
    .line 860
    move-result-object v2

    .line 861
    invoke-direct {v0, v8, v2}, Lcom/cloud/hisavana/sdk/data/bean/inapp/CachedAdInfos;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 862
    .line 863
    .line 864
    return-object v0

    .line 865
    :goto_e
    invoke-direct {v1, v4, v6}, Lcom/cloud/hisavana/sdk/d0;->j(Ljava/util/concurrent/ConcurrentHashMap;Landroidx/collection/b;)V

    .line 866
    .line 867
    .line 868
    new-instance v0, Lcom/cloud/hisavana/sdk/data/bean/inapp/CachedAdInfos;

    .line 869
    .line 870
    invoke-virtual {v5}, Lcom/cloud/hisavana/sdk/x1;->toString()Ljava/lang/String;

    .line 871
    .line 872
    .line 873
    move-result-object v2

    .line 874
    invoke-direct {v0, v8, v2}, Lcom/cloud/hisavana/sdk/data/bean/inapp/CachedAdInfos;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 875
    .line 876
    .line 877
    return-object v0

    .line 878
    :cond_1a
    :goto_f
    const/16 v0, 0x65

    .line 879
    .line 880
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 881
    .line 882
    .line 883
    move-result-object v0

    .line 884
    invoke-virtual {v6, v0}, Landroidx/collection/b;->add(Ljava/lang/Object;)Z

    .line 885
    .line 886
    .line 887
    invoke-direct {v1, v4, v6}, Lcom/cloud/hisavana/sdk/d0;->j(Ljava/util/concurrent/ConcurrentHashMap;Landroidx/collection/b;)V

    .line 888
    .line 889
    .line 890
    new-instance v0, Lcom/cloud/hisavana/sdk/data/bean/inapp/CachedAdInfos;

    .line 891
    .line 892
    invoke-virtual {v5}, Lcom/cloud/hisavana/sdk/x1;->toString()Ljava/lang/String;

    .line 893
    .line 894
    .line 895
    move-result-object v2

    .line 896
    invoke-direct {v0, v8, v2}, Lcom/cloud/hisavana/sdk/data/bean/inapp/CachedAdInfos;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 897
    .line 898
    .line 899
    return-object v0
.end method

.method public final b()V
    .locals 5

    .line 1
    sget-object v0, Lcom/cloud/hisavana/sdk/d0;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

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
    sget-object v0, Lcom/cloud/hisavana/sdk/u2;->a:Lcom/cloud/hisavana/sdk/u2;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/u2;->b()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v1, Lcom/cloud/hisavana/sdk/d0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 19
    .line 20
    .line 21
    if-eqz v0, :cond_5

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    goto/16 :goto_2

    .line 30
    .line 31
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_4

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lcom/cloud/hisavana/sdk/c2;

    .line 46
    .line 47
    new-instance v2, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;

    .line 48
    .line 49
    invoke-direct {v2}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/c2;->b()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v2, v3}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->setAdCreativeId(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/c2;->e()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v2, v3}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->setCodeSeatId(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/c2;->d()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v2, v3}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->setAdType(Ljava/lang/Integer;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/c2;->o()Ljava/lang/Double;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v2, v3}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->setFirstPrice(Ljava/lang/Double;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/c2;->c()I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    invoke-virtual {v2, v3}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->setAdRequestVersion(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/c2;->l()I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    invoke-virtual {v2, v3}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->setDisplayedTimes(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/c2;->k()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {v2, v3}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->setDisplayedDate(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/c2;->p()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {v2, v3}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->setStartDate(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/c2;->m()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-virtual {v2, v3}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->setEndDate(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/c2;->j()I

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    invoke-virtual {v2, v3}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->setShowMaxOfDay(I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/c2;->n()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-virtual {v2, v3}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->setFilePath(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/c2;->i()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-virtual {v2, v3}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->setCountryWhite(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/c2;->h()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-virtual {v2, v3}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->setCountryBlack(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/c2;->g()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    invoke-virtual {v2, v3}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->setBrandWhite(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/c2;->f()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    invoke-virtual {v2, v3}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->setBrandBlack(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/c2;->a()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {v2, v1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->setAdBeanJson(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    sget-object v1, Lcom/cloud/hisavana/sdk/d0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 169
    .line 170
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getCodeSeatId()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    if-nez v4, :cond_3

    .line 179
    .line 180
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 181
    .line 182
    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 183
    .line 184
    .line 185
    invoke-interface {v1, v3, v4}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    if-nez v1, :cond_2

    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_2
    move-object v4, v1

    .line 193
    :cond_3
    :goto_1
    check-cast v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 194
    .line 195
    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    goto/16 :goto_0

    .line 199
    .line 200
    :cond_4
    sget-object v0, Lcom/cloud/hisavana/sdk/d0;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 201
    .line 202
    const/4 v1, 0x1

    .line 203
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 204
    .line 205
    .line 206
    return-void

    .line 207
    :cond_5
    :goto_2
    sget-object v0, Lcom/cloud/hisavana/sdk/d0;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 208
    .line 209
    const/4 v1, 0x0

    .line 210
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 211
    .line 212
    .line 213
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "codeSeatId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/cloud/hisavana/sdk/d0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 13
    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_3

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;

    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getAdRequestVersion()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;

    .line 53
    .line 54
    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getAdRequestVersion()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-ge v2, v3, :cond_0

    .line 59
    .line 60
    move v2, v3

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    new-instance v1, Lcom/cloud/hisavana/sdk/d0$d;

    .line 63
    .line 64
    invoke-direct {v1, p1, v2}, Lcom/cloud/hisavana/sdk/d0$d;-><init>(Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->I(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    new-instance p1, Ljava/util/NoSuchElementException;

    .line 72
    .line 73
    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    .line 74
    .line 75
    .line 76
    throw p1

    .line 77
    :cond_3
    :goto_1
    sget-object v0, Lcom/cloud/hisavana/sdk/u2;->a:Lcom/cloud/hisavana/sdk/u2;

    .line 78
    .line 79
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/u2;->e(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "adCreativeId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "codeSeatId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "filepath"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lcom/cloud/hisavana/sdk/d0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    new-instance v1, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    move-object v3, v2

    .line 46
    check-cast v3, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;

    .line 47
    .line 48
    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getAdCreativeId()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_0

    .line 57
    .line 58
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_2

    .line 67
    .line 68
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->i0(Ljava/util/List;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;

    .line 73
    .line 74
    invoke-virtual {v0, p3}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->setFilePath(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    sget-object v0, Lcom/cloud/hisavana/sdk/u2;->a:Lcom/cloud/hisavana/sdk/u2;

    .line 78
    .line 79
    invoke-virtual {v0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/u2;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final h(Ljava/util/List;)V
    .locals 2

    .line 1
    const-string v0, "codeSeatIds"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/cloud/hisavana/sdk/d0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "<get-keys>(...)"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Lcom/cloud/hisavana/sdk/d0$a;

    .line 18
    .line 19
    invoke-direct {v1, p1}, Lcom/cloud/hisavana/sdk/d0$a;-><init>(Ljava/util/List;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->G(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Z

    .line 23
    .line 24
    .line 25
    sget-object v0, Lcom/cloud/hisavana/sdk/u2;->a:Lcom/cloud/hisavana/sdk/u2;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/u2;->i(Ljava/util/List;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final i(Ljava/util/List;Ljava/util/List;ZJ)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p3

    .line 4
    .line 5
    const-string v2, "defaultAdList"

    .line 6
    .line 7
    move-object/from16 v3, p1

    .line 8
    .line 9
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v2, "psAppInfoList"

    .line 13
    .line 14
    move-object/from16 v4, p2

    .line 15
    .line 16
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/cloud/hisavana/sdk/d0;->b()V

    .line 27
    .line 28
    .line 29
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_3

    .line 43
    .line 44
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    move-object v6, v5

    .line 49
    check-cast v6, Lcom/cloud/hisavana/sdk/data/bean/inapp/PsAppInfo;

    .line 50
    .line 51
    if-eqz v6, :cond_1

    .line 52
    .line 53
    invoke-virtual {v6}, Lcom/cloud/hisavana/sdk/data/bean/inapp/PsAppInfo;->getPackageName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    if-eqz v6, :cond_1

    .line 58
    .line 59
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-nez v6, :cond_2

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    goto/16 :goto_a

    .line 72
    .line 73
    :cond_3
    const/16 v4, 0xa

    .line 74
    .line 75
    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    invoke-static {v4}, Lkotlin/collections/MapsKt;->e(I)I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    const/16 v5, 0x10

    .line 84
    .line 85
    invoke-static {v4, v5}, Lkotlin/ranges/RangesKt;->e(II)I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 90
    .line 91
    invoke-direct {v5, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 92
    .line 93
    .line 94
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    const-string v6, ""

    .line 103
    .line 104
    if-eqz v4, :cond_6

    .line 105
    .line 106
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    move-object v8, v4

    .line 111
    check-cast v8, Lcom/cloud/hisavana/sdk/data/bean/inapp/PsAppInfo;

    .line 112
    .line 113
    if-eqz v8, :cond_4

    .line 114
    .line 115
    invoke-virtual {v8}, Lcom/cloud/hisavana/sdk/data/bean/inapp/PsAppInfo;->getPackageName()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    goto :goto_2

    .line 120
    :cond_4
    const/4 v7, 0x0

    .line 121
    :goto_2
    if-nez v7, :cond_5

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_5
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    move-object v6, v7

    .line 128
    :goto_3
    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_6
    new-instance v11, Ljava/util/ArrayList;

    .line 133
    .line 134
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .line 136
    .line 137
    new-instance v10, Ljava/util/ArrayList;

    .line 138
    .line 139
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .line 141
    .line 142
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 143
    .line 144
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 145
    .line 146
    .line 147
    sget-object v4, Lcom/cloud/hisavana/sdk/a0;->a:Lcom/cloud/hisavana/sdk/a0;

    .line 148
    .line 149
    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/a0;->d()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    sget-object v8, Lcom/cloud/hisavana/sdk/d0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 154
    .line 155
    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 156
    .line 157
    .line 158
    move-result-object v8

    .line 159
    const-string v9, "<get-values>(...)"

    .line 160
    .line 161
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->x(Ljava/lang/Iterable;)Ljava/util/List;

    .line 165
    .line 166
    .line 167
    move-result-object v8

    .line 168
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 173
    .line 174
    .line 175
    move-result v9

    .line 176
    if-nez v9, :cond_7

    .line 177
    .line 178
    const/4 v9, 0x0

    .line 179
    goto :goto_4

    .line 180
    :cond_7
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v9

    .line 184
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 185
    .line 186
    .line 187
    move-result v12

    .line 188
    if-nez v12, :cond_8

    .line 189
    .line 190
    goto :goto_4

    .line 191
    :cond_8
    move-object v12, v9

    .line 192
    check-cast v12, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;

    .line 193
    .line 194
    invoke-virtual {v12}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getAdRequestVersion()I

    .line 195
    .line 196
    .line 197
    move-result v12

    .line 198
    :cond_9
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v13

    .line 202
    move-object v14, v13

    .line 203
    check-cast v14, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;

    .line 204
    .line 205
    invoke-virtual {v14}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getAdRequestVersion()I

    .line 206
    .line 207
    .line 208
    move-result v14

    .line 209
    if-ge v12, v14, :cond_a

    .line 210
    .line 211
    move-object v9, v13

    .line 212
    move v12, v14

    .line 213
    :cond_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 214
    .line 215
    .line 216
    move-result v13

    .line 217
    if-nez v13, :cond_9

    .line 218
    .line 219
    :goto_4
    check-cast v9, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;

    .line 220
    .line 221
    if-eqz v9, :cond_b

    .line 222
    .line 223
    invoke-virtual {v9}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getAdRequestVersion()I

    .line 224
    .line 225
    .line 226
    move-result v8

    .line 227
    goto :goto_5

    .line 228
    :cond_b
    const/4 v8, 0x0

    .line 229
    :goto_5
    add-int/lit8 v14, v8, 0x1

    .line 230
    .line 231
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 236
    .line 237
    .line 238
    move-result v8

    .line 239
    if-eqz v8, :cond_11

    .line 240
    .line 241
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v8

    .line 245
    check-cast v8, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;

    .line 246
    .line 247
    invoke-virtual {v8}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getPackageName()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v9

    .line 251
    if-eqz v9, :cond_d

    .line 252
    .line 253
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    .line 254
    .line 255
    .line 256
    move-result v9

    .line 257
    if-nez v9, :cond_c

    .line 258
    .line 259
    goto :goto_7

    .line 260
    :cond_c
    invoke-virtual {v8}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getPackageName()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v9

    .line 264
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v9

    .line 268
    check-cast v9, Lcom/cloud/hisavana/sdk/data/bean/inapp/PsAppInfo;

    .line 269
    .line 270
    goto :goto_8

    .line 271
    :cond_d
    :goto_7
    const/4 v9, 0x0

    .line 272
    :goto_8
    sget-object v12, Lcom/cloud/hisavana/sdk/a0;->a:Lcom/cloud/hisavana/sdk/a0;

    .line 273
    .line 274
    invoke-virtual {v8}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getPackageName()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v13

    .line 278
    invoke-virtual {v12, v4, v8, v13, v9}, Lcom/cloud/hisavana/sdk/a0;->b(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/inapp/PsAppInfo;)I

    .line 279
    .line 280
    .line 281
    move-result v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 282
    const-string v15, "getCodeSeatId(...)"

    .line 283
    .line 284
    if-lez v13, :cond_e

    .line 285
    .line 286
    const/4 v7, 0x2

    .line 287
    if-eq v13, v7, :cond_e

    .line 288
    .line 289
    const/4 v7, 0x3

    .line 290
    if-eq v13, v7, :cond_e

    .line 291
    .line 292
    :try_start_2
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 293
    .line 294
    .line 295
    move-result-object v7

    .line 296
    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    invoke-virtual {v8}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getAdCreativeId()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v7

    .line 303
    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    sget-object v7, Lcom/cloud/hisavana/sdk/d0;->a:Lcom/cloud/hisavana/sdk/d0;

    .line 307
    .line 308
    invoke-virtual {v8}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getAdCreativeId()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v9

    .line 312
    const-string v12, "getAdCreativeId(...)"

    .line 313
    .line 314
    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v8}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getCodeSeatId()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v8

    .line 321
    invoke-static {v8, v15}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    invoke-direct {v7, v9, v8}, Lcom/cloud/hisavana/sdk/d0;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    goto :goto_6

    .line 328
    :cond_e
    if-eqz v9, :cond_f

    .line 329
    .line 330
    invoke-virtual {v9}, Lcom/cloud/hisavana/sdk/data/bean/inapp/PsAppInfo;->getAppInfo()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v7

    .line 334
    if-eqz v7, :cond_f

    .line 335
    .line 336
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v8, v7}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->setAppInfo(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    :cond_f
    invoke-virtual {v12, v8, v0}, Lcom/cloud/hisavana/sdk/a0;->c(Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;Z)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 343
    .line 344
    .line 345
    move-result-object v7

    .line 346
    invoke-virtual {v7, v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setFromLocal(Z)V

    .line 347
    .line 348
    .line 349
    invoke-static {v7}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v9

    .line 353
    invoke-virtual {v8, v9}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->setAdBeanJson(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    if-eqz v0, :cond_10

    .line 357
    .line 358
    invoke-virtual {v12, v7}, Lcom/cloud/hisavana/sdk/a0;->j(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v7

    .line 362
    goto :goto_9

    .line 363
    :cond_10
    move-object v7, v6

    .line 364
    :goto_9
    invoke-virtual {v8, v7}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->setFilePath(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v8, v14}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->setAdRequestVersion(I)V

    .line 368
    .line 369
    .line 370
    sget-object v7, Lcom/cloud/hisavana/sdk/d0;->a:Lcom/cloud/hisavana/sdk/d0;

    .line 371
    .line 372
    invoke-direct {v7, v8}, Lcom/cloud/hisavana/sdk/d0;->d(Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v8}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getCodeSeatId()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v7

    .line 379
    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    sget-object v7, Lcom/cloud/hisavana/sdk/u2;->a:Lcom/cloud/hisavana/sdk/u2;

    .line 386
    .line 387
    invoke-virtual {v7, v8}, Lcom/cloud/hisavana/sdk/u2;->d(Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;)V

    .line 388
    .line 389
    .line 390
    goto/16 :goto_6

    .line 391
    .line 392
    :cond_11
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 393
    .line 394
    .line 395
    move-result-object v3

    .line 396
    const-string v4, "default_local_version"

    .line 397
    .line 398
    move-wide/from16 v5, p4

    .line 399
    .line 400
    invoke-virtual {v3, v4, v5, v6}, Ll7/a;->q(Ljava/lang/String;J)V

    .line 401
    .line 402
    .line 403
    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    .line 404
    .line 405
    .line 406
    move-result v3

    .line 407
    if-nez v3, :cond_12

    .line 408
    .line 409
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    .line 410
    .line 411
    .line 412
    move-result v3

    .line 413
    if-nez v3, :cond_12

    .line 414
    .line 415
    const-string v7, ""

    .line 416
    .line 417
    const-string v8, ""

    .line 418
    .line 419
    const-string v9, ""

    .line 420
    .line 421
    const/4 v12, 0x0

    .line 422
    const/4 v13, 0x3

    .line 423
    invoke-static/range {v7 .. v13}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZI)V

    .line 424
    .line 425
    .line 426
    :cond_12
    if-eqz v0, :cond_13

    .line 427
    .line 428
    invoke-direct {v1, v14}, Lcom/cloud/hisavana/sdk/d0;->c(I)V

    .line 429
    .line 430
    .line 431
    goto :goto_b

    .line 432
    :cond_13
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->R0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/d0;->h(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 437
    .line 438
    .line 439
    goto :goto_b

    .line 440
    :goto_a
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 441
    .line 442
    .line 443
    move-result-object v2

    .line 444
    new-instance v3, Ljava/lang/StringBuilder;

    .line 445
    .line 446
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 447
    .line 448
    .line 449
    const-string v4, "save default ad error: "

    .line 450
    .line 451
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    const-string v3, "DefaultMemoryCacheHelper"

    .line 466
    .line 467
    invoke-virtual {v2, v3, v0}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    :goto_b
    return-void
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    if-eqz p2, :cond_4

    .line 12
    .line 13
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :try_start_0
    sget-object v1, Lcom/cloud/hisavana/sdk/d0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 27
    .line 28
    if-eqz p1, :cond_4

    .line 29
    .line 30
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_3

    .line 39
    .line 40
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    move-object v2, v1

    .line 45
    check-cast v2, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;

    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getAdCreativeId()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    move-object v1, v0

    .line 59
    :goto_0
    check-cast v1, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    move-object v0, v1

    .line 62
    :catch_0
    :cond_4
    :goto_1
    return-object v0
.end method

.method public final l(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "codeSeatId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "["

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    sget-object v1, Lcom/cloud/hisavana/sdk/d0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getAdBeanJson()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const-string v3, "getAdBeanJson(...)"

    .line 47
    .line 48
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-lez v2, :cond_0

    .line 56
    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getAdBeanJson()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const/16 v1, 0x2c

    .line 70
    .line 71
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    const/4 v1, 0x1

    .line 87
    if-le p1, v1, :cond_2

    .line 88
    .line 89
    invoke-static {v0}, Lkotlin/text/StringsKt;->i0(Ljava/lang/CharSequence;)I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string p1, "]"

    .line 97
    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_2
    invoke-static {v0}, Lkotlin/text/StringsKt;->q(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    const-string v0, "toString(...)"

    .line 110
    .line 111
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    return-object p1
.end method

.method public final m()Ljava/util/List;
    .locals 2

    .line 1
    sget-object v0, Lcom/cloud/hisavana/sdk/d0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keys()Ljava/util/Enumeration;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "keys(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "list(...)"

    .line 17
    .line 18
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public final n(Ljava/lang/String;)V
    .locals 9

    .line 1
    const-string v0, "filePath"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/cloud/hisavana/sdk/d0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/util/Map$Entry;

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 33
    .line 34
    new-instance v2, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    move-object v4, v3

    .line 54
    check-cast v4, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;

    .line 55
    .line 56
    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getFilePath()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    const-string v5, "getFilePath(...)"

    .line 61
    .line 62
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    new-instance v5, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v6, ".0"

    .line 74
    .line 75
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    const/4 v6, 0x2

    .line 83
    const/4 v7, 0x0

    .line 84
    const/4 v8, 0x0

    .line 85
    invoke-static {v4, v5, v8, v6, v7}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-eqz v4, :cond_1

    .line 90
    .line 91
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_0

    .line 104
    .line 105
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    check-cast v2, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;

    .line 110
    .line 111
    const-string v3, ""

    .line 112
    .line 113
    invoke-virtual {v2, v3}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->setFilePath(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_3
    sget-object v0, Lcom/cloud/hisavana/sdk/u2;->a:Lcom/cloud/hisavana/sdk/u2;

    .line 118
    .line 119
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/u2;->j(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method public final o(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "adCreativeId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "codeSeatId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/cloud/hisavana/sdk/d0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 18
    .line 19
    if-eqz v0, :cond_5

    .line 20
    .line 21
    new-instance v1, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    move-object v3, v2

    .line 41
    check-cast v3, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;

    .line 42
    .line 43
    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getAdCreativeId()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_0

    .line 52
    .line 53
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_5

    .line 62
    .line 63
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->i0(Ljava/util/List;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;

    .line 68
    .line 69
    sget-object v1, Lcom/cloud/hisavana/sdk/a0;->a:Lcom/cloud/hisavana/sdk/a0;

    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/a0;->d()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getDisplayedDate()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    const/4 v3, 0x1

    .line 80
    if-eqz v2, :cond_4

    .line 81
    .line 82
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-nez v2, :cond_2

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getDisplayedDate()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-eqz v2, :cond_3

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_3
    invoke-virtual {v0, v3}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->setDisplayedTimes(I)V

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_4
    :goto_1
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getDisplayedTimes()I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    add-int/2addr v2, v3

    .line 109
    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->setDisplayedTimes(I)V

    .line 110
    .line 111
    .line 112
    :goto_2
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->setDisplayedDate(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    sget-object v1, Lcom/cloud/hisavana/sdk/u2;->a:Lcom/cloud/hisavana/sdk/u2;

    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getDisplayedTimes()I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getDisplayedDate()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    const-string v3, "getDisplayedDate(...)"

    .line 126
    .line 127
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, p1, p2, v2, v0}, Lcom/cloud/hisavana/sdk/u2;->g(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :cond_5
    return-void
.end method
