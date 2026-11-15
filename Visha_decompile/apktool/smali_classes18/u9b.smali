.class public abstract Lu9b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lu95;Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;Lk92;)Ljava/lang/Object;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "discriminator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializer"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/json/internal/b;

    invoke-interface {p3}, Lk92;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v1

    invoke-direct {v0, p0, p2, p1, v1}, Lkotlinx/serialization/json/internal/b;-><init>(Lu95;Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;Lkotlinx/serialization/descriptors/a;)V

    invoke-virtual {v0, p3}, Le3;->B(Lk92;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
