.class public abstract Lf53;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)Lrqc;
    .locals 1

    invoke-static {p0}, Lnqc;->h(Ljava/lang/String;)Lrqc;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lrx8;->j(Ljava/lang/String;)Lrqc;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {p0}, Lbx6;->b(Ljava/lang/String;)Lrqc;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    invoke-static {p0}, Lmea;->h(Ljava/lang/String;)Lrqc;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    invoke-static {p0}, Ln0;->h(Ljava/lang/String;)Lrqc;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    invoke-static {p0}, Ly43;->h(Ljava/lang/String;)Lrqc;

    move-result-object v0

    :cond_4
    if-nez v0, :cond_5

    invoke-static {p0}, Lba4;->h(Ljava/lang/String;)Lrqc;

    move-result-object v0

    :cond_5
    return-object v0
.end method

.method public static b(Ll1;)Lqqc;
    .locals 1

    invoke-static {p0}, Lnqc;->i(Ll1;)Lqqc;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lrx8;->k(Ll1;)Lqqc;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {p0}, Lmea;->i(Ll1;)Lqqc;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    invoke-static {p0}, Ln0;->i(Ll1;)Lqqc;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    invoke-static {p0}, Ly43;->k(Ll1;)Lqqc;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    invoke-static {p0}, Lba4;->i(Ll1;)Lqqc;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method public static c(Ll1;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lnqc;->k(Ll1;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lrx8;->m(Ll1;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {p0}, Lbx6;->c(Ll1;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    invoke-static {p0}, Lmea;->k(Ll1;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    invoke-static {p0}, Ln0;->k(Ll1;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    invoke-static {p0}, Ly43;->l(Ll1;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    if-nez v0, :cond_5

    invoke-static {p0}, Lba4;->k(Ll1;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    if-nez v0, :cond_6

    invoke-static {p0}, Loo1;->l(Ll1;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    return-object v0
.end method

.method public static d(Ljava/lang/String;)Ll1;
    .locals 2

    invoke-static {p0}, Lnqc;->l(Ljava/lang/String;)Ll1;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lrx8;->n(Ljava/lang/String;)Ll1;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {p0}, Lbx6;->d(Ljava/lang/String;)Ll1;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    invoke-static {p0}, Lmea;->l(Ljava/lang/String;)Ll1;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    invoke-static {p0}, Ln0;->l(Ljava/lang/String;)Ll1;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    invoke-static {p0}, Ly43;->m(Ljava/lang/String;)Ll1;

    move-result-object v0

    :cond_4
    if-nez v0, :cond_5

    invoke-static {p0}, Lba4;->l(Ljava/lang/String;)Ll1;

    move-result-object v0

    :cond_5
    if-nez v0, :cond_6

    const-string v1, "curve25519"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object v0, Lsl1;->c:Ll1;

    :cond_6
    return-object v0
.end method
