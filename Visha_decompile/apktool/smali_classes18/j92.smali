.class public abstract Lj92;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lh92;)Ljd5;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lh92;->a()Lse0;

    move-result-object p0

    instance-of v0, p0, Ljd5;

    if-eqz v0, :cond_0

    check-cast p0, Ljd5;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    sget-object p0, Ljd5;->i:Ljd5;

    :cond_1
    return-object p0
.end method
