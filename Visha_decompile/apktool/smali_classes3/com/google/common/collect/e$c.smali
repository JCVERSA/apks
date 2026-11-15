.class public Lcom/google/common/collect/e$c;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/e;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/e$c;->b:Lcom/google/common/collect/e;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/e$c;->b:Lcom/google/common/collect/e;

    invoke-virtual {p0}, Lcom/google/common/collect/e;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/e$c;->b:Lcom/google/common/collect/e;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/e;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/e$c;->b:Lcom/google/common/collect/e;

    invoke-virtual {p0}, Lcom/google/common/collect/e;->valuesIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/e$c;->b:Lcom/google/common/collect/e;

    invoke-interface {p0}, Lcom/google/common/collect/r;->size()I

    move-result p0

    return p0
.end method
