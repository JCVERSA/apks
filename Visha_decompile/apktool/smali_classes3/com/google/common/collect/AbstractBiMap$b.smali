.class public Lcom/google/common/collect/AbstractBiMap$b;
.super Lb54;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final b:Ljava/util/Map$Entry;

.field public final synthetic c:Lcom/google/common/collect/AbstractBiMap;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/AbstractBiMap;Ljava/util/Map$Entry;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/AbstractBiMap$b;->c:Lcom/google/common/collect/AbstractBiMap;

    invoke-direct {p0}, Lb54;-><init>()V

    iput-object p2, p0, Lcom/google/common/collect/AbstractBiMap$b;->b:Ljava/util/Map$Entry;

    return-void
.end method


# virtual methods
.method public bridge synthetic delegate()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap$b;->f()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public f()Ljava/util/Map$Entry;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/AbstractBiMap$b;->b:Ljava/util/Map$Entry;

    return-object p0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$b;->c:Lcom/google/common/collect/AbstractBiMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/AbstractBiMap;->checkValue(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$b;->c:Lcom/google/common/collect/AbstractBiMap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractBiMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "entry no longer in map"

    invoke-static {v0, v1}, Lxd8;->v(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lb54;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lkc7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$b;->c:Lcom/google/common/collect/AbstractBiMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/AbstractBiMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    const-string v3, "value already present: %s"

    invoke-static {v0, v3, p1}, Lxd8;->j(ZLjava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$b;->b:Ljava/util/Map$Entry;

    invoke-interface {v0, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p0, Lcom/google/common/collect/AbstractBiMap$b;->c:Lcom/google/common/collect/AbstractBiMap;

    invoke-virtual {p0}, Lb54;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, La54;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v3}, Lkc7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3, v1}, Lxd8;->v(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/common/collect/AbstractBiMap$b;->c:Lcom/google/common/collect/AbstractBiMap;

    invoke-virtual {p0}, Lb54;->getKey()Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0, v2, v0, p1}, Lcom/google/common/collect/AbstractBiMap;->access$500(Lcom/google/common/collect/AbstractBiMap;Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
