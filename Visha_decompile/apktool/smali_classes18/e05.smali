.class public abstract Le05;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/String;Lef5;)Lkotlinx/serialization/descriptors/a;
    .locals 2

    const-string v0, "name"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "primitiveSerializer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ld05;

    new-instance v1, Le05$a;

    invoke-direct {v1, p1}, Le05$a;-><init>(Lef5;)V

    invoke-direct {v0, p0, v1}, Ld05;-><init>(Ljava/lang/String;Lod4;)V

    return-object v0
.end method
