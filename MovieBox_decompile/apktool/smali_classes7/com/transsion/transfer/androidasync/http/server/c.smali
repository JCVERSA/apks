.class public abstract Lcom/transsion/transfer/androidasync/http/server/c;
.super Lcom/transsion/transfer/androidasync/t;
.source "source.java"

# interfaces
.implements Lcom/transsion/transfer/androidasync/http/server/b;
.implements Lst/a;


# instance fields
.field private g:Ljava/lang/String;

.field private h:Lcom/transsion/transfer/androidasync/http/Headers;

.field i:Lcom/transsion/transfer/androidasync/j;

.field private j:Ljava/util/HashMap;

.field private k:Lst/a;

.field l:Lcom/transsion/transfer/androidasync/v$a;

.field m:Ljava/lang/String;

.field n:Ltt/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/t;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsion/transfer/androidasync/http/Headers;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/http/Headers;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/c;->h:Lcom/transsion/transfer/androidasync/http/Headers;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/c;->j:Ljava/util/HashMap;

    .line 17
    .line 18
    new-instance v0, Lcom/transsion/transfer/androidasync/http/server/c$a;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/transsion/transfer/androidasync/http/server/c$a;-><init>(Lcom/transsion/transfer/androidasync/http/server/c;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/c;->k:Lst/a;

    .line 24
    .line 25
    new-instance v0, Lcom/transsion/transfer/androidasync/http/server/c$b;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/transsion/transfer/androidasync/http/server/c$b;-><init>(Lcom/transsion/transfer/androidasync/http/server/c;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/c;->l:Lcom/transsion/transfer/androidasync/v$a;

    .line 31
    .line 32
    return-void
.end method

.method static bridge synthetic O(Lcom/transsion/transfer/androidasync/http/server/c;)Lcom/transsion/transfer/androidasync/http/Headers;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/transfer/androidasync/http/server/c;->h:Lcom/transsion/transfer/androidasync/http/Headers;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic P(Lcom/transsion/transfer/androidasync/http/server/c;)Lst/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/transfer/androidasync/http/server/c;->k:Lst/a;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic Q(Lcom/transsion/transfer/androidasync/http/server/c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/transfer/androidasync/http/server/c;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic R(Lcom/transsion/transfer/androidasync/http/server/c;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/server/c;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static synthetic S(Lcom/transsion/transfer/androidasync/http/server/c;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/q;->M(Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public F(Lst/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/c;->i:Lcom/transsion/transfer/androidasync/j;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/transsion/transfer/androidasync/p;->F(Lst/d;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public G()Lst/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/c;->i:Lcom/transsion/transfer/androidasync/j;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/p;->G()Lst/d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public T()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/c;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method protected U(Lcom/transsion/transfer/androidasync/http/Headers;)Ltt/a;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method protected abstract V()V
.end method

.method protected W()V
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 2
    .line 3
    const-string v1, "not http!"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method protected X(Lcom/transsion/transfer/androidasync/http/Headers;)Ltt/a;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method Y(Lcom/transsion/transfer/androidasync/j;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/server/c;->i:Lcom/transsion/transfer/androidasync/j;

    .line 2
    .line 3
    new-instance p1, Lcom/transsion/transfer/androidasync/v;

    .line 4
    .line 5
    invoke-direct {p1}, Lcom/transsion/transfer/androidasync/v;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/c;->i:Lcom/transsion/transfer/androidasync/j;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Lcom/transsion/transfer/androidasync/p;->F(Lst/d;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/c;->l:Lcom/transsion/transfer/androidasync/v$a;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/transsion/transfer/androidasync/v;->a(Lcom/transsion/transfer/androidasync/v$a;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/server/c;->i:Lcom/transsion/transfer/androidasync/j;

    .line 19
    .line 20
    new-instance v0, Lst/a$a;

    .line 21
    .line 22
    invoke-direct {v0}, Lst/a$a;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, v0}, Lcom/transsion/transfer/androidasync/p;->h(Lst/a;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public g(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/q;->M(Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public getHeaders()Lcom/transsion/transfer/androidasync/http/Headers;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/c;->h:Lcom/transsion/transfer/androidasync/http/Headers;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSocket()Lcom/transsion/transfer/androidasync/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/c;->i:Lcom/transsion/transfer/androidasync/j;

    .line 2
    .line 3
    return-object v0
.end method

.method public isPaused()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/c;->i:Lcom/transsion/transfer/androidasync/j;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/p;->isPaused()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/c;->i:Lcom/transsion/transfer/androidasync/j;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/p;->pause()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public resume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/c;->i:Lcom/transsion/transfer/androidasync/j;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/p;->resume()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/c;->h:Lcom/transsion/transfer/androidasync/http/Headers;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/server/c;->g:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/http/Headers;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/c;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public z()Ltt/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/c;->n:Ltt/a;

    .line 2
    .line 3
    return-object v0
.end method
