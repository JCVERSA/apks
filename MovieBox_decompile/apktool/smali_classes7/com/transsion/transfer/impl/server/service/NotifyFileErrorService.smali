.class public final Lcom/transsion/transfer/impl/server/service/NotifyFileErrorService;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/transfer/androidasync/http/server/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/transfer/impl/server/service/NotifyFileErrorService$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/transsion/transfer/impl/server/service/NotifyFileErrorService$a;

.field private static final e:Ljava/lang/String;


# instance fields
.field private final a:Lcom/transsion/transfer/impl/g;

.field private b:Lcom/transsion/transfer/impl/i;

.field private final c:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/transsion/transfer/impl/server/service/NotifyFileErrorService$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/transfer/impl/server/service/NotifyFileErrorService$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/transfer/impl/server/service/NotifyFileErrorService;->d:Lcom/transsion/transfer/impl/server/service/NotifyFileErrorService$a;

    .line 8
    .line 9
    const-class v0, Lcom/transsion/transfer/impl/server/service/NotifyFileErrorService;

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
    sput-object v0, Lcom/transsion/transfer/impl/server/service/NotifyFileErrorService;->e:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/transsion/transfer/impl/server/service/NotifyFileErrorService;->a:Lcom/transsion/transfer/impl/g;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/transsion/transfer/impl/server/service/NotifyFileErrorService;->b:Lcom/transsion/transfer/impl/i;

    .line 17
    .line 18
    new-instance p1, Lcom/transsion/transfer/impl/server/service/e;

    .line 19
    .line 20
    invoke-direct {p1}, Lcom/transsion/transfer/impl/server/service/e;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/transsion/transfer/impl/server/service/NotifyFileErrorService;->c:Lkotlin/Lazy;

    .line 28
    .line 29
    return-void
.end method

.method public static synthetic a()Lcom/google/gson/Gson;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/transfer/impl/server/service/NotifyFileErrorService;->d()Lcom/google/gson/Gson;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final c()Lcom/google/gson/Gson;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/impl/server/service/NotifyFileErrorService;->c:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/gson/Gson;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final d()Lcom/google/gson/Gson;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/gson/Gson;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public b(Lcom/transsion/transfer/androidasync/http/server/b;Lcom/transsion/transfer/androidasync/http/server/d;)V
    .locals 13

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    sget-object v1, Lzt/c;->d:Lzt/c$a;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/http/server/b;->getHeaders()Lcom/transsion/transfer/androidasync/http/Headers;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p1

    .line 14
    goto/16 :goto_4

    .line 15
    .line 16
    :cond_0
    move-object v3, v2

    .line 17
    :goto_0
    invoke-virtual {v1, v3}, Lzt/c$a;->c(Lcom/transsion/transfer/androidasync/http/Headers;)Lkotlin/Triple;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v3}, Lkotlin/Triple;->getFirst()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v3}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    check-cast v4, Ljava/lang/Number;

    .line 32
    .line 33
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    invoke-virtual {v3}, Lkotlin/Triple;->getThird()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Ljava/lang/String;

    .line 42
    .line 43
    const/4 v5, 0x1

    .line 44
    if-ge v4, v5, :cond_2

    .line 45
    .line 46
    if-eqz p2, :cond_1

    .line 47
    .line 48
    const-string p1, "protocol version compatible error"

    .line 49
    .line 50
    const/4 v2, -0x1

    .line 51
    invoke-virtual {v1, v2, p1, v0}, Lzt/c$a;->a(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-interface {p2, p1}, Lcom/transsion/transfer/androidasync/http/server/d;->send(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void

    .line 59
    :cond_2
    if-eqz p1, :cond_3

    .line 60
    .line 61
    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/http/server/b;->z()Ltt/a;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Ltt/f;

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    move-object p1, v2

    .line 69
    :goto_1
    instance-of v1, p1, Ltt/f;

    .line 70
    .line 71
    if-eqz v1, :cond_4

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_4
    move-object p1, v2

    .line 75
    :goto_2
    if-eqz p1, :cond_5

    .line 76
    .line 77
    invoke-virtual {p1}, Ltt/f;->a()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    :cond_5
    invoke-direct {p0}, Lcom/transsion/transfer/impl/server/service/NotifyFileErrorService;->c()Lcom/google/gson/Gson;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    new-instance v1, Lcom/transsion/transfer/impl/server/service/NotifyFileErrorService$onRequest$data$1;

    .line 86
    .line 87
    invoke-direct {v1}, Lcom/transsion/transfer/impl/server/service/NotifyFileErrorService$onRequest$data$1;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {p1, v2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Ljava/util/List;

    .line 99
    .line 100
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    check-cast p1, Ljava/lang/Iterable;

    .line 104
    .line 105
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-eqz v1, :cond_6

    .line 114
    .line 115
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    check-cast v1, Lkotlin/Pair;

    .line 120
    .line 121
    iget-object v5, p0, Lcom/transsion/transfer/impl/server/service/NotifyFileErrorService;->b:Lcom/transsion/transfer/impl/i;

    .line 122
    .line 123
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    move-object v7, v2

    .line 128
    check-cast v7, Ljava/lang/String;

    .line 129
    .line 130
    sget-object v2, Lcom/transsion/transfer/impl/entity/FileData;->Companion:Lcom/transsion/transfer/impl/entity/FileData$a;

    .line 131
    .line 132
    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    check-cast v1, Ljava/lang/Number;

    .line 137
    .line 138
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    invoke-virtual {v2, v1}, Lcom/transsion/transfer/impl/entity/FileData$a;->b(I)Lcom/transsion/transfer/impl/TaskState;

    .line 143
    .line 144
    .line 145
    move-result-object v8

    .line 146
    const-wide/16 v9, 0x0

    .line 147
    .line 148
    const-wide/16 v11, 0x0

    .line 149
    .line 150
    move-object v6, v3

    .line 151
    invoke-interface/range {v5 .. v12}, Lcom/transsion/transfer/impl/i;->L(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/impl/TaskState;JJ)V

    .line 152
    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_6
    sget-object p1, Lzt/c;->d:Lzt/c$a;

    .line 156
    .line 157
    const-string v1, "notify File Task change"

    .line 158
    .line 159
    const/4 v2, 0x0

    .line 160
    invoke-virtual {p1, v2, v1, v0}, Lzt/c$a;->a(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .line 168
    .line 169
    const-string v2, "createResponseJsonObj: "

    .line 170
    .line 171
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    if-eqz p2, :cond_7

    .line 178
    .line 179
    invoke-interface {p2, p1}, Lcom/transsion/transfer/androidasync/http/server/d;->send(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .line 181
    .line 182
    goto :goto_5

    .line 183
    :goto_4
    if-eqz p2, :cond_7

    .line 184
    .line 185
    sget-object v1, Lzt/c;->d:Lzt/c$a;

    .line 186
    .line 187
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    const-string v3, "server error:"

    .line 197
    .line 198
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    const/16 v2, 0x1f4

    .line 209
    .line 210
    invoke-virtual {v1, v2, p1, v0}, Lzt/c$a;->a(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-interface {p2, p1}, Lcom/transsion/transfer/androidasync/http/server/d;->send(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    :cond_7
    :goto_5
    return-void
.end method
