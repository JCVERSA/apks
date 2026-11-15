.class public abstract La3;
.super Lfgb;
.source "SourceFile"


# instance fields
.field public final b:I

.field public c:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, La3;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lfgb;-><init>()V

    .line 3
    invoke-static {p2, p1}, Lxd8;->r(II)I

    .line 4
    iput p1, p0, La3;->b:I

    .line 5
    iput p2, p0, La3;->c:I

    return-void
.end method


# virtual methods
.method public abstract a(I)Ljava/lang/Object;
.end method

.method public final hasNext()Z
    .locals 1

    iget v0, p0, La3;->c:I

    iget p0, p0, La3;->b:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hasPrevious()Z
    .locals 0

    iget p0, p0, La3;->c:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, La3;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, La3;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, La3;->c:I

    invoke-virtual {p0, v0}, La3;->a(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final nextIndex()I
    .locals 0

    iget p0, p0, La3;->c:I

    return p0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, La3;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, La3;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, La3;->c:I

    invoke-virtual {p0, v0}, La3;->a(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final previousIndex()I
    .locals 0

    iget p0, p0, La3;->c:I

    add-int/lit8 p0, p0, -0x1

    return p0
.end method
