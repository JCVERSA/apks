.class public Ljl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final b:Lx0;


# direct methods
.method public constructor <init>(Lal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lal;->n()Lx0;

    move-result-object p1

    iput-object p1, p0, Ljl;->b:Lx0;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljl;

    iget-object p0, p0, Ljl;->b:Lx0;

    invoke-static {p0}, Lal;->m(Ljava/lang/Object;)Lal;

    move-result-object p0

    invoke-direct {v0, p0}, Ljl;-><init>(Lal;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Ljl;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Ljl;

    iget-object p0, p0, Ljl;->b:Lx0;

    iget-object p1, p1, Ljl;->b:Lx0;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Ljl;->b:Lx0;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
