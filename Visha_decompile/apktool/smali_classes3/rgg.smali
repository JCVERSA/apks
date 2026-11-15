.class public abstract Lrgg;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Throwable;)V
    .locals 1

    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_1

    instance-of v0, p0, Ljava/lang/StackOverflowError;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p0, Ljava/lang/Error;

    throw p0

    :cond_1
    :goto_0
    return-void
.end method
