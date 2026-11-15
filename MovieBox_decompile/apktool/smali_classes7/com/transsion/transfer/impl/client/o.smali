.class public final Lcom/transsion/transfer/impl/client/o;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/transfer/impl/client/o$a;
    }
.end annotation


# static fields
.field public static final r:Lcom/transsion/transfer/impl/client/o$a;


# instance fields
.field private final a:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/transsion/transfer/impl/f;

.field private final f:Lkotlin/jvm/functions/Function2;

.field private g:Z

.field private h:Lcom/transsion/transfer/androidasync/future/f;

.field private i:J

.field private final j:Ljava/util/List;

.field private final k:Ljava/util/List;

.field private final l:Ljava/util/List;

.field private final m:Ljava/util/List;

.field private final n:Ljava/util/Map;

.field private o:Z

.field private p:Ljava/lang/Long;

.field private final q:Lcom/transsion/transfer/impl/client/o$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/transfer/impl/client/o$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/transfer/impl/client/o$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/transfer/impl/client/o;->r:Lcom/transsion/transfer/impl/client/o$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/impl/f;Lkotlin/jvm/functions/Function2;)V
    .locals 1

    .line 1
    const-string v0, "httpClient"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "clientIp"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "transferId"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "urlPath"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "listener"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "completeListener"

    .line 27
    .line 28
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/transsion/transfer/impl/client/o;->a:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    .line 35
    .line 36
    iput-object p2, p0, Lcom/transsion/transfer/impl/client/o;->b:Ljava/lang/String;

    .line 37
    .line 38
    iput-object p3, p0, Lcom/transsion/transfer/impl/client/o;->c:Ljava/lang/String;

    .line 39
    .line 40
    iput-object p4, p0, Lcom/transsion/transfer/impl/client/o;->d:Ljava/lang/String;

    .line 41
    .line 42
    iput-object p5, p0, Lcom/transsion/transfer/impl/client/o;->e:Lcom/transsion/transfer/impl/f;

    .line 43
    .line 44
    iput-object p6, p0, Lcom/transsion/transfer/impl/client/o;->f:Lkotlin/jvm/functions/Function2;

    .line 45
    .line 46
    new-instance p1, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lcom/transsion/transfer/impl/client/o;->j:Ljava/util/List;

    .line 52
    .line 53
    new-instance p1, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Lcom/transsion/transfer/impl/client/o;->k:Ljava/util/List;

    .line 59
    .line 60
    new-instance p1, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object p1, p0, Lcom/transsion/transfer/impl/client/o;->l:Ljava/util/List;

    .line 66
    .line 67
    new-instance p1, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object p1, p0, Lcom/transsion/transfer/impl/client/o;->m:Ljava/util/List;

    .line 73
    .line 74
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 75
    .line 76
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object p1, p0, Lcom/transsion/transfer/impl/client/o;->n:Ljava/util/Map;

    .line 80
    .line 81
    const-wide/16 p1, 0x0

    .line 82
    .line 83
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iput-object p1, p0, Lcom/transsion/transfer/impl/client/o;->p:Ljava/lang/Long;

    .line 88
    .line 89
    new-instance p1, Lcom/transsion/transfer/impl/client/o$c;

    .line 90
    .line 91
    invoke-direct {p1, p0}, Lcom/transsion/transfer/impl/client/o$c;-><init>(Lcom/transsion/transfer/impl/client/o;)V

    .line 92
    .line 93
    .line 94
    iput-object p1, p0, Lcom/transsion/transfer/impl/client/o;->q:Lcom/transsion/transfer/impl/client/o$c;

    .line 95
    .line 96
    return-void
.end method

