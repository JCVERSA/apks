.class abstract Lcom/facebook/biddingkit/logging/g;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/biddingkit/logging/g$b;,
        Lcom/facebook/biddingkit/logging/g$d;,
        Lcom/facebook/biddingkit/logging/g$c;,
        Lcom/facebook/biddingkit/logging/g$e;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0x64

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/facebook/biddingkit/logging/g;->b(Ljava/lang/Throwable;I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static b(Ljava/lang/Throwable;I)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    :try_start_0
    new-instance v1, Lcom/facebook/biddingkit/logging/g$b;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, v2}, Lcom/facebook/biddingkit/logging/g$b;-><init>(Lcom/facebook/biddingkit/logging/g$a;)V

    .line 10
    .line 11
    .line 12
    if-ltz p1, :cond_1

    .line 13
    .line 14
    new-instance v2, Lcom/facebook/biddingkit/logging/g$c;

    .line 15
    .line 16
    invoke-direct {v2, v1, p1}, Lcom/facebook/biddingkit/logging/g$c;-><init>(Lcom/facebook/biddingkit/logging/g$d;I)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move-object v2, v1

    .line 21
    :goto_0
    new-instance p1, Ljava/io/PrintWriter;

    .line 22
    .line 23
    new-instance v3, Lcom/facebook/biddingkit/logging/g$e;

    .line 24
    .line 25
    invoke-direct {v3, v2}, Lcom/facebook/biddingkit/logging/g$e;-><init>(Lcom/facebook/biddingkit/logging/g$d;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p1, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v2}, Lcom/facebook/biddingkit/logging/g$d;->flush()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/facebook/biddingkit/logging/g$b;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    return-object p0

    .line 42
    :catch_0
    return-object v0
.end method
