.class public final Lkotlin/collections/SlidingWindowKt$windowedSequence$$inlined$Sequence$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/sequences/Sequence;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/sequences/Sequence<",
        "Ljava/util/List<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010(\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u000f\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003H\u0096\u0002\u00a8\u0006\u0004\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlin/sequences/SequencesKt__SequencesKt$Sequence$1",
        "Lkotlin/sequences/Sequence;",
        "iterator",
        "",
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
.field final synthetic a:Lkotlin/sequences/Sequence;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Z

.field final synthetic e:Z


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 5

    .line 1
    iget-object v0, p0, Lkotlin/collections/SlidingWindowKt$windowedSequence$$inlined$Sequence$1;->a:Lkotlin/sequences/Sequence;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lkotlin/collections/SlidingWindowKt$windowedSequence$$inlined$Sequence$1;->b:I

    .line 8
    .line 9
    iget v2, p0, Lkotlin/collections/SlidingWindowKt$windowedSequence$$inlined$Sequence$1;->c:I

    .line 10
    .line 11
    iget-boolean v3, p0, Lkotlin/collections/SlidingWindowKt$windowedSequence$$inlined$Sequence$1;->d:Z

    .line 12
    .line 13
    iget-boolean v4, p0, Lkotlin/collections/SlidingWindowKt$windowedSequence$$inlined$Sequence$1;->e:Z

    .line 14
    .line 15
    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/collections/SlidingWindowKt;->b(Ljava/util/Iterator;IIZZ)Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method
