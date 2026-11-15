.class public final Lcom/transsion/subtitle/helper/SubtitleSearchHelper;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/subtitle/helper/SubtitleSearchHelper$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/transsion/subtitle/helper/SubtitleSearchHelper$a;

.field private static final d:Ljava/lang/String;

.field private static final e:Lkotlin/Lazy;


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/subtitle/helper/SubtitleSearchHelper;->c:Lcom/transsion/subtitle/helper/SubtitleSearchHelper$a;

    .line 8
    .line 9
    sget-object v0, Lcom/transsion/baselib/report/a;->a:Lcom/transsion/baselib/report/a;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/transsion/baselib/report/a;->a()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/transsion/subtitle/helper/SubtitleSearchHelper;->d:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v0, Lcom/transsion/subtitle/helper/e;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/transsion/subtitle/helper/e;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lcom/transsion/subtitle/helper/SubtitleSearchHelper;->e:Lkotlin/Lazy;

    .line 27
    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/transsion/subtitle/helper/SubtitleSearchHelper;->a:Z

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic a()Lcom/transsion/subtitle/helper/SubtitleSearchHelper;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/subtitle/helper/SubtitleSearchHelper;->h()Lcom/transsion/subtitle/helper/SubtitleSearchHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic b()Lkotlin/Lazy;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/subtitle/helper/SubtitleSearchHelper;->e:Lkotlin/Lazy;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic c(Lcom/transsion/subtitle/helper/SubtitleSearchHelper;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/subtitle/helper/SubtitleSearchHelper;->f(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d(Lcom/transsion/subtitle/helper/SubtitleSearchHelper;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/subtitle/helper/SubtitleSearchHelper;->g(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final f(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    .line 1
    instance-of v0, p1, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$initLocalLanguage$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$initLocalLanguage$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$initLocalLanguage$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$initLocalLanguage$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$initLocalLanguage$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$initLocalLanguage$1;-><init>(Lcom/transsion/subtitle/helper/SubtitleSearchHelper;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$initLocalLanguage$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$initLocalLanguage$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    if-eq v2, v4, :cond_2

    .line 38
    .line 39
    if-ne v2, v3, :cond_1

    .line 40
    .line 41
    iget-object v2, v0, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$initLocalLanguage$1;->L$1:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v2, Ljava/util/Iterator;

    .line 44
    .line 45
    iget-object v4, v0, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$initLocalLanguage$1;->L$0:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v4, Lui/d1;

    .line 48
    .line 49
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_2

    .line 53
    .line 54
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 57
    .line 58
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :cond_2
    iget-object v2, v0, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$initLocalLanguage$1;->L$0:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v2, Lui/d1;

    .line 65
    .line 66
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    sget-object p1, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$f1;

    .line 74
    .line 75
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    const-string v5, "getApp(...)"

    .line 80
    .line 81
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v2}, Lcom/transsion/baselib/db/AppDatabase$f1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1}, Lcom/transsion/baselib/db/AppDatabase;->z1()Lui/d1;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    iput-object v2, v0, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$initLocalLanguage$1;->L$0:Ljava/lang/Object;

    .line 93
    .line 94
    iput v4, v0, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$initLocalLanguage$1;->label:I

    .line 95
    .line 96
    invoke-interface {v2, v0}, Lui/d1;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    if-ne p1, v1, :cond_4

    .line 101
    .line 102
    return-object v1

    .line 103
    :cond_4
    :goto_1
    check-cast p1, Ljava/util/List;

    .line 104
    .line 105
    check-cast p1, Ljava/util/Collection;

    .line 106
    .line 107
    if-eqz p1, :cond_5

    .line 108
    .line 109
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-eqz p1, :cond_7

    .line 114
    .line 115
    :cond_5
    new-instance p1, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$initLocalLanguage$type$1;

    .line 116
    .line 117
    invoke-direct {p1}, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$initLocalLanguage$type$1;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-direct {p0}, Lcom/transsion/subtitle/helper/SubtitleSearchHelper;->i()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    invoke-static {v4, p1}, Lcom/blankj/utilcode/util/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    check-cast p1, Ljava/util/List;

    .line 133
    .line 134
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 135
    .line 136
    sget-object v5, Lcom/transsion/subtitle/helper/SubtitleSearchHelper;->d:Ljava/lang/String;

    .line 137
    .line 138
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    new-instance v7, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    const-string v8, "initLocalLanguage, localListSize:"

    .line 148
    .line 149
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string v6, ", insert "

    .line 156
    .line 157
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    filled-new-array {v6}, [Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    const/4 v8, 0x4

    .line 169
    const/4 v9, 0x0

    .line 170
    const/4 v7, 0x0

    .line 171
    invoke-static/range {v4 .. v9}, Lwf/a$a;->r(Lwf/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    check-cast p1, Ljava/lang/Iterable;

    .line 178
    .line 179
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    move-object v4, v2

    .line 184
    move-object v2, p1

    .line 185
    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    if-eqz p1, :cond_7

    .line 190
    .line 191
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    check-cast p1, Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;

    .line 196
    .line 197
    iput-object v4, v0, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$initLocalLanguage$1;->L$0:Ljava/lang/Object;

    .line 198
    .line 199
    iput-object v2, v0, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$initLocalLanguage$1;->L$1:Ljava/lang/Object;

    .line 200
    .line 201
    iput v3, v0, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$initLocalLanguage$1;->label:I

    .line 202
    .line 203
    invoke-interface {v4, p1, v0}, Lui/d1;->c(Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    if-ne p1, v1, :cond_6

    .line 208
    .line 209
    return-object v1

    .line 210
    :cond_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 211
    .line 212
    return-object p1
.end method

.method private final g(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    instance-of v2, v0, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v0

    .line 10
    check-cast v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;

    .line 11
    .line 12
    iget v3, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->label:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->label:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;

    .line 25
    .line 26
    invoke-direct {v2, v1, v0}, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;-><init>(Lcom/transsion/subtitle/helper/SubtitleSearchHelper;Lkotlin/coroutines/Continuation;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v0, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget v4, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->label:I

    .line 36
    .line 37
    const-string v5, "en"

    .line 38
    .line 39
    const/4 v6, 0x0

    .line 40
    const/4 v8, 0x1

    .line 41
    packed-switch v4, :pswitch_data_0

    .line 42
    .line 43
    .line 44
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0

    .line 52
    :pswitch_0
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto/16 :goto_10

    .line 56
    .line 57
    :pswitch_1
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    goto/16 :goto_d

    .line 61
    .line 62
    :catchall_0
    move-exception v0

    .line 63
    goto/16 :goto_e

    .line 64
    .line 65
    :pswitch_2
    iget-object v4, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$4:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v4, Ljava/util/Iterator;

    .line 68
    .line 69
    iget-object v9, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$3:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v9, Ljava/util/Locale;

    .line 72
    .line 73
    iget-object v10, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$2:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v10, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 76
    .line 77
    iget-object v11, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$1:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v11, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 80
    .line 81
    iget-object v12, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$0:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v12, Lui/d1;

    .line 84
    .line 85
    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    .line 87
    .line 88
    goto/16 :goto_8

    .line 89
    .line 90
    :pswitch_3
    iget-object v4, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$4:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v4, Ljava/util/Locale;

    .line 93
    .line 94
    iget-object v9, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$3:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v9, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 97
    .line 98
    iget-object v10, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$2:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v10, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 101
    .line 102
    iget-object v11, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$1:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v11, Lui/d1;

    .line 105
    .line 106
    iget-object v12, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$0:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v12, Ljava/util/List;

    .line 109
    .line 110
    :try_start_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    goto/16 :goto_7

    .line 114
    .line 115
    :pswitch_4
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    .line 117
    .line 118
    goto/16 :goto_c

    .line 119
    .line 120
    :pswitch_5
    iget-object v4, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$1:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v4, Lui/d1;

    .line 123
    .line 124
    iget-object v9, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$0:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast v9, Ljava/util/List;

    .line 127
    .line 128
    :try_start_3
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 129
    .line 130
    .line 131
    move-object v11, v4

    .line 132
    move-object v12, v9

    .line 133
    goto/16 :goto_3

    .line 134
    .line 135
    :pswitch_6
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :pswitch_7
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    iget-boolean v0, v1, Lcom/transsion/subtitle/helper/SubtitleSearchHelper;->b:Z

    .line 143
    .line 144
    if-eqz v0, :cond_1

    .line 145
    .line 146
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 147
    .line 148
    return-object v0

    .line 149
    :cond_1
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 150
    .line 151
    invoke-virtual {v0}, Lyg/l;->e()Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-nez v0, :cond_3

    .line 156
    .line 157
    iput v8, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->label:I

    .line 158
    .line 159
    invoke-direct {v1, v2}, Lcom/transsion/subtitle/helper/SubtitleSearchHelper;->f(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    if-ne v0, v3, :cond_2

    .line 164
    .line 165
    return-object v3

    .line 166
    :cond_2
    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 167
    .line 168
    return-object v0

    .line 169
    :cond_3
    :try_start_4
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 170
    .line 171
    sget-object v0, Lcm/f;->c:Lcm/f$a;

    .line 172
    .line 173
    invoke-virtual {v0}, Lcm/f$a;->a()Lcm/f;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    const-string v4, "subtitle_language"

    .line 178
    .line 179
    invoke-virtual {v0, v4, v8}, Lcm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    if-eqz v0, :cond_4

    .line 184
    .line 185
    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    goto :goto_2

    .line 190
    :cond_4
    const/4 v0, 0x0

    .line 191
    :goto_2
    if-eqz v0, :cond_1a

    .line 192
    .line 193
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    if-lez v4, :cond_1a

    .line 198
    .line 199
    new-instance v4, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$2$type$1;

    .line 200
    .line 201
    invoke-direct {v4}, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$2$type$1;-><init>()V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v4}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    invoke-static {v0, v4}, Lcom/blankj/utilcode/util/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    check-cast v0, Ljava/util/List;

    .line 213
    .line 214
    iput-boolean v8, v1, Lcom/transsion/subtitle/helper/SubtitleSearchHelper;->b:Z

    .line 215
    .line 216
    sget-object v4, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$f1;

    .line 217
    .line 218
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 219
    .line 220
    .line 221
    move-result-object v9

    .line 222
    const-string v10, "getApp(...)"

    .line 223
    .line 224
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v4, v9}, Lcom/transsion/baselib/db/AppDatabase$f1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    invoke-virtual {v4}, Lcom/transsion/baselib/db/AppDatabase;->z1()Lui/d1;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    iput-object v0, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$0:Ljava/lang/Object;

    .line 236
    .line 237
    iput-object v4, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$1:Ljava/lang/Object;

    .line 238
    .line 239
    const/4 v9, 0x2

    .line 240
    iput v9, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->label:I

    .line 241
    .line 242
    invoke-interface {v4, v2}, Lui/d1;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v9

    .line 246
    if-ne v9, v3, :cond_5

    .line 247
    .line 248
    return-object v3

    .line 249
    :cond_5
    move-object v12, v0

    .line 250
    move-object v11, v4

    .line 251
    move-object v0, v9

    .line 252
    :goto_3
    check-cast v0, Ljava/util/List;

    .line 253
    .line 254
    move-object v4, v12

    .line 255
    check-cast v4, Ljava/util/Collection;

    .line 256
    .line 257
    if-eqz v4, :cond_17

    .line 258
    .line 259
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 260
    .line 261
    .line 262
    move-result v4

    .line 263
    if-eqz v4, :cond_6

    .line 264
    .line 265
    goto/16 :goto_b

    .line 266
    .line 267
    :cond_6
    sget-object v13, Lwf/a;->a:Lwf/a$a;

    .line 268
    .line 269
    sget-object v14, Lcom/transsion/subtitle/helper/SubtitleSearchHelper;->d:Ljava/lang/String;

    .line 270
    .line 271
    new-instance v4, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    .line 275
    .line 276
    const-string v9, "get language , list = "

    .line 277
    .line 278
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v15

    .line 288
    const/16 v17, 0x4

    .line 289
    .line 290
    const/16 v18, 0x0

    .line 291
    .line 292
    const/16 v16, 0x0

    .line 293
    .line 294
    invoke-static/range {v13 .. v18}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    new-instance v10, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 298
    .line 299
    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 300
    .line 301
    .line 302
    new-instance v9, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 303
    .line 304
    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 305
    .line 306
    .line 307
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 308
    .line 309
    const/16 v13, 0x18

    .line 310
    .line 311
    if-lt v4, v13, :cond_7

    .line 312
    .line 313
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 314
    .line 315
    .line 316
    move-result-object v4

    .line 317
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 318
    .line 319
    .line 320
    move-result-object v4

    .line 321
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 322
    .line 323
    .line 324
    move-result-object v4

    .line 325
    invoke-static {v4}, Landroidx/appcompat/app/h;->a(Landroid/content/res/Configuration;)Landroid/os/LocaleList;

    .line 326
    .line 327
    .line 328
    move-result-object v4

    .line 329
    invoke-static {v4, v6}, Ln0/d;->a(Landroid/os/LocaleList;I)Ljava/util/Locale;

    .line 330
    .line 331
    .line 332
    move-result-object v4

    .line 333
    goto :goto_4

    .line 334
    :cond_7
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 335
    .line 336
    .line 337
    move-result-object v4

    .line 338
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 339
    .line 340
    .line 341
    move-result-object v4

    .line 342
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 343
    .line 344
    .line 345
    move-result-object v4

    .line 346
    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 347
    .line 348
    :goto_4
    if-eqz v0, :cond_b

    .line 349
    .line 350
    move-object v13, v0

    .line 351
    check-cast v13, Ljava/lang/Iterable;

    .line 352
    .line 353
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 354
    .line 355
    .line 356
    move-result-object v13

    .line 357
    move v14, v6

    .line 358
    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 359
    .line 360
    .line 361
    move-result v15

    .line 362
    if-eqz v15, :cond_c

    .line 363
    .line 364
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v15

    .line 368
    check-cast v15, Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;

    .line 369
    .line 370
    invoke-virtual {v15}, Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;->getInSearch()Z

    .line 371
    .line 372
    .line 373
    move-result v16

    .line 374
    if-eqz v16, :cond_8

    .line 375
    .line 376
    iput-boolean v8, v10, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 377
    .line 378
    :cond_8
    invoke-virtual {v15}, Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;->getLanAbbr()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v6

    .line 382
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v7

    .line 386
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    move-result v6

    .line 390
    if-eqz v6, :cond_9

    .line 391
    .line 392
    iput-boolean v8, v10, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 393
    .line 394
    iput-boolean v8, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 395
    .line 396
    :cond_9
    invoke-virtual {v15}, Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;->getLanAbbr()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v6

    .line 400
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    move-result v6

    .line 404
    if-eqz v6, :cond_a

    .line 405
    .line 406
    move v14, v8

    .line 407
    :cond_a
    const/4 v6, 0x0

    .line 408
    goto :goto_5

    .line 409
    :cond_b
    const/4 v14, 0x0

    .line 410
    :cond_c
    check-cast v0, Ljava/util/Collection;

    .line 411
    .line 412
    if-eqz v0, :cond_d

    .line 413
    .line 414
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 415
    .line 416
    .line 417
    move-result v0

    .line 418
    if-eqz v0, :cond_10

    .line 419
    .line 420
    :cond_d
    move-object v0, v12

    .line 421
    check-cast v0, Ljava/lang/Iterable;

    .line 422
    .line 423
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    :cond_e
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 428
    .line 429
    .line 430
    move-result v6

    .line 431
    if-eqz v6, :cond_10

    .line 432
    .line 433
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v6

    .line 437
    check-cast v6, Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;

    .line 438
    .line 439
    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;->getLanAbbr()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v7

    .line 443
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v13

    .line 447
    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 448
    .line 449
    .line 450
    move-result v7

    .line 451
    if-eqz v7, :cond_f

    .line 452
    .line 453
    iput-boolean v8, v10, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 454
    .line 455
    iput-boolean v8, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 456
    .line 457
    :cond_f
    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;->getLanAbbr()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v6

    .line 461
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    move-result v6

    .line 465
    if-eqz v6, :cond_e

    .line 466
    .line 467
    move v14, v8

    .line 468
    goto :goto_6

    .line 469
    :cond_10
    iget-boolean v0, v10, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 470
    .line 471
    if-nez v0, :cond_11

    .line 472
    .line 473
    if-eqz v14, :cond_11

    .line 474
    .line 475
    iput-object v12, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$0:Ljava/lang/Object;

    .line 476
    .line 477
    iput-object v11, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$1:Ljava/lang/Object;

    .line 478
    .line 479
    iput-object v10, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$2:Ljava/lang/Object;

    .line 480
    .line 481
    iput-object v9, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$3:Ljava/lang/Object;

    .line 482
    .line 483
    iput-object v4, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$4:Ljava/lang/Object;

    .line 484
    .line 485
    const/4 v0, 0x4

    .line 486
    iput v0, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->label:I

    .line 487
    .line 488
    invoke-interface {v11, v5, v8, v2}, Lui/d1;->b(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    if-ne v0, v3, :cond_11

    .line 493
    .line 494
    return-object v3

    .line 495
    :cond_11
    :goto_7
    sget-object v17, Lwf/a;->a:Lwf/a$a;

    .line 496
    .line 497
    sget-object v18, Lcom/transsion/subtitle/helper/SubtitleSearchHelper;->d:Ljava/lang/String;

    .line 498
    .line 499
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    new-instance v6, Ljava/lang/StringBuilder;

    .line 504
    .line 505
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 506
    .line 507
    .line 508
    const-string v7, "get language new,locale ="

    .line 509
    .line 510
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    const-string v0, " list = "

    .line 517
    .line 518
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 522
    .line 523
    .line 524
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v19

    .line 528
    const/16 v21, 0x4

    .line 529
    .line 530
    const/16 v22, 0x0

    .line 531
    .line 532
    const/16 v20, 0x0

    .line 533
    .line 534
    invoke-static/range {v17 .. v22}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 535
    .line 536
    .line 537
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 538
    .line 539
    .line 540
    move-result-object v0

    .line 541
    move-object v12, v11

    .line 542
    move-object v11, v10

    .line 543
    move-object v10, v9

    .line 544
    move-object v9, v4

    .line 545
    move-object v4, v0

    .line 546
    :cond_12
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 547
    .line 548
    .line 549
    move-result v0

    .line 550
    if-eqz v0, :cond_1b

    .line 551
    .line 552
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 553
    .line 554
    .line 555
    move-result-object v0

    .line 556
    check-cast v0, Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;

    .line 557
    .line 558
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;->component1()Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v6

    .line 562
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;->component2()Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v7

    .line 566
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;->component3()Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object v0

    .line 570
    const-string v13, "in_id"

    .line 571
    .line 572
    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 573
    .line 574
    .line 575
    move-result v13

    .line 576
    if-eqz v13, :cond_13

    .line 577
    .line 578
    const-string v13, "in"

    .line 579
    .line 580
    goto :goto_9

    .line 581
    :cond_13
    move-object v13, v6

    .line 582
    :goto_9
    iget-boolean v14, v11, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 583
    .line 584
    if-nez v14, :cond_14

    .line 585
    .line 586
    invoke-static {v13, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 587
    .line 588
    .line 589
    move-result v14

    .line 590
    if-nez v14, :cond_15

    .line 591
    .line 592
    :cond_14
    iget-boolean v14, v10, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 593
    .line 594
    if-eqz v14, :cond_16

    .line 595
    .line 596
    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v14

    .line 600
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 601
    .line 602
    .line 603
    move-result v13

    .line 604
    if-eqz v13, :cond_16

    .line 605
    .line 606
    :cond_15
    move v13, v8

    .line 607
    goto :goto_a

    .line 608
    :cond_16
    const/4 v13, 0x0

    .line 609
    :goto_a
    new-instance v14, Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;

    .line 610
    .line 611
    invoke-direct {v14, v6, v7, v0, v13}, Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 612
    .line 613
    .line 614
    iput-object v12, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$0:Ljava/lang/Object;

    .line 615
    .line 616
    iput-object v11, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$1:Ljava/lang/Object;

    .line 617
    .line 618
    iput-object v10, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$2:Ljava/lang/Object;

    .line 619
    .line 620
    iput-object v9, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$3:Ljava/lang/Object;

    .line 621
    .line 622
    iput-object v4, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$4:Ljava/lang/Object;

    .line 623
    .line 624
    const/4 v0, 0x5

    .line 625
    iput v0, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->label:I

    .line 626
    .line 627
    invoke-interface {v12, v14, v2}, Lui/d1;->c(Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 628
    .line 629
    .line 630
    move-result-object v0

    .line 631
    if-ne v0, v3, :cond_12

    .line 632
    .line 633
    return-object v3

    .line 634
    :cond_17
    :goto_b
    check-cast v0, Ljava/util/Collection;

    .line 635
    .line 636
    if-eqz v0, :cond_18

    .line 637
    .line 638
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 639
    .line 640
    .line 641
    move-result v0

    .line 642
    if-eqz v0, :cond_19

    .line 643
    .line 644
    :cond_18
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 645
    .line 646
    sget-object v5, Lcom/transsion/subtitle/helper/SubtitleSearchHelper;->d:Ljava/lang/String;

    .line 647
    .line 648
    const-string v6, "language list all null~"

    .line 649
    .line 650
    const/4 v8, 0x4

    .line 651
    const/4 v9, 0x0

    .line 652
    const/4 v7, 0x0

    .line 653
    invoke-static/range {v4 .. v9}, Lwf/a$a;->z(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 654
    .line 655
    .line 656
    const/4 v4, 0x0

    .line 657
    iput-object v4, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$0:Ljava/lang/Object;

    .line 658
    .line 659
    iput-object v4, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$1:Ljava/lang/Object;

    .line 660
    .line 661
    const/4 v0, 0x3

    .line 662
    iput v0, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->label:I

    .line 663
    .line 664
    invoke-direct {v1, v2}, Lcom/transsion/subtitle/helper/SubtitleSearchHelper;->f(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 665
    .line 666
    .line 667
    move-result-object v0

    .line 668
    if-ne v0, v3, :cond_19

    .line 669
    .line 670
    return-object v3

    .line 671
    :cond_19
    :goto_c
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 672
    .line 673
    return-object v0

    .line 674
    :cond_1a
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 675
    .line 676
    sget-object v5, Lcom/transsion/subtitle/helper/SubtitleSearchHelper;->d:Ljava/lang/String;

    .line 677
    .line 678
    const-string v6, "get language list null~"

    .line 679
    .line 680
    const/4 v8, 0x4

    .line 681
    const/4 v9, 0x0

    .line 682
    const/4 v7, 0x0

    .line 683
    invoke-static/range {v4 .. v9}, Lwf/a$a;->z(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 684
    .line 685
    .line 686
    const/4 v0, 0x6

    .line 687
    iput v0, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->label:I

    .line 688
    .line 689
    invoke-direct {v1, v2}, Lcom/transsion/subtitle/helper/SubtitleSearchHelper;->f(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 690
    .line 691
    .line 692
    move-result-object v0

    .line 693
    if-ne v0, v3, :cond_1b

    .line 694
    .line 695
    return-object v3

    .line 696
    :cond_1b
    :goto_d
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 697
    .line 698
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    .line 700
    .line 701
    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 702
    goto :goto_f

    .line 703
    :goto_e
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 704
    .line 705
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 706
    .line 707
    .line 708
    move-result-object v0

    .line 709
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    .line 711
    .line 712
    move-result-object v0

    .line 713
    :goto_f
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 714
    .line 715
    .line 716
    move-result-object v0

    .line 717
    if-nez v0, :cond_1c

    .line 718
    .line 719
    goto :goto_10

    .line 720
    :cond_1c
    const/4 v4, 0x0

    .line 721
    iput-boolean v4, v1, Lcom/transsion/subtitle/helper/SubtitleSearchHelper;->b:Z

    .line 722
    .line 723
    sget-object v5, Lwf/a;->a:Lwf/a$a;

    .line 724
    .line 725
    sget-object v6, Lcom/transsion/subtitle/helper/SubtitleSearchHelper;->d:Ljava/lang/String;

    .line 726
    .line 727
    new-instance v4, Ljava/lang/StringBuilder;

    .line 728
    .line 729
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 730
    .line 731
    .line 732
    const-string v7, "get language list error:"

    .line 733
    .line 734
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    .line 736
    .line 737
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 738
    .line 739
    .line 740
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 741
    .line 742
    .line 743
    move-result-object v7

    .line 744
    const/4 v9, 0x4

    .line 745
    const/4 v10, 0x0

    .line 746
    const/4 v8, 0x0

    .line 747
    invoke-static/range {v5 .. v10}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 748
    .line 749
    .line 750
    const/4 v4, 0x0

    .line 751
    iput-object v4, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$0:Ljava/lang/Object;

    .line 752
    .line 753
    iput-object v4, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$1:Ljava/lang/Object;

    .line 754
    .line 755
    iput-object v4, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$2:Ljava/lang/Object;

    .line 756
    .line 757
    iput-object v4, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$3:Ljava/lang/Object;

    .line 758
    .line 759
    iput-object v4, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->L$4:Ljava/lang/Object;

    .line 760
    .line 761
    const/4 v0, 0x7

    .line 762
    iput v0, v2, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$innerUpdateLanguageList$1;->label:I

    .line 763
    .line 764
    invoke-direct {v1, v2}, Lcom/transsion/subtitle/helper/SubtitleSearchHelper;->f(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 765
    .line 766
    .line 767
    move-result-object v0

    .line 768
    if-ne v0, v3, :cond_1d

    .line 769
    .line 770
    return-object v3

    .line 771
    :cond_1d
    :goto_10
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 772
    .line 773
    return-object v0

    .line 774
    nop

    .line 775
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final h()Lcom/transsion/subtitle/helper/SubtitleSearchHelper;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/subtitle/helper/SubtitleSearchHelper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/subtitle/helper/SubtitleSearchHelper;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final i()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "sub_def_la.json"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0}, Lokio/BufferedSource;->readUtf8()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return-object v0

    .line 35
    :catch_0
    const/4 v0, 0x0

    .line 36
    return-object v0
.end method


# virtual methods
.method public final e(Lcom/transsion/baselib/db/download/DownloadBean;)Ljava/lang/String;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getTitleName()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    :goto_0
    move-object v2, v1

    .line 12
    goto :goto_3

    .line 13
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    goto :goto_2

    .line 20
    :cond_2
    move-object v1, v0

    .line 21
    :goto_2
    if-nez v1, :cond_0

    .line 22
    .line 23
    const-string v1, ""

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :goto_3
    if-eqz p1, :cond_3

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResolution()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    goto :goto_4

    .line 37
    :cond_3
    move-object v1, v0

    .line 38
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, "P"

    .line 47
    .line 48
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    if-eqz p1, :cond_4

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResolution()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    goto :goto_5

    .line 66
    :cond_4
    move-object p1, v0

    .line 67
    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const/4 v1, 0x0

    .line 83
    const/4 v4, 0x2

    .line 84
    invoke-static {v2, p1, v1, v4, v0}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_5

    .line 89
    .line 90
    const/4 v6, 0x4

    .line 91
    const/4 v7, 0x0

    .line 92
    const-string v4, ""

    .line 93
    .line 94
    const/4 v5, 0x0

    .line 95
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    :cond_5
    new-instance p1, Lkotlin/text/Regex;

    .line 100
    .line 101
    const-string v0, "[\\\\/:#*?\"<>|&]_-"

    .line 102
    .line 103
    invoke-direct {p1, v0}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    const-string v0, " "

    .line 107
    .line 108
    invoke-virtual {p1, v2, v0}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    return-object p1
.end method

.method public final j()V
    .locals 7

    .line 1
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v4, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$updateLanguageList$1;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {v4, p0, v0}, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$updateLanguageList$1;-><init>(Lcom/transsion/subtitle/helper/SubtitleSearchHelper;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    const/4 v5, 0x3

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 20
    .line 21
    .line 22
    return-void
.end method
