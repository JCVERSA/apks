.class public final Lkotlin/collections/RingBuffer$iterator$1;
.super Lkotlin/collections/AbstractIterator;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/collections/RingBuffer;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/collections/AbstractIterator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0003\u0010\u0004R\u0016\u0010\u0008\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0007R\u0016\u0010\n\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "kotlin/collections/RingBuffer$iterator$1",
        "Lkotlin/collections/AbstractIterator;",
        "",
        "a",
        "()V",
        "",
        "c",
        "I",
        "count",
        "d",
        "index",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private c:I

.field private d:I

.field final synthetic e:Lkotlin/collections/RingBuffer;


# direct methods
.method constructor <init>(Lkotlin/collections/RingBuffer;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lkotlin/collections/RingBuffer$iterator$1;->e:Lkotlin/collections/RingBuffer;

    .line 2
    .line 3
    invoke-direct {p0}, Lkotlin/collections/AbstractIterator;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lkotlin/collections/AbstractCollection;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p0, Lkotlin/collections/RingBuffer$iterator$1;->c:I

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/collections/RingBuffer;->i(Lkotlin/collections/RingBuffer;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iput p1, p0, Lkotlin/collections/RingBuffer$iterator$1;->d:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .line 1
    iget v0, p0, Lkotlin/collections/RingBuffer$iterator$1;->c:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lkotlin/collections/AbstractIterator;->c()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lkotlin/collections/RingBuffer$iterator$1;->e:Lkotlin/collections/RingBuffer;

    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/collections/RingBuffer;->e(Lkotlin/collections/RingBuffer;)[Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget v1, p0, Lkotlin/collections/RingBuffer$iterator$1;->d:I

    .line 16
    .line 17
    aget-object v0, v0, v1

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lkotlin/collections/AbstractIterator;->e(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lkotlin/collections/RingBuffer$iterator$1;->e:Lkotlin/collections/RingBuffer;

    .line 23
    .line 24
    iget v1, p0, Lkotlin/collections/RingBuffer$iterator$1;->d:I

    .line 25
    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    invoke-static {v0}, Lkotlin/collections/RingBuffer;->f(Lkotlin/collections/RingBuffer;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    rem-int/2addr v1, v0

    .line 33
    iput v1, p0, Lkotlin/collections/RingBuffer$iterator$1;->d:I

    .line 34
    .line 35
    iget v0, p0, Lkotlin/collections/RingBuffer$iterator$1;->c:I

    .line 36
    .line 37
    add-int/lit8 v0, v0, -0x1

    .line 38
    .line 39
    iput v0, p0, Lkotlin/collections/RingBuffer$iterator$1;->c:I

    .line 40
    .line 41
    :goto_0
    return-void
.end method
