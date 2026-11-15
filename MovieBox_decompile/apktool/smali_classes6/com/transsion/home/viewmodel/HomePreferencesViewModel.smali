.class public final Lcom/transsion/home/viewmodel/HomePreferencesViewModel;
.super Landroidx/lifecycle/t0;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/viewmodel/HomePreferencesViewModel$a;
    }
.end annotation


# static fields
.field public static final q:Lcom/transsion/home/viewmodel/HomePreferencesViewModel$a;

.field public static final r:I


# instance fields
.field private final a:Lkotlin/Lazy;

.field private final b:Lkotlin/Lazy;

.field private final c:Lkotlin/Lazy;

.field private final d:Lkotlin/Lazy;

.field private final e:Lkotlin/Lazy;

.field private final f:Lkotlin/Lazy;

.field private final g:Lkotlin/Lazy;

.field private h:Lcom/transsion/home/bean/HomePreferencesState;

.field private final i:Ljava/util/Map;

.field private final j:Ljava/util/Set;

.field private final k:Ljava/util/Set;

.field private final l:Ljava/util/Set;

.field private final m:Ljava/util/Set;

.field private final n:Ljava/util/Map;

.field private final o:Ljava/util/Map;

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->q:Lcom/transsion/home/viewmodel/HomePreferencesViewModel$a;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->r:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsion/home/viewmodel/c;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/transsion/home/viewmodel/c;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->a:Lkotlin/Lazy;

    .line 14
    .line 15
    new-instance v0, Lcom/transsion/home/viewmodel/d;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/transsion/home/viewmodel/d;-><init>(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->b:Lkotlin/Lazy;

    .line 25
    .line 26
    new-instance v0, Lcom/transsion/home/viewmodel/e;

    .line 27
    .line 28
    invoke-direct {v0}, Lcom/transsion/home/viewmodel/e;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->c:Lkotlin/Lazy;

    .line 36
    .line 37
    new-instance v0, Lcom/transsion/home/viewmodel/f;

    .line 38
    .line 39
    invoke-direct {v0}, Lcom/transsion/home/viewmodel/f;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->d:Lkotlin/Lazy;

    .line 47
    .line 48
    new-instance v0, Lcom/transsion/home/viewmodel/g;

    .line 49
    .line 50
    invoke-direct {v0}, Lcom/transsion/home/viewmodel/g;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->e:Lkotlin/Lazy;

    .line 58
    .line 59
    new-instance v0, Lcom/transsion/home/viewmodel/h;

    .line 60
    .line 61
    invoke-direct {v0}, Lcom/transsion/home/viewmodel/h;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->f:Lkotlin/Lazy;

    .line 69
    .line 70
    new-instance v0, Lcom/transsion/home/viewmodel/i;

    .line 71
    .line 72
    invoke-direct {v0}, Lcom/transsion/home/viewmodel/i;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iput-object v0, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->g:Lkotlin/Lazy;

    .line 80
    .line 81
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 82
    .line 83
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object v0, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->i:Ljava/util/Map;

    .line 87
    .line 88
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 89
    .line 90
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 91
    .line 92
    .line 93
    iput-object v0, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->j:Ljava/util/Set;

    .line 94
    .line 95
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 96
    .line 97
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object v0, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->k:Ljava/util/Set;

    .line 101
    .line 102
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 103
    .line 104
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 105
    .line 106
    .line 107
    iput-object v0, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->l:Ljava/util/Set;

    .line 108
    .line 109
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 110
    .line 111
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 112
    .line 113
    .line 114
    iput-object v0, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->m:Ljava/util/Set;

    .line 115
    .line 116
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 117
    .line 118
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 119
    .line 120
    .line 121
    iput-object v0, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->n:Ljava/util/Map;

    .line 122
    .line 123
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 124
    .line 125
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 126
    .line 127
    .line 128
    iput-object v0, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->o:Ljava/util/Map;

    .line 129
    .line 130
    return-void
.end method

.method private static final F()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/b0;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final G()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/b0;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final H()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/b0;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final I(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;)Lcom/transsion/home/repository/HomePreferencesRepository;
    .locals 2

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$f1;

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v0}, Lcom/transsion/baselib/db/AppDatabase$f1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Lcom/transsion/home/repository/HomePreferencesRepository;

    .line 15
    .line 16
    invoke-direct {p0}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->r()Lyk/b;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-direct {v1, p0, v0}, Lcom/transsion/home/repository/HomePreferencesRepository;-><init>(Lyk/b;Lcom/transsion/baselib/db/AppDatabase;)V

    .line 21
    .line 22
    .line 23
    return-object v1
