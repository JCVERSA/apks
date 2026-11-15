.class Lcom/transsion/transfer/androidasync/http/f0$a;
.super Lcom/transsion/transfer/androidasync/http/HybiParser;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/http/f0;->N(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic y:Lcom/transsion/transfer/androidasync/http/f0;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/http/f0;Lcom/transsion/transfer/androidasync/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/f0$a;->y:Lcom/transsion/transfer/androidasync/http/f0;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/transsion/transfer/androidasync/http/HybiParser;-><init>(Lcom/transsion/transfer/androidasync/p;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected A(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/f0$a;->y:Lcom/transsion/transfer/androidasync/http/f0;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/transsion/transfer/androidasync/http/f0;->m(Lcom/transsion/transfer/androidasync/http/f0;)Lcom/transsion/transfer/androidasync/http/b0$a;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected B(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/f0$a;->y:Lcom/transsion/transfer/androidasync/http/f0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/transfer/androidasync/http/f0;->o(Lcom/transsion/transfer/androidasync/http/f0;)Lcom/transsion/transfer/androidasync/http/b0$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/f0$a;->y:Lcom/transsion/transfer/androidasync/http/f0;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/transsion/transfer/androidasync/http/f0;->o(Lcom/transsion/transfer/androidasync/http/f0;)Lcom/transsion/transfer/androidasync/http/b0$b;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Lcom/transsion/transfer/androidasync/http/b0$b;->a(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method protected H(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/f0$a;->y:Lcom/transsion/transfer/androidasync/http/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/transsion/transfer/androidasync/http/f0;->f:Lst/a;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lst/a;->g(Ljava/lang/Exception;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method protected J([B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/f0$a;->y:Lcom/transsion/transfer/androidasync/http/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/transsion/transfer/androidasync/http/f0;->c:Lcom/transsion/transfer/androidasync/n;

    .line 4
    .line 5
    new-instance v1, Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 6
    .line 7
    invoke-direct {v1, p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;-><init>([B)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/n;->n(Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method protected x(ILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/f0$a;->y:Lcom/transsion/transfer/androidasync/http/f0;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/transsion/transfer/androidasync/http/f0;->p(Lcom/transsion/transfer/androidasync/http/f0;)Lcom/transsion/transfer/androidasync/j;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/p;->close()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method protected y(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/f0$a;->y:Lcom/transsion/transfer/androidasync/http/f0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/transfer/androidasync/http/f0;->r(Lcom/transsion/transfer/androidasync/http/f0;)Lcom/transsion/transfer/androidasync/http/b0$c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/f0$a;->y:Lcom/transsion/transfer/androidasync/http/f0;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/transsion/transfer/androidasync/http/f0;->r(Lcom/transsion/transfer/androidasync/http/f0;)Lcom/transsion/transfer/androidasync/http/b0$c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Lcom/transsion/transfer/androidasync/http/b0$c;->a(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method protected z([B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/f0$a;->y:Lcom/transsion/transfer/androidasync/http/f0;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;-><init>([B)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/transsion/transfer/androidasync/http/f0;->t(Lcom/transsion/transfer/androidasync/http/f0;Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
