.class public abstract Lwk0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget v0, p0, Lwk0;->b:I

    or-int/2addr p1, v0

    iput p1, p0, Lwk0;->b:I

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lwk0;->b:I

    return-void
.end method

.method public final d(I)V
    .locals 1

    iget v0, p0, Lwk0;->b:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lwk0;->b:I

    return-void
.end method

.method public final e(I)Z
    .locals 0

    iget p0, p0, Lwk0;->b:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final f()Z
    .locals 1

    const/high16 v0, 0x10000000

    invoke-virtual {p0, v0}, Lwk0;->e(I)Z

    move-result p0

    return p0
.end method

.method public final g()Z
    .locals 1

    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Lwk0;->e(I)Z

    move-result p0

    return p0
.end method

.method public final h()Z
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lwk0;->e(I)Z

    move-result p0

    return p0
.end method

.method public final i()Z
    .locals 1

    const/high16 v0, 0x8000000

    invoke-virtual {p0, v0}, Lwk0;->e(I)Z

    move-result p0

    return p0
.end method

.method public final j()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lwk0;->e(I)Z

    move-result p0

    return p0
.end method

.method public final k(I)V
    .locals 0

    iput p1, p0, Lwk0;->b:I

    return-void
.end method
