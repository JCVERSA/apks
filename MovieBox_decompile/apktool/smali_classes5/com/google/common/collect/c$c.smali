.class Lcom/google/common/collect/c$c;
.super Ljava/util/AbstractCollection;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/c;


# direct methods
.method constructor <init>(Lcom/google/common/collect/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/c$c;->a:Lcom/google/common/collect/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/c$c;->a:Lcom/google/common/collect/c;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/common/collect/j3;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/c$c;->a:Lcom/google/common/collect/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/c;->containsValue(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/c$c;->a:Lcom/google/common/collect/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/common/collect/c;->valueIterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/c$c;->a:Lcom/google/common/collect/c;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/common/collect/j3;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
