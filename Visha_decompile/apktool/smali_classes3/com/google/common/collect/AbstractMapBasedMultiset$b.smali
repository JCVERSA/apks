.class public Lcom/google/common/collect/AbstractMapBasedMultiset$b;
.super Lcom/google/common/collect/AbstractMapBasedMultiset$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/AbstractMapBasedMultiset;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic f:Lcom/google/common/collect/AbstractMapBasedMultiset;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultiset;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$b;->f:Lcom/google/common/collect/AbstractMapBasedMultiset;

    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset$c;-><init>(Lcom/google/common/collect/AbstractMapBasedMultiset;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset$b;->c(I)Lcom/google/common/collect/j$a;

    move-result-object p0

    return-object p0
.end method

.method public c(I)Lcom/google/common/collect/j$a;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$b;->f:Lcom/google/common/collect/AbstractMapBasedMultiset;

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/k;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/k;->g(I)Lcom/google/common/collect/j$a;

    move-result-object p0

    return-object p0
.end method
