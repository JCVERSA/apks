.class public Lcom/transsion/transfer/androidasync/http/server/s;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ltt/a;


# instance fields
.field a:I

.field private b:Ljava/lang/String;

.field c:Lcom/transsion/transfer/androidasync/p;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/transsion/transfer/androidasync/http/server/s;->a:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/server/s;->b:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public H(Lcom/transsion/transfer/androidasync/p;Lst/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/server/s;->c:Lcom/transsion/transfer/androidasync/p;

    .line 2
    .line 3
    invoke-interface {p1, p2}, Lcom/transsion/transfer/androidasync/p;->h(Lst/a;)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Lst/d$a;

    .line 7
    .line 8
    invoke-direct {p2}, Lst/d$a;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, p2}, Lcom/transsion/transfer/androidasync/p;->F(Lst/d;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public J(Lcom/transsion/transfer/androidasync/http/j;Lcom/transsion/transfer/androidasync/s;Lst/a;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/server/s;->c:Lcom/transsion/transfer/androidasync/p;

    .line 2
    .line 3
    invoke-static {p1, p2, p3}, Lcom/transsion/transfer/androidasync/a0;->c(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/s;Lst/a;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/server/s;->c:Lcom/transsion/transfer/androidasync/p;

    .line 7
    .line 8
    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/p;->isPaused()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/server/s;->c:Lcom/transsion/transfer/androidasync/p;

    .line 15
    .line 16
    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/p;->resume()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public K()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/s;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public length()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/transfer/androidasync/http/server/s;->a:I

    .line 2
    .line 3
    return v0
.end method
