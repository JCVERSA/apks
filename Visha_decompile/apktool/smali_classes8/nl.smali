.class public Lnl;
.super Lj1;
.source "SourceFile"


# instance fields
.field public b:Ll1;

.field public c:Lx0;


# direct methods
.method public constructor <init>(Ll1;Lx0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lj1;-><init>()V

    iput-object p1, p0, Lnl;->b:Ll1;

    iput-object p2, p0, Lnl;->c:Lx0;

    return-void
.end method

.method public constructor <init>(Ls1;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lj1;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v0

    check-cast v0, Ll1;

    iput-object v0, p0, Lnl;->b:Ll1;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object p1

    iput-object p1, p0, Lnl;->c:Lx0;

    return-void
.end method

.method public static m(Ljava/lang/Object;)Lnl;
    .locals 1

    instance-of v0, p0, Lnl;

    if-eqz v0, :cond_0

    check-cast p0, Lnl;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lnl;

    invoke-static {p0}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object p0

    invoke-direct {v0, p0}, Lnl;-><init>(Ls1;)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "null value in getInstance()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public j()Lp1;
    .locals 2

    new-instance v0, Ly0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ly0;-><init>(I)V

    iget-object v1, p0, Lnl;->b:Ll1;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object p0, p0, Lnl;->c:Lx0;

    invoke-virtual {v0, p0}, Ly0;->a(Lx0;)V

    new-instance p0, Laq1;

    invoke-direct {p0, v0}, Laq1;-><init>(Ly0;)V

    return-object p0
.end method

.method public n()Ll1;
    .locals 0

    iget-object p0, p0, Lnl;->b:Ll1;

    return-object p0
.end method

.method public o()Lx0;
    .locals 0

    iget-object p0, p0, Lnl;->c:Lx0;

    return-object p0
.end method