.end method

.method private final K(Lcom/transsion/home/bean/HomePreferencesConfig;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 19

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v6, p3

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/home/bean/HomePreferencesConfig;->getLabelId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    move-object/from16 v0, p2

    .line 10
    .line 11
    check-cast v0, Ljava/lang/Iterable;

    .line 12
    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    move-object v4, v3

    .line 33
    check-cast v4, Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v4}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-nez v4, :cond_0

    .line 40
    .line 41
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->c0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Ljava/lang/Iterable;

    .line 50
    .line 51
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->H0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    const-string v1, ", scene="

    .line 60
    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    sget-object v9, Lwf/a;->a:Lwf/a$a;

    .line 64
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v3, "submitPreferences skip: empty selection, labelId="

    .line 71
    .line 72
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v11

    .line 88
    const/4 v13, 0x4

    .line 89
    const/4 v14, 0x0

    .line 90
    const-string v10, "HomePreferencesViewModel"

    .line 91
    .line 92
    const/4 v12, 0x0

    .line 93
    invoke-static/range {v9 .. v14}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 98
    .line 99
    .line 100
    move-result-wide v4

    .line 101
    iget-object v0, v8, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->n:Ljava/util/Map;

    .line 102
    .line 103
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Ljava/util/List;

    .line 108
    .line 109
    iget-object v7, v8, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->o:Ljava/util/Map;

    .line 110
    .line 111
    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    check-cast v7, Ljava/lang/Long;

    .line 116
    .line 117
    if-eqz v7, :cond_3

    .line 118
    .line 119
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 120
    .line 121
    .line 122
    move-result-wide v9

    .line 123
    goto :goto_1

    .line 124
    :cond_3
    const-wide/16 v9, 0x0

    .line 125
    .line 126
    :goto_1
    if-nez p4, :cond_5

    .line 127
    .line 128
    if-eqz v0, :cond_4

    .line 129
    .line 130
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 131
    .line 132
    .line 133
    move-result v7

    .line 134
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 135
    .line 136
    .line 137
    move-result v11

    .line 138
    if-ne v7, v11, :cond_4

    .line 139
    .line 140
    check-cast v0, Ljava/lang/Iterable;

    .line 141
    .line 142
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->W0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    move-object v7, v3

    .line 147
    check-cast v7, Ljava/lang/Iterable;

    .line 148
    .line 149
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->W0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-eqz v0, :cond_4

    .line 158
    .line 159
    sget-object v11, Lwf/a;->a:Lwf/a$a;

    .line 160
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    const-string v3, "submitPreferences skip: same as last, labelId="

    .line 167
    .line 168
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v13

    .line 184
    const/4 v15, 0x4

    .line 185
    const/16 v16, 0x0

    .line 186
    .line 187
    const-string v12, "HomePreferencesViewModel"

    .line 188
    .line 189
    const/4 v14, 0x0

    .line 190
    invoke-static/range {v11 .. v16}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    return-void

    .line 194
    :cond_4
    sub-long v9, v4, v9

    .line 195
    .line 196
    const-wide/16 v11, 0x1388

    .line 197
    .line 198
    cmp-long v0, v9, v11

    .line 199
    .line 200
    if-gez v0, :cond_5

    .line 201
    .line 202
    sget-object v13, Lwf/a;->a:Lwf/a$a;

    .line 203
    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .line 208
    .line 209
    const-string v3, "submitPreferences skip: interval < "

    .line 210
    .line 211
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string v3, "ms, labelId="

    .line 218
    .line 219
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v15

    .line 235
    const/16 v17, 0x4

    .line 236
    .line 237
    const/16 v18, 0x0

    .line 238
    .line 239
    const-string v14, "HomePreferencesViewModel"

    .line 240
    .line 241
    const/16 v16, 0x0

    .line 242
    .line 243
    invoke-static/range {v13 .. v18}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    return-void

    .line 247
    :cond_5
    iget-object v0, v8, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->n:Ljava/util/Map;

    .line 248
    .line 249
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    iget-object v1, v8, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->o:Ljava/util/Map;

    .line 257
    .line 258
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    invoke-static/range {p0 .. p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 262
    .line 263
    .line 264
    move-result-object v9

    .line 265
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 266
    .line 267
    .line 268
    move-result-object v10

    .line 269
    new-instance v12, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;

    .line 270
    .line 271
    const/4 v7, 0x0

    .line 272
    move-object v0, v12

    .line 273
    move-object/from16 v1, p0

    .line 274
    .line 275
    move/from16 v4, p4

    .line 276
    .line 277
    move-object/from16 v5, p1

    .line 278
    .line 279
    move-object/from16 v6, p3

    .line 280
    .line 281
    invoke-direct/range {v0 .. v7}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;-><init>(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;Ljava/lang/String;Ljava/util/List;ZLcom/transsion/home/bean/HomePreferencesConfig;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 282
    .line 283
    .line 284
    const/4 v13, 0x2

    .line 285
    const/4 v14, 0x0

    .line 286
    const/4 v11, 0x0

    .line 287
    invoke-static/range {v9 .. v14}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 288
    .line 289
    .line 290
    return-void
.end method

.method private final N(Lcom/transsion/home/bean/HomePreferencesState;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/home/bean/HomePreferencesState;->getEnterPopConfigs()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/Iterable;

    .line 11
    .line 12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    move-object v1, v0

    .line 27
    check-cast v1, Lcom/transsion/home/bean/HomePreferencesConfig;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->k:Ljava/util/Set;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/transsion/home/bean/HomePreferencesConfig;->getLabelId()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_1

    .line 40
    .line 41
    iget-object v2, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->l:Ljava/util/Set;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/transsion/home/bean/HomePreferencesConfig;->getLabelId()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-nez v2, :cond_1

    .line 52
    .line 53
    iget-object v2, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->m:Ljava/util/Set;

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/transsion/home/bean/HomePreferencesConfig;->getLabelId()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const/4 v0, 0x0

    .line 67
    :goto_0
    check-cast v0, Lcom/transsion/home/bean/HomePreferencesConfig;

    .line 68
    .line 69
    if-nez v0, :cond_3

    .line 70
    .line 71
    return-void

    .line 72
    :cond_3
    const/4 p1, 0x1

    .line 73
    iput-boolean p1, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->p:Z

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->s()Landroidx/lifecycle/b0;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method private final O(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->j:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

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
    iget-object v0, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->h:Lcom/transsion/home/bean/HomePreferencesState;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    invoke-virtual {v0}, Lcom/transsion/home/bean/HomePreferencesState;->getAllConfigs()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/Iterable;

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
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_3

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
    check-cast v3, Lcom/transsion/home/bean/HomePreferencesConfig;

    .line 42
    .line 43
    invoke-virtual {v3}, Lcom/transsion/home/bean/HomePreferencesConfig;->getTabCode()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    const/4 v4, 0x1

    .line 48
    invoke-static {v3, p1, v4}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_2

    .line 53
    .line 54
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_5

    .line 67
    .line 68
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    move-object v2, v1

    .line 73
    check-cast v2, Lcom/transsion/home/bean/HomePreferencesConfig;

    .line 74
    .line 75
    invoke-virtual {v2}, Lcom/transsion/home/bean/HomePreferencesConfig;->getShowStyle()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    sget-object v4, Lcom/transsion/home/bean/HomePreferencesShowStyle;->POPUP:Lcom/transsion/home/bean/HomePreferencesShowStyle;

    .line 80
    .line 81
    invoke-virtual {v4}, Lcom/transsion/home/bean/HomePreferencesShowStyle;->getValue()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-eqz v3, :cond_4

    .line 90
    .line 91
    iget-object v3, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->k:Ljava/util/Set;

    .line 92
    .line 93
    invoke-virtual {v2}, Lcom/transsion/home/bean/HomePreferencesConfig;->getLabelId()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-nez v3, :cond_4

    .line 102
    .line 103
    iget-object v3, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->l:Ljava/util/Set;

    .line 104
    .line 105
    invoke-virtual {v2}, Lcom/transsion/home/bean/HomePreferencesConfig;->getLabelId()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    if-nez v3, :cond_4

    .line 114
    .line 115
    iget-object v3, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->m:Ljava/util/Set;

    .line 116
    .line 117
    invoke-virtual {v2}, Lcom/transsion/home/bean/HomePreferencesConfig;->getLabelId()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-nez v2, :cond_4

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_5
    const/4 v1, 0x0

    .line 129
    :goto_1
    check-cast v1, Lcom/transsion/home/bean/HomePreferencesConfig;

    .line 130
    .line 131
    if-nez v1, :cond_6

    .line 132
    .line 133
    return-void

    .line 134
    :cond_6
    invoke-virtual {v1}, Lcom/transsion/home/bean/HomePreferencesConfig;->getShowStyle()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    sget-object v2, Lcom/transsion/home/bean/HomePreferencesShowStyle;->POPUP:Lcom/transsion/home/bean/HomePreferencesShowStyle;

    .line 139
    .line 140
    invoke-virtual {v2}, Lcom/transsion/home/bean/HomePreferencesShowStyle;->getValue()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-nez v0, :cond_7

    .line 149
    .line 150
    return-void

    .line 151
    :cond_7
    iget-object v0, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->j:Ljava/util/Set;

    .line 152
    .line 153
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->v()Landroidx/lifecycle/b0;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-static {p1, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    return-void
.end method

.method public static synthetic b()Lyk/b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->n()Lyk/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic c(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;)Lcom/transsion/home/repository/HomePreferencesRepository;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->I(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;)Lcom/transsion/home/repository/HomePreferencesRepository;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->z()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic e()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->G()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic f()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->H()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic g()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->q()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic h()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->F()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic i(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->p(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic j(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->i:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic k(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;)Lcom/transsion/home/repository/HomePreferencesRepository;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->y()Lcom/transsion/home/repository/HomePreferencesRepository;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic l(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;Lcom/transsion/home/bean/HomePreferencesState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->h:Lcom/transsion/home/bean/HomePreferencesState;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic m(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;Lcom/transsion/home/bean/HomePreferencesState;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->N(Lcom/transsion/home/bean/HomePreferencesState;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final n()Lyk/b;
    .locals 2

    .line 1
    sget-object v0, Lkg/c;->e:Lkg/c$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkg/c$a;->a()Lkg/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Lyk/b;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lyk/b;

    .line 14
    .line 15
    return-object v0
.end method

.method private final o(Ljava/lang/String;Ljava/util/List;Lcom/transsion/home/bean/HomePreferencesState;)Ljava/util/List;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/home/bean/HomePreferencesState;->getAllConfigs()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Ljava/lang/Iterable;

    .line 10
    .line 11
    new-instance v3, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    const/4 v5, 0x1

    .line 25
    if-eqz v4, :cond_1

    .line 26
    .line 27
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    move-object v6, v4

    .line 32
    check-cast v6, Lcom/transsion/home/bean/HomePreferencesConfig;

    .line 33
    .line 34
    invoke-virtual {v6}, Lcom/transsion/home/bean/HomePreferencesConfig;->getTabCode()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    invoke-static {v6, v1, v5}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_0

    .line 43
    .line 44
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_3

    .line 62
    .line 63
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    move-object v6, v4

    .line 68
    check-cast v6, Lcom/transsion/home/bean/HomePreferencesConfig;

    .line 69
    .line 70
    invoke-virtual {v6}, Lcom/transsion/home/bean/HomePreferencesConfig;->getShowStyle()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    sget-object v8, Lcom/transsion/home/bean/HomePreferencesShowStyle;->OPT_INSERT:Lcom/transsion/home/bean/HomePreferencesShowStyle;

    .line 75
    .line 76
    invoke-virtual {v8}, Lcom/transsion/home/bean/HomePreferencesShowStyle;->getValue()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    if-eqz v7, :cond_2

    .line 85
    .line 86
    iget-object v7, v0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->k:Ljava/util/Set;

    .line 87
    .line 88
    invoke-virtual {v6}, Lcom/transsion/home/bean/HomePreferencesConfig;->getLabelId()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    if-nez v7, :cond_2

    .line 97
    .line 98
    iget-object v7, v0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->l:Ljava/util/Set;

    .line 99
    .line 100
    invoke-virtual {v6}, Lcom/transsion/home/bean/HomePreferencesConfig;->getLabelId()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    if-nez v7, :cond_2

    .line 109
    .line 110
    iget-object v7, v0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->m:Ljava/util/Set;

    .line 111
    .line 112
    invoke-virtual {v6}, Lcom/transsion/home/bean/HomePreferencesConfig;->getLabelId()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    if-nez v6, :cond_2

    .line 121
    .line 122
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    if-eqz v3, :cond_4

    .line 131
    .line 132
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    return-object v1

    .line 137
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    .line 138
    .line 139
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .line 141
    .line 142
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    if-eqz v4, :cond_d

    .line 151
    .line 152
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    check-cast v4, Lcom/transsion/home/bean/HomePreferencesConfig;

    .line 157
    .line 158
    invoke-virtual {v4}, Lcom/transsion/home/bean/HomePreferencesConfig;->getPos()Ljava/lang/Integer;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    if-eqz v6, :cond_6

    .line 163
    .line 164
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 165
    .line 166
    .line 167
    move-result v6

    .line 168
    goto :goto_3

    .line 169
    :cond_6
    const/4 v6, -0x1

    .line 170
    :goto_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 175
    .line 176
    .line 177
    move-result v7

    .line 178
    const/4 v8, 0x0

    .line 179
    if-ltz v7, :cond_7

    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_7
    move-object v6, v8

    .line 183
    :goto_4
    if-eqz v6, :cond_8

    .line 184
    .line 185
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 186
    .line 187
    .line 188
    move-result v6

    .line 189
    goto :goto_5

    .line 190
    :cond_8
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 191
    .line 192
    .line 193
    move-result v6

    .line 194
    :goto_5
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 195
    .line 196
    .line 197
    move-result v7

    .line 198
    const/4 v9, 0x0

    .line 199
    invoke-static {v6, v9, v7}, Lkotlin/ranges/RangesKt;->l(III)I

    .line 200
    .line 201
    .line 202
    move-result v6

    .line 203
    move-object/from16 v7, p2

    .line 204
    .line 205
    check-cast v7, Ljava/lang/Iterable;

    .line 206
    .line 207
    instance-of v10, v7, Ljava/util/Collection;

    .line 208
    .line 209
    if-eqz v10, :cond_9

    .line 210
    .line 211
    move-object v10, v7

    .line 212
    check-cast v10, Ljava/util/Collection;

    .line 213
    .line 214
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    .line 215
    .line 216
    .line 217
    move-result v10

    .line 218
    if-eqz v10, :cond_9

    .line 219
    .line 220
    goto :goto_7

    .line 221
    :cond_9
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 222
    .line 223
    .line 224
    move-result-object v7

    .line 225
    :cond_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 226
    .line 227
    .line 228
    move-result v10

    .line 229
    if-eqz v10, :cond_c

    .line 230
    .line 231
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v10

    .line 235
    check-cast v10, Lcom/transsion/home/bean/OperateItem;

    .line 236
    .line 237
    invoke-virtual {v10}, Lcom/transsion/home/bean/OperateItem;->getType()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v11

    .line 241
    sget-object v12, Lcom/transsion/moviedetailapi/bean/PostItemType;->PREFERENCES:Lcom/transsion/moviedetailapi/bean/PostItemType;

    .line 242
    .line 243
    invoke-virtual {v12}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v12

    .line 247
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v11

    .line 251
    if-eqz v11, :cond_a

    .line 252
    .line 253
    invoke-virtual {v10}, Lcom/transsion/home/bean/OperateItem;->getHomePreferencesConfig()Lcom/transsion/home/bean/HomePreferencesConfig;

    .line 254
    .line 255
    .line 256
    move-result-object v10

    .line 257
    if-eqz v10, :cond_b

    .line 258
    .line 259
    invoke-virtual {v10}, Lcom/transsion/home/bean/HomePreferencesConfig;->getLabelId()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v10

    .line 263
    goto :goto_6

    .line 264
    :cond_b
    move-object v10, v8

    .line 265
    :goto_6
    invoke-virtual {v4}, Lcom/transsion/home/bean/HomePreferencesConfig;->getLabelId()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v11

    .line 269
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result v10

    .line 273
    if-eqz v10, :cond_a

    .line 274
    .line 275
    move v9, v5

    .line 276
    :cond_c
    :goto_7
    sget-object v10, Lwf/a;->a:Lwf/a$a;

    .line 277
    .line 278
    invoke-virtual {v4}, Lcom/transsion/home/bean/HomePreferencesConfig;->getPos()Ljava/lang/Integer;

    .line 279
    .line 280
    .line 281
    move-result-object v7

    .line 282
    new-instance v8, Ljava/lang/StringBuilder;

    .line 283
    .line 284
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    .line 286
    .line 287
    const-string v11, "\u8fd0\u8425\u4f4d\u63d2\u5165 \u6709\u914d\u7f6e, tabCode:"

    .line 288
    .line 289
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    const-string v11, ", pos:"

    .line 296
    .line 297
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    const-string v7, "\uff0c alreadyExists\uff1a"

    .line 304
    .line 305
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v12

    .line 315
    const/4 v14, 0x4

    .line 316
    const/4 v15, 0x0

    .line 317
    const-string v11, "HomePreferencesViewModel"

    .line 318
    .line 319
    const/4 v13, 0x0

    .line 320
    invoke-static/range {v10 .. v15}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 321
    .line 322
    .line 323
    if-nez v9, :cond_5

    .line 324
    .line 325
    new-instance v7, Lok/a;

    .line 326
    .line 327
    invoke-direct {v7, v6, v4}, Lok/a;-><init>(ILcom/transsion/home/bean/HomePreferencesConfig;)V

    .line 328
    .line 329
    .line 330
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    goto/16 :goto_2

    .line 334
    .line 335
    :cond_d
    return-object v3
.end method

.method private final p(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->i:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->h:Lcom/transsion/home/bean/HomePreferencesState;

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->u()Landroidx/lifecycle/b0;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {p1, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->o(Ljava/lang/String;Ljava/util/List;Lcom/transsion/home/bean/HomePreferencesState;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v4, "computeInsertForTab, tabCode:"

    .line 48
    .line 49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v4, ", size:"

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    const/4 v5, 0x4

    .line 68
    const/4 v6, 0x0

    .line 69
    const-string v2, "HomePreferencesViewModel"

    .line 70
    .line 71
    const/4 v4, 0x0

    .line 72
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->u()Landroidx/lifecycle/b0;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-static {p1, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {v1, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method private static final q()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/b0;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final r()Lyk/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->a:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lyk/b;

    .line 8
    .line 9
    return-object v0
.end method

.method private final y()Lcom/transsion/home/repository/HomePreferencesRepository;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/home/repository/HomePreferencesRepository;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final z()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/b0;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final A()V
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v3, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$loadHomePreferencesConfig$1;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v3, p0, v2}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$loadHomePreferencesConfig$1;-><init>(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    const/4 v5, 0x0

    .line 17
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final B(Lcom/transsion/home/bean/HomePreferencesConfig;)V
    .locals 8

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->m:Ljava/util/Set;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/transsion/home/bean/HomePreferencesConfig;->getLabelId()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    new-instance v5, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$markChosen$1;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-direct {v5, p0, p1, v0}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$markChosen$1;-><init>(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;Lcom/transsion/home/bean/HomePreferencesConfig;Lkotlin/coroutines/Continuation;)V

    .line 27
    .line 28
    .line 29
    const/4 v6, 0x2

    .line 30
    const/4 v7, 0x0

    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final C(Lcom/transsion/home/bean/HomePreferencesConfig;)V
    .locals 8

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->l:Ljava/util/Set;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/transsion/home/bean/HomePreferencesConfig;->getLabelId()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    new-instance v5, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$markClosed$1;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-direct {v5, p0, p1, v0}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$markClosed$1;-><init>(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;Lcom/transsion/home/bean/HomePreferencesConfig;Lkotlin/coroutines/Continuation;)V

    .line 27
    .line 28
    .line 29
    const/4 v6, 0x2

    .line 30
    const/4 v7, 0x0

    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final D(Lcom/transsion/home/bean/HomePreferencesConfig;)V
    .locals 8

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/home/bean/HomePreferencesConfig;->getLabelId()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->k:Ljava/util/Set;

    .line 11
    .line 12
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 19
    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v1, "markShown skip, already marked, labelId="

    .line 26
    .line 27
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const/4 v6, 0x4

    .line 38
    const/4 v7, 0x0

    .line 39
    const-string v3, "HomePreferencesViewModel"

    .line 40
    .line 41
    const/4 v5, 0x0

    .line 42
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->k:Ljava/util/Set;

    .line 47
    .line 48
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    new-instance v5, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$markShown$1;

    .line 60
    .line 61
    const/4 v0, 0x0

    .line 62
    invoke-direct {v5, p0, p1, v0}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$markShown$1;-><init>(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;Lcom/transsion/home/bean/HomePreferencesConfig;Lkotlin/coroutines/Continuation;)V

    .line 63
    .line 64
    .line 65
    const/4 v6, 0x2

    .line 66
    const/4 v7, 0x0

    .line 67
    const/4 v4, 0x0

    .line 68
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public final E(Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    .line 1
    const-string v0, "tabCode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "list"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->i:Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->p(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final J(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "tabCode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->O(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final L(Lcom/transsion/home/bean/HomePreferencesConfig;Ljava/util/List;)V
    .locals 2

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "selectOptions"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "popup_confirm"

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->K(Lcom/transsion/home/bean/HomePreferencesConfig;Ljava/util/List;Ljava/lang/String;Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final M(Lcom/transsion/home/bean/HomePreferencesConfig;Ljava/util/List;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "selectOptions"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "scene"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->K(Lcom/transsion/home/bean/HomePreferencesConfig;Ljava/util/List;Ljava/lang/String;Z)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final s()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->g:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/b0;

    .line 8
    .line 9
    return-object v0
.end method

.method public final t(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 1

    .line 1
    const-string v0, "tabCode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "list"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->h:Lcom/transsion/home/bean/HomePreferencesState;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->o(Ljava/lang/String;Ljava/util/List;Lcom/transsion/home/bean/HomePreferencesState;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public final u()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->d:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/b0;

    .line 8
    .line 9
    return-object v0
.end method

.method public final v()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->e:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/b0;

    .line 8
    .line 9
    return-object v0
.end method

.method public final w()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->c:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/b0;

    .line 8
    .line 9
    return-object v0
.end method

.method public final x()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->f:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/b0;

    .line 8
    .line 9
    return-object v0
.end method
