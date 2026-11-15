.class public Lcom/transsion/transfer/androidasync/t;
.super Lcom/transsion/transfer/androidasync/q;
.source "source.java"

# interfaces
.implements Lcom/transsion/transfer/androidasync/p;
.implements Lst/d;


# instance fields
.field private d:Lcom/transsion/transfer/androidasync/p;

.field private e:I

.field f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/q;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public C(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/transsion/transfer/androidasync/t;->f:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->B()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    if-eqz p2, :cond_1

    .line 10
    .line 11
    iget p1, p0, Lcom/transsion/transfer/androidasync/t;->e:I

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    add-int/2addr p1, v0

    .line 18
    iput p1, p0, Lcom/transsion/transfer/androidasync/t;->e:I

    .line 19
    .line 20
    :cond_1
    invoke-static {p0, p2}, Lcom/transsion/transfer/androidasync/a0;->a(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    .line 21
    .line 22
    .line 23
    if-eqz p2, :cond_2

    .line 24
    .line 25
    iget p1, p0, Lcom/transsion/transfer/androidasync/t;->e:I

    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    sub-int/2addr p1, p2

    .line 32
    iput p1, p0, Lcom/transsion/transfer/androidasync/t;->e:I

    .line 33
    .line 34
    :cond_2
    return-void
.end method

.method public N(Lcom/transsion/transfer/androidasync/p;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/t;->d:Lcom/transsion/transfer/androidasync/p;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {v0, v1}, Lcom/transsion/transfer/androidasync/p;->F(Lst/d;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/t;->d:Lcom/transsion/transfer/androidasync/p;

    .line 10
    .line 11
    invoke-interface {p1, p0}, Lcom/transsion/transfer/androidasync/p;->F(Lst/d;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/t;->d:Lcom/transsion/transfer/androidasync/p;

    .line 15
    .line 16
    new-instance v0, Lcom/transsion/transfer/androidasync/t$a;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/transsion/transfer/androidasync/t$a;-><init>(Lcom/transsion/transfer/androidasync/t;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, v0}, Lcom/transsion/transfer/androidasync/p;->h(Lst/a;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public a()Lcom/transsion/transfer/androidasync/AsyncServer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/t;->d:Lcom/transsion/transfer/androidasync/p;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/p;->a()Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public close()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/transsion/transfer/androidasync/t;->f:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/t;->d:Lcom/transsion/transfer/androidasync/p;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/p;->close()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public isPaused()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/t;->d:Lcom/transsion/transfer/androidasync/p;

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
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/t;->d:Lcom/transsion/transfer/androidasync/p;

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
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/t;->d:Lcom/transsion/transfer/androidasync/p;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/p;->resume()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/t;->d:Lcom/transsion/transfer/androidasync/p;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/p;->s()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
