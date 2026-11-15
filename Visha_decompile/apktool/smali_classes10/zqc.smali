.class public Lzqc;
.super Lj1;
.source "SourceFile"


# instance fields
.field public final b:Lg1;

.field public final c:I

.field public final d:Loa;


# direct methods
.method public constructor <init>(ILoa;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lj1;-><init>()V

    new-instance v0, Lg1;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lg1;-><init>(J)V

    iput-object v0, p0, Lzqc;->b:Lg1;

    iput p1, p0, Lzqc;->c:I

    iput-object p2, p0, Lzqc;->d:Loa;

    return-void
.end method

.method public constructor <init>(Ls1;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lj1;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v0

    invoke-static {v0}, Lg1;->y(Ljava/lang/Object;)Lg1;

    move-result-object v0

    iput-object v0, p0, Lzqc;->b:Lg1;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v0

    invoke-static {v0}, Lg1;->y(Ljava/lang/Object;)Lg1;

    move-result-object v0

    invoke-virtual {v0}, Lg1;->F()I

    move-result v0

    iput v0, p0, Lzqc;->c:I

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object p1

    invoke-static {p1}, Loa;->o(Ljava/lang/Object;)Loa;

    move-result-object p1

    iput-object p1, p0, Lzqc;->d:Loa;

    return-void
.end method

.method public static n(Ljava/lang/Object;)Lzqc;
    .locals 1

    instance-of v0, p0, Lzqc;

    if-eqz v0, :cond_0

    check-cast p0, Lzqc;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lzqc;

    invoke-static {p0}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object p0

    invoke-direct {v0, p0}, Lzqc;-><init>(Ls1;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public j()Lp1;
    .locals 4

    new-instance v0, Ly0;

    invoke-direct {v0}, Ly0;-><init>()V

    iget-object v1, p0, Lzqc;->b:Lg1;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    new-instance v1, Lg1;

    iget v2, p0, Lzqc;->c:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lg1;-><init>(J)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object p0, p0, Lzqc;->d:Loa;

    invoke-virtual {v0, p0}, Ly0;->a(Lx0;)V

    new-instance p0, Laq1;

    invoke-direct {p0, v0}, Laq1;-><init>(Ly0;)V

    return-object p0
.end method

.method public m()I
    .locals 0

    iget p0, p0, Lzqc;->c:I

    return p0
.end method

.method public o()Loa;
    .locals 0

    iget-object p0, p0, Lzqc;->d:Loa;

    return-object p0
.end method
