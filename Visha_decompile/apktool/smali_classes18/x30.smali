.class public abstract Lx30;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/util/Collection;Lwh1;)Ljava/lang/Object;
    .locals 2

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lw30;

    const/4 v1, 0x0

    new-array v1, v1, [Ld72;

    invoke-interface {p0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ld72;

    invoke-direct {v0, p0}, Lw30;-><init>([Ld72;)V

    invoke-virtual {v0, p1}, Lw30;->c(Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
