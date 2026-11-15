.class public Lcom/google/common/collect/ArrayTable$d$a;
.super Li3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ArrayTable$d;->b(I)Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/google/common/collect/ArrayTable$d;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ArrayTable$d;I)V
    .locals 0

    iput p2, p0, Lcom/google/common/collect/ArrayTable$d$a;->b:I

    iput-object p1, p0, Lcom/google/common/collect/ArrayTable$d$a;->c:Lcom/google/common/collect/ArrayTable$d;

    invoke-direct {p0}, Li3;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$d$a;->c:Lcom/google/common/collect/ArrayTable$d;

    iget p0, p0, Lcom/google/common/collect/ArrayTable$d$a;->b:I

    invoke-virtual {v0, p0}, Lcom/google/common/collect/ArrayTable$d;->c(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$d$a;->c:Lcom/google/common/collect/ArrayTable$d;

    iget p0, p0, Lcom/google/common/collect/ArrayTable$d$a;->b:I

    invoke-virtual {v0, p0}, Lcom/google/common/collect/ArrayTable$d;->e(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$d$a;->c:Lcom/google/common/collect/ArrayTable$d;

    iget p0, p0, Lcom/google/common/collect/ArrayTable$d$a;->b:I

    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/ArrayTable$d;->f(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
