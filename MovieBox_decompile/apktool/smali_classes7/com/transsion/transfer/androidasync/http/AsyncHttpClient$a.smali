.class Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lst/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->s(Lcom/transsion/transfer/androidasync/http/j;ILcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Lut/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/transsion/transfer/androidasync/http/j;

.field final synthetic c:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;

.field final synthetic d:Lut/a;

.field final synthetic e:Lcom/transsion/transfer/androidasync/http/g$g;

.field final synthetic f:I

.field final synthetic g:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lcom/transsion/transfer/androidasync/http/j;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Lut/a;Lcom/transsion/transfer/androidasync/http/g$g;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$a;->g:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$a;->b:Lcom/transsion/transfer/androidasync/http/j;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$a;->c:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$a;->d:Lut/a;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$a;->e:Lcom/transsion/transfer/androidasync/http/g$g;

    .line 10
    .line 11
    iput p6, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$a;->f:I

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/j;)V
    .locals 13

    .line 1
    iget-boolean v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$a;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Lst/d$a;

    .line 9
    .line 10
    invoke-direct {p1}, Lst/d$a;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-interface {p2, p1}, Lcom/transsion/transfer/androidasync/p;->F(Lst/d;)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Lst/a$a;

    .line 17
    .line 18
    invoke-direct {p1}, Lst/a$a;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-interface {p2, p1}, Lcom/transsion/transfer/androidasync/p;->h(Lst/a;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p2}, Lcom/transsion/transfer/androidasync/p;->close()V

    .line 25
    .line 26
    .line 27
    new-instance p1, Ljava/lang/AssertionError;

    .line 28
    .line 29
    const-string p2, "double connect callback"

    .line 30
    .line 31
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    throw p1

    .line 35
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$a;->a:Z

    .line 37
    .line 38
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$a;->b:Lcom/transsion/transfer/androidasync/http/j;

    .line 39
    .line 40
    const-string v1, "socket connected"

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/http/j;->u(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$a;->c:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/future/n;->isCancelled()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    if-eqz p2, :cond_2

    .line 54
    .line 55
    invoke-interface {p2}, Lcom/transsion/transfer/androidasync/p;->close()V

    .line 56
    .line 57
    .line 58
    :cond_2
    return-void

    .line 59
    :cond_3
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$a;->c:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;

    .line 60
    .line 61
    iget-object v1, v0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;->h:Ljava/lang/Runnable;

    .line 62
    .line 63
    if-eqz v1, :cond_4

    .line 64
    .line 65
    iget-object v0, v0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;->g:Lcom/transsion/transfer/androidasync/future/a;

    .line 66
    .line 67
    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/future/a;->cancel()Z

    .line 68
    .line 69
    .line 70
    :cond_4
    if-eqz p1, :cond_5

    .line 71
    .line 72
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$a;->g:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    .line 73
    .line 74
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$a;->c:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;

    .line 75
    .line 76
    iget-object v5, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$a;->b:Lcom/transsion/transfer/androidasync/http/j;

    .line 77
    .line 78
    iget-object v6, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$a;->d:Lut/a;

    .line 79
    .line 80
    const/4 v4, 0x0

    .line 81
    move-object v3, p1

    .line 82
    invoke-static/range {v1 .. v6}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->k(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/l;Lcom/transsion/transfer/androidasync/http/j;Lut/a;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_5
    iget-object v12, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$a;->e:Lcom/transsion/transfer/androidasync/http/g$g;

    .line 87
    .line 88
    iput-object p2, v12, Lcom/transsion/transfer/androidasync/http/g$c;->f:Lcom/transsion/transfer/androidasync/j;

    .line 89
    .line 90
    iget-object v10, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$a;->c:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;

    .line 91
    .line 92
    iput-object p2, v10, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;->f:Lcom/transsion/transfer/androidasync/j;

    .line 93
    .line 94
    iget-object v7, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$a;->g:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    .line 95
    .line 96
    iget-object v8, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$a;->b:Lcom/transsion/transfer/androidasync/http/j;

    .line 97
    .line 98
    iget v9, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$a;->f:I

    .line 99
    .line 100
    iget-object v11, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$a;->d:Lut/a;

    .line 101
    .line 102
    invoke-static/range {v7 .. v12}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->f(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lcom/transsion/transfer/androidasync/http/j;ILcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Lut/a;Lcom/transsion/transfer/androidasync/http/g$g;)V

    .line 103
    .line 104
    .line 105
    return-void
.end method
