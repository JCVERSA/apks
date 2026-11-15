.class public abstract Ltt/e;
.super Ltt/d;
.source "source.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Ltt/d;-><init>(Ljava/lang/String;JLjava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public d(Lcom/transsion/transfer/androidasync/s;Lst/a;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ltt/e;->e()Ljava/io/InputStream;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1, p2}, Lcom/transsion/transfer/androidasync/a0;->f(Ljava/io/InputStream;Lcom/transsion/transfer/androidasync/s;Lst/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p1

    .line 10
    invoke-interface {p2, p1}, Lst/a;->g(Ljava/lang/Exception;)V

    .line 11
    .line 12
    .line 13
    :goto_0
    return-void
.end method

.method protected abstract e()Ljava/io/InputStream;
.end method
