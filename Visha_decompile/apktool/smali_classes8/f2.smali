.class public abstract Lf2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ly1;)Ly1;
    .locals 1

    const/16 v0, 0x80

    invoke-static {p0, v0}, Lf2;->b(Ly1;I)Ly1;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ly1;I)Ly1;
    .locals 3

    invoke-virtual {p0, p1}, Ly1;->M(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Lf2;->e(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lf2;->f(Ly1;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " tag but found "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Ly1;I)Ly1;
    .locals 0

    invoke-static {p0, p1}, Lf2;->b(Ly1;I)Ly1;

    move-result-object p0

    invoke-virtual {p0}, Ly1;->F()Ly1;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ly1;)Ly1;
    .locals 1

    const/16 v0, 0x80

    invoke-static {p0, v0}, Lf2;->c(Ly1;I)Ly1;

    move-result-object p0

    return-object p0
.end method

.method public static e(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x40

    if-eq p0, v0, :cond_2

    const/16 v0, 0x80

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc0

    if-eq p0, v0, :cond_0

    const-string p0, "UNIVERSAL"

    return-object p0

    :cond_0
    const-string p0, "PRIVATE"

    return-object p0

    :cond_1
    const-string p0, "CONTEXT"

    return-object p0

    :cond_2
    const-string p0, "APPLICATION"

    return-object p0
.end method

.method public static f(Ly1;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ly1;->I()I

    move-result p0

    invoke-static {p0}, Lf2;->e(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(II)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x40

    const-string v1, "]"

    if-eq p0, v0, :cond_2

    const/16 v0, 0x80

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc0

    if-eq p0, v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[UNIVERSAL "

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[PRIVATE "

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[CONTEXT "

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[APPLICATION "

    goto :goto_0
.end method

.method public static h(Ly1;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ly1;->I()I

    move-result v0

    invoke-virtual {p0}, Ly1;->J()I

    move-result p0

    invoke-static {v0, p0}, Lf2;->g(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
