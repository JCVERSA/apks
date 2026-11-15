.class public Lcom/google/common/collect/ArrayTable$e;
.super Lcom/google/common/collect/ArrayTable$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ArrayTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final c:I

.field public final synthetic d:Lcom/google/common/collect/ArrayTable;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ArrayTable;I)V
    .locals 1

    iput-object p1, p0, Lcom/google/common/collect/ArrayTable$e;->d:Lcom/google/common/collect/ArrayTable;

    invoke-static {p1}, Lcom/google/common/collect/ArrayTable;->access$300(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/ArrayTable$d;-><init>(Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ArrayTable$a;)V

    iput p2, p0, Lcom/google/common/collect/ArrayTable$e;->c:I

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 0

    const-string p0, "Row"

    return-object p0
.end method

.method public e(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$e;->d:Lcom/google/common/collect/ArrayTable;

    iget p0, p0, Lcom/google/common/collect/ArrayTable$e;->c:I

    invoke-virtual {v0, p1, p0}, Lcom/google/common/collect/ArrayTable;->at(II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public f(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$e;->d:Lcom/google/common/collect/ArrayTable;

    iget p0, p0, Lcom/google/common/collect/ArrayTable$e;->c:I

    invoke-virtual {v0, p1, p0, p2}, Lcom/google/common/collect/ArrayTable;->set(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
