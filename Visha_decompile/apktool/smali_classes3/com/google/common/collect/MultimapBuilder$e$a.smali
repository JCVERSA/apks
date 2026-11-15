.class public Lcom/google/common/collect/MultimapBuilder$e$a;
.super Lcom/google/common/collect/MultimapBuilder$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/MultimapBuilder$e;->b(I)Lcom/google/common/collect/MultimapBuilder$d;
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

    iput p2, p0, Lcom/google/common/collect/MultimapBuilder$e$a;->a:I

    iput-object p1, p0, Lcom/google/common/collect/MultimapBuilder$e$a;->b:Lcom/google/common/collect/MultimapBuilder$e;

    invoke-direct {p0}, Lcom/google/common/collect/MultimapBuilder$d;-><init>()V

    return-void
.end method


# virtual methods
.method public g()Lfm5;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/MultimapBuilder$e$a;->b:Lcom/google/common/collect/MultimapBuilder$e;

    invoke-virtual {v0}, Lcom/google/common/collect/MultimapBuilder$e;->c()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/MultimapBuilder$ArrayListSupplier;

    iget p0, p0, Lcom/google/common/collect/MultimapBuilder$e$a;->a:I

    invoke-direct {v1, p0}, Lcom/google/common/collect/MultimapBuilder$ArrayListSupplier;-><init>(I)V

    invoke-static {v0, v1}, Lcom/google/common/collect/Multimaps;->b(Ljava/util/Map;Lw6a;)Lfm5;

    move-result-object p0

    return-object p0
.end method
