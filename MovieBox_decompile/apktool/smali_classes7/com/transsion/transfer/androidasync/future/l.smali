.class public Lcom/transsion/transfer/androidasync/future/l;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Ljava/util/Iterator;Lcom/transsion/transfer/androidasync/future/z;Lcom/transsion/transfer/androidasync/future/w;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/transfer/androidasync/future/l;->b(Ljava/util/Iterator;Lcom/transsion/transfer/androidasync/future/z;Lcom/transsion/transfer/androidasync/future/w;Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic b(Ljava/util/Iterator;Lcom/transsion/transfer/androidasync/future/z;Lcom/transsion/transfer/androidasync/future/w;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/transfer/androidasync/future/l;->e(Ljava/util/Iterator;Lcom/transsion/transfer/androidasync/future/z;Lcom/transsion/transfer/androidasync/future/w;Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static c(Ljava/lang/Iterable;Lcom/transsion/transfer/androidasync/future/z;)Lcom/transsion/transfer/androidasync/future/f;
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/transfer/androidasync/future/w;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/future/w;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {p0, p1, v0, v1}, Lcom/transsion/transfer/androidasync/future/l;->e(Ljava/util/Iterator;Lcom/transsion/transfer/androidasync/future/z;Lcom/transsion/transfer/androidasync/future/w;Ljava/lang/Exception;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static d([Ljava/lang/Object;Lcom/transsion/transfer/androidasync/future/z;)Lcom/transsion/transfer/androidasync/future/f;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0, p1}, Lcom/transsion/transfer/androidasync/future/l;->c(Ljava/lang/Iterable;Lcom/transsion/transfer/androidasync/future/z;)Lcom/transsion/transfer/androidasync/future/f;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private static e(Ljava/util/Iterator;Lcom/transsion/transfer/androidasync/future/z;Lcom/transsion/transfer/androidasync/future/w;Ljava/lang/Exception;)V
    .locals 1

    .line 1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    invoke-interface {p1, p3}, Lcom/transsion/transfer/androidasync/future/z;->then(Ljava/lang/Object;)Lcom/transsion/transfer/androidasync/future/f;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    new-instance v0, Lcom/transsion/transfer/androidasync/future/j;

    .line 19
    .line 20
    invoke-direct {v0, p2}, Lcom/transsion/transfer/androidasync/future/j;-><init>(Lcom/transsion/transfer/androidasync/future/w;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p3, v0}, Lcom/transsion/transfer/androidasync/future/f;->j(Lcom/transsion/transfer/androidasync/future/x;)Lcom/transsion/transfer/androidasync/future/f;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    new-instance v0, Lcom/transsion/transfer/androidasync/future/k;

    .line 28
    .line 29
    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/transfer/androidasync/future/k;-><init>(Ljava/util/Iterator;Lcom/transsion/transfer/androidasync/future/z;Lcom/transsion/transfer/androidasync/future/w;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p3, v0}, Lcom/transsion/transfer/androidasync/future/f;->e(Lcom/transsion/transfer/androidasync/future/d;)Lcom/transsion/transfer/androidasync/future/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catch_0
    move-exception p3

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    if-nez p3, :cond_1

    .line 39
    .line 40
    new-instance p0, Ljava/lang/Exception;

    .line 41
    .line 42
    const-string p1, "empty list"

    .line 43
    .line 44
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, p0}, Lcom/transsion/transfer/androidasync/future/w;->G(Ljava/lang/Exception;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {p2, p3}, Lcom/transsion/transfer/androidasync/future/w;->G(Ljava/lang/Exception;)Z

    .line 52
    .line 53
    .line 54
    :goto_1
    return-void
.end method
