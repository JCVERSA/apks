.class Lorg/mvel2/util/FastList$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mvel2/util/FastList;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:I

.field final synthetic b:I

.field final synthetic c:Lorg/mvel2/util/FastList;


# direct methods
.method constructor <init>(Lorg/mvel2/util/FastList;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/util/FastList$a;->c:Lorg/mvel2/util/FastList;

    .line 2
    .line 3
    iput p2, p0, Lorg/mvel2/util/FastList$a;->b:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lorg/mvel2/util/FastList$a;->a:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/mvel2/util/FastList$a;->a:I

    .line 2
    .line 3
    iget v1, p0, Lorg/mvel2/util/FastList$a;->b:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/mvel2/util/FastList$a;->c:Lorg/mvel2/util/FastList;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/mvel2/util/FastList;->access$000(Lorg/mvel2/util/FastList;)[Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lorg/mvel2/util/FastList$a;->a:I

    .line 8
    .line 9
    add-int/lit8 v2, v1, 0x1

    .line 10
    .line 11
    iput v2, p0, Lorg/mvel2/util/FastList$a;->a:I

    .line 12
    .line 13
    aget-object v0, v0, v1

    .line 14
    .line 15
    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 1
    new-instance v0, Lorg/mvel2/ImmutableElementException;

    .line 2
    .line 3
    const-string v1, "cannot change elements in immutable list"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/mvel2/ImmutableElementException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method
