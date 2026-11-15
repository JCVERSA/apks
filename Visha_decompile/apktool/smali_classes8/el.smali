.class public Lel;
.super Lj1;
.source "SourceFile"


# instance fields
.field public b:Ll1;

.field public c:Lt1;


# direct methods
.method public constructor <init>(Ls1;)V
    .locals 2

    invoke-direct {p0}, Lj1;-><init>()V

    invoke-virtual {p1}, Ls1;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v0

    invoke-static {v0}, Ll1;->D(Ljava/lang/Object;)Ll1;

    move-result-object v0

    iput-object v0, p0, Lel;->b:Ll1;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object p1

    invoke-static {p1}, Lt1;->y(Ljava/lang/Object;)Lt1;

    move-result-object p1

    iput-object p1, p0, Lel;->c:Lt1;

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

.method public static n(Ljava/lang/Object;)Lel;
    .locals 1

    instance-of v0, p0, Lel;

    if-eqz v0, :cond_0

    check-cast p0, Lel;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lel;

    invoke-static {p0}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object p0

    invoke-direct {v0, p0}, Lel;-><init>(Ls1;)V

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

    iget-object v1, p0, Lel;->b:Ll1;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object p0, p0, Lel;->c:Lt1;

    invoke-virtual {v0, p0}, Ly0;->a(Lx0;)V

    new-instance p0, Laq1;

    invoke-direct {p0, v0}, Laq1;-><init>(Ly0;)V

    return-object p0
.end method

.method public m()Ll1;
    .locals 1

    new-instance v0, Ll1;

    iget-object p0, p0, Lel;->b:Ll1;

    invoke-virtual {p0}, Ll1;->B()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ll1;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
