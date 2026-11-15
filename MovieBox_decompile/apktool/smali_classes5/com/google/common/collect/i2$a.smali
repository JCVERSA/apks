.class Lcom/google/common/collect/i2$a;
.super Lcom/google/common/collect/Multisets$d;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/i2;->m()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/i2;


# direct methods
.method constructor <init>(Lcom/google/common/collect/i2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/i2$a;->a:Lcom/google/common/collect/i2;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/common/collect/Multisets$d;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method a()Lcom/google/common/collect/l3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/i2$a;->a:Lcom/google/common/collect/i2;

    .line 2
    .line 3
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/i2$a;->a:Lcom/google/common/collect/i2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/common/collect/i2;->n()Ljava/util/Iterator;

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
    iget-object v0, p0, Lcom/google/common/collect/i2$a;->a:Lcom/google/common/collect/i2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/common/collect/i2;->o()Lcom/google/common/collect/a4;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/google/common/collect/a4;->entrySet()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method
