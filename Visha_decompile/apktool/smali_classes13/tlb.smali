.class public abstract Ltlb;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Class;)Lqq5;
    .locals 1

    :try_start_0
    sget-object v0, Lkx9;->b:Lkx9;

    invoke-static {p0}, Lsq5;->i(Ljava/lang/Class;)Lqq5;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method
