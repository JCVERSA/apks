.class Lorg/mvel2/util/FastList$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mvel2/util/FastList;->listIterator()Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Lorg/mvel2/util/FastList;


# direct methods
.method constructor <init>(Lorg/mvel2/util/FastList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/util/FastList$b;->b:Lorg/mvel2/util/FastList;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lorg/mvel2/util/FastList$b;->a:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public hasNext()Z
    .locals 3

    .line 1
    iget v0, p0, Lorg/mvel2/util/FastList$b;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/mvel2/util/FastList$b;->b:Lorg/mvel2/util/FastList;

    .line 4
    .line 5
    invoke-static {v1}, Lorg/mvel2/util/FastList;->access$100(Lorg/mvel2/util/FastList;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    sub-int/2addr v1, v2

    .line 11
    if-ge v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v2, 0x0

    .line 15
    :goto_0
    return v2
.end method

.method public hasPrevious()Z
    .locals 1

    .line 1
    iget v0, p0, Lorg/mvel2/util/FastList$b;->a:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mvel2/util/FastList$b;->b:Lorg/mvel2/util/FastList;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/mvel2/util/FastList;->access$000(Lorg/mvel2/util/FastList;)[Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lorg/mvel2/util/FastList$b;->a:I

    .line 8
    .line 9
    add-int/lit8 v1, v1, 0x1

    .line 10
    .line 11
    iput v1, p0, Lorg/mvel2/util/FastList$b;->a:I

    .line 12
    .line 13
    aget-object v0, v0, v1

    .line 14
    .line 15
    return-object v0
.end method

.method public nextIndex()I
    .locals 2

    .line 1
    iget v0, p0, Lorg/mvel2/util/FastList$b;->a:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lorg/mvel2/util/FastList$b;->a:I

    .line 6
    .line 7
    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mvel2/util/FastList$b;->b:Lorg/mvel2/util/FastList;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/mvel2/util/FastList;->access$000(Lorg/mvel2/util/FastList;)[Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lorg/mvel2/util/FastList$b;->a:I

    .line 8
    .line 9
    add-int/lit8 v1, v1, -0x1

    .line 10
    .line 11
    iput v1, p0, Lorg/mvel2/util/FastList$b;->a:I

    .line 12
    .line 13
    aget-object v0, v0, v1

    .line 14
    .line 15
    return-object v0
.end method

.method public previousIndex()I
    .locals 2

    .line 1
    iget v0, p0, Lorg/mvel2/util/FastList$b;->a:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, -0x1

    .line 4
    .line 5
    iput v1, p0, Lorg/mvel2/util/FastList$b;->a:I

    .line 6
    .line 7
    return v0
.end method

.method public remove()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mvel2/util/FastList$b;->b:Lorg/mvel2/util/FastList;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/mvel2/util/FastList;->access$000(Lorg/mvel2/util/FastList;)[Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lorg/mvel2/util/FastList$b;->a:I

    .line 8
    .line 9
    aput-object p1, v0, v1

    .line 10
    .line 11
    return-void
.end method
