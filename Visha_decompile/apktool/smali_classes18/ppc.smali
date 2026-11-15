.class public abstract Lppc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlinx/serialization/descriptors/a;Ltd9;)Lkotlinx/serialization/descriptors/a;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/a;->getKind()Lid9;

    move-result-object v0

    sget-object v1, Lid9$a;->a:Lid9$a;

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, p0}, Lmh1;->b(Ltd9;Lkotlinx/serialization/descriptors/a;)Lkotlinx/serialization/descriptors/a;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0, p1}, Lppc;->a(Lkotlinx/serialization/descriptors/a;Ltd9;)Lkotlinx/serialization/descriptors/a;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lkotlinx/serialization/descriptors/a;->isInline()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lkotlinx/serialization/descriptors/a;->d(I)Lkotlinx/serialization/descriptors/a;

    move-result-object p0

    invoke-static {p0, p1}, Lppc;->a(Lkotlinx/serialization/descriptors/a;Ltd9;)Lkotlinx/serialization/descriptors/a;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0
.end method

.method public static final b(Lu95;Lkotlinx/serialization/descriptors/a;)Lkotlinx/serialization/json/internal/WriteMode;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "desc"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/a;->getKind()Lid9;

    move-result-object v0

    instance-of v1, v0, Lmc8;

    if-eqz v1, :cond_0

    sget-object p0, Lkotlinx/serialization/json/internal/WriteMode;->POLY_OBJ:Lkotlinx/serialization/json/internal/WriteMode;

    goto :goto_1

    :cond_0
    sget-object v1, Lkotlinx/serialization/descriptors/b$b;->a:Lkotlinx/serialization/descriptors/b$b;

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p0, Lkotlinx/serialization/json/internal/WriteMode;->LIST:Lkotlinx/serialization/json/internal/WriteMode;

    goto :goto_1

    :cond_1
    sget-object v1, Lkotlinx/serialization/descriptors/b$c;->a:Lkotlinx/serialization/descriptors/b$c;

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lkotlinx/serialization/descriptors/a;->d(I)Lkotlinx/serialization/descriptors/a;

    move-result-object p1

    invoke-virtual {p0}, Lu95;->a()Ltd9;

    move-result-object v0

    invoke-static {p1, v0}, Lppc;->a(Lkotlinx/serialization/descriptors/a;Ltd9;)Lkotlinx/serialization/descriptors/a;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/a;->getKind()Lid9;

    move-result-object v0

    instance-of v1, v0, Lef8;

    if-nez v1, :cond_4

    sget-object v1, Lid9$b;->a:Lid9$b;

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lu95;->d()Lda5;

    move-result-object p0

    invoke-virtual {p0}, Lda5;->b()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lkotlinx/serialization/json/internal/WriteMode;->LIST:Lkotlinx/serialization/json/internal/WriteMode;

    goto :goto_1

    :cond_3
    invoke-static {p1}, Loa5;->c(Lkotlinx/serialization/descriptors/a;)Lkotlinx/serialization/json/internal/JsonEncodingException;

    move-result-object p0

    throw p0

    :cond_4
    :goto_0
    sget-object p0, Lkotlinx/serialization/json/internal/WriteMode;->MAP:Lkotlinx/serialization/json/internal/WriteMode;

    goto :goto_1

    :cond_5
    sget-object p0, Lkotlinx/serialization/json/internal/WriteMode;->OBJ:Lkotlinx/serialization/json/internal/WriteMode;

    :goto_1
    return-object p0
.end method
