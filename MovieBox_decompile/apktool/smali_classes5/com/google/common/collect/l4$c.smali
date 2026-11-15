.class final Lcom/google/common/collect/l4$c;
.super Lcom/google/common/collect/Tables$b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/l4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/Tables$b;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "row"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/google/common/collect/l4$c;->a:Ljava/lang/Object;

    .line 11
    .line 12
    const-string p1, "column"

    .line 13
    .line 14
    invoke-static {p2, p1}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/google/common/collect/l4$c;->b:Ljava/lang/Object;

    .line 19
    .line 20
    const-string p1, "value"

    .line 21
    .line 22
    invoke-static {p3, p1}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/google/common/collect/l4$c;->c:Ljava/lang/Object;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)V
    .locals 1

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/common/collect/l4$c;->c:Ljava/lang/Object;

    .line 7
    .line 8
    invoke-static {p2, v0, p1}, Lcom/google/common/collect/m4;->a(Ljava/util/function/BinaryOperator;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string p2, "mergeFunction.apply"

    .line 13
    .line 14
    invoke-static {p1, p2}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/google/common/collect/l4$c;->c:Ljava/lang/Object;

    .line 19
    .line 20
    return-void
.end method

.method public getColumnKey()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/l4$c;->b:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRowKey()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/l4$c;->a:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/l4$c;->c:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method
