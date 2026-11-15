.class public Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;
.super Lcom/transsion/transfer/androidasync/http/server/n;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$a;
    }
.end annotation


# static fields
.field private static h:Ljava/util/Hashtable;


# instance fields
.field e:Ljava/util/ArrayList;

.field f:Lst/f;

.field g:Lst/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Hashtable;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;->h:Ljava/util/Hashtable;

    .line 7
    .line 8
    const/16 v1, 0xc8

    .line 9
    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "OK"

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    sget-object v0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;->h:Ljava/util/Hashtable;

    .line 20
    .line 21
    const/16 v1, 0xca

    .line 22
    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "Accepted"

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    sget-object v0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;->h:Ljava/util/Hashtable;

    .line 33
    .line 34
    const/16 v1, 0xce

    .line 35
    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v2, "Partial Content"

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    sget-object v0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;->h:Ljava/util/Hashtable;

    .line 46
    .line 47
    const/16 v1, 0x65

    .line 48
    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-string v2, "Switching Protocols"

    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    sget-object v0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;->h:Ljava/util/Hashtable;

    .line 59
    .line 60
    const/16 v1, 0x12d

    .line 61
    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const-string v2, "Moved Permanently"

    .line 67
    .line 68
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    sget-object v0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;->h:Ljava/util/Hashtable;

    .line 72
    .line 73
    const/16 v1, 0x12e

    .line 74
    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    const-string v2, "Found"

    .line 80
    .line 81
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    sget-object v0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;->h:Ljava/util/Hashtable;

    .line 85
    .line 86
    const/16 v1, 0x130

    .line 87
    .line 88
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    const-string v2, "Not Modified"

    .line 93
    .line 94
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    sget-object v0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;->h:Ljava/util/Hashtable;

    .line 98
    .line 99
    const/16 v1, 0x190

    .line 100
    .line 101
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    const-string v2, "Bad Request"

    .line 106
    .line 107
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    sget-object v0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;->h:Ljava/util/Hashtable;

    .line 111
    .line 112
    const/16 v1, 0x191

    .line 113
    .line 114
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    const-string v2, "Unauthorized"

    .line 119
    .line 120
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    sget-object v0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;->h:Ljava/util/Hashtable;

    .line 124
    .line 125
    const/16 v1, 0x194

    .line 126
    .line 127
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    const-string v2, "Not Found"

    .line 132
    .line 133
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    sget-object v0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;->h:Ljava/util/Hashtable;

    .line 137
    .line 138
    const/16 v1, 0x1f4

    .line 139
    .line 140
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    const-string v2, "Internal Server Error"

    .line 145
    .line 146
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/http/server/n;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;->e:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;-><init>(Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;->f:Lst/f;

    .line 17
    .line 18
    return-void
.end method

.method static bridge synthetic k(Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;->t(Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static l(I)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;->h:Ljava/util/Hashtable;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Ljava/lang/String;

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    const-string p0, "Unknown"

    .line 16
    .line 17
    :cond_0
    return-object p0
.end method

.method private t(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;->g:Lst/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lst/a;->g(Ljava/lang/Exception;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method


# virtual methods
.method protected m(Lcom/transsion/transfer/androidasync/http/server/b;Lcom/transsion/transfer/androidasync/http/server/d;)Z
    .locals 0

    .line 1
    invoke-interface {p2}, Lcom/transsion/transfer/androidasync/http/server/d;->A()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/http/server/b;->getHeaders()Lcom/transsion/transfer/androidasync/http/Headers;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p2, p1}, Lcom/transsion/transfer/androidasync/http/HttpUtil;->e(Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/Headers;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method protected n(Lcom/transsion/transfer/androidasync/http/server/d;)Z
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/http/server/d;->b()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/16 v0, 0x65

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    return p1
.end method

.method public o(Lcom/transsion/transfer/androidasync/AsyncServer;I)Lcom/transsion/transfer/androidasync/i;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;->f:Lst/f;

    .line 3
    .line 4
    invoke-virtual {p1, v0, p2, v1}, Lcom/transsion/transfer/androidasync/AsyncServer;->y(Ljava/net/InetAddress;ILst/f;)Lcom/transsion/transfer/androidasync/i;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method protected p(Lcom/transsion/transfer/androidasync/http/server/q;Lcom/transsion/transfer/androidasync/http/server/b;Lcom/transsion/transfer/androidasync/http/server/d;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p1, p2, p3}, Lcom/transsion/transfer/androidasync/http/server/q;->b(Lcom/transsion/transfer/androidasync/http/server/b;Lcom/transsion/transfer/androidasync/http/server/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p1

    .line 8
    const-string p2, "AsyncHttpServer"

    .line 9
    .line 10
    const-string v0, "request callback raised uncaught exception. Catching versus crashing process"

    .line 11
    .line 12
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    const/16 p1, 0x1f4

    .line 16
    .line 17
    invoke-interface {p3, p1}, Lcom/transsion/transfer/androidasync/http/server/d;->c(I)Lcom/transsion/transfer/androidasync/http/server/d;

    .line 18
    .line 19
    .line 20
    invoke-interface {p3}, Lcom/transsion/transfer/androidasync/http/server/d;->d()V

    .line 21
    .line 22
    .line 23
    :cond_0
    :goto_0
    return-void
.end method

.method protected q(Lcom/transsion/transfer/androidasync/http/server/b;Lcom/transsion/transfer/androidasync/http/server/d;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method protected r(Lcom/transsion/transfer/androidasync/http/server/b;Lcom/transsion/transfer/androidasync/http/server/d;)V
    .locals 0

    .line 1
    return-void
.end method

.method protected s(Lcom/transsion/transfer/androidasync/http/Headers;)Ltt/a;
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/transfer/androidasync/http/server/s;

    .line 2
    .line 3
    const-string v1, "Content-Type"

    .line 4
    .line 5
    invoke-virtual {p1, v1}, Lcom/transsion/transfer/androidasync/http/Headers;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {v0, p1}, Lcom/transsion/transfer/androidasync/http/server/s;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public u()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/transsion/transfer/androidasync/i;

    .line 20
    .line 21
    invoke-interface {v1}, Lcom/transsion/transfer/androidasync/i;->stop()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method
