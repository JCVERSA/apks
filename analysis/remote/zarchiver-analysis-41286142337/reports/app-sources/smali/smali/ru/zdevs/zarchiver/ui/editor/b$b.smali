.class public final Lru/zdevs/zarchiver/ui/editor/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/text/CharacterIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/zdevs/zarchiver/ui/editor/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:[C

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v1, v0, [C

    .line 6
    .line 7
    iput-object v1, p0, Lru/zdevs/zarchiver/ui/editor/b$b;->a:[C

    .line 8
    .line 9
    iput v0, p0, Lru/zdevs/zarchiver/ui/editor/b$b;->d:I

    .line 10
    .line 11
    iput v0, p0, Lru/zdevs/zarchiver/ui/editor/b$b;->b:I

    .line 12
    .line 13
    iput v0, p0, Lru/zdevs/zarchiver/ui/editor/b$b;->c:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public final current()C
    .locals 2

    iget v0, p0, Lru/zdevs/zarchiver/ui/editor/b$b;->d:I

    iget v1, p0, Lru/zdevs/zarchiver/ui/editor/b$b;->c:I

    if-ne v0, v1, :cond_0

    const v0, 0xffff

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lru/zdevs/zarchiver/ui/editor/b$b;->a:[C

    aget-char v0, v1, v0

    :goto_0
    return v0
.end method

.method public final first()C
    .locals 1

    .line 1
    iget v0, p0, Lru/zdevs/zarchiver/ui/editor/b$b;->b:I

    .line 2
    .line 3
    iput v0, p0, Lru/zdevs/zarchiver/ui/editor/b$b;->d:I

    .line 4
    .line 5
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/editor/b$b;->current()C

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final getBeginIndex()I
    .locals 1

    iget v0, p0, Lru/zdevs/zarchiver/ui/editor/b$b;->b:I

    return v0
.end method

.method public final getEndIndex()I
    .locals 1

    iget v0, p0, Lru/zdevs/zarchiver/ui/editor/b$b;->c:I

    return v0
.end method

.method public final getIndex()I
    .locals 1

    iget v0, p0, Lru/zdevs/zarchiver/ui/editor/b$b;->d:I

    return v0
.end method

.method public final last()C
    .locals 2

    .line 1
    iget v0, p0, Lru/zdevs/zarchiver/ui/editor/b$b;->b:I

    .line 2
    .line 3
    iget v1, p0, Lru/zdevs/zarchiver/ui/editor/b$b;->c:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iput v1, p0, Lru/zdevs/zarchiver/ui/editor/b$b;->d:I

    .line 8
    .line 9
    const v0, 0xffff

    .line 10
    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 14
    .line 15
    iput v1, p0, Lru/zdevs/zarchiver/ui/editor/b$b;->d:I

    .line 16
    .line 17
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/b$b;->a:[C

    .line 18
    .line 19
    aget-char v0, v0, v1

    .line 20
    .line 21
    return v0
.end method

.method public final next()C
    .locals 2

    .line 1
    iget v0, p0, Lru/zdevs/zarchiver/ui/editor/b$b;->d:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lru/zdevs/zarchiver/ui/editor/b$b;->d:I

    .line 6
    .line 7
    iget v1, p0, Lru/zdevs/zarchiver/ui/editor/b$b;->c:I

    .line 8
    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    iput v1, p0, Lru/zdevs/zarchiver/ui/editor/b$b;->d:I

    .line 12
    .line 13
    const v0, 0xffff

    .line 14
    .line 15
    .line 16
    return v0

    .line 17
    :cond_0
    iget-object v1, p0, Lru/zdevs/zarchiver/ui/editor/b$b;->a:[C

    .line 18
    .line 19
    aget-char v0, v1, v0

    .line 20
    .line 21
    return v0
.end method

.method public final previous()C
    .locals 2

    .line 1
    iget v0, p0, Lru/zdevs/zarchiver/ui/editor/b$b;->d:I

    .line 2
    .line 3
    iget v1, p0, Lru/zdevs/zarchiver/ui/editor/b$b;->b:I

    .line 4
    .line 5
    if-gt v0, v1, :cond_0

    .line 6
    .line 7
    const v0, 0xffff

    .line 8
    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    iget-object v1, p0, Lru/zdevs/zarchiver/ui/editor/b$b;->a:[C

    .line 12
    .line 13
    add-int/lit8 v0, v0, -0x1

    .line 14
    .line 15
    iput v0, p0, Lru/zdevs/zarchiver/ui/editor/b$b;->d:I

    .line 16
    .line 17
    aget-char v0, v1, v0

    .line 18
    .line 19
    return v0
.end method

.method public final setIndex(I)C
    .locals 1

    .line 1
    iget v0, p0, Lru/zdevs/zarchiver/ui/editor/b$b;->b:I

    .line 2
    .line 3
    if-gt v0, p1, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lru/zdevs/zarchiver/ui/editor/b$b;->c:I

    .line 6
    .line 7
    if-gt p1, v0, :cond_0

    .line 8
    .line 9
    iput p1, p0, Lru/zdevs/zarchiver/ui/editor/b$b;->d:I

    .line 10
    .line 11
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/editor/b$b;->current()C

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string v0, "invalid position"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1
.end method
