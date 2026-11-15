.class Lcom/google/common/collect/LinkedListMultimap$d$a;
.super Lcom/google/common/collect/p4;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/LinkedListMultimap$d;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/google/common/collect/LinkedListMultimap$h;

.field final synthetic c:Lcom/google/common/collect/LinkedListMultimap$d;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap$d;Ljava/util/ListIterator;Lcom/google/common/collect/LinkedListMultimap$h;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/common/collect/LinkedListMultimap$d$a;->b:Lcom/google/common/collect/LinkedListMultimap$h;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$d$a;->c:Lcom/google/common/collect/LinkedListMultimap$d;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/google/common/collect/p4;-><init>(Ljava/util/ListIterator;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map$Entry;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedListMultimap$d$a;->c(Ljava/util/Map$Entry;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method c(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$d$a;->b:Lcom/google/common/collect/LinkedListMultimap$h;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/LinkedListMultimap$h;->f(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
