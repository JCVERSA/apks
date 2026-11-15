.class public final Lu/j;
.super Lkotlin/collections/AbstractMutableSet;
.source "source.java"

# interfaces
.implements Ljava/util/Set;
.implements Lkotlin/jvm/internal/markers/KMutableSet;


# instance fields
.field private final a:Lu/f;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lu/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/collections/AbstractMutableSet;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lu/j;->a:Lu/f;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
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

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lu/j;->a:Lu/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lu/f;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lu/j;->a:Lu/f;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lu/f;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lu/j;->a:Lu/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkotlin/collections/AbstractMutableMap;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    new-instance v0, Lu/k;

    .line 2
    .line 3
    iget-object v1, p0, Lu/j;->a:Lu/f;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lu/k;-><init>(Lu/f;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lu/j;->a:Lu/f;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lu/f;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lu/j;->a:Lu/f;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lu/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    return p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method
