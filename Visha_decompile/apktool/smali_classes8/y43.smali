.class public abstract Ly43;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lrqc;

.field public static b:Lrqc;

.field public static c:Lrqc;

.field public static d:Lrqc;

.field public static e:Lrqc;

.field public static f:Lrqc;

.field public static g:Lrqc;

.field public static final h:Ljava/util/Hashtable;

.field public static final i:Ljava/util/Hashtable;

.field public static final j:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ly43$a;

    invoke-direct {v0}, Ly43$a;-><init>()V

    sput-object v0, Ly43;->a:Lrqc;

    new-instance v0, Ly43$b;

    invoke-direct {v0}, Ly43$b;-><init>()V

    sput-object v0, Ly43;->b:Lrqc;

    new-instance v0, Ly43$c;

    invoke-direct {v0}, Ly43$c;-><init>()V

    sput-object v0, Ly43;->c:Lrqc;

    new-instance v0, Ly43$d;

    invoke-direct {v0}, Ly43$d;-><init>()V

    sput-object v0, Ly43;->d:Lrqc;

    new-instance v0, Ly43$e;

    invoke-direct {v0}, Ly43$e;-><init>()V

    sput-object v0, Ly43;->e:Lrqc;

    new-instance v0, Ly43$f;

    invoke-direct {v0}, Ly43$f;-><init>()V

    sput-object v0, Ly43;->f:Lrqc;

    new-instance v0, Ly43$g;

    invoke-direct {v0}, Ly43$g;-><init>()V

    sput-object v0, Ly43;->g:Lrqc;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Ly43;->h:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Ly43;->i:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Ly43;->j:Ljava/util/Hashtable;

    sget-object v0, Lwl1;->x:Ll1;

    sget-object v1, Ly43;->a:Lrqc;

    const-string v2, "GostR3410-2001-CryptoPro-A"

    invoke-static {v2, v0, v1}, Ly43;->f(Ljava/lang/String;Ll1;Lrqc;)V

    sget-object v0, Lwl1;->y:Ll1;

    sget-object v1, Ly43;->b:Lrqc;

    const-string v2, "GostR3410-2001-CryptoPro-B"

    invoke-static {v2, v0, v1}, Ly43;->f(Ljava/lang/String;Ll1;Lrqc;)V

    sget-object v0, Lwl1;->z:Ll1;

    sget-object v1, Ly43;->c:Lrqc;

    const-string v2, "GostR3410-2001-CryptoPro-C"

    invoke-static {v2, v0, v1}, Ly43;->f(Ljava/lang/String;Ll1;Lrqc;)V

    sget-object v0, Lwl1;->A:Ll1;

    sget-object v1, Ly43;->a:Lrqc;

    const-string v2, "GostR3410-2001-CryptoPro-XchA"

    invoke-static {v2, v0, v1}, Ly43;->f(Ljava/lang/String;Ll1;Lrqc;)V

    sget-object v0, Lwl1;->B:Ll1;

    sget-object v1, Ly43;->c:Lrqc;

    const-string v2, "GostR3410-2001-CryptoPro-XchB"

    invoke-static {v2, v0, v1}, Ly43;->f(Ljava/lang/String;Ll1;Lrqc;)V

    sget-object v0, Lwv8;->o:Ll1;

    sget-object v1, Ly43;->d:Lrqc;

    const-string v2, "Tc26-Gost-3410-12-256-paramSetA"

    invoke-static {v2, v0, v1}, Ly43;->f(Ljava/lang/String;Ll1;Lrqc;)V

    sget-object v0, Lwv8;->p:Ll1;

    sget-object v1, Ly43;->a:Lrqc;

    const-string v2, "Tc26-Gost-3410-12-256-paramSetB"

    invoke-static {v2, v0, v1}, Ly43;->f(Ljava/lang/String;Ll1;Lrqc;)V

    sget-object v0, Lwv8;->q:Ll1;

    sget-object v1, Ly43;->b:Lrqc;

    const-string v2, "Tc26-Gost-3410-12-256-paramSetC"

    invoke-static {v2, v0, v1}, Ly43;->f(Ljava/lang/String;Ll1;Lrqc;)V

    sget-object v0, Lwv8;->r:Ll1;

    sget-object v1, Ly43;->c:Lrqc;

    const-string v2, "Tc26-Gost-3410-12-256-paramSetD"

    invoke-static {v2, v0, v1}, Ly43;->f(Ljava/lang/String;Ll1;Lrqc;)V

    sget-object v0, Lwv8;->t:Ll1;

    sget-object v1, Ly43;->e:Lrqc;

    const-string v2, "Tc26-Gost-3410-12-512-paramSetA"

    invoke-static {v2, v0, v1}, Ly43;->f(Ljava/lang/String;Ll1;Lrqc;)V

    sget-object v0, Lwv8;->u:Ll1;

    sget-object v1, Ly43;->f:Lrqc;

    const-string v2, "Tc26-Gost-3410-12-512-paramSetB"

    invoke-static {v2, v0, v1}, Ly43;->f(Ljava/lang/String;Ll1;Lrqc;)V

    sget-object v0, Lwv8;->v:Ll1;

    sget-object v1, Ly43;->g:Lrqc;

    const-string v2, "Tc26-Gost-3410-12-512-paramSetC"

    invoke-static {v2, v0, v1}, Ly43;->f(Ljava/lang/String;Ll1;Lrqc;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 0

    invoke-static {p0}, Ly43;->g(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lt43;)Lt43;
    .locals 0

    invoke-static {p0}, Ly43;->e(Lt43;)Lt43;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lt43;Ljava/math/BigInteger;Ljava/math/BigInteger;)Lsqc;
    .locals 0

    invoke-static {p0, p1, p2}, Ly43;->d(Lt43;Ljava/math/BigInteger;Ljava/math/BigInteger;)Lsqc;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lt43;Ljava/math/BigInteger;Ljava/math/BigInteger;)Lsqc;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lt43;->g(Ljava/math/BigInteger;Ljava/math/BigInteger;)Li53;

    move-result-object p0

    invoke-static {p0}, Lfgc;->a(Li53;)V

    new-instance p1, Lsqc;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lsqc;-><init>(Li53;Z)V

    return-object p1
.end method

.method public static e(Lt43;)Lt43;
    .locals 0

    return-object p0
.end method

.method public static f(Ljava/lang/String;Ll1;Lrqc;)V
    .locals 1

    sget-object v0, Ly43;->h:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ly43;->j:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Ly43;->i:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static g(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 2

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-static {p0}, Ljp4;->b(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static h(Ljava/lang/String;)Lrqc;
    .locals 0

    invoke-static {p0}, Ly43;->m(Ljava/lang/String;)Ll1;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ly43;->j(Ll1;)Lrqc;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static i(Ljava/lang/String;)Lqqc;
    .locals 0

    invoke-static {p0}, Ly43;->m(Ljava/lang/String;)Ll1;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ly43;->k(Ll1;)Lqqc;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static j(Ll1;)Lrqc;
    .locals 1

    sget-object v0, Ly43;->i:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrqc;

    return-object p0
.end method

.method public static k(Ll1;)Lqqc;
    .locals 0

    invoke-static {p0}, Ly43;->j(Ll1;)Lrqc;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lrqc;->d()Lqqc;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static l(Ll1;)Ljava/lang/String;
    .locals 1

    sget-object v0, Ly43;->j:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static m(Ljava/lang/String;)Ll1;
    .locals 1

    sget-object v0, Ly43;->h:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll1;

    return-object p0
.end method
