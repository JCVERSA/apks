.class public final Lcom/transsion/transfer/impl/server/service/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/transfer/androidasync/http/server/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/transfer/impl/server/service/a$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/transsion/transfer/impl/server/service/a$a;

.field private static final d:Ljava/lang/String;


# instance fields
.field private final a:Lcom/transsion/transfer/impl/g;

.field private b:Lcom/transsion/transfer/impl/i;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/transsion/transfer/impl/server/service/a$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/transfer/impl/server/service/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/transfer/impl/server/service/a;->c:Lcom/transsion/transfer/impl/server/service/a$a;

    .line 8
    .line 9
    const-class v0, Lcom/transsion/transfer/impl/server/service/a;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "Transfer-"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Lcom/transsion/transfer/impl/server/service/a;->d:Ljava/lang/String;

    .line 33
    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/transsion/transfer/impl/g;Lcom/transsion/transfer/impl/i;)V
    .locals 1

    .line 1
    const-string v0, "fileHandler"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "listener"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/transsion/transfer/impl/server/service/a;->a:Lcom/transsion/transfer/impl/g;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/transsion/transfer/impl/server/service/a;->b:Lcom/transsion/transfer/impl/i;

    .line 17
    .line 18
    return-void
.end method

.method public static final synthetic a(Lcom/transsion/transfer/impl/server/service/a;)Lcom/transsion/transfer/impl/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/transfer/impl/server/service/a;->b:Lcom/transsion/transfer/impl/i;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic c()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/transfer/impl/server/service/a;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private final d(Lcom/transsion/transfer/androidasync/http/server/b;)J
    .locals 7

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/http/server/b;->getHeaders()Lcom/transsion/transfer/androidasync/http/Headers;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const-string v0, "Range"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/transsion/transfer/androidasync/http/Headers;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    :cond_0
    const-string p1, ""

    .line 18
    .line 19
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const-wide/16 v1, 0x0

    .line 24
    .line 25
    if-lez v0, :cond_8

    .line 26
    .line 27
    new-instance v0, Lkotlin/text/Regex;

    .line 28
    .line 29
    const-string v3, "="

    .line 30
    .line 31
    invoke-direct {v0, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-virtual {v0, p1, v3}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    const/4 v4, 0x1

    .line 44
    if-nez v0, :cond_3

    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    invoke-interface {p1, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-eqz v5, :cond_3

    .line 59
    .line 60
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    check-cast v5, Ljava/lang/String;

    .line 65
    .line 66
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-nez v5, :cond_2

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    check-cast p1, Ljava/lang/Iterable;

    .line 74
    .line 75
    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    add-int/2addr v0, v4

    .line 80
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->K0(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    goto :goto_1

    .line 85
    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    :goto_1
    check-cast p1, Ljava/util/Collection;

    .line 90
    .line 91
    new-array v0, v3, [Ljava/lang/String;

    .line 92
    .line 93
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, [Ljava/lang/String;

    .line 98
    .line 99
    array-length v0, p1

    .line 100
    const/4 v5, 0x2

    .line 101
    if-ne v0, v5, :cond_8

    .line 102
    .line 103
    const-string v0, "bytes"

    .line 104
    .line 105
    aget-object v6, p1, v3

    .line 106
    .line 107
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-nez v0, :cond_4

    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_4
    aget-object p1, p1, v4

    .line 115
    .line 116
    new-instance v0, Lkotlin/text/Regex;

    .line 117
    .line 118
    const-string v6, "-"

    .line 119
    .line 120
    invoke-direct {v0, v6}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, p1, v3}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-nez v0, :cond_6

    .line 132
    .line 133
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    invoke-interface {p1, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    :goto_2
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    if-eqz v6, :cond_6

    .line 146
    .line 147
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    check-cast v6, Ljava/lang/String;

    .line 152
    .line 153
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 154
    .line 155
    .line 156
    move-result v6

    .line 157
    if-nez v6, :cond_5

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_5
    check-cast p1, Ljava/lang/Iterable;

    .line 161
    .line 162
    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    add-int/2addr v0, v4

    .line 167
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->K0(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    goto :goto_3

    .line 172
    :cond_6
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    :goto_3
    check-cast p1, Ljava/util/Collection;

    .line 177
    .line 178
    new-array v0, v3, [Ljava/lang/String;

    .line 179
    .line 180
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    check-cast p1, [Ljava/lang/String;

    .line 185
    .line 186
    :try_start_0
    array-length v0, p1

    .line 187
    if-gt v0, v5, :cond_7

    .line 188
    .line 189
    aget-object v0, p1, v3

    .line 190
    .line 191
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    if-nez v0, :cond_8

    .line 196
    .line 197
    aget-object p1, p1, v3

    .line 198
    .line 199
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 200
    .line 201
    .line 202
    move-result-wide v1

    .line 203
    goto :goto_4

    .line 204
    :cond_7
    new-instance p1, Lcom/transsion/transfer/androidasync/http/server/MalformedRangeException;

    .line 205
    .line 206
    invoke-direct {p1}, Lcom/transsion/transfer/androidasync/http/server/MalformedRangeException;-><init>()V

    .line 207
    .line 208
    .line 209
    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :catch_0
    :cond_8
    :goto_4
    return-wide v1
.end method


# virtual methods
.method public b(Lcom/transsion/transfer/androidasync/http/server/b;Lcom/transsion/transfer/androidasync/http/server/d;)V
    .locals 17

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    new-instance v8, Lkotlin/jvm/internal/Ref$LongRef;

    .line 4
    .line 5
    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lzt/c;->d:Lzt/c$a;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-interface/range {p1 .. p1}, Lcom/transsion/transfer/androidasync/http/server/b;->getHeaders()Lcom/transsion/transfer/androidasync/http/Headers;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v3, v2

    .line 19
    :goto_0
    invoke-virtual {v1, v3}, Lzt/c$a;->c(Lcom/transsion/transfer/androidasync/http/Headers;)Lkotlin/Triple;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3}, Lkotlin/Triple;->getFirst()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v3}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Ljava/lang/Number;

    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    invoke-virtual {v3}, Lkotlin/Triple;->getThird()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    move-object v10, v3

    .line 44
    check-cast v10, Ljava/lang/String;

    .line 45
    .line 46
    const/4 v3, 0x1

    .line 47
    const-string v5, ""

    .line 48
    .line 49
    const/4 v6, -0x1

    .line 50
    if-ge v4, v3, :cond_2

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    const-string v2, "protocol version compatible error"

    .line 55
    .line 56
    invoke-virtual {v1, v6, v2, v5}, Lzt/c$a;->a(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-interface {v0, v1}, Lcom/transsion/transfer/androidasync/http/server/d;->send(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    return-void

    .line 64
    :cond_2
    if-eqz p1, :cond_3

    .line 65
    .line 66
    invoke-interface/range {p1 .. p1}, Lcom/transsion/transfer/androidasync/http/server/b;->j()Lcom/transsion/transfer/androidasync/http/Multimap;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    if-eqz v3, :cond_3

    .line 71
    .line 72
    const-string v4, "file"

    .line 73
    .line 74
    invoke-virtual {v3, v4}, Lcom/transsion/transfer/androidasync/http/Multimap;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    if-eqz v3, :cond_3

    .line 79
    .line 80
    invoke-static {v3}, Lau/a;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    move-object v4, v3

    .line 85
    goto :goto_1

    .line 86
    :cond_3
    move-object v4, v2

    .line 87
    :goto_1
    if-eqz v4, :cond_4

    .line 88
    .line 89
    new-instance v2, Ljava/io/File;

    .line 90
    .line 91
    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :cond_4
    move-object v9, v2

    .line 95
    invoke-direct/range {p0 .. p1}, Lcom/transsion/transfer/impl/server/service/a;->d(Lcom/transsion/transfer/androidasync/http/server/b;)J

    .line 96
    .line 97
    .line 98
    move-result-wide v2

    .line 99
    if-eqz v9, :cond_5

    .line 100
    .line 101
    invoke-virtual {v9}, Ljava/io/File;->length()J

    .line 102
    .line 103
    .line 104
    move-result-wide v11

    .line 105
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    goto :goto_2

    .line 110
    :cond_5
    const v7, 0x7fffffff

    .line 111
    .line 112
    .line 113
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    :goto_2
    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    .line 118
    .line 119
    .line 120
    move-result-wide v15

    .line 121
    new-instance v7, Lkotlin/jvm/internal/Ref$LongRef;

    .line 122
    .line 123
    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 124
    .line 125
    .line 126
    iput-wide v2, v7, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 127
    .line 128
    if-eqz v9, :cond_7

    .line 129
    .line 130
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-eqz v2, :cond_7

    .line 135
    .line 136
    if-eqz v0, :cond_6

    .line 137
    .line 138
    new-instance v11, Lcom/transsion/transfer/impl/server/service/a$b;

    .line 139
    .line 140
    move-object v1, v11

    .line 141
    move-object/from16 v2, p0

    .line 142
    .line 143
    move-object v3, v10

    .line 144
    move-object v5, v7

    .line 145
    move-wide v6, v15

    .line 146
    invoke-direct/range {v1 .. v8}, Lcom/transsion/transfer/impl/server/service/a$b;-><init>(Lcom/transsion/transfer/impl/server/service/a;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/Ref$LongRef;JLkotlin/jvm/internal/Ref$LongRef;)V

    .line 147
    .line 148
    .line 149
    invoke-interface {v0, v9, v11}, Lcom/transsion/transfer/androidasync/http/server/d;->q(Ljava/io/File;Lst/e;)V

    .line 150
    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_6
    move-object/from16 v2, p0

    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_7
    move-object/from16 v2, p0

    .line 157
    .line 158
    if-eqz v4, :cond_8

    .line 159
    .line 160
    iget-object v9, v2, Lcom/transsion/transfer/impl/server/service/a;->b:Lcom/transsion/transfer/impl/i;

    .line 161
    .line 162
    sget-object v12, Lcom/transsion/transfer/impl/TaskState;->NO_FILE:Lcom/transsion/transfer/impl/TaskState;

    .line 163
    .line 164
    const-wide/16 v13, 0x0

    .line 165
    .line 166
    move-object v11, v4

    .line 167
    invoke-interface/range {v9 .. v16}, Lcom/transsion/transfer/impl/i;->L(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/impl/TaskState;JJ)V

    .line 168
    .line 169
    .line 170
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    const-string v7, "File not found,"

    .line 176
    .line 177
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    invoke-virtual {v1, v6, v3, v5}, Lzt/c$a;->a(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    const-string v4, "createResponseJsonObj: "

    .line 197
    .line 198
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    if-eqz v0, :cond_9

    .line 205
    .line 206
    const/16 v3, 0x194

    .line 207
    .line 208
    invoke-interface {v0, v3}, Lcom/transsion/transfer/androidasync/http/server/d;->c(I)Lcom/transsion/transfer/androidasync/http/server/d;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    if-eqz v0, :cond_9

    .line 213
    .line 214
    invoke-interface {v0, v1}, Lcom/transsion/transfer/androidasync/http/server/d;->send(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    :cond_9
    :goto_3
    return-void
.end method
