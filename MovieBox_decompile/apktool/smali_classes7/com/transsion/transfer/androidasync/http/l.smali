.class abstract Lcom/transsion/transfer/androidasync/http/l;
.super Lcom/transsion/transfer/androidasync/t;
.source "source.java"

# interfaces
.implements Lcom/transsion/transfer/androidasync/p;
.implements Lcom/transsion/transfer/androidasync/http/k;
.implements Lcom/transsion/transfer/androidasync/http/g$i;


# instance fields
.field private g:Lst/a;

.field private h:Lcom/transsion/transfer/androidasync/http/j;

.field private i:Lcom/transsion/transfer/androidasync/j;

.field protected j:Lcom/transsion/transfer/androidasync/http/Headers;

.field k:Z

.field l:I

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field private o:Z

.field p:Lcom/transsion/transfer/androidasync/s;


# direct methods
.method public constructor <init>(Lcom/transsion/transfer/androidasync/http/j;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/t;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsion/transfer/androidasync/http/l$b;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/transsion/transfer/androidasync/http/l$b;-><init>(Lcom/transsion/transfer/androidasync/http/l;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/l;->g:Lst/a;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/transsion/transfer/androidasync/http/l;->k:Z

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/transsion/transfer/androidasync/http/l;->o:Z

    .line 16
    .line 17
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/l;->h:Lcom/transsion/transfer/androidasync/http/j;

    .line 18
    .line 19
    return-void
.end method

.method static bridge synthetic O(Lcom/transsion/transfer/androidasync/http/l;)Lcom/transsion/transfer/androidasync/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/transfer/androidasync/http/l;->i:Lcom/transsion/transfer/androidasync/j;

    .line 2
    .line 3
    return-object p0
.end method

.method private T()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/l;->i:Lcom/transsion/transfer/androidasync/j;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/transfer/androidasync/http/l$c;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/transsion/transfer/androidasync/http/l$c;-><init>(Lcom/transsion/transfer/androidasync/http/l;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lcom/transsion/transfer/androidasync/p;->F(Lst/d;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public E()Lcom/transsion/transfer/androidasync/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/l;->p:Lcom/transsion/transfer/androidasync/s;

    .line 2
    .line 3
    return-object v0
.end method

.method protected M(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/transsion/transfer/androidasync/q;->M(Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/http/l;->T()V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/l;->i:Lcom/transsion/transfer/androidasync/j;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-interface {p1, v0}, Lcom/transsion/transfer/androidasync/s;->B(Lst/j;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/l;->i:Lcom/transsion/transfer/androidasync/j;

    .line 14
    .line 15
    invoke-interface {p1, v0}, Lcom/transsion/transfer/androidasync/s;->i(Lst/a;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/l;->i:Lcom/transsion/transfer/androidasync/j;

    .line 19
    .line 20
    invoke-interface {p1, v0}, Lcom/transsion/transfer/androidasync/p;->h(Lst/a;)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lcom/transsion/transfer/androidasync/http/l;->k:Z

    .line 25
    .line 26
    return-void
.end method

.method protected P()V
    .locals 0

    .line 1
    return-void
.end method

.method protected Q()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/l;->h:Lcom/transsion/transfer/androidasync/http/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/http/j;->e()Ltt/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/l;->h:Lcom/transsion/transfer/androidasync/http/j;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/l;->p:Lcom/transsion/transfer/androidasync/s;

    .line 12
    .line 13
    new-instance v3, Lcom/transsion/transfer/androidasync/http/l$a;

    .line 14
    .line 15
    invoke-direct {v3, p0}, Lcom/transsion/transfer/androidasync/http/l$a;-><init>(Lcom/transsion/transfer/androidasync/http/l;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1, v2, v3}, Ltt/a;->J(Lcom/transsion/transfer/androidasync/http/j;Lcom/transsion/transfer/androidasync/s;Lst/a;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, v0}, Lcom/transsion/transfer/androidasync/http/l;->R(Ljava/lang/Exception;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method protected abstract R(Ljava/lang/Exception;)V
.end method

.method S(Lcom/transsion/transfer/androidasync/j;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/l;->i:Lcom/transsion/transfer/androidasync/j;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/l;->g:Lst/a;

    .line 7
    .line 8
    invoke-interface {p1, v0}, Lcom/transsion/transfer/androidasync/p;->h(Lst/a;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public a()Lcom/transsion/transfer/androidasync/AsyncServer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/l;->i:Lcom/transsion/transfer/androidasync/j;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/j;->a()Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/transfer/androidasync/http/l;->l:I

    .line 2
    .line 3
    return v0
.end method

.method public c(I)Lcom/transsion/transfer/androidasync/http/g$i;
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/transfer/androidasync/http/l;->l:I

    .line 2
    .line 3
    return-object p0
.end method

.method public close()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/transsion/transfer/androidasync/t;->close()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/http/l;->T()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public e()Lcom/transsion/transfer/androidasync/http/Headers;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/l;->j:Lcom/transsion/transfer/androidasync/http/Headers;

    .line 2
    .line 3
    return-object v0
.end method

.method public f(Lcom/transsion/transfer/androidasync/s;)Lcom/transsion/transfer/androidasync/http/g$i;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/l;->p:Lcom/transsion/transfer/androidasync/s;

    .line 2
    .line 3
    return-object p0
.end method

.method public m(Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/g$i;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/l;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public o(Lcom/transsion/transfer/androidasync/p;)Lcom/transsion/transfer/androidasync/http/g$i;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/t;->N(Lcom/transsion/transfer/androidasync/p;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public protocol()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/l;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public r(Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/g$i;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/l;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public s()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/l;->e()Lcom/transsion/transfer/androidasync/http/Headers;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Content-Type"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/http/Headers;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/transsion/transfer/androidasync/http/Multimap;->parseSemicolonDelimited(Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/Multimap;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-string v1, "charset"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/http/Multimap;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    return-object v0
.end method

.method public socket()Lcom/transsion/transfer/androidasync/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/l;->i:Lcom/transsion/transfer/androidasync/j;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/l;->j:Lcom/transsion/transfer/androidasync/http/Headers;

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
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/l;->m:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, " "

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget v3, p0, Lcom/transsion/transfer/androidasync/http/l;->l:I

    .line 26
    .line 27
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/l;->n:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/http/Headers;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0
.end method

.method public v(Lcom/transsion/transfer/androidasync/http/Headers;)Lcom/transsion/transfer/androidasync/http/g$i;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/l;->j:Lcom/transsion/transfer/androidasync/http/Headers;

    .line 2
    .line 3
    return-object p0
.end method
