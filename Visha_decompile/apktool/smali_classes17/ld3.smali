.class public abstract Lld3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic a(Ljava/lang/Throwable;)Z
    .locals 0

    invoke-static {p0}, Lld3;->b(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method public static final b(Ljava/lang/Throwable;)Z
    .locals 2

    instance-of v0, p0, Landroid/os/TransactionTooLargeException;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lld3;->b(Ljava/lang/Throwable;)Z

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method
