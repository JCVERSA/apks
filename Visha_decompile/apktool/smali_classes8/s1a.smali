.class public Ls1a;
.super Lj1;
.source "SourceFile"


# instance fields
.field public b:Loa;

.field public c:Ls0;


# direct methods
.method public constructor <init>(Loa;Ls0;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lj1;-><init>()V

    iput-object p2, p0, Ls1a;->c:Ls0;

    iput-object p1, p0, Ls1a;->b:Loa;

    return-void
.end method

.method public constructor <init>(Loa;Lx0;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lj1;-><init>()V

    new-instance v0, Lnp1;

    invoke-direct {v0, p2}, Lnp1;-><init>(Lx0;)V

    iput-object v0, p0, Ls1a;->c:Ls0;

    iput-object p1, p0, Ls1a;->b:Loa;

    return-void
.end method

.method public constructor <init>(Loa;[B)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lj1;-><init>()V

    new-instance v0, Lnp1;

    invoke-direct {v0, p2}, Lnp1;-><init>([B)V

    iput-object v0, p0, Ls1a;->c:Ls0;

    iput-object p1, p0, Ls1a;->b:Loa;

    return-void
.end method

.method public constructor <init>(Ls1;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lj1;-><init>()V

    invoke-virtual {p1}, Ls1;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ls1;->B()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Loa;->o(Ljava/lang/Object;)Loa;

    move-result-object v0

    iput-object v0, p0, Ls1a;->b:Loa;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ls0;->z(Ljava/lang/Object;)Ls0;

    move-result-object p1

    iput-object p1, p0, Ls1a;->c:Ls0;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad sequence size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ls1;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static n(Ljava/lang/Object;)Ls1a;
    .locals 1

    instance-of v0, p0, Ls1a;

    if-eqz v0, :cond_0

    check-cast p0, Ls1a;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Ls1a;

    invoke-static {p0}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object p0

    invoke-direct {v0, p0}, Ls1a;-><init>(Ls1;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public j()Lp1;
    .locals 2

    new-instance v0, Ly0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ly0;-><init>(I)V

    iget-object v1, p0, Ls1a;->b:Loa;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object p0, p0, Ls1a;->c:Ls0;

    invoke-virtual {v0, p0}, Ly0;->a(Lx0;)V

    new-instance p0, Laq1;

    invoke-direct {p0, v0}, Laq1;-><init>(Ly0;)V

    return-object p0
.end method

.method public m()Loa;
    .locals 0

    iget-object p0, p0, Ls1a;->b:Loa;

    return-object p0
.end method

.method public o()Ls0;
    .locals 0

    iget-object p0, p0, Ls1a;->c:Ls0;

    return-object p0
.end method

.method public p()Lp1;
    .locals 0

    iget-object p0, p0, Ls1a;->c:Ls0;

    invoke-virtual {p0}, Ls0;->A()[B

    move-result-object p0

    invoke-static {p0}, Lp1;->t([B)Lp1;

    move-result-object p0

    return-object p0
.end method
