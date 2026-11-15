.class public Lcom/google/common/collect/StandardTable$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/StandardTable$g;->a()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/Iterator;

.field public final synthetic c:Lcom/google/common/collect/StandardTable$g;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/StandardTable$g;Ljava/util/Iterator;)V
    .locals 0

    iput-object p2, p0, Lcom/google/common/collect/StandardTable$g$a;->b:Ljava/util/Iterator;

    iput-object p1, p0, Lcom/google/common/collect/StandardTable$g$a;->c:Lcom/google/common/collect/StandardTable$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/StandardTable$g$a;->c:Lcom/google/common/collect/StandardTable$g;

    iget-object p0, p0, Lcom/google/common/collect/StandardTable$g$a;->b:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-virtual {v0, p0}, Lcom/google/common/collect/StandardTable$g;->e(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/StandardTable$g$a;->b:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$g$a;->a()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/StandardTable$g$a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object p0, p0, Lcom/google/common/collect/StandardTable$g$a;->c:Lcom/google/common/collect/StandardTable$g;

    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$g;->c()V

    return-void
.end method
