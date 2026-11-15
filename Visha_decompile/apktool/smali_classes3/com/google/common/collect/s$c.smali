.class public final Lcom/google/common/collect/s$c;
.super Lcom/google/common/collect/Tables$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/Tables$b;-><init>()V

    const-string v0, "row"

    invoke-static {p1, v0}, Lxd8;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/s$c;->b:Ljava/lang/Object;

    const-string p1, "column"

    invoke-static {p2, p1}, Lxd8;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/s$c;->c:Ljava/lang/Object;

    const-string p1, "value"

    invoke-static {p3, p1}, Lxd8;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/s$c;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lxd8;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/s$c;->d:Ljava/lang/Object;

    invoke-interface {p2, v0, p1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "mergeFunction.apply"

    invoke-static {p1, p2}, Lxd8;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/s$c;->d:Ljava/lang/Object;

    return-void
.end method

.method public getColumnKey()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/s$c;->c:Ljava/lang/Object;

    return-object p0
.end method

.method public getRowKey()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/s$c;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/s$c;->d:Ljava/lang/Object;

    return-object p0
.end method
