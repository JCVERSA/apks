.class public Lcom/hunantv/imgo/log/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Z = true

.field private static b:Lcom/hunantv/imgo/log/d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;Z)V
    .locals 1

    .line 4
    sget-object v0, Lcom/hunantv/imgo/log/e;->b:Lcom/hunantv/imgo/log/d;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/hunantv/imgo/log/d;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;Z)V

    goto :goto_0

    .line 6
    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 1

    .line 1
    sget-object v0, Lcom/hunantv/imgo/log/e;->b:Lcom/hunantv/imgo/log/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0, p1, p2}, Lcom/hunantv/imgo/log/d;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 3
    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 1

    sget-object v0, Lcom/hunantv/imgo/log/e;->b:Lcom/hunantv/imgo/log/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/hunantv/imgo/log/d;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 1

    sget-object v0, Lcom/hunantv/imgo/log/e;->b:Lcom/hunantv/imgo/log/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/hunantv/imgo/log/d;->c(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 1

    sget-object v0, Lcom/hunantv/imgo/log/e;->b:Lcom/hunantv/imgo/log/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/hunantv/imgo/log/d;->d(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
