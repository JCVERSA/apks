.class public Lby3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lby3;->a:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget v0, p0, Lby3;->a:I

    or-int/2addr p1, v0

    iput p1, p0, Lby3;->a:I

    return-void
.end method

.method public b(I)Z
    .locals 0

    iget p0, p0, Lby3;->a:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public c(I)Z
    .locals 2

    iget v0, p0, Lby3;->a:I

    and-int v1, v0, p1

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lby3;->a:I

    :cond_1
    return v1
.end method

.method public d(I)Z
    .locals 0

    iget p0, p0, Lby3;->a:I

    and-int/2addr p0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public e(I)V
    .locals 1

    iget v0, p0, Lby3;->a:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lby3;->a:I

    return-void
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lby3;->a:I

    return-void
.end method
