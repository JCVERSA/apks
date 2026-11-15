.class public abstract Ln0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lrqc;

.field public static final b:Ljava/util/Hashtable;

.field public static final c:Ljava/util/Hashtable;

.field public static final d:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ln0$a;

    invoke-direct {v0}, Ln0$a;-><init>()V

    sput-object v0, Ln0;->a:Lrqc;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Ln0;->b:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Ln0;->c:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Ln0;->d:Ljava/util/Hashtable;

    sget-object v0, Lo0;->a:Ll1;

    sget-object v1, Ln0;->a:Lrqc;

    const-string v2, "FRP256v1"

    invoke-static {v2, v0, v1}, Ln0;->f(Ljava/lang/String;Ll1;Lrqc;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 0

    invoke-static {p0}, Ln0;->g(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lt43;)Lt43;
    .locals 0

    invoke-static {p0}, Ln0;->e(Lt43;)Lt43;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lt43;Ljava/lang/String;)Lsqc;
    .locals 0

    invoke-static {p0, p1}, Ln0;->d(Lt43;Ljava/lang/String;)Lsqc;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lt43;Ljava/lang/String;)Lsqc;
    .locals 1

    new-instance v0, Lsqc;

    invoke-static {p1}, Ljp4;->b(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lsqc;-><init>(Lt43;[B)V

    invoke-virtual {v0}, Lsqc;->m()Li53;

    move-result-object p0

    invoke-static {p0}, Lfgc;->a(Li53;)V

    return-object v0
.end method

.method public static e(Lt43;)Lt43;
    .locals 0

    return-object p0
.end method

.method public static f(Ljava/lang/String;Ll1;Lrqc;)V
    .locals 2

    sget-object v0, Ln0;->b:Ljava/util/Hashtable;

    invoke-static {p0}, Lu0a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ln0;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Ln0;->c:Ljava/util/Hashtable;

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

    invoke-static {p0}, Ln0;->l(Ljava/lang/String;)Ll1;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ln0;->j(Ll1;)Lrqc;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static i(Ll1;)Lqqc;
    .locals 0

    invoke-static {p0}, Ln0;->j(Ll1;)Lrqc;

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

.method public static j(Ll1;)Lrqc;
    .locals 1

    sget-object v0, Ln0;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrqc;

    return-object p0
.end method

.method public static k(Ll1;)Ljava/lang/String;
    .locals 1

    sget-object v0, Ln0;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static l(Ljava/lang/String;)Ll1;
    .locals 1

    sget-object v0, Ln0;->b:Ljava/util/Hashtable;

    invoke-static {p0}, Lu0a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll1;

    return-object p0
.end method
