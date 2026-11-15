.class public abstract Lv0d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkdb;->g(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "getRawType(this)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
