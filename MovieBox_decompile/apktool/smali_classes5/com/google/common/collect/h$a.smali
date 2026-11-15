.class Lcom/google/common/collect/h$a;
.super Lcom/google/common/collect/i2;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/h;->createDescendingMultiset()Lcom/google/common/collect/a4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic d:Lcom/google/common/collect/h;


# direct methods
.method constructor <init>(Lcom/google/common/collect/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/h$a;->d:Lcom/google/common/collect/h;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/common/collect/i2;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/h$a;->d:Lcom/google/common/collect/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/common/collect/h;->descendingIterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method n()Ljava/util/Iterator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/h$a;->d:Lcom/google/common/collect/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/common/collect/h;->descendingEntryIterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method o()Lcom/google/common/collect/a4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/h$a;->d:Lcom/google/common/collect/h;

    .line 2
    .line 3
    return-object v0
.end method
