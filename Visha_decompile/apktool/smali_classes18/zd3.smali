.class public abstract Lzd3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a()Lyd3;
    .locals 2

    new-instance v0, Luf0;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-direct {v0, v1}, Luf0;-><init>(Ljava/lang/Thread;)V

    return-object v0
.end method
