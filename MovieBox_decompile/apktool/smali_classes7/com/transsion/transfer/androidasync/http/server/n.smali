.class public Lcom/transsion/transfer/androidasync/http/server/n;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/transfer/androidasync/http/server/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/transfer/androidasync/http/server/n$b;,
        Lcom/transsion/transfer/androidasync/http/server/n$c;,
        Lcom/transsion/transfer/androidasync/http/server/n$d;,
        Lcom/transsion/transfer/androidasync/http/server/n$a;
    }
.end annotation


# static fields
.field static c:Ljava/util/Hashtable;

.field static d:Ljava/util/Hashtable;


# instance fields
.field final a:Ljava/util/ArrayList;

.field private b:Lcom/transsion/transfer/androidasync/http/server/n$b;


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
    sput-object v0, Lcom/transsion/transfer/androidasync/http/server/n;->c:Ljava/util/Hashtable;

    .line 7
    .line 8
    const-string v1, "js"

    .line 9
    .line 10
    const-string v2, "application/javascript"

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    sget-object v0, Lcom/transsion/transfer/androidasync/http/server/n;->c:Ljava/util/Hashtable;

    .line 16
    .line 17
    const-string v1, "json"

    .line 18
    .line 19
    const-string v2, "application/json"

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    sget-object v0, Lcom/transsion/transfer/androidasync/http/server/n;->c:Ljava/util/Hashtable;

    .line 25
    .line 26
    const-string v1, "png"

    .line 27
    .line 28
    const-string v2, "image/png"

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    sget-object v0, Lcom/transsion/transfer/androidasync/http/server/n;->c:Ljava/util/Hashtable;

    .line 34
    .line 35
    const-string v1, "jpg"

    .line 36
    .line 37
    const-string v2, "image/jpeg"

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    sget-object v0, Lcom/transsion/transfer/androidasync/http/server/n;->c:Ljava/util/Hashtable;

    .line 43
    .line 44
    const-string v1, "jpeg"

    .line 45
    .line 46
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    sget-object v0, Lcom/transsion/transfer/androidasync/http/server/n;->c:Ljava/util/Hashtable;

    .line 50
    .line 51
    const-string v1, "html"

    .line 52
    .line 53
    const-string v2, "text/html"

    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    sget-object v0, Lcom/transsion/transfer/androidasync/http/server/n;->c:Ljava/util/Hashtable;

    .line 59
    .line 60
    const-string v1, "css"

    .line 61
    .line 62
    const-string v2, "text/css"

    .line 63
    .line 64
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    sget-object v0, Lcom/transsion/transfer/androidasync/http/server/n;->c:Ljava/util/Hashtable;

    .line 68
    .line 69
    const-string v1, "mp4"

    .line 70
    .line 71
    const-string v2, "video/mp4"

    .line 72
    .line 73
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    sget-object v0, Lcom/transsion/transfer/androidasync/http/server/n;->c:Ljava/util/Hashtable;

    .line 77
    .line 78
    const-string v1, "mov"

    .line 79
    .line 80
    const-string v2, "video/quicktime"

    .line 81
    .line 82
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    sget-object v0, Lcom/transsion/transfer/androidasync/http/server/n;->c:Ljava/util/Hashtable;

    .line 86
    .line 87
    const-string v1, "wmv"

    .line 88
    .line 89
    const-string v2, "video/x-ms-wmv"

    .line 90
    .line 91
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    sget-object v0, Lcom/transsion/transfer/androidasync/http/server/n;->c:Ljava/util/Hashtable;

    .line 95
    .line 96
    const-string v1, "txt"

    .line 97
    .line 98
    const-string v2, "text/plain"

    .line 99
    .line 100
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    new-instance v0, Ljava/util/Hashtable;

    .line 104
    .line 105
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 106
    .line 107
    .line 108
    sput-object v0, Lcom/transsion/transfer/androidasync/http/server/n;->d:Ljava/util/Hashtable;

    .line 109
    .line 110
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/n;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Lcom/transsion/transfer/androidasync/http/server/n$b;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/transsion/transfer/androidasync/http/server/n$b;-><init>(Lcom/transsion/transfer/androidasync/http/server/n;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/n;->b:Lcom/transsion/transfer/androidasync/http/server/n$b;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$a;Lcom/transsion/transfer/androidasync/http/server/b;Lcom/transsion/transfer/androidasync/http/server/d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/transfer/androidasync/http/server/n;->h(Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$a;Lcom/transsion/transfer/androidasync/http/server/b;Lcom/transsion/transfer/androidasync/http/server/d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static e(Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/server/b;Lcom/transsion/transfer/androidasync/http/server/d;)Lcom/transsion/transfer/androidasync/http/b0;
    .locals 6

    .line 1
    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/http/server/b;->getHeaders()Lcom/transsion/transfer/androidasync/http/Headers;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Connection"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/http/Headers;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "Upgrade"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const-string v3, ","

    .line 17
    .line 18
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    array-length v3, v0

    .line 23
    move v4, v2

    .line 24
    :goto_0
    if-ge v4, v3, :cond_1

    .line 25
    .line 26
    aget-object v5, v0, v4

    .line 27
    .line 28
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_0

    .line 37
    .line 38
    const/4 v2, 0x1

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    :goto_1
    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/http/server/b;->getHeaders()Lcom/transsion/transfer/androidasync/http/Headers;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/http/Headers;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v1, "websocket"

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    const/4 v1, 0x0

    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    if-nez v2, :cond_2

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/http/server/b;->getHeaders()Lcom/transsion/transfer/androidasync/http/Headers;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string v2, "Sec-WebSocket-Protocol"

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Lcom/transsion/transfer/androidasync/http/Headers;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    if-nez p0, :cond_3

    .line 78
    .line 79
    return-object v1

    .line 80
    :cond_3
    new-instance p0, Lcom/transsion/transfer/androidasync/http/f0;

    .line 81
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/transsion/transfer/androidasync/http/f0;-><init>(Lcom/transsion/transfer/androidasync/http/server/b;Lcom/transsion/transfer/androidasync/http/server/d;)V

    .line 83
    .line 84
    .line 85
    return-object p0

    .line 86
    :cond_4
    :goto_2
    return-object v1
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "."

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    add-int/lit8 v0, v0, 0x1

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    sget-object v0, Lcom/transsion/transfer/androidasync/http/server/n;->c:Ljava/util/Hashtable;

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Ljava/lang/String;

    .line 23
    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    return-object p0
.end method

.method private static synthetic h(Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$a;Lcom/transsion/transfer/androidasync/http/server/b;Lcom/transsion/transfer/androidasync/http/server/d;)V
    .locals 0

    .line 1
    invoke-static {p0, p2, p3}, Lcom/transsion/transfer/androidasync/http/server/n;->e(Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/server/b;Lcom/transsion/transfer/androidasync/http/server/d;)Lcom/transsion/transfer/androidasync/http/b0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/16 p0, 0x194

    .line 8
    .line 9
    invoke-interface {p3, p0}, Lcom/transsion/transfer/androidasync/http/server/d;->c(I)Lcom/transsion/transfer/androidasync/http/server/d;

    .line 10
    .line 11
    .line 12
    invoke-interface {p3}, Lcom/transsion/transfer/androidasync/http/server/d;->d()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-interface {p1, p0, p2}, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$a;->a(Lcom/transsion/transfer/androidasync/http/b0;Lcom/transsion/transfer/androidasync/http/server/b;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/server/n$d;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/n;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/server/n;->a:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_3

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/transsion/transfer/androidasync/http/server/n$c;

    .line 21
    .line 22
    iget-object v3, v2, Lcom/transsion/transfer/androidasync/http/server/n$c;->a:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_1

    .line 29
    .line 30
    iget-object v3, v2, Lcom/transsion/transfer/androidasync/http/server/n$c;->a:Ljava/lang/String;

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    iget-object v3, v2, Lcom/transsion/transfer/androidasync/http/server/n$c;->b:Ljava/util/regex/Pattern;

    .line 38
    .line 39
    invoke-virtual {v3, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_0

    .line 48
    .line 49
    iget-object v8, v2, Lcom/transsion/transfer/androidasync/http/server/n$c;->c:Lcom/transsion/transfer/androidasync/http/server/q;

    .line 50
    .line 51
    instance-of v1, v8, Lcom/transsion/transfer/androidasync/http/server/r;

    .line 52
    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    const/4 p2, 0x1

    .line 56
    invoke-virtual {v7, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    iget-object v1, v2, Lcom/transsion/transfer/androidasync/http/server/n$c;->c:Lcom/transsion/transfer/androidasync/http/server/q;

    .line 61
    .line 62
    check-cast v1, Lcom/transsion/transfer/androidasync/http/server/r;

    .line 63
    .line 64
    invoke-interface {v1, p1, p2}, Lcom/transsion/transfer/androidasync/http/server/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/server/n$d;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    monitor-exit v0

    .line 69
    return-object p1

    .line 70
    :cond_2
    new-instance v1, Lcom/transsion/transfer/androidasync/http/server/n$d;

    .line 71
    .line 72
    const/4 v10, 0x0

    .line 73
    const/4 v9, 0x0

    .line 74
    move-object v4, v1

    .line 75
    move-object v5, p1

    .line 76
    move-object v6, p2

    .line 77
    invoke-direct/range {v4 .. v10}, Lcom/transsion/transfer/androidasync/http/server/n$d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/transsion/transfer/androidasync/http/server/q;Lcom/transsion/transfer/androidasync/http/server/a;Lcom/transsion/transfer/androidasync/http/server/o;)V

    .line 78
    .line 79
    .line 80
    monitor-exit v0

    .line 81
    return-object v1

    .line 82
    :cond_3
    monitor-exit v0

    .line 83
    const/4 p1, 0x0

    .line 84
    return-object p1

    .line 85
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    throw p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/server/q;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/transfer/androidasync/http/server/n;->d(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/server/q;Lcom/transsion/transfer/androidasync/http/server/a;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/server/q;Lcom/transsion/transfer/androidasync/http/server/a;)V
    .locals 2

    .line 1
    new-instance p4, Lcom/transsion/transfer/androidasync/http/server/n$c;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p4, v0}, Lcom/transsion/transfer/androidasync/http/server/n$c;-><init>(Lcom/transsion/transfer/androidasync/http/server/o;)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "^"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    iput-object p2, p4, Lcom/transsion/transfer/androidasync/http/server/n$c;->b:Ljava/util/regex/Pattern;

    .line 29
    .line 30
    iput-object p3, p4, Lcom/transsion/transfer/androidasync/http/server/n$c;->c:Lcom/transsion/transfer/androidasync/http/server/q;

    .line 31
    .line 32
    iput-object p1, p4, Lcom/transsion/transfer/androidasync/http/server/n$c;->a:Ljava/lang/String;

    .line 33
    .line 34
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/server/n;->a:Ljava/util/ArrayList;

    .line 35
    .line 36
    monitor-enter p1

    .line 37
    :try_start_0
    iget-object p2, p0, Lcom/transsion/transfer/androidasync/http/server/n;->a:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    monitor-exit p1

    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p2

    .line 45
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p2
.end method

.method public f(Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/server/q;)V
    .locals 1

    .line 1
    const-string v0, "GET"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1, p2}, Lcom/transsion/transfer/androidasync/http/server/n;->c(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/server/q;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public i(Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/server/q;)V
    .locals 1

    .line 1
    const-string v0, "POST"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1, p2}, Lcom/transsion/transfer/androidasync/http/server/n;->c(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/server/q;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$a;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/transfer/androidasync/http/server/l;

    .line 2
    .line 3
    invoke-direct {v0, p2, p3}, Lcom/transsion/transfer/androidasync/http/server/l;-><init>(Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$a;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/transsion/transfer/androidasync/http/server/n;->f(Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/server/q;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
