.class public final Landroidx/datastore/core/MutexUtilsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u001aJ\u0010\u0007\u001a\u00028\u0000\"\u0004\u0008\u0000\u0010\u0000*\u00020\u00012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00028\u00000\u0004H\u0081\u0008\u00f8\u0001\u0000\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0002 \u0001\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\t"
    }
    d2 = {
        "R",
        "Lnw6;",
        "",
        "owner",
        "Lkotlin/Function1;",
        "",
        "block",
        "withTryLock",
        "(Lnw6;Ljava/lang/Object;Le74;)Ljava/lang/Object;",
        "datastore-core_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final withTryLock(Lnw6;Ljava/lang/Object;Le74;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lnw6;",
            "Ljava/lang/Object;",
            "Le74;",
            ")TR;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lnw6;->a(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p2, v2}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lj05;->b(I)V

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Lnw6;->b(Ljava/lang/Object;)V

    :cond_0
    invoke-static {v1}, Lj05;->a(I)V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-static {v1}, Lj05;->b(I)V

    if-eqz v0, :cond_1

    invoke-interface {p0, p1}, Lnw6;->b(Ljava/lang/Object;)V

    :cond_1
    invoke-static {v1}, Lj05;->a(I)V

    throw p2
.end method

.method public static synthetic withTryLock$default(Lnw6;Ljava/lang/Object;Le74;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    :cond_0
    const-string p3, "<this>"

    invoke-static {p0, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "block"

    invoke-static {p2, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lnw6;->a(Ljava/lang/Object;)Z

    move-result p3

    :try_start_0
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, v0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p4}, Lj05;->b(I)V

    if-eqz p3, :cond_1

    invoke-interface {p0, p1}, Lnw6;->b(Ljava/lang/Object;)V

    :cond_1
    invoke-static {p4}, Lj05;->a(I)V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-static {p4}, Lj05;->b(I)V

    if-eqz p3, :cond_2

    invoke-interface {p0, p1}, Lnw6;->b(Ljava/lang/Object;)V

    :cond_2
    invoke-static {p4}, Lj05;->a(I)V

    throw p2
.end method
