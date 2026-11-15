.class Lorg/mvel2/util/j$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mvel2/util/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method private constructor <init>(III)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lorg/mvel2/util/j$c;->a:I

    .line 4
    iput p2, p0, Lorg/mvel2/util/j$c;->b:I

    .line 5
    iput p3, p0, Lorg/mvel2/util/j$c;->c:I

    return-void
.end method

.method synthetic constructor <init>(IIILorg/mvel2/util/j$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/mvel2/util/j$c;-><init>(III)V

    return-void
.end method


# virtual methods
.method public a(Lorg/mvel2/util/j$c;)I
    .locals 2

    .line 1
    iget v0, p1, Lorg/mvel2/util/j$c;->a:I

    .line 2
    .line 3
    iget v1, p0, Lorg/mvel2/util/j$c;->b:I

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_0
    iget p1, p1, Lorg/mvel2/util/j$c;->b:I

    .line 10
    .line 11
    iget v0, p0, Lorg/mvel2/util/j$c;->a:I

    .line 12
    .line 13
    if-ge p1, v0, :cond_1

    .line 14
    .line 15
    const/4 p1, -0x1

    .line 16
    return p1

    .line 17
    :cond_1
    const/4 p1, 0x0

    .line 18
    return p1
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/mvel2/util/j$c;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/mvel2/util/j$c;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/mvel2/util/j$c;->a(Lorg/mvel2/util/j$c;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public d(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lorg/mvel2/util/j$c;->a:I

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lorg/mvel2/util/j$c;->b:I

    .line 6
    .line 7
    if-gt p1, v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    return p1
.end method
