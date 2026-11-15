.class Lcom/google/common/collect/MultimapBuilder$e$a;
.super Lcom/google/common/collect/MultimapBuilder$d;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/MultimapBuilder$e;->b(I)Lcom/google/common/collect/MultimapBuilder$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/common/collect/MultimapBuilder$e;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MultimapBuilder$e;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/google/common/collect/MultimapBuilder$e$a;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/common/collect/MultimapBuilder$e$a;->b:Lcom/google/common/collect/MultimapBuilder$e;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/common/collect/MultimapBuilder$d;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public g()Lcom/google/common/collect/i3;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/MultimapBuilder$e$a;->b:Lcom/google/common/collect/MultimapBuilder$e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/common/collect/MultimapBuilder$e;->c()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/common/collect/MultimapBuilder$ArrayListSupplier;

    .line 8
    .line 9
    iget v2, p0, Lcom/google/common/collect/MultimapBuilder$e$a;->a:I

    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/google/common/collect/MultimapBuilder$ArrayListSupplier;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/google/common/collect/Multimaps;->b(Ljava/util/Map;Lcom/google/common/base/q;)Lcom/google/common/collect/i3;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method
