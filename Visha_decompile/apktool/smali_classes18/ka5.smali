.class public abstract Lka5;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lx95;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lla5;->c(Ljava/lang/String;)Lkotlinx/serialization/json/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lx95;->a(Lkotlinx/serialization/json/b;)Z

    move-result p0

    return p0
.end method

.method public static final b(Leb5;Ljava/lang/String;Ljava/lang/Boolean;)Lkotlinx/serialization/json/b;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lla5;->a(Ljava/lang/Boolean;)Lkotlinx/serialization/json/c;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Leb5;->b(Ljava/lang/String;Lkotlinx/serialization/json/b;)Lkotlinx/serialization/json/b;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Leb5;Ljava/lang/String;Ljava/lang/Number;)Lkotlinx/serialization/json/b;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lla5;->b(Ljava/lang/Number;)Lkotlinx/serialization/json/c;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Leb5;->b(Ljava/lang/String;Lkotlinx/serialization/json/b;)Lkotlinx/serialization/json/b;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Leb5;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/b;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lla5;->c(Ljava/lang/String;)Lkotlinx/serialization/json/c;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Leb5;->b(Ljava/lang/String;Lkotlinx/serialization/json/b;)Lkotlinx/serialization/json/b;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Leb5;Ljava/lang/String;Le74;)Lkotlinx/serialization/json/b;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builderAction"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lx95;

    invoke-direct {v0}, Lx95;-><init>()V

    invoke-interface {p2, v0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lx95;->b()Lkotlinx/serialization/json/a;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Leb5;->b(Ljava/lang/String;Lkotlinx/serialization/json/b;)Lkotlinx/serialization/json/b;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Leb5;Ljava/lang/String;Le74;)Lkotlinx/serialization/json/b;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builderAction"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Leb5;

    invoke-direct {v0}, Leb5;-><init>()V

    invoke-interface {p2, v0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Leb5;->a()Lkotlinx/serialization/json/JsonObject;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Leb5;->b(Ljava/lang/String;Lkotlinx/serialization/json/b;)Lkotlinx/serialization/json/b;

    move-result-object p0

    return-object p0
.end method
