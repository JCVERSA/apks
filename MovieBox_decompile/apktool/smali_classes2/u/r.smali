.class public final Lu/r;
.super Lkotlin/collections/AbstractCollection;
.source "source.java"

# interfaces
.implements Lt/b;


# instance fields
.field private final a:Lu/d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lu/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/collections/AbstractCollection;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lu/r;->a:Lu/d;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lu/r;->a:Lu/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lkotlin/collections/AbstractMap;->containsValue(Ljava/lang/Object;)Z

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
    iget-object v0, p0, Lu/r;->a:Lu/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkotlin/collections/AbstractMap;->size()I

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
    new-instance v0, Lu/s;

    .line 2
    .line 3
    iget-object v1, p0, Lu/r;->a:Lu/d;

    .line 4
    .line 5
    invoke-virtual {v1}, Lu/d;->u()Lu/t;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lu/s;-><init>(Lu/t;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method
