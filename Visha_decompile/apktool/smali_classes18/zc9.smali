.class public abstract Lzc9;
.super Luc9;
.source "SourceFile"


# direct methods
.method public static synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lzc9;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lpc9;)Ljava/util/Iterator;
    .locals 0

    invoke-static {p0}, Lzc9;->l(Lpc9;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lc74;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lzc9;->q(Lc74;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lzc9;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/util/Iterator;)Lpc9;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lzc9$a;

    invoke-direct {v0, p0}, Lzc9$a;-><init>(Ljava/util/Iterator;)V

    invoke-static {v0}, Lzc9;->h(Lpc9;)Lpc9;

    move-result-object p0

    return-object p0
.end method

.method public static final h(Lpc9;)Lpc9;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lwf1;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lwf1;

    invoke-direct {v0, p0}, Lwf1;-><init>(Lpc9;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static i()Lpc9;
    .locals 1

    sget-object v0, Lv93;->a:Lv93;

    return-object v0
.end method

.method public static final j(Lpc9;)Lpc9;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lxc9;

    invoke-direct {v0}, Lxc9;-><init>()V

    invoke-static {p0, v0}, Lzc9;->k(Lpc9;Le74;)Lpc9;

    move-result-object p0

    return-object p0
.end method

.method public static final k(Lpc9;Le74;)Lpc9;
    .locals 2

    instance-of v0, p0, Lj7b;

    if-eqz v0, :cond_0

    check-cast p0, Lj7b;

    invoke-virtual {p0, p1}, Lj7b;->d(Le74;)Lpc9;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcy3;

    new-instance v1, Lyc9;

    invoke-direct {v1}, Lyc9;-><init>()V

    invoke-direct {v0, p0, v1, p1}, Lcy3;-><init>(Lpc9;Le74;Le74;)V

    return-object v0
.end method

.method public static final l(Lpc9;)Ljava/util/Iterator;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lpc9;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static final m(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public static n(Lc74;)Lpc9;
    .locals 2

    const-string v0, "nextFunction"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lpd4;

    new-instance v1, Lwc9;

    invoke-direct {v1, p0}, Lwc9;-><init>(Lc74;)V

    invoke-direct {v0, p0, v1}, Lpd4;-><init>(Lc74;Le74;)V

    invoke-static {v0}, Lzc9;->h(Lpc9;)Lpc9;

    move-result-object p0

    return-object p0
.end method

.method public static o(Lc74;Le74;)Lpc9;
    .locals 1

    const-string v0, "seedFunction"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nextFunction"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lpd4;

    invoke-direct {v0, p0, p1}, Lpd4;-><init>(Lc74;Le74;)V

    return-object v0
.end method

.method public static p(Ljava/lang/Object;Le74;)Lpc9;
    .locals 2

    const-string v0, "nextFunction"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_0

    sget-object p0, Lv93;->a:Lv93;

    goto :goto_0

    :cond_0
    new-instance v0, Lpd4;

    new-instance v1, Lvc9;

    invoke-direct {v1, p0}, Lvc9;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, p1}, Lpd4;-><init>(Lc74;Le74;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static final q(Lc74;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lc74;->invoke()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final r(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public static final varargs s([Ljava/lang/Object;)Lpc9;
    .locals 1

    const-string v0, "elements"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lhi;->K([Ljava/lang/Object;)Lpc9;

    move-result-object p0

    return-object p0
.end method
