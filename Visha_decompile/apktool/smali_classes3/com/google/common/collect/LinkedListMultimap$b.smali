.class public Lcom/google/common/collect/LinkedListMultimap$b;
.super Ljava/util/AbstractSequentialList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/LinkedListMultimap;->createEntries()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/LinkedListMultimap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$b;->b:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V

    return-void
.end method


# virtual methods
.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1

    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$h;

    iget-object p0, p0, Lcom/google/common/collect/LinkedListMultimap$b;->b:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/LinkedListMultimap$h;-><init>(Lcom/google/common/collect/LinkedListMultimap;I)V

    return-object v0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/LinkedListMultimap$b;->b:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {p0}, Lcom/google/common/collect/LinkedListMultimap;->access$800(Lcom/google/common/collect/LinkedListMultimap;)I

    move-result p0

    return p0
.end method
