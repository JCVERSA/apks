.class public abstract La1;
.super Lp1;
.source "SourceFile"


# static fields
.field public static final g:Ld2;


# instance fields
.field public b:Ll1;

.field public c:Lg1;

.field public d:Lp1;

.field public e:I

.field public f:Lp1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, La1$a;

    const-class v1, La1;

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, La1$a;-><init>(Ljava/lang/Class;I)V

    sput-object v0, La1;->g:Ld2;

    return-void
.end method

.method public constructor <init>(Ll1;Lg1;Lp1;ILp1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lp1;-><init>()V

    iput-object p1, p0, La1;->b:Ll1;

    iput-object p2, p0, La1;->c:Lg1;

    iput-object p3, p0, La1;->d:Lp1;

    invoke-static {p4}, La1;->x(I)I

    move-result p1

    iput p1, p0, La1;->e:I

    invoke-static {p4, p5}, La1;->y(ILp1;)Lp1;

    move-result-object p1

    iput-object p1, p0, La1;->f:Lp1;

    return-void
.end method

.method public constructor <init>(Ls1;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Lp1;-><init>()V

    const/4 v0, 0x0

    invoke-static {p1, v0}, La1;->F(Ls1;I)Lp1;

    move-result-object v1

    instance-of v2, v1, Ll1;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    check-cast v1, Ll1;

    iput-object v1, p0, La1;->b:Ll1;

    invoke-static {p1, v3}, La1;->F(Ls1;I)Lp1;

    move-result-object v1

    move v0, v3

    :cond_0
    instance-of v2, v1, Lg1;

    if-eqz v2, :cond_1

    check-cast v1, Lg1;

    iput-object v1, p0, La1;->c:Lg1;

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, La1;->F(Ls1;I)Lp1;

    move-result-object v1

    :cond_1
    instance-of v2, v1, Ly1;

    if-nez v2, :cond_2

    iput-object v1, p0, La1;->d:Lp1;

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, La1;->F(Ls1;I)Lp1;

    move-result-object v1

    :cond_2
    invoke-virtual {p1}, Ls1;->size()I

    move-result p1

    add-int/2addr v0, v3

    if-ne p1, v0, :cond_4

    instance-of p1, v1, Ly1;

    if-eqz p1, :cond_3

    check-cast v1, Ly1;

    invoke-virtual {v1}, Ly1;->J()I

    move-result p1

    invoke-static {p1}, La1;->x(I)I

    move-result p1

    iput p1, p0, La1;->e:I

    invoke-static {v1}, La1;->D(Ly1;)Lp1;

    move-result-object p1

    iput-object p1, p0, La1;->f:Lp1;

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No tagged object found in sequence. Structure doesn\'t seem to be of type External"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "input sequence too large"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static D(Ly1;)Lp1;
    .locals 3

    invoke-static {p0}, Lf2;->a(Ly1;)Ly1;

    invoke-virtual {p0}, Ly1;->J()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {p0, v2}, Ls0;->y(Ly1;Z)Ls0;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lf2;->h(Ly1;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p0, v2}, Lm1;->x(Ly1;Z)Lm1;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Ly1;->E()Lj1;

    move-result-object p0

    invoke-virtual {p0}, Lj1;->j()Lp1;

    move-result-object p0

    return-object p0
.end method

.method public static F(Ls1;I)Lp1;
    .locals 1

    invoke-virtual {p0}, Ls1;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    invoke-virtual {p0, p1}, Ls1;->A(I)Lx0;

    move-result-object p0

    invoke-interface {p0}, Lx0;->j()Lp1;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "too few objects in input sequence"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static x(I)I
    .locals 3

    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid encoding value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static y(ILp1;)Lp1;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p0, Ls0;->c:Ld2;

    :goto_0
    invoke-virtual {p0, p1}, Ld2;->a(Lp1;)Lp1;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Lm1;->c:Ld2;

    goto :goto_0
.end method


# virtual methods
.method public A()Ll1;
    .locals 0

    iget-object p0, p0, La1;->b:Ll1;

    return-object p0
.end method

.method public B()I
    .locals 0

    iget p0, p0, La1;->e:I

    return p0
.end method

.method public C()Lp1;
    .locals 0

    iget-object p0, p0, La1;->f:Lp1;

    return-object p0
.end method

.method public E()Lg1;
    .locals 0

    iget-object p0, p0, La1;->c:Lg1;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, La1;->b:Ll1;

    invoke-static {v0}, Llc7;->b(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, La1;->c:Lg1;

    invoke-static {v1}, Llc7;->b(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, La1;->d:Lp1;

    invoke-static {v1}, Llc7;->b(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget v1, p0, La1;->e:I

    xor-int/2addr v0, v1

    iget-object p0, p0, La1;->f:Lp1;

    invoke-virtual {p0}, Lp1;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public m(Lp1;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, La1;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, La1;

    iget-object v1, p0, La1;->b:Ll1;

    iget-object v3, p1, La1;->b:Ll1;

    invoke-static {v1, v3}, Llc7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, La1;->c:Lg1;

    iget-object v3, p1, La1;->c:Lg1;

    invoke-static {v1, v3}, Llc7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, La1;->d:Lp1;

    iget-object v3, p1, La1;->d:Lp1;

    invoke-static {v1, v3}, Llc7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, La1;->e:I

    iget v3, p1, La1;->e:I

    if-ne v1, v3, :cond_2

    iget-object p0, p0, La1;->f:Lp1;

    iget-object p1, p1, La1;->f:Lp1;

    invoke-virtual {p0, p1}, Lp1;->s(Lp1;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public n(Lo1;Z)V
    .locals 1

    const/16 v0, 0x28

    invoke-virtual {p1, p2, v0}, Lo1;->s(ZI)V

    invoke-virtual {p0}, La1;->w()Ls1;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lp1;->n(Lo1;Z)V

    return-void
.end method

.method public o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public q(Z)I
    .locals 0

    invoke-virtual {p0}, La1;->w()Ls1;

    move-result-object p0

    invoke-virtual {p0, p1}, Lp1;->q(Z)I

    move-result p0

    return p0
.end method

.method public u()Lp1;
    .locals 7

    new-instance v6, Lop1;

    iget-object v1, p0, La1;->b:Ll1;

    iget-object v2, p0, La1;->c:Lg1;

    iget-object v3, p0, La1;->d:Lp1;

    iget v4, p0, La1;->e:I

    iget-object v5, p0, La1;->f:Lp1;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lop1;-><init>(Ll1;Lg1;Lp1;ILp1;)V

    return-object v6
.end method

.method public abstract w()Ls1;
.end method

.method public z()Lp1;
    .locals 0

    iget-object p0, p0, La1;->d:Lp1;

    return-object p0
.end method
