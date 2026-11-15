.class Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;
.super Lcom/transsion/transfer/androidasync/http/server/n$a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;->t(Lcom/transsion/transfer/androidasync/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final A:Lst/i;

.field final synthetic B:Lcom/transsion/transfer/androidasync/j;

.field final synthetic C:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;

.field q:Lcom/transsion/transfer/androidasync/http/server/n$a;

.field r:Lcom/transsion/transfer/androidasync/http/server/q;

.field s:Ljava/lang/String;

.field t:Ljava/lang/String;

.field u:Z

.field v:Z

.field w:Lcom/transsion/transfer/androidasync/http/server/k;

.field x:Z

.field y:Z

.field final z:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;Lcom/transsion/transfer/androidasync/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->C:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->B:Lcom/transsion/transfer/androidasync/j;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;->a:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/http/server/n$a;-><init>(Lcom/transsion/transfer/androidasync/http/server/n;)V

    .line 8
    .line 9
    .line 10
    iput-object p0, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->q:Lcom/transsion/transfer/androidasync/http/server/n$a;

    .line 11
    .line 12
    new-instance p1, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1$1;

    .line 13
    .line 14
    invoke-direct {p1, p0}, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1$1;-><init>(Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->z:Ljava/lang/Runnable;

    .line 18
    .line 19
    new-instance p1, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1$a;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1$a;-><init>(Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->A:Lst/i;

    .line 25
    .line 26
    return-void
.end method

.method static bridge synthetic Z(Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->b0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic a0(Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/q;->M(Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private b0()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->v:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->u:Z

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->C:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;->a:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->w:Lcom/transsion/transfer/androidasync/http/server/k;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;->n(Lcom/transsion/transfer/androidasync/http/server/d;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->C:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;->a:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->q:Lcom/transsion/transfer/androidasync/http/server/n$a;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->w:Lcom/transsion/transfer/androidasync/http/server/k;

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;->m(Lcom/transsion/transfer/androidasync/http/server/b;Lcom/transsion/transfer/androidasync/http/server/d;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->C:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->B:Lcom/transsion/transfer/androidasync/j;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;->t(Lcom/transsion/transfer/androidasync/j;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->B:Lcom/transsion/transfer/androidasync/j;

    .line 44
    .line 45
    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/p;->close()V

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected U(Lcom/transsion/transfer/androidasync/http/Headers;)Ltt/a;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/server/c;->T()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, " "

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v0, 0x1

    .line 12
    aget-object v0, p1, v0

    .line 13
    .line 14
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->s:Ljava/lang/String;

    .line 15
    .line 16
    const-string v1, "\\?"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    aget-object v0, v0, v1

    .line 24
    .line 25
    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->t:Ljava/lang/String;

    .line 30
    .line 31
    aget-object p1, p1, v1

    .line 32
    .line 33
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/server/c;->m:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->C:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;

    .line 36
    .line 37
    iget-object v1, v1, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;->a:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;

    .line 38
    .line 39
    invoke-virtual {v1, p1, v0}, Lcom/transsion/transfer/androidasync/http/server/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/server/n$d;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const/4 v0, 0x0

    .line 44
    if-nez p1, :cond_0

    .line 45
    .line 46
    return-object v0

    .line 47
    :cond_0
    iget-object v1, p1, Lcom/transsion/transfer/androidasync/http/server/n$d;->c:Ljava/util/regex/Matcher;

    .line 48
    .line 49
    iput-object v1, p0, Lcom/transsion/transfer/androidasync/http/server/n$a;->o:Ljava/util/regex/Matcher;

    .line 50
    .line 51
    iget-object p1, p1, Lcom/transsion/transfer/androidasync/http/server/n$d;->d:Lcom/transsion/transfer/androidasync/http/server/q;

    .line 52
    .line 53
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->r:Lcom/transsion/transfer/androidasync/http/server/q;

    .line 54
    .line 55
    return-object v0
.end method

.method protected V()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/server/c;->getHeaders()Lcom/transsion/transfer/androidasync/http/Headers;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->x:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const-string v1, "Expect"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/http/Headers;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "100-continue"

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/server/c;->pause()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/c;->i:Lcom/transsion/transfer/androidasync/j;

    .line 27
    .line 28
    const-string v1, "HTTP/1.1 100 Continue\r\n\r\n"

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    new-instance v2, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1$b;

    .line 35
    .line 36
    invoke-direct {v2, p0}, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1$b;-><init>(Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v1, v2}, Lcom/transsion/transfer/androidasync/a0;->h(Lcom/transsion/transfer/androidasync/s;[BLst/a;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    new-instance v0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1$c;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->B:Lcom/transsion/transfer/androidasync/j;

    .line 46
    .line 47
    invoke-direct {v0, p0, v1, p0}, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1$c;-><init>(Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;Lcom/transsion/transfer/androidasync/j;Lcom/transsion/transfer/androidasync/http/server/c;)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->w:Lcom/transsion/transfer/androidasync/http/server/k;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->C:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;

    .line 53
    .line 54
    iget-object v1, v1, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;->a:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;

    .line 55
    .line 56
    invoke-virtual {v1, p0, v0}, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;->q(Lcom/transsion/transfer/androidasync/http/server/b;Lcom/transsion/transfer/androidasync/http/server/d;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iput-boolean v0, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->y:Z

    .line 61
    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->r:Lcom/transsion/transfer/androidasync/http/server/q;

    .line 66
    .line 67
    if-nez v0, :cond_2

    .line 68
    .line 69
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->w:Lcom/transsion/transfer/androidasync/http/server/k;

    .line 70
    .line 71
    const/16 v1, 0x194

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/http/server/k;->c(I)Lcom/transsion/transfer/androidasync/http/server/d;

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->w:Lcom/transsion/transfer/androidasync/http/server/k;

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/http/server/k;->d()V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/server/c;->z()Ltt/a;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-interface {v0}, Ltt/a;->K()Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_3

    .line 91
    .line 92
    iget-boolean v0, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->v:Z

    .line 93
    .line 94
    if-eqz v0, :cond_4

    .line 95
    .line 96
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->c0()V

    .line 97
    .line 98
    .line 99
    :cond_4
    return-void
.end method

.method protected X(Lcom/transsion/transfer/androidasync/http/Headers;)Ltt/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->C:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;->a:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;->s(Lcom/transsion/transfer/androidasync/http/Headers;)Ltt/a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method c0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->C:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;->a:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->r:Lcom/transsion/transfer/androidasync/http/server/q;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->w:Lcom/transsion/transfer/androidasync/http/server/k;

    .line 8
    .line 9
    invoke-virtual {v0, v1, p0, v2}, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;->p(Lcom/transsion/transfer/androidasync/http/server/q;Lcom/transsion/transfer/androidasync/http/server/b;Lcom/transsion/transfer/androidasync/http/server/d;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public g(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->C:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1;->a:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->w:Lcom/transsion/transfer/androidasync/http/server/k;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;->n(Lcom/transsion/transfer/androidasync/http/server/d;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->v:Z

    .line 16
    .line 17
    invoke-super {p0, p1}, Lcom/transsion/transfer/androidasync/http/server/c;->g(Ljava/lang/Exception;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/c;->i:Lcom/transsion/transfer/androidasync/j;

    .line 21
    .line 22
    new-instance v1, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1$d;

    .line 23
    .line 24
    invoke-direct {v1, p0}, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1$d;-><init>(Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v1}, Lcom/transsion/transfer/androidasync/p;->F(Lst/d;)V

    .line 28
    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/server/c;->i:Lcom/transsion/transfer/androidasync/j;

    .line 33
    .line 34
    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/p;->close()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->b0()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/server/c;->z()Ltt/a;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-interface {p1}, Ltt/a;->K()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    iget-boolean p1, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->y:Z

    .line 52
    .line 53
    if-nez p1, :cond_2

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->c0()V

    .line 56
    .line 57
    .line 58
    :cond_2
    return-void
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->t:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public j()Lcom/transsion/transfer/androidasync/http/Multimap;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$1$1;->s:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "\\?"

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    array-length v1, v0

    .line 11
    if-ge v1, v2, :cond_0

    .line 12
    .line 13
    new-instance v0, Lcom/transsion/transfer/androidasync/http/Multimap;

    .line 14
    .line 15
    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/http/Multimap;-><init>()V

    .line 16
    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_0
    const/4 v1, 0x1

    .line 20
    aget-object v0, v0, v1

    .line 21
    .line 22
    invoke-static {v0}, Lcom/transsion/transfer/androidasync/http/Multimap;->parseQuery(Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/Multimap;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method
