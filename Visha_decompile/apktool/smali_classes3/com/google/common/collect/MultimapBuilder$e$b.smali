.class public Lcom/google/common/collect/MultimapBuilder$e$b;
.super Lcom/google/common/collect/MultimapBuilder$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/MultimapBuilder$e;->e(I)Lcom/google/common/collect/MultimapBuilder$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/common/collect/MultimapBuilder$e;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/MultimapBuilder$e;I)V
    .locals 0

    iput p2, p0, Lcom/google/common/collect/MultimapBuilder$e$b;->a:I

    iput-object p1, p0, Lcom/google/common/collect/MultimapBuilder$e$b;->b:Lcom/google/common/collect/MultimapBuilder$e;

    invoke-direct {p0}, Lcom/google/common/collect/MultimapBuilder$f;-><init>()V

    return-void
.end method


# virtual methods
.method public g()Lue9;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/MultimapBuilder$e$b;->b:Lcom/google/common/collect/MultimapBuilder$e;

    invoke-virtual {v0}, Lcom/google/common/collect/MultimapBuilder$e;->c()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/MultimapBuilder$LinkedHashSetSupplier;

    iget p0, p0, Lcom/google/common/collect/MultimapBuilder$e$b;->a:I

    invoke-direct {v1, p0}, Lcom/google/common/collect/MultimapBuilder$LinkedHashSetSupplier;-><init>(I)V

    invoke-static {v0, v1}, Lcom/google/common/collect/Multimaps;->c(Ljava/util/Map;Lw6a;)Lue9;

    move-result-object p0

    return-object p0
.end method
