.class Lcom/google/common/collect/g3$b;
.super Lcom/google/common/collect/j2;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/g3;->s(Ljava/lang/Iterable;Lcom/google/common/base/f;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/Iterable;

.field final synthetic c:Lcom/google/common/base/f;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;Lcom/google/common/base/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/g3$b;->b:Ljava/lang/Iterable;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/common/collect/g3$b;->c:Lcom/google/common/base/f;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/common/collect/j2;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/g3$b;->b:Ljava/lang/Iterable;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/common/collect/g3$b;->c:Lcom/google/common/base/f;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->A(Ljava/util/Iterator;Lcom/google/common/base/f;)Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method
