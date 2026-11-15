.class public Lmh/g;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lokhttp3/EventListener$Factory;


# instance fields
.field private a:Lokhttp3/EventListener$Factory;

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lmh/g;->b:I

    .line 3
    iput-boolean v0, p0, Lmh/g;->c:Z

    .line 4
    iput-boolean v0, p0, Lmh/g;->d:Z

    .line 5
    iput-boolean v0, p0, Lmh/g;->e:Z

    .line 6
    iput-boolean v0, p0, Lmh/g;->f:Z

    .line 7
    const-string v0, "All"

    iput-object v0, p0, Lmh/g;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lokhttp3/EventListener$Factory;IZ)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lmh/g;->d:Z

    .line 10
    iput-boolean v0, p0, Lmh/g;->e:Z

    .line 11
    iput-boolean v0, p0, Lmh/g;->f:Z

    .line 12
    const-string v0, "All"

    iput-object v0, p0, Lmh/g;->h:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lmh/g;->a:Lokhttp3/EventListener$Factory;

    .line 14
    iput p2, p0, Lmh/g;->b:I

    .line 15
    iput-boolean p3, p0, Lmh/g;->c:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmh/g;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lmh/g;->f:Z

    .line 2
    .line 3
    return-void
.end method

.method public create(Lokhttp3/Call;)Lokhttp3/EventListener;
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lmh/g;->a:Lokhttp3/EventListener$Factory;

    .line 4
    .line 5
    if-eqz v2, :cond_0

    .line 6
    .line 7
    invoke-interface {v2, p1}, Lokhttp3/EventListener$Factory;->create(Lokhttp3/Call;)Lokhttp3/EventListener;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    :goto_0
    move-object v4, v2

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const/4 v2, 0x0

    .line 14
    goto :goto_0

    .line 15
    :goto_1
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {}, Lmh/d;->d()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const-string v3, "NetworkMonitor"

    .line 32
    .line 33
    if-nez v2, :cond_3

    .line 34
    .line 35
    invoke-static {p1}, Lmh/d;->a(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_1
    sget-object p1, Lmh/o;->a:Lcom/transsion/core/log/ObjectLogUtils;

    .line 43
    .line 44
    new-array v1, v1, [Ljava/lang/Object;

    .line 45
    .line 46
    const-string v2, "==== MonitorFactory host : ${host} does not matche ===="

    .line 47
    .line 48
    aput-object v2, v1, v0

    .line 49
    .line 50
    invoke-virtual {p1, v3, v1}, Lcom/transsion/core/log/ObjectLogUtils;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    if-nez v4, :cond_2

    .line 54
    .line 55
    sget-object v4, Lokhttp3/EventListener;->NONE:Lokhttp3/EventListener;

    .line 56
    .line 57
    :cond_2
    return-object v4

    .line 58
    :cond_3
    :goto_2
    sget-object p1, Lmh/o;->a:Lcom/transsion/core/log/ObjectLogUtils;

    .line 59
    .line 60
    new-array v1, v1, [Ljava/lang/Object;

    .line 61
    .line 62
    const-string v2, "==== MonitorFactory host : ${host} matches ===="

    .line 63
    .line 64
    aput-object v2, v1, v0

    .line 65
    .line 66
    invoke-virtual {p1, v3, v1}, Lcom/transsion/core/log/ObjectLogUtils;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    new-instance p1, Lmh/f;

    .line 70
    .line 71
    iget v5, p0, Lmh/g;->b:I

    .line 72
    .line 73
    iget-boolean v6, p0, Lmh/g;->c:Z

    .line 74
    .line 75
    iget-object v7, p0, Lmh/g;->h:Ljava/lang/String;

    .line 76
    .line 77
    iget-boolean v8, p0, Lmh/g;->f:Z

    .line 78
    .line 79
    iget-object v9, p0, Lmh/g;->g:Ljava/lang/String;

    .line 80
    .line 81
    iget-boolean v10, p0, Lmh/g;->d:Z

    .line 82
    .line 83
    iget-boolean v11, p0, Lmh/g;->e:Z

    .line 84
    .line 85
    move-object v3, p1

    .line 86
    invoke-direct/range {v3 .. v11}, Lmh/f;-><init>(Lokhttp3/EventListener;IZLjava/lang/String;ZLjava/lang/String;ZZ)V

    .line 87
    .line 88
    .line 89
    return-object p1
.end method
