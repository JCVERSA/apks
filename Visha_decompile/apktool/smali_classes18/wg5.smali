.class public abstract Lwg5;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lvg5;Lxw0;Ljd5;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/c;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jvmMetadataVersion"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2}, Lvg5;->c(Lxw0;Ljd5;)Lvg5$a;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lvg5$a;->a()Lkotlin/reflect/jvm/internal/impl/load/kotlin/c;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final b(Lvg5;Ls65;Ljd5;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/c;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaClass"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jvmMetadataVersion"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2}, Lvg5;->b(Ls65;Ljd5;)Lvg5$a;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lvg5$a;->a()Lkotlin/reflect/jvm/internal/impl/load/kotlin/c;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
