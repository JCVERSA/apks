.class public abstract Lezi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget p1, p0, Lezi;->a:I

    const/high16 v0, 0x20000000

    or-int/2addr p1, v0

    iput p1, p0, Lezi;->a:I

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lezi;->a:I

    return-void
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lezi;->a:I

    return-void
.end method

.method public final d(I)Z
    .locals 0

    iget p0, p0, Lezi;->a:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final e()Z
    .locals 1

    const/high16 v0, 0x10000000

    invoke-virtual {p0, v0}, Lezi;->d(I)Z

    move-result p0

    return p0
.end method

.method public final f()Z
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lezi;->d(I)Z

    move-result p0

    return p0
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lezi;->d(I)Z

    move-result p0

    return p0
.end method

.method public final h()Z
    .locals 1

    const/high16 v0, 0x20000000

    invoke-virtual {p0, v0}, Lezi;->d(I)Z

    move-result p0

    return p0
.end method

.method public final i()Z
    .locals 1

    const/high16 v0, 0x4000000

    invoke-virtual {p0, v0}, Lezi;->d(I)Z

    move-result p0

    return p0
.end method
