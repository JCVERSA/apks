.class Lcom/mbridge/msdk/tracker/k;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static volatile o:Ljava/lang/String; = ""


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/mbridge/msdk/tracker/m;

.field private c:Landroid/content/Context;

.field private d:Lcom/mbridge/msdk/tracker/x;

.field private e:Lorg/json/JSONObject;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile h:Lcom/mbridge/msdk/tracker/c;

.field private volatile i:Lcom/mbridge/msdk/tracker/l;

.field private volatile j:Lcom/mbridge/msdk/tracker/d;

.field private volatile k:Lcom/mbridge/msdk/tracker/j;

.field private volatile l:Lcom/mbridge/msdk/tracker/s;

.field private volatile m:Z

.field private volatile n:Lcom/mbridge/msdk/tracker/o;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/mbridge/msdk/tracker/m;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/mbridge/msdk/tracker/k;->m:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/mbridge/msdk/tracker/k;->a:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/mbridge/msdk/tracker/k;->b:Lcom/mbridge/msdk/tracker/m;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/tracker/k;->c:Landroid/content/Context;

    return-void
.end method

.method a(Lcom/mbridge/msdk/tracker/x;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mbridge/msdk/tracker/k;->d:Lcom/mbridge/msdk/tracker/x;

    return-void
.end method

.method a(Lorg/json/JSONObject;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mbridge/msdk/tracker/k;->e:Lorg/json/JSONObject;

    return-void
.end method

.method a()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 20
    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->b()Lcom/mbridge/msdk/tracker/x;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 21
    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->f()Lcom/mbridge/msdk/tracker/d;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 22
    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->r()Lcom/mbridge/msdk/tracker/w;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 23
    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->n()Lcom/mbridge/msdk/tracker/p;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->n()Lcom/mbridge/msdk/tracker/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/tracker/p;->b()Lcom/mbridge/msdk/tracker/network/toolbox/a;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 24
    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->n()Lcom/mbridge/msdk/tracker/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/tracker/p;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "report url is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "networkStackConfig or stack can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "responseHandler can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "decorate can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "config can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method a(Lcom/mbridge/msdk/tracker/e;)Z
    .locals 4

    .line 4
    invoke-static {p1}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->b()Lcom/mbridge/msdk/tracker/x;

    move-result-object v0

    iget-object v0, v0, Lcom/mbridge/msdk/tracker/x;->j:Lcom/mbridge/msdk/tracker/f;

    .line 6
    invoke-static {v0}, Lcom/mbridge/msdk/tracker/y;->a(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "TrackManager"

    if-eqz v2, :cond_1

    .line 7
    :try_start_0
    invoke-interface {v0, p1}, Lcom/mbridge/msdk/tracker/f;->a(Lcom/mbridge/msdk/tracker/e;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    .line 8
    sget-boolean v2, Lcom/mbridge/msdk/tracker/a;->a:Z

    if-eqz v2, :cond_1

    .line 9
    const-string v2, "event filter apply exception"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/e;->b()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/k;->g:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 13
    :try_start_1
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    xor-int/2addr p1, v1

    return p1

    :catch_1
    move-exception v0

    .line 14
    sget-boolean v2, Lcom/mbridge/msdk/tracker/a;->a:Z

    if-eqz v2, :cond_3

    .line 15
    const-string v2, "disallowTrackEventNames contains exception"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/k;->f:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 17
    :try_start_2
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return p1

    :catch_2
    move-exception p1

    .line 18
    sget-boolean v0, Lcom/mbridge/msdk/tracker/a;->a:Z

    if-eqz v0, :cond_4

    .line 19
    const-string v0, "allowTrackEventNames contains exception"

    invoke-static {v3, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    return v1
.end method

.method b()Lcom/mbridge/msdk/tracker/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/k;->d:Lcom/mbridge/msdk/tracker/x;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/mbridge/msdk/tracker/x$b;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/mbridge/msdk/tracker/x$b;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/mbridge/msdk/tracker/x$b;->a()Lcom/mbridge/msdk/tracker/x;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/mbridge/msdk/tracker/k;->d:Lcom/mbridge/msdk/tracker/x;

    .line 15
    .line 16
    :cond_0
    return-object v0
.end method

.method c()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/k;->c:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method d()Lcom/mbridge/msdk/tracker/c;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/k;->h:Lcom/mbridge/msdk/tracker/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const-class v0, Lcom/mbridge/msdk/tracker/k;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/tracker/k;->h:Lcom/mbridge/msdk/tracker/c;

    .line 13
    .line 14
    invoke-static {v1}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->t()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    new-instance v2, Lcom/mbridge/msdk/tracker/c;

    .line 25
    .line 26
    new-instance v3, Lcom/mbridge/msdk/tracker/b;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->c()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->e()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    invoke-direct {v3, v4, v5, v1}, Lcom/mbridge/msdk/tracker/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {v2, v3, v1}, Lcom/mbridge/msdk/tracker/c;-><init>(Lcom/mbridge/msdk/tracker/b;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iput-object v2, p0, Lcom/mbridge/msdk/tracker/k;->h:Lcom/mbridge/msdk/tracker/c;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception v1

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    :goto_0
    monitor-exit v0

    .line 48
    goto :goto_2

    .line 49
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw v1

    .line 51
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/k;->h:Lcom/mbridge/msdk/tracker/c;

    .line 52
    .line 53
    return-object v0
.end method

.method e()Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->v()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string v3, "track_manager_%s.db"

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    new-array v1, v1, [Ljava/lang/Object;

    .line 16
    .line 17
    const-string v2, "default"

    .line 18
    .line 19
    aput-object v2, v1, v0

    .line 20
    .line 21
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->v()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    new-array v1, v1, [Ljava/lang/Object;

    .line 31
    .line 32
    aput-object v2, v1, v0

    .line 33
    .line 34
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0
.end method

.method f()Lcom/mbridge/msdk/tracker/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/k;->j:Lcom/mbridge/msdk/tracker/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->b()Lcom/mbridge/msdk/tracker/x;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v0, v0, Lcom/mbridge/msdk/tracker/x;->h:Lcom/mbridge/msdk/tracker/d;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/mbridge/msdk/tracker/k;->j:Lcom/mbridge/msdk/tracker/d;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/k;->j:Lcom/mbridge/msdk/tracker/d;

    .line 18
    .line 19
    return-object v0
.end method

.method g()Lcom/mbridge/msdk/tracker/l;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/k;->i:Lcom/mbridge/msdk/tracker/l;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const-class v0, Lcom/mbridge/msdk/tracker/k;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/tracker/k;->i:Lcom/mbridge/msdk/tracker/l;

    .line 13
    .line 14
    invoke-static {v1}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    new-instance v1, Lcom/mbridge/msdk/tracker/q;

    .line 21
    .line 22
    new-instance v2, Lcom/mbridge/msdk/tracker/g;

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->d()Lcom/mbridge/msdk/tracker/c;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->p()Lcom/mbridge/msdk/tracker/s;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-direct {v2, v3, v4}, Lcom/mbridge/msdk/tracker/g;-><init>(Lcom/mbridge/msdk/tracker/c;Lcom/mbridge/msdk/tracker/s;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {v1, v2}, Lcom/mbridge/msdk/tracker/q;-><init>(Lcom/mbridge/msdk/tracker/g;)V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lcom/mbridge/msdk/tracker/k;->i:Lcom/mbridge/msdk/tracker/l;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v1

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    :goto_0
    monitor-exit v0

    .line 44
    goto :goto_2

    .line 45
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw v1

    .line 47
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/k;->i:Lcom/mbridge/msdk/tracker/l;

    .line 48
    .line 49
    return-object v0
.end method

.method h()Lcom/mbridge/msdk/tracker/j;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/k;->k:Lcom/mbridge/msdk/tracker/j;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const-class v0, Lcom/mbridge/msdk/tracker/k;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/tracker/k;->k:Lcom/mbridge/msdk/tracker/j;

    .line 13
    .line 14
    invoke-static {v1}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    new-instance v1, Lcom/mbridge/msdk/tracker/j;

    .line 21
    .line 22
    invoke-direct {v1}, Lcom/mbridge/msdk/tracker/j;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lcom/mbridge/msdk/tracker/k;->k:Lcom/mbridge/msdk/tracker/j;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :goto_0
    monitor-exit v0

    .line 31
    goto :goto_2

    .line 32
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw v1

    .line 34
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/k;->k:Lcom/mbridge/msdk/tracker/j;

    .line 35
    .line 36
    return-object v0
.end method

.method i()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->b()Lcom/mbridge/msdk/tracker/x;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v0, v0, Lcom/mbridge/msdk/tracker/x;->a:I

    .line 6
    .line 7
    if-gez v0, :cond_0

    .line 8
    .line 9
    const/16 v0, 0x32

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->b()Lcom/mbridge/msdk/tracker/x;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget v0, v0, Lcom/mbridge/msdk/tracker/x;->a:I

    .line 17
    .line 18
    :goto_0
    return v0
.end method

.method j()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->b()Lcom/mbridge/msdk/tracker/x;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v0, v0, Lcom/mbridge/msdk/tracker/x;->e:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method k()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->b()Lcom/mbridge/msdk/tracker/x;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v0, v0, Lcom/mbridge/msdk/tracker/x;->d:I

    .line 6
    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->b()Lcom/mbridge/msdk/tracker/x;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget v0, v0, Lcom/mbridge/msdk/tracker/x;->d:I

    .line 16
    .line 17
    :goto_0
    return v0
.end method

.method l()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->b()Lcom/mbridge/msdk/tracker/x;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v0, v0, Lcom/mbridge/msdk/tracker/x;->b:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method m()Lcom/mbridge/msdk/tracker/o;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/k;->n:Lcom/mbridge/msdk/tracker/o;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const-class v0, Lcom/mbridge/msdk/tracker/k;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/tracker/k;->n:Lcom/mbridge/msdk/tracker/o;

    .line 13
    .line 14
    invoke-static {v1}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    new-instance v1, Lcom/mbridge/msdk/tracker/o;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->k()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->n()Lcom/mbridge/msdk/tracker/p;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->r()Lcom/mbridge/msdk/tracker/w;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->q()I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mbridge/msdk/tracker/o;-><init>(ILcom/mbridge/msdk/tracker/p;Lcom/mbridge/msdk/tracker/w;I)V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lcom/mbridge/msdk/tracker/k;->n:Lcom/mbridge/msdk/tracker/o;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v1

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    :goto_0
    monitor-exit v0

    .line 47
    goto :goto_2

    .line 48
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw v1

    .line 50
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/k;->n:Lcom/mbridge/msdk/tracker/o;

    .line 51
    .line 52
    return-object v0
.end method

.method n()Lcom/mbridge/msdk/tracker/p;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->b()Lcom/mbridge/msdk/tracker/x;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/mbridge/msdk/tracker/x;->g:Lcom/mbridge/msdk/tracker/p;

    .line 6
    .line 7
    return-object v0
.end method

.method o()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/k;->e:Lorg/json/JSONObject;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lorg/json/JSONObject;

    .line 6
    .line 7
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/mbridge/msdk/tracker/k;->e:Lorg/json/JSONObject;

    .line 11
    .line 12
    :cond_0
    return-object v0
.end method

.method p()Lcom/mbridge/msdk/tracker/s;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/k;->l:Lcom/mbridge/msdk/tracker/s;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const-class v0, Lcom/mbridge/msdk/tracker/k;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/tracker/k;->l:Lcom/mbridge/msdk/tracker/s;

    .line 13
    .line 14
    invoke-static {v1}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    new-instance v1, Lcom/mbridge/msdk/tracker/s;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lcom/mbridge/msdk/tracker/s;-><init>(Lcom/mbridge/msdk/tracker/k;)V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lcom/mbridge/msdk/tracker/k;->l:Lcom/mbridge/msdk/tracker/s;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :goto_0
    monitor-exit v0

    .line 31
    goto :goto_2

    .line 32
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw v1

    .line 34
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/k;->l:Lcom/mbridge/msdk/tracker/s;

    .line 35
    .line 36
    return-object v0
.end method

.method q()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->b()Lcom/mbridge/msdk/tracker/x;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v0, v0, Lcom/mbridge/msdk/tracker/x;->c:I

    .line 6
    .line 7
    return v0
.end method

.method r()Lcom/mbridge/msdk/tracker/w;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->b()Lcom/mbridge/msdk/tracker/x;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/mbridge/msdk/tracker/x;->i:Lcom/mbridge/msdk/tracker/w;

    .line 6
    .line 7
    return-object v0
.end method

.method s()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/mbridge/msdk/tracker/k;->o:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/mbridge/msdk/tracker/k;->o:Ljava/lang/String;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget-object v0, Lcom/mbridge/msdk/tracker/k;->o:Ljava/lang/String;

    .line 21
    .line 22
    :goto_0
    return-object v0
.end method

.method t()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "event_table"

    .line 2
    .line 3
    return-object v0
.end method

.method u()Lcom/mbridge/msdk/tracker/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/k;->b:Lcom/mbridge/msdk/tracker/m;

    .line 2
    .line 3
    return-object v0
.end method

.method v()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/k;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method w()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mbridge/msdk/tracker/k;->m:Z

    .line 2
    .line 3
    return v0
.end method

.method x()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/k;->c:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, ""

    .line 8
    .line 9
    if-nez v0, :cond_3

    .line 10
    .line 11
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/k;->d:Lcom/mbridge/msdk/tracker/x;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->p()Lcom/mbridge/msdk/tracker/s;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/mbridge/msdk/tracker/s;->j()V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/mbridge/msdk/tracker/k;->m:Z

    .line 29
    .line 30
    sget-object v0, Lcom/mbridge/msdk/tracker/k;->o:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sput-object v0, Lcom/mbridge/msdk/tracker/k;->o:Ljava/lang/String;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    :goto_0
    sget-object v0, Lcom/mbridge/msdk/tracker/k;->o:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    return-object v0

    .line 54
    :goto_1
    sget-boolean v2, Lcom/mbridge/msdk/tracker/a;->a:Z

    .line 55
    .line 56
    if-eqz v2, :cond_2

    .line 57
    .line 58
    const-string v2, "TrackManager"

    .line 59
    .line 60
    const-string v3, "start error"

    .line 61
    .line 62
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    .line 64
    .line 65
    :cond_2
    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/mbridge/msdk/tracker/k;->m:Z

    .line 67
    .line 68
    :cond_3
    :goto_2
    return-object v1
.end method
