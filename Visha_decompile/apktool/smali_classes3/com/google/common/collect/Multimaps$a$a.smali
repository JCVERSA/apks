.class public Lcom/google/common/collect/Multimaps$a$a;
.super Lcom/google/common/collect/Maps$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/Multimaps$a;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Multimaps$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/Multimaps$a$a;->b:Lcom/google/common/collect/Multimaps$a;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$i;-><init>()V

    return-void
.end method

.method public static synthetic c(Lcom/google/common/collect/Multimaps$a$a;Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$a$a;->f(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/Multimaps$a$a;->b:Lcom/google/common/collect/Multimaps$a;

    return-object p0
.end method

.method public final synthetic f(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/Multimaps$a$a;->b:Lcom/google/common/collect/Multimaps$a;

    invoke-static {p0}, Lcom/google/common/collect/Multimaps$a;->d(Lcom/google/common/collect/Multimaps$a;)Lat6;

    move-result-object p0

    invoke-interface {p0, p1}, Lat6;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$a$a;->b:Lcom/google/common/collect/Multimaps$a;

    invoke-static {v0}, Lcom/google/common/collect/Multimaps$a;->d(Lcom/google/common/collect/Multimaps$a;)Lat6;

    move-result-object v0

    invoke-interface {v0}, Lat6;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lbt6;

    invoke-direct {v1, p0}, Lbt6;-><init>(Lcom/google/common/collect/Multimaps$a$a;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->c(Ljava/util/Set;Lo74;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Maps$i;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/util/Map$Entry;

    iget-object p0, p0, Lcom/google/common/collect/Multimaps$a$a;->b:Lcom/google/common/collect/Multimaps$a;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$a;->g(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method
