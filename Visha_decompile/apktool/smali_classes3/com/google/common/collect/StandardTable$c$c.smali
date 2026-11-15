.class public Lcom/google/common/collect/StandardTable$c$c;
.super Lcom/google/common/collect/Maps$l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/StandardTable$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic c:Lcom/google/common/collect/StandardTable$c;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/StandardTable$c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/StandardTable$c$c;->c:Lcom/google/common/collect/StandardTable$c;

    invoke-direct {p0, p1}, Lcom/google/common/collect/Maps$l;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object p0, p0, Lcom/google/common/collect/StandardTable$c$c;->c:Lcom/google/common/collect/StandardTable$c;

    iget-object v0, p0, Lcom/google/common/collect/StandardTable$c;->f:Lcom/google/common/collect/StandardTable;

    iget-object p0, p0, Lcom/google/common/collect/StandardTable$c;->e:Ljava/lang/Object;

    invoke-virtual {v0, p1, p0}, Lcom/google/common/collect/StandardTable;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    iget-object p0, p0, Lcom/google/common/collect/StandardTable$c$c;->c:Lcom/google/common/collect/StandardTable$c;

    iget-object v0, p0, Lcom/google/common/collect/StandardTable$c;->f:Lcom/google/common/collect/StandardTable;

    iget-object p0, p0, Lcom/google/common/collect/StandardTable$c;->e:Ljava/lang/Object;

    invoke-virtual {v0, p1, p0}, Lcom/google/common/collect/StandardTable;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/StandardTable$c$c;->c:Lcom/google/common/collect/StandardTable$c;

    invoke-static {p1}, Lcom/google/common/base/Predicates;->g(Ljava/util/Collection;)Lhe8;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Predicates;->i(Lhe8;)Lhe8;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Maps;->n(Lhe8;)Lhe8;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/StandardTable$c;->d(Lhe8;)Z

    move-result p0

    return p0
.end method
