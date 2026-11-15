.class public final Lk1;
.super Lp1;
.source "SourceFile"


# static fields
.field public static final c:Ld2;


# instance fields
.field public final b:Ld1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lk1$a;

    const-class v1, Lk1;

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lk1$a;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lk1;->c:Ld2;

    return-void
.end method

.method public constructor <init>(Ld1;)V
    .locals 0

    invoke-direct {p0}, Lp1;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lk1;->b:Ld1;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'baseGraphicString\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static w([B)Lk1;
    .locals 1

    new-instance v0, Lk1;

    invoke-static {p0}, Ld1;->w([B)Ld1;

    move-result-object p0

    invoke-direct {v0, p0}, Lk1;-><init>(Ld1;)V

    return-object v0
.end method


# virtual methods
.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lk1;->b:Ld1;

    invoke-virtual {p0}, Ld1;->hashCode()I

    move-result p0

    not-int p0, p0

    return p0
.end method

.method public m(Lp1;)Z
    .locals 1

    instance-of v0, p1, Lk1;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lk1;

    iget-object p0, p0, Lk1;->b:Ld1;

    iget-object p1, p1, Lk1;->b:Ld1;

    invoke-virtual {p0, p1}, Ld1;->m(Lp1;)Z

    move-result p0

    return p0
.end method

.method public n(Lo1;Z)V
    .locals 1

    const/4 v0, 0x7

    invoke-virtual {p1, p2, v0}, Lo1;->s(ZI)V

    iget-object p0, p0, Lk1;->b:Ld1;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Ld1;->n(Lo1;Z)V

    return-void
.end method

.method public o()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public q(Z)I
    .locals 0

    iget-object p0, p0, Lk1;->b:Ld1;

    invoke-virtual {p0, p1}, Ld1;->q(Z)I

    move-result p0

    return p0
.end method

.method public u()Lp1;
    .locals 2

    iget-object v0, p0, Lk1;->b:Ld1;

    invoke-virtual {v0}, Lp1;->u()Lp1;

    move-result-object v0

    check-cast v0, Ld1;

    iget-object v1, p0, Lk1;->b:Ld1;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lk1;

    invoke-direct {p0, v0}, Lk1;-><init>(Ld1;)V

    :goto_0
    return-object p0
.end method

.method public v()Lp1;
    .locals 2

    iget-object v0, p0, Lk1;->b:Ld1;

    invoke-virtual {v0}, Lp1;->v()Lp1;

    move-result-object v0

    check-cast v0, Ld1;

    iget-object v1, p0, Lk1;->b:Ld1;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lk1;

    invoke-direct {p0, v0}, Lk1;-><init>(Ld1;)V

    :goto_0
    return-object p0
.end method

.method public x()Ld1;
    .locals 0

    iget-object p0, p0, Lk1;->b:Ld1;

    return-object p0
.end method
