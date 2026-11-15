.class Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableList;
.super Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableList<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final EMPTY:Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient array:[Ljava/lang/Object;

.field private final transient offset:I

.field private final transient size:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableList;

    sget-object v1, Lcom/bumptech/glide/repackaged/com/google/common/collect/ObjectArrays;->EMPTY_ARRAY:[Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableList;-><init>([Ljava/lang/Object;)V

    sput-object v0, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableList;->EMPTY:Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableList;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 2

    .line 5
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableList;-><init>([Ljava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableList;-><init>()V

    .line 2
    iput p2, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableList;->offset:I

    .line 3
    iput p3, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableList;->size:I

    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public copyIntoArray([Ljava/lang/Object;I)I
    .locals 3

    iget-object v0, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    iget v1, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableList;->offset:I

    iget v2, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableList;->size:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p0, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableList;->size:I

    add-int/2addr p2, p0

    return p2
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget v0, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableList;->size:I

    invoke-static {p1, v0}, Lcom/bumptech/glide/repackaged/com/google/common/base/Preconditions;->checkElementIndex(II)I

    iget-object v0, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    iget p0, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableList;->offset:I

    add-int/2addr p1, p0

    aget-object p0, v0, p1

    return-object p0
.end method

.method public isPartialView()Z
    .locals 1

    iget v0, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableList;->size:I

    iget-object p0, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    array-length p0, p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public listIterator(I)Lcom/bumptech/glide/repackaged/com/google/common/collect/UnmodifiableListIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/repackaged/com/google/common/collect/UnmodifiableListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    iget v1, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableList;->offset:I

    iget p0, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableList;->size:I

    invoke-static {v0, v1, p0, p1}, Lcom/bumptech/glide/repackaged/com/google/common/collect/Iterators;->forArray([Ljava/lang/Object;III)Lcom/bumptech/glide/repackaged/com/google/common/collect/UnmodifiableListIterator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableList;->listIterator(I)Lcom/bumptech/glide/repackaged/com/google/common/collect/UnmodifiableListIterator;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableList;->size:I

    return p0
.end method

.method public subListUnchecked(II)Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/repackaged/com/google/common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableList;

    iget-object v1, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    iget p0, p0, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableList;->offset:I

    add-int/2addr p0, p1

    sub-int/2addr p2, p1

    invoke-direct {v0, v1, p0, p2}, Lcom/bumptech/glide/repackaged/com/google/common/collect/RegularImmutableList;-><init>([Ljava/lang/Object;II)V

    return-object v0
.end method
