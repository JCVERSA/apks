.class Lcom/google/common/collect/j2$a;
.super Lcom/google/common/collect/j2;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/j2;->e(Ljava/lang/Iterable;)Lcom/google/common/collect/j2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/common/collect/j2$a;->b:Ljava/lang/Iterable;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/common/collect/j2;-><init>(Ljava/lang/Iterable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/j2$a;->b:Ljava/lang/Iterable;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
