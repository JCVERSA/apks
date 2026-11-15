.class public Lcom/google/common/collect/ArrayTable$a;
.super La3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ArrayTable;->cellIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lcom/google/common/collect/ArrayTable;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ArrayTable;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/ArrayTable$a;->d:Lcom/google/common/collect/ArrayTable;

    invoke-direct {p0, p2}, La3;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ArrayTable$a;->b(I)Lcom/google/common/collect/r$a;

    move-result-object p0

    return-object p0
.end method

.method public b(I)Lcom/google/common/collect/r$a;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/ArrayTable$a;->d:Lcom/google/common/collect/ArrayTable;

    invoke-static {p0, p1}, Lcom/google/common/collect/ArrayTable;->access$000(Lcom/google/common/collect/ArrayTable;I)Lcom/google/common/collect/r$a;

    move-result-object p0

    return-object p0
.end method
