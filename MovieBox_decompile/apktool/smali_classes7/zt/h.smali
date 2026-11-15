.class public final Lzt/h;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/transfer/impl/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzt/h$a;
    }
.end annotation


# static fields
.field public static final s:Lzt/h$a;

.field private static final t:Ljava/lang/String;

.field private static volatile u:Lcom/transsion/transfer/impl/h;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Lcom/transsion/transfer/impl/g;

.field private e:Z

.field private final f:Landroid/os/Handler;

.field private g:Lzt/h$d;

.field private final h:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;

.field private final i:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private final j:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private final k:Lkotlin/Lazy;

.field private final l:Lcom/transsion/transfer/impl/PingPongHelper$a;

.field private final m:Ljava/lang/Runnable;

.field private final n:Ljava/util/concurrent/ConcurrentHashMap;

.field private final o:Ljava/util/concurrent/ConcurrentHashMap;

.field private final p:Ljava/util/concurrent/ConcurrentHashMap;

.field private final q:Ljava/util/concurrent/ConcurrentHashMap;

.field private final r:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lzt/h$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lzt/h$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lzt/h;->s:Lzt/h$a;

    .line 8
    .line 9
    const-class v0, Lzt/h;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lzt/h;->t:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzt/h;->a:Landroid/content/Context;

    .line 3
    const-string p1, ""

    iput-object p1, p0, Lzt/h;->c:Ljava/lang/String;

    .line 4
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lzt/h;->f:Landroid/os/Handler;

    .line 5
    new-instance p1, Lzt/h$d;

    invoke-direct {p1, p0}, Lzt/h$d;-><init>(Lzt/h;)V

    iput-object p1, p0, Lzt/h;->g:Lzt/h$d;

    .line 6
    new-instance p1, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;

    invoke-direct {p1}, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;-><init>()V

    .line 7
    new-instance v0, Lzt/d;

    invoke-direct {v0, p0}, Lzt/d;-><init>(Lzt/h;)V

    const-string v1, "/pingpong*"

    const-string v2, "socket_connect"

    invoke-virtual {p1, v1, v2, v0}, Lcom/transsion/transfer/androidasync/http/server/n;->j(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$a;)V

    .line 8
    iput-object p1, p0, Lzt/h;->h:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;

    .line 9
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lzt/h;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lzt/h;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 11
    new-instance p1, Lzt/e;

    invoke-direct {p1, p0}, Lzt/e;-><init>(Lzt/h;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lzt/h;->k:Lkotlin/Lazy;

    .line 12
    new-instance p1, Lzt/h$c;

    invoke-direct {p1, p0}, Lzt/h$c;-><init>(Lzt/h;)V

    iput-object p1, p0, Lzt/h;->l:Lcom/transsion/transfer/impl/PingPongHelper$a;

    .line 13
    new-instance p1, Lzt/f;

    invoke-direct {p1, p0}, Lzt/f;-><init>(Lzt/h;)V

    iput-object p1, p0, Lzt/h;->m:Ljava/lang/Runnable;

    .line 14
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lzt/h;->n:Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lzt/h;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lzt/h;->p:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lzt/h;->q:Ljava/util/concurrent/ConcurrentHashMap;

    .line 18
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lzt/h;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lzt/h;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private final A()Lzt/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lzt/h;->k:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lzt/c;

    .line 8
    .line 9
    return-object v0
.end method

.method private final B(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lzt/h;->n:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/transfer/androidasync/http/b0;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "notifyClientCMD: clientIp:"

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p1, " , socket:"

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget-object p1, p0, Lzt/h;->g:Lzt/h$d;

    .line 33
    .line 34
    invoke-virtual {p1}, Lzt/h$d;->b()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p1}, Lau/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v2, "cmd=-2?deviceName="

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-interface {v0, p1}, Lcom/transsion/transfer/androidasync/http/b0;->send(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_0
    return-void
.end method

.method private static final C(Lzt/h;Lcom/transsion/transfer/androidasync/http/b0;Lcom/transsion/transfer/androidasync/http/server/b;)V
    .locals 8

    .line 1
    invoke-interface {p2}, Lcom/transsion/transfer/androidasync/http/server/b;->j()Lcom/transsion/transfer/androidasync/http/Multimap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "clientIp"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/http/Multimap;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {p2}, Lcom/transsion/transfer/androidasync/http/server/b;->j()Lcom/transsion/transfer/androidasync/http/Multimap;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "transferId"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lcom/transsion/transfer/androidasync/http/Multimap;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lzt/h;->c:Ljava/lang/String;

    .line 25
    .line 26
    invoke-interface {p2}, Lcom/transsion/transfer/androidasync/http/server/b;->j()Lcom/transsion/transfer/androidasync/http/Multimap;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    const-string v2, "deviceName"

    .line 31
    .line 32
    invoke-virtual {p2, v2}, Lcom/transsion/transfer/androidasync/http/Multimap;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    const-string v2, "getString(...)"

    .line 37
    .line 38
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p2}, Lau/a;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v3, "find client connect, clientIp:"

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v3, ", clientDeviceName"

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v3, ", transferId:"

    .line 67
    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget-object v2, p0, Lzt/h;->n:Ljava/util/concurrent/ConcurrentHashMap;

    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    iget-object v3, p0, Lzt/h;->n:Ljava/util/concurrent/ConcurrentHashMap;

    .line 81
    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v5, "find client connect, clientSocketMap: "

    .line 88
    .line 89
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v2, ", "

    .line 96
    .line 97
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget-object v3, p0, Lzt/h;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 104
    .line 105
    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    const/4 v3, 0x1

    .line 109
    iput-boolean v3, p0, Lzt/h;->e:Z

    .line 110
    .line 111
    iget-object v4, p0, Lzt/h;->f:Landroid/os/Handler;

    .line 112
    .line 113
    iget-object v5, p0, Lzt/h;->m:Ljava/lang/Runnable;

    .line 114
    .line 115
    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 116
    .line 117
    .line 118
    iget-object v4, p0, Lzt/h;->n:Ljava/util/concurrent/ConcurrentHashMap;

    .line 119
    .line 120
    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    if-eqz v4, :cond_1

    .line 125
    .line 126
    iget-object v4, p0, Lzt/h;->n:Ljava/util/concurrent/ConcurrentHashMap;

    .line 127
    .line 128
    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    check-cast v4, Lcom/transsion/transfer/androidasync/http/b0;

    .line 133
    .line 134
    if-eqz v4, :cond_1

    .line 135
    .line 136
    iget-object v5, p0, Lzt/h;->p:Ljava/util/concurrent/ConcurrentHashMap;

    .line 137
    .line 138
    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    check-cast v5, Lcom/transsion/transfer/impl/PingPongHelper$a;

    .line 143
    .line 144
    if-eqz v5, :cond_0

    .line 145
    .line 146
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    invoke-interface {v5, v0, v4}, Lcom/transsion/transfer/impl/PingPongHelper$a;->a(Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/b0;)V

    .line 150
    .line 151
    .line 152
    :cond_0
    invoke-interface {v4}, Lcom/transsion/transfer/androidasync/p;->close()V

    .line 153
    .line 154
    .line 155
    :cond_1
    iget-object v4, p0, Lzt/h;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 156
    .line 157
    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    iget-object v5, p0, Lzt/h;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 162
    .line 163
    new-instance v6, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    .line 168
    const-string v7, "find client connect, clientConnectListeners:"

    .line 169
    .line 170
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string v2, " , "

    .line 183
    .line 184
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    iget-object v2, p0, Lzt/h;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 191
    .line 192
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 197
    .line 198
    .line 199
    move-result v4

    .line 200
    if-eqz v4, :cond_2

    .line 201
    .line 202
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    check-cast v4, Lkotlin/jvm/functions/Function4;

    .line 207
    .line 208
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 215
    .line 216
    const/4 v6, 0x0

    .line 217
    invoke-interface {v4, v0, v1, v5, v6}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    goto :goto_0

    .line 221
    :cond_2
    iget-object v2, p0, Lzt/h;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 222
    .line 223
    invoke-interface {v2, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    iget-object v2, p0, Lzt/h;->n:Ljava/util/concurrent/ConcurrentHashMap;

    .line 227
    .line 228
    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    iget-object v2, p0, Lzt/h;->g:Lzt/h$d;

    .line 232
    .line 233
    new-instance v4, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    .line 237
    .line 238
    const-string v5, "find client connect, proxyFileHandler:"

    .line 239
    .line 240
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    iget-object v2, p0, Lzt/h;->g:Lzt/h$d;

    .line 247
    .line 248
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v2, v0, p2}, Lzt/h$d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    iget-object p2, p0, Lzt/h;->q:Ljava/util/concurrent/ConcurrentHashMap;

    .line 255
    .line 256
    new-instance v2, Lcom/transsion/transfer/impl/PingPongHelper;

    .line 257
    .line 258
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 259
    .line 260
    .line 261
    iget-object v4, p0, Lzt/h;->l:Lcom/transsion/transfer/impl/PingPongHelper$a;

    .line 262
    .line 263
    invoke-direct {v2, v0, v3, p1, v4}, Lcom/transsion/transfer/impl/PingPongHelper;-><init>(Ljava/lang/String;ZLcom/transsion/transfer/androidasync/http/b0;Lcom/transsion/transfer/impl/PingPongHelper$a;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v2}, Lcom/transsion/transfer/impl/PingPongHelper;->n()V

    .line 267
    .line 268
    .line 269
    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    new-instance p2, Lzt/g;

    .line 273
    .line 274
    invoke-direct {p2, v0, p0, p1, v1}, Lzt/g;-><init>(Ljava/lang/String;Lzt/h;Lcom/transsion/transfer/androidasync/http/b0;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    invoke-interface {p1, p2}, Lcom/transsion/transfer/androidasync/s;->i(Lst/a;)V

    .line 278
    .line 279
    .line 280
    invoke-direct {p0, v0}, Lzt/h;->B(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    iput-boolean v3, p0, Lzt/h;->b:Z

    .line 284
    .line 285
    return-void
.end method

.method private static final D(Ljava/lang/String;Lzt/h;Lcom/transsion/transfer/androidasync/http/b0;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 1
    new-instance p4, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "server socket close callback ip: "

    .line 7
    .line 8
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    iget-object p4, p1, Lzt/h;->l:Lcom/transsion/transfer/impl/PingPongHelper$a;

    .line 15
    .line 16
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p4, p0, p2}, Lcom/transsion/transfer/impl/PingPongHelper$a;->a(Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/b0;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p1, Lzt/h;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_0

    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    check-cast p2, Lkotlin/jvm/functions/Function4;

    .line 42
    .line 43
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 47
    .line 48
    const-string v0, "normal"

    .line 49
    .line 50
    invoke-interface {p2, p0, p3, p4, v0}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    return-void
.end method

.method public static synthetic k(Lzt/h;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lzt/h;->y(Lzt/h;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic l(Lzt/h;Lcom/transsion/transfer/androidasync/http/b0;Lcom/transsion/transfer/androidasync/http/server/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lzt/h;->C(Lzt/h;Lcom/transsion/transfer/androidasync/http/b0;Lcom/transsion/transfer/androidasync/http/server/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic m(Ljava/lang/String;Lzt/h;Lcom/transsion/transfer/androidasync/http/b0;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lzt/h;->D(Ljava/lang/String;Lzt/h;Lcom/transsion/transfer/androidasync/http/b0;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n(Lzt/h;)Lzt/c;
    .locals 0

    .line 1
    invoke-static {p0}, Lzt/h;->z(Lzt/h;)Lzt/c;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic o(Lzt/h;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lzt/h;->m:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic p(Lzt/h;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lzt/h;->n:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic q(Lzt/h;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lzt/h;->e:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic r(Lzt/h;)Lcom/transsion/transfer/impl/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lzt/h;->d:Lcom/transsion/transfer/impl/g;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic s(Lzt/h;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lzt/h;->f:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic t()Lcom/transsion/transfer/impl/h;
    .locals 1

    .line 1
    sget-object v0, Lzt/h;->u:Lcom/transsion/transfer/impl/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic u(Lzt/h;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lzt/h;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic v()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lzt/h;->t:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic w(Lzt/h;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lzt/h;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic x(Lcom/transsion/transfer/impl/h;)V
    .locals 0

    .line 1
    sput-object p0, Lzt/h;->u:Lcom/transsion/transfer/impl/h;

    .line 2
    .line 3
    return-void
.end method

.method private static final y(Lzt/h;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lzt/h;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lzt/h;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/transsion/transfer/impl/i;

    .line 26
    .line 27
    iget-object v2, p0, Lzt/h;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 28
    .line 29
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->i0(Ljava/util/List;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Ljava/lang/String;

    .line 34
    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    const-string v2, ""

    .line 38
    .line 39
    :cond_0
    invoke-interface {v1, v2}, Lcom/transsion/transfer/impl/i;->r(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    sget-object v0, Lzt/h;->s:Lzt/h$a;

    .line 44
    .line 45
    invoke-virtual {v0}, Lzt/h$a;->a()V

    .line 46
    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lzt/h;->e:Z

    .line 50
    .line 51
    :cond_2
    return-void
.end method

.method private static final z(Lzt/h;)Lzt/c;
    .locals 3

    .line 1
    new-instance v0, Lzt/c;

    .line 2
    .line 3
    iget-object v1, p0, Lzt/h;->g:Lzt/h$d;

    .line 4
    .line 5
    new-instance v2, Lzt/h$b;

    .line 6
    .line 7
    invoke-direct {v2, p0}, Lzt/h$b;-><init>(Lzt/h;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Lzt/c;-><init>(Lcom/transsion/transfer/impl/g;Lcom/transsion/transfer/impl/i;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method


# virtual methods
.method public a(Lcom/transsion/transfer/impl/i;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lzt/h;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lzt/h;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public b(Lkotlin/jvm/functions/Function4;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lzt/h;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lzt/h;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public c()Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lzt/h;->n:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "<get-keys>(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Ljava/lang/Iterable;

    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->R0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/util/Collection;

    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method

.method public d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lzt/h;->n:Ljava/util/concurrent/ConcurrentHashMap;

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
    move-result-object v2

    .line 27
    check-cast v2, Lcom/transsion/transfer/androidasync/http/b0;

    .line 28
    .line 29
    const-string v3, "cmd=-1"

    .line 30
    .line 31
    invoke-interface {v2, v3}, Lcom/transsion/transfer/androidasync/http/b0;->send(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lcom/transsion/transfer/androidasync/http/b0;

    .line 39
    .line 40
    invoke-interface {v1}, Lcom/transsion/transfer/androidasync/p;->close()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lzt/h;->n:Ljava/util/concurrent/ConcurrentHashMap;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lzt/h;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lzt/h;->p:Ljava/util/concurrent/ConcurrentHashMap;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lzt/h;->q:Ljava/util/concurrent/ConcurrentHashMap;

    .line 60
    .line 61
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_1

    .line 74
    .line 75
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Ljava/util/Map$Entry;

    .line 80
    .line 81
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    check-cast v2, Lcom/transsion/transfer/androidasync/http/b0;

    .line 86
    .line 87
    invoke-interface {v2}, Lcom/transsion/transfer/androidasync/p;->close()V

    .line 88
    .line 89
    .line 90
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Lcom/transsion/transfer/impl/PingPongHelper;

    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/transsion/transfer/impl/PingPongHelper;->o()V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_1
    iget-object v0, p0, Lzt/h;->q:Ljava/util/concurrent/ConcurrentHashMap;

    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lzt/h;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 108
    .line 109
    .line 110
    invoke-static {}, Lcom/transsion/transfer/androidasync/AsyncServer;->r()Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/AsyncServer;->L()V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lzt/h;->h:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;

    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;->u()V

    .line 120
    .line 121
    .line 122
    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lzt/h;->b:Z

    .line 124
    .line 125
    return-void
.end method

.method public e(Lcom/transsion/transfer/impl/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzt/h;->d:Lcom/transsion/transfer/impl/g;

    .line 2
    .line 3
    return-void
.end method

.method public f(Ljava/lang/String;I)V
    .locals 3

    .line 1
    const-string v0, "clientIp"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lzt/h;->n:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/transsion/transfer/androidasync/http/b0;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "notifyClientCMD: clientIp:"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p1, " , socket:"

    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p1, ", cmd:"

    .line 36
    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v1, "cmd="

    .line 51
    .line 52
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-interface {v0, p1}, Lcom/transsion/transfer/androidasync/http/b0;->send(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_0
    return-void
.end method

.method public g(Lcom/transsion/transfer/impl/i;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lzt/h;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public h(Lkotlin/jvm/functions/Function4;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lzt/h;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public i()Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lzt/h;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "<get-values>(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Ljava/lang/Iterable;

    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->R0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/util/Collection;

    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lzt/h;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzt/h;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public open()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lzt/h;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lzt/h;->A()Lzt/c;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lzt/c;->e()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Iterable;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lzt/c$b;

    .line 31
    .line 32
    invoke-virtual {v1}, Lzt/c$b;->a()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1}, Lzt/c$b;->b()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v5, "open: "

    .line 46
    .line 47
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v2, ", "

    .line 54
    .line 55
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Lzt/c$b;->a()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    const-string v3, "get"

    .line 66
    .line 67
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_2

    .line 72
    .line 73
    iget-object v2, p0, Lzt/h;->h:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;

    .line 74
    .line 75
    invoke-virtual {v1}, Lzt/c$b;->b()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v1}, Lzt/c$b;->c()Lcom/transsion/transfer/androidasync/http/server/q;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v2, v3, v1}, Lcom/transsion/transfer/androidasync/http/server/n;->f(Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/server/q;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {v1}, Lzt/c$b;->a()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    const-string v3, "post"

    .line 92
    .line 93
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-eqz v2, :cond_1

    .line 98
    .line 99
    iget-object v2, p0, Lzt/h;->h:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;

    .line 100
    .line 101
    invoke-virtual {v1}, Lzt/c$b;->b()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v1}, Lzt/c$b;->c()Lcom/transsion/transfer/androidasync/http/server/q;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v2, v3, v1}, Lcom/transsion/transfer/androidasync/http/server/n;->i(Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/server/q;)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_3
    iget-object v0, p0, Lzt/h;->h:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;

    .line 114
    .line 115
    invoke-static {}, Lcom/transsion/transfer/androidasync/AsyncServer;->r()Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    const/16 v2, 0x26a2

    .line 120
    .line 121
    invoke-virtual {v0, v1, v2}, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;->o(Lcom/transsion/transfer/androidasync/AsyncServer;I)Lcom/transsion/transfer/androidasync/i;

    .line 122
    .line 123
    .line 124
    return-void
.end method
