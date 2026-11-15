.class public Lgn8;
.super Lj1;
.source "SourceFile"


# static fields
.field public static final f:Loa;

.field public static final g:Loa;

.field public static final h:Lg1;

.field public static final i:Lg1;


# instance fields
.field public b:Loa;

.field public c:Loa;

.field public d:Lg1;

.field public e:Lg1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Loa;

    sget-object v1, Ln47;->i:Ll1;

    sget-object v2, Lup1;->c:Lup1;

    invoke-direct {v0, v1, v2}, Loa;-><init>(Ll1;Lx0;)V

    sput-object v0, Lgn8;->f:Loa;

    new-instance v1, Loa;

    sget-object v2, Lyu7;->N1:Ll1;

    invoke-direct {v1, v2, v0}, Loa;-><init>(Ll1;Lx0;)V

    sput-object v1, Lgn8;->g:Loa;

    new-instance v0, Lg1;

    const-wide/16 v1, 0x14

    invoke-direct {v0, v1, v2}, Lg1;-><init>(J)V

    sput-object v0, Lgn8;->h:Lg1;

    new-instance v0, Lg1;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lg1;-><init>(J)V

    sput-object v0, Lgn8;->i:Lg1;

    return-void
.end method

.method public constructor <init>(Loa;Loa;Lg1;Lg1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lj1;-><init>()V

    iput-object p1, p0, Lgn8;->b:Loa;

    iput-object p2, p0, Lgn8;->c:Loa;

    iput-object p3, p0, Lgn8;->d:Lg1;

    iput-object p4, p0, Lgn8;->e:Lg1;

    return-void
.end method

.method public constructor <init>(Ls1;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lj1;-><init>()V

    sget-object v0, Lgn8;->f:Loa;

    iput-object v0, p0, Lgn8;->b:Loa;

    sget-object v0, Lgn8;->g:Loa;

    iput-object v0, p0, Lgn8;->c:Loa;

    sget-object v0, Lgn8;->h:Lg1;

    iput-object v0, p0, Lgn8;->d:Lg1;

    sget-object v0, Lgn8;->i:Lg1;

    iput-object v0, p0, Lgn8;->e:Lg1;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ls1;->size()I

    move-result v1

    if-eq v0, v1, :cond_4

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v1

    check-cast v1, Ly1;

    invoke-virtual {v1}, Ly1;->J()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    invoke-static {v1, v3}, Lg1;->x(Ly1;Z)Lg1;

    move-result-object v1

    iput-object v1, p0, Lgn8;->e:Lg1;

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown tag"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {v1, v3}, Lg1;->x(Ly1;Z)Lg1;

    move-result-object v1

    iput-object v1, p0, Lgn8;->d:Lg1;

    goto :goto_1

    :cond_2
    invoke-static {v1, v3}, Loa;->n(Ly1;Z)Loa;

    move-result-object v1

    iput-object v1, p0, Lgn8;->c:Loa;

    goto :goto_1

    :cond_3
    invoke-static {v1, v3}, Loa;->n(Ly1;Z)Loa;

    move-result-object v1

    iput-object v1, p0, Lgn8;->b:Loa;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static n(Ljava/lang/Object;)Lgn8;
    .locals 1

    instance-of v0, p0, Lgn8;

    if-eqz v0, :cond_0

    check-cast p0, Lgn8;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lgn8;

    invoke-static {p0}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object p0

    invoke-direct {v0, p0}, Lgn8;-><init>(Ls1;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public j()Lp1;
    .locals 5

    new-instance v0, Ly0;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ly0;-><init>(I)V

    iget-object v1, p0, Lgn8;->b:Loa;

    sget-object v2, Lgn8;->f:Loa;

    invoke-virtual {v1, v2}, Lj1;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    new-instance v1, Ldq1;

    const/4 v3, 0x0

    iget-object v4, p0, Lgn8;->b:Loa;

    invoke-direct {v1, v2, v3, v4}, Ldq1;-><init>(ZILx0;)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    :cond_0
    iget-object v1, p0, Lgn8;->c:Loa;

    sget-object v3, Lgn8;->g:Loa;

    invoke-virtual {v1, v3}, Lj1;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ldq1;

    iget-object v3, p0, Lgn8;->c:Loa;

    invoke-direct {v1, v2, v2, v3}, Ldq1;-><init>(ZILx0;)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    :cond_1
    iget-object v1, p0, Lgn8;->d:Lg1;

    sget-object v3, Lgn8;->h:Lg1;

    invoke-virtual {v1, v3}, Lp1;->s(Lp1;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ldq1;

    const/4 v3, 0x2

    iget-object v4, p0, Lgn8;->d:Lg1;

    invoke-direct {v1, v2, v3, v4}, Ldq1;-><init>(ZILx0;)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    :cond_2
    iget-object v1, p0, Lgn8;->e:Lg1;

    sget-object v3, Lgn8;->i:Lg1;

    invoke-virtual {v1, v3}, Lp1;->s(Lp1;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ldq1;

    const/4 v3, 0x3

    iget-object p0, p0, Lgn8;->e:Lg1;

    invoke-direct {v1, v2, v3, p0}, Ldq1;-><init>(ZILx0;)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    :cond_3
    new-instance p0, Laq1;

    invoke-direct {p0, v0}, Laq1;-><init>(Ly0;)V

    return-object p0
.end method

.method public m()Loa;
    .locals 0

    iget-object p0, p0, Lgn8;->b:Loa;

    return-object p0
.end method

.method public o()Loa;
    .locals 0

    iget-object p0, p0, Lgn8;->c:Loa;

    return-object p0
.end method

.method public p()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lgn8;->d:Lg1;

    invoke-virtual {p0}, Lg1;->A()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method
