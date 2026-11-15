.class public Lhl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final b:Lvr4;


# direct methods
.method public constructor <init>(Ls1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lvr4;->m(Ljava/lang/Object;)Lvr4;

    move-result-object p1

    iput-object p1, p0, Lhl;->b:Lvr4;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lhl;

    iget-object p0, p0, Lhl;->b:Lvr4;

    invoke-virtual {p0}, Lvr4;->j()Lp1;

    move-result-object p0

    check-cast p0, Ls1;

    invoke-direct {v0, p0}, Lhl;-><init>(Ls1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lhl;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lhl;

    iget-object p0, p0, Lhl;->b:Lvr4;

    iget-object p1, p1, Lhl;->b:Lvr4;

    invoke-virtual {p0, p1}, Lj1;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lhl;->b:Lvr4;

    invoke-virtual {p0}, Lj1;->hashCode()I

    move-result p0

    return p0
.end method
