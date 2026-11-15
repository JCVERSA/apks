.class public final Ltxe;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lukj;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lukj;

    invoke-direct {v0}, Lukj;-><init>()V

    iput-object v0, p0, Ltxe;->a:Lukj;

    return-void
.end method


# virtual methods
.method public final a(I)Ltxe;
    .locals 1

    iget-object v0, p0, Ltxe;->a:Lukj;

    invoke-virtual {v0, p1}, Lukj;->a(I)Lukj;

    return-object p0
.end method

.method public final b(Luye;)Ltxe;
    .locals 3

    invoke-static {p1}, Luye;->a(Luye;)Lenj;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lenj;->b()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ltxe;->a:Lukj;

    invoke-virtual {p1, v0}, Lenj;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lukj;->a(I)Lukj;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final varargs c([I)Ltxe;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ltxe;->a:Lukj;

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Lukj;->a(I)Lukj;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final d(IZ)Ltxe;
    .locals 0

    if-eqz p2, :cond_0

    iget-object p2, p0, Ltxe;->a:Lukj;

    invoke-virtual {p2, p1}, Lukj;->a(I)Lukj;

    :cond_0
    return-object p0
.end method

.method public final e()Luye;
    .locals 2

    iget-object p0, p0, Ltxe;->a:Lukj;

    new-instance v0, Luye;

    invoke-virtual {p0}, Lukj;->b()Lenj;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Luye;-><init>(Lenj;Lg1f;)V

    return-object v0
.end method
