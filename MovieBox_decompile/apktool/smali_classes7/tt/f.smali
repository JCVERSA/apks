.class public Ltt/f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ltt/a;


# instance fields
.field a:[B

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ltt/f;-><init>()V

    .line 3
    iput-object p1, p0, Ltt/f;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public H(Lcom/transsion/transfer/androidasync/p;Lst/a;)V
    .locals 1

    .line 1
    new-instance v0, Lwt/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lwt/f;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lwt/f;->a(Lcom/transsion/transfer/androidasync/p;)Lcom/transsion/transfer/androidasync/future/f;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    new-instance v0, Ltt/f$a;

    .line 11
    .line 12
    invoke-direct {v0, p0, p2}, Ltt/f$a;-><init>(Ltt/f;Lst/a;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lcom/transsion/transfer/androidasync/future/f;->f(Lcom/transsion/transfer/androidasync/future/g;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public J(Lcom/transsion/transfer/androidasync/http/j;Lcom/transsion/transfer/androidasync/s;Lst/a;)V
    .locals 0

    .line 1
    iget-object p1, p0, Ltt/f;->a:[B

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Ltt/f;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Ltt/f;->a:[B

    .line 12
    .line 13
    :cond_0
    iget-object p1, p0, Ltt/f;->a:[B

    .line 14
    .line 15
    invoke-static {p2, p1, p3}, Lcom/transsion/transfer/androidasync/a0;->h(Lcom/transsion/transfer/androidasync/s;[BLst/a;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public K()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ltt/f;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "text/plain"

    .line 2
    .line 3
    return-object v0
.end method

.method public length()I
    .locals 1

    .line 1
    iget-object v0, p0, Ltt/f;->a:[B

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ltt/f;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Ltt/f;->a:[B

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Ltt/f;->a:[B

    .line 14
    .line 15
    array-length v0, v0

    .line 16
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ltt/f;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