.method public static final synthetic a(Lcom/transsion/transfer/impl/client/o;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/transfer/impl/client/o;->m:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic b(Lcom/transsion/transfer/impl/client/o;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/transfer/impl/client/o;->f:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic c(Lcom/transsion/transfer/impl/client/o;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsion/transfer/impl/client/o;->g:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic d(Lcom/transsion/transfer/impl/client/o;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/transfer/impl/client/o;->l:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/transfer/impl/client/o;)Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/transfer/impl/client/o;->p:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/transfer/impl/client/o;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/transfer/impl/client/o;->i:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic g(Lcom/transsion/transfer/impl/client/o;)Lcom/transsion/transfer/impl/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/transfer/impl/client/o;->e:Lcom/transsion/transfer/impl/f;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic h(Lcom/transsion/transfer/impl/client/o;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/transfer/impl/client/o;->n:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic i(Lcom/transsion/transfer/impl/client/o;)Lcom/transsion/transfer/impl/client/o$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/transfer/impl/client/o;->q:Lcom/transsion/transfer/impl/client/o$c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic j(Lcom/transsion/transfer/impl/client/o;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/transfer/impl/client/o;->k:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic k(Lcom/transsion/transfer/impl/client/o;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/transfer/impl/client/o;->j:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic l(Lcom/transsion/transfer/impl/client/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/transfer/impl/client/o;->r()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic m(Lcom/transsion/transfer/impl/client/o;Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/impl/client/o;->p:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic n(Lcom/transsion/transfer/impl/client/o;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/transfer/impl/client/o;->i:J

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic o(Lcom/transsion/transfer/impl/client/o;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/transfer/impl/client/o;->o:Z

    .line 2
    .line 3
    return-void
.end method

.method private final r()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/transsion/transfer/impl/client/o;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/transsion/transfer/impl/client/o;->k:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/transsion/transfer/impl/client/o;->j:Ljava/util/List;

    .line 16
    .line 17
    check-cast v0, Ljava/util/Collection;

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/transsion/transfer/impl/client/o;->k:Ljava/util/List;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/transsion/transfer/impl/client/o;->j:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, Lcom/transsion/transfer/impl/client/o;->k:Ljava/util/List;

    .line 37
    .line 38
    check-cast v0, Ljava/util/Collection;

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    iget-boolean v0, p0, Lcom/transsion/transfer/impl/client/o;->o:Z

    .line 47
    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    iget-object v0, p0, Lcom/transsion/transfer/impl/client/o;->k:Ljava/util/List;

    .line 51
    .line 52
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Lcom/transsion/transfer/impl/entity/FileData;

    .line 57
    .line 58
    invoke-direct {p0, v0}, Lcom/transsion/transfer/impl/client/o;->s(Lcom/transsion/transfer/impl/entity/FileData;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    return-void
.end method

.method private final s(Lcom/transsion/transfer/impl/entity/FileData;)V
    .locals 14

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/transfer/impl/entity/FileData;->getFileReceiveCachePath()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-wide/16 v1, 0x0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/io/File;->getFreeSpace()J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-wide v3, v1

    .line 24
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/transfer/impl/entity/FileData;->getFileSize()J

    .line 25
    .line 26
    .line 27
    move-result-wide v5

    .line 28
    cmp-long v0, v3, v5

    .line 29
    .line 30
    if-gez v0, :cond_1

    .line 31
    .line 32
    iget-object v3, p0, Lcom/transsion/transfer/impl/client/o;->e:Lcom/transsion/transfer/impl/f;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/transsion/transfer/impl/entity/FileData;->getFileRemotePath()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    sget-object v5, Lcom/transsion/transfer/impl/TaskState;->SPACE_LIMIT:Lcom/transsion/transfer/impl/TaskState;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/transsion/transfer/impl/entity/FileData;->getFileSize()J

    .line 41
    .line 42
    .line 43
    move-result-wide v8

    .line 44
    const-wide/16 v10, 0x0

    .line 45
    .line 46
    const/4 v12, 0x0

    .line 47
    const-wide/16 v6, 0x0

    .line 48
    .line 49
    invoke-interface/range {v3 .. v12}, Lcom/transsion/transfer/impl/f;->J(Ljava/lang/String;Lcom/transsion/transfer/impl/TaskState;JJJLjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/transsion/transfer/impl/client/o;->k:Ljava/util/List;

    .line 53
    .line 54
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    invoke-direct {p0}, Lcom/transsion/transfer/impl/client/o;->r()V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v3, "receiveFile:start:"

    .line 67
    .line 68
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v3, " "

    .line 75
    .line 76
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/transsion/transfer/impl/client/o;->o:Z

    .line 81
    .line 82
    sget-object v0, Lcom/transsion/transfer/impl/entity/FileData;->Companion:Lcom/transsion/transfer/impl/entity/FileData$a;

    .line 83
    .line 84
    sget-object v5, Lcom/transsion/transfer/impl/TaskState;->CONNECTING:Lcom/transsion/transfer/impl/TaskState;

    .line 85
    .line 86
    invoke-virtual {v0, v5}, Lcom/transsion/transfer/impl/entity/FileData$a;->a(Lcom/transsion/transfer/impl/TaskState;)I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    invoke-virtual {p1, v0}, Lcom/transsion/transfer/impl/entity/FileData;->setState(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/transsion/transfer/impl/entity/FileData;->filePrepare()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/transsion/transfer/impl/entity/FileData;->getTempFile()Ljava/io/File;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {p1}, Lcom/transsion/transfer/impl/entity/FileData;->getTempBackFile()Ljava/io/File;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-eqz v4, :cond_2

    .line 109
    .line 110
    move-object v13, v3

    .line 111
    goto :goto_1

    .line 112
    :cond_2
    move-object v13, v0

    .line 113
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    if-eqz v3, :cond_3

    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 120
    .line 121
    .line 122
    move-result-wide v1

    .line 123
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 124
    .line 125
    .line 126
    move-result-wide v3

    .line 127
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    iput-object v0, p0, Lcom/transsion/transfer/impl/client/o;->p:Ljava/lang/Long;

    .line 132
    .line 133
    iget-object v3, p0, Lcom/transsion/transfer/impl/client/o;->e:Lcom/transsion/transfer/impl/f;

    .line 134
    .line 135
    invoke-virtual {p1}, Lcom/transsion/transfer/impl/entity/FileData;->getFileRemotePath()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-virtual {p1}, Lcom/transsion/transfer/impl/entity/FileData;->getFileSize()J

    .line 140
    .line 141
    .line 142
    move-result-wide v8

    .line 143
    const-wide/16 v10, 0x0

    .line 144
    .line 145
    const/4 v12, 0x0

    .line 146
    move-wide v6, v1

    .line 147
    invoke-interface/range {v3 .. v12}, Lcom/transsion/transfer/impl/f;->J(Ljava/lang/String;Lcom/transsion/transfer/impl/TaskState;JJJLjava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget-object v0, p0, Lcom/transsion/transfer/impl/client/o;->a:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    .line 151
    .line 152
    sget-object v3, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    .line 153
    .line 154
    iget-object v4, p0, Lcom/transsion/transfer/impl/client/o;->d:Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual {p1}, Lcom/transsion/transfer/impl/entity/FileData;->getFileRemotePath()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    invoke-static {v5}, Lau/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    new-instance v6, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string v4, "/client/fetchFile?file="

    .line 173
    .line 174
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    iget-object v5, p0, Lcom/transsion/transfer/impl/client/o;->b:Ljava/lang/String;

    .line 185
    .line 186
    iget-object v6, p0, Lcom/transsion/transfer/impl/client/o;->c:Ljava/lang/String;

    .line 187
    .line 188
    invoke-virtual {v3, v4, v5, v6}, Lcom/transsion/transfer/impl/client/TransferClient$a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/h;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    new-instance v4, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .line 196
    .line 197
    const-string v5, "transferFile: bytes="

    .line 198
    .line 199
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const-string v5, "-"

    .line 206
    .line 207
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    new-instance v4, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .line 214
    .line 215
    const-string v6, "transferFile: fileData="

    .line 216
    .line 217
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v3}, Lcom/transsion/transfer/androidasync/http/j;->h()Lcom/transsion/transfer/androidasync/http/Headers;

    .line 224
    .line 225
    .line 226
    move-result-object v4

    .line 227
    new-instance v6, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    .line 231
    .line 232
    const-string v7, "bytes="

    .line 233
    .line 234
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v5

    .line 247
    const-string v6, "Range"

    .line 248
    .line 249
    invoke-virtual {v4, v6, v5}, Lcom/transsion/transfer/androidasync/http/Headers;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/Headers;

    .line 250
    .line 251
    .line 252
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 253
    .line 254
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v4

    .line 258
    new-instance v5, Lcom/transsion/transfer/impl/client/o$b;

    .line 259
    .line 260
    invoke-direct {v5, p0, p1, v1, v2}, Lcom/transsion/transfer/impl/client/o$b;-><init>(Lcom/transsion/transfer/impl/client/o;Lcom/transsion/transfer/impl/entity/FileData;J)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0, v3, v4, v5}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->t(Lcom/transsion/transfer/androidasync/http/j;Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$g;)Lcom/transsion/transfer/androidasync/future/f;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    iput-object p1, p0, Lcom/transsion/transfer/impl/client/o;->h:Lcom/transsion/transfer/androidasync/future/f;

    .line 268
    .line 269
    return-void
.end method


# virtual methods
.method public final p(Ljava/util/List;)V
    .locals 9

    .line 1
    const-string v0, "files"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/transsion/transfer/impl/client/o;->g:Z

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    move-object v1, p1

    .line 15
    check-cast v1, Ljava/lang/Iterable;

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_6

    .line 26
    .line 27
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lcom/transsion/transfer/impl/entity/FileData;

    .line 32
    .line 33
    iget-object v4, p0, Lcom/transsion/transfer/impl/client/o;->k:Ljava/util/List;

    .line 34
    .line 35
    check-cast v4, Ljava/lang/Iterable;

    .line 36
    .line 37
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    const/4 v6, 0x0

    .line 46
    if-eqz v5, :cond_2

    .line 47
    .line 48
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    move-object v7, v5

    .line 53
    check-cast v7, Lcom/transsion/transfer/impl/entity/FileData;

    .line 54
    .line 55
    invoke-virtual {v3}, Lcom/transsion/transfer/impl/entity/FileData;->getFileRemotePath()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    invoke-virtual {v7}, Lcom/transsion/transfer/impl/entity/FileData;->getFileRemotePath()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    if-eqz v7, :cond_1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    move-object v5, v6

    .line 71
    :goto_1
    if-nez v5, :cond_5

    .line 72
    .line 73
    iget-object v4, p0, Lcom/transsion/transfer/impl/client/o;->j:Ljava/util/List;

    .line 74
    .line 75
    check-cast v4, Ljava/lang/Iterable;

    .line 76
    .line 77
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    if-eqz v5, :cond_4

    .line 86
    .line 87
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    move-object v7, v5

    .line 92
    check-cast v7, Lcom/transsion/transfer/impl/entity/FileData;

    .line 93
    .line 94
    invoke-virtual {v3}, Lcom/transsion/transfer/impl/entity/FileData;->getFileRemotePath()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    invoke-virtual {v7}, Lcom/transsion/transfer/impl/entity/FileData;->getFileRemotePath()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    if-eqz v7, :cond_3

    .line 107
    .line 108
    move-object v6, v5

    .line 109
    :cond_4
    if-eqz v6, :cond_0

    .line 110
    .line 111
    :cond_5
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_6
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-nez v2, :cond_7

    .line 120
    .line 121
    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 122
    .line 123
    .line 124
    :cond_7
    iget-object p1, p0, Lcom/transsion/transfer/impl/client/o;->j:Ljava/util/List;

    .line 125
    .line 126
    check-cast p1, Ljava/lang/Iterable;

    .line 127
    .line 128
    const/16 v0, 0xa

    .line 129
    .line 130
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    invoke-static {v2}, Lkotlin/collections/MapsKt;->e(I)I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    const/16 v3, 0x10

    .line 139
    .line 140
    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->e(II)I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 145
    .line 146
    invoke-direct {v4, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 147
    .line 148
    .line 149
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    if-eqz v2, :cond_8

    .line 158
    .line 159
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    move-object v5, v2

    .line 164
    check-cast v5, Lcom/transsion/transfer/impl/entity/FileData;

    .line 165
    .line 166
    invoke-virtual {v5}, Lcom/transsion/transfer/impl/entity/FileData;->getFileRemotePath()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_8
    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    invoke-static {p1}, Lkotlin/collections/MapsKt;->e(I)I

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    invoke-static {p1, v3}, Lkotlin/ranges/RangesKt;->e(II)I

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 187
    .line 188
    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 189
    .line 190
    .line 191
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-eqz v1, :cond_9

    .line 200
    .line 201
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    move-object v2, v1

    .line 206
    check-cast v2, Lcom/transsion/transfer/impl/entity/FileData;

    .line 207
    .line 208
    invoke-virtual {v2}, Lcom/transsion/transfer/impl/entity/FileData;->getFileRemotePath()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_9
    invoke-static {v4, v0}, Lkotlin/collections/MapsKt;->o(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    check-cast p1, Ljava/lang/Iterable;

    .line 225
    .line 226
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->R0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    iget-object v0, p0, Lcom/transsion/transfer/impl/client/o;->j:Ljava/util/List;

    .line 231
    .line 232
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 233
    .line 234
    .line 235
    iget-object v0, p0, Lcom/transsion/transfer/impl/client/o;->j:Ljava/util/List;

    .line 236
    .line 237
    check-cast p1, Ljava/util/Collection;

    .line 238
    .line 239
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 240
    .line 241
    .line 242
    invoke-direct {p0}, Lcom/transsion/transfer/impl/client/o;->r()V

    .line 243
    .line 244
    .line 245
    return-void
.end method

.method public final q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/impl/client/o;->h:Lcom/transsion/transfer/androidasync/future/f;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 7
    .line 8
    .line 9
    :cond_0
    iput-boolean v1, p0, Lcom/transsion/transfer/impl/client/o;->g:Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/transfer/impl/client/o;->k:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/transsion/transfer/impl/client/o;->j:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/transsion/transfer/impl/client/o;->m:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/transsion/transfer/impl/client/o;->l:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/transsion/transfer/impl/client/o;->n:Ljava/util/Map;

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final t(Lcom/transsion/transfer/impl/entity/FileData;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/transfer/impl/client/o;->k:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/transfer/impl/client/o;->j:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/transsion/transfer/impl/client/o;->k:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/transsion/transfer/impl/client/o;->k:Ljava/util/List;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-direct {p0}, Lcom/transsion/transfer/impl/client/o;->r()V

    .line 28
    .line 29
    .line 30
    return-void
.end method
