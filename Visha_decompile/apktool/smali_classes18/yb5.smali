.class public abstract Lyb5;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lu95;Lk92;Lkd9;)Ljava/lang/Object;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reader"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lho8;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p2, v1, v2, v1}, Lho8;-><init>(Lkd9;[CILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :try_start_0
    new-instance p2, Lxy9;

    sget-object v3, Lkotlinx/serialization/json/internal/WriteMode;->OBJ:Lkotlinx/serialization/json/internal/WriteMode;

    invoke-interface {p1}, Lk92;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p0

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Lxy9;-><init>(Lu95;Lkotlinx/serialization/json/internal/WriteMode;Lc3;Lkotlinx/serialization/descriptors/a;Lxy9$a;)V

    invoke-virtual {p2, p1}, Lxy9;->B(Lk92;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0}, Lc3;->w()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lho8;->U()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lho8;->U()V

    throw p0
.end method

.method public static final b(Lu95;Lsc5;Lnd9;Ljava/lang/Object;)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "writer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializer"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lyy9;

    sget-object v1, Lkotlinx/serialization/json/internal/WriteMode;->OBJ:Lkotlinx/serialization/json/internal/WriteMode;

    invoke-static {}, Lkotlinx/serialization/json/internal/WriteMode;->values()[Lkotlinx/serialization/json/internal/WriteMode;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [Lna5;

    invoke-direct {v0, p1, p0, v1, v2}, Lyy9;-><init>(Lsc5;Lu95;Lkotlinx/serialization/json/internal/WriteMode;[Lna5;)V

    invoke-virtual {v0, p2, p3}, Lyy9;->C(Lnd9;Ljava/lang/Object;)V

    return-void
.end method
