.class public abstract Lcom/transsion/http/impl/StringCallback;
.super Lcom/transsion/http/impl/q;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/http/impl/q;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static w([BLjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    move-object p0, v0

    .line 11
    :goto_0
    if-eqz p0, :cond_1

    .line 12
    .line 13
    const-string p1, "\ufeff"

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    :cond_1
    return-object p0
.end method


# virtual methods
.method public m(I[BLjava/lang/Throwable;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/http/impl/o;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2, p1, p3}, Lcom/transsion/http/impl/o;-><init>(Lcom/transsion/http/impl/StringCallback;[BILjava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/transsion/http/impl/q;->k()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/transsion/http/impl/q;->j()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    new-instance p1, Ljava/lang/Thread;

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method

.method public s(I[B)V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/http/impl/l;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2, p1}, Lcom/transsion/http/impl/l;-><init>(Lcom/transsion/http/impl/StringCallback;[BI)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/transsion/http/impl/q;->k()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/transsion/http/impl/q;->j()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    new-instance p1, Ljava/lang/Thread;

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method

.method public abstract x(ILjava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract y(ILjava/lang/String;)V
.end method
