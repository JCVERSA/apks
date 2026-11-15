.class public final Lcom/transsion/push/utils/n;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/push/utils/n$d;,
        Lcom/transsion/push/utils/n$c;
    }
.end annotation


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

.method private static a(ILjava/lang/String;Lcom/transsion/push/utils/n$c;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lyj/a;->a()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    invoke-static {v0}, Lel/a;->a(Landroid/content/Context;)Lgl/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Lgl/a;->f(Z)Lgl/a;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {}, Lyj/a;->c()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0, v1}, Lgl/b;->b(Z)Lgl/b;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lgl/a;

    .line 23
    .line 24
    const/16 v1, 0x2710

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lgl/b;->a(I)Lgl/b;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lgl/a;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lgl/b;->c(I)Lgl/b;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lgl/a;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Lgl/b;->d(Ljava/lang/String;)Lgl/b;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lgl/a;

    .line 43
    .line 44
    invoke-virtual {v0}, Lgl/a;->e()Lel/b;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    new-instance v1, Lcom/transsion/push/utils/n$b;

    .line 49
    .line 50
    invoke-direct {v1, p1, p2, p0}, Lcom/transsion/push/utils/n$b;-><init>(Ljava/lang/String;Lcom/transsion/push/utils/n$c;I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lel/b;->a(Lcom/transsion/http/impl/r;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :catch_0
    if-eqz p2, :cond_0

    .line 58
    .line 59
    const/4 p0, 0x0

    .line 60
    invoke-interface {p2, p1, p0}, Lcom/transsion/push/utils/n$c;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    return-void
.end method

.method public static b(ILjava/util/List;Lcom/transsion/push/utils/n$d;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_0

    .line 36
    .line 37
    new-instance v3, Lcom/transsion/push/utils/n$a;

    .line 38
    .line 39
    invoke-direct {v3, v0, v1, p2}, Lcom/transsion/push/utils/n$a;-><init>(Ljava/util/HashMap;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/transsion/push/utils/n$d;)V

    .line 40
    .line 41
    .line 42
    invoke-static {p0, v2, v3}, Lcom/transsion/push/utils/n;->a(ILjava/lang/String;Lcom/transsion/push/utils/n$c;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    return-void
.end method
