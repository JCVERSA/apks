.class public abstract Lp1;
.super Lj1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lj1;-><init>()V

    return-void
.end method

.method public static t([B)Lp1;
    .locals 1

    new-instance v0, Lf1;

    invoke-direct {v0, p0}, Lf1;-><init>([B)V

    :try_start_0
    invoke-virtual {v0}, Lf1;->D()Lp1;

    move-result-object p0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Extra data detected in stream"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "cannot recognise object in stream"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lx0;

    if-eqz v1, :cond_1

    check-cast p1, Lx0;

    invoke-interface {p1}, Lx0;->j()Lp1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lp1;->m(Lp1;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract hashCode()I
.end method

.method public final j()Lp1;
    .locals 0

    return-object p0
.end method

.method public k(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lo1;->b(Ljava/io/OutputStream;Ljava/lang/String;)Lo1;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Lo1;->w(Lp1;Z)V

    invoke-virtual {p1}, Lo1;->c()V

    return-void
.end method

.method public abstract m(Lp1;)Z
.end method

.method public abstract n(Lo1;Z)V
.end method

.method public abstract o()Z
.end method

.method public p(Ljava/io/OutputStream;)V
    .locals 1

    invoke-static {p1}, Lo1;->a(Ljava/io/OutputStream;)Lo1;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lo1;->w(Lp1;Z)V

    invoke-virtual {p1}, Lo1;->c()V

    return-void
.end method

.method public abstract q(Z)I
.end method

.method public final r(Lx0;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lx0;->j()Lp1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lp1;->m(Lp1;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final s(Lp1;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    invoke-virtual {p0, p1}, Lp1;->m(Lp1;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public u()Lp1;
    .locals 0

    return-object p0
.end method

.method public v()Lp1;
    .locals 0

    return-object p0
.end method
