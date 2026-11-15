.class Lcom/google/common/collect/ArrayTable$a;
.super Lcom/google/common/collect/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ArrayTable;->cellIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/google/common/collect/ArrayTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ArrayTable;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/ArrayTable$a;->c:Lcom/google/common/collect/ArrayTable;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/google/common/collect/a;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected bridge synthetic a(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ArrayTable$a;->b(I)Lcom/google/common/collect/c4$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method protected b(I)Lcom/google/common/collect/c4$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$a;->c:Lcom/google/common/collect/ArrayTable;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/google/common/collect/ArrayTable;->access$000(Lcom/google/common/collect/ArrayTable;I)Lcom/google/common/collect/c4$a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
