.class public Lcom/google/common/collect/MutableClassToInstanceMap$b;
.super Le54;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/MutableClassToInstanceMap;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/MutableClassToInstanceMap;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/MutableClassToInstanceMap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/MutableClassToInstanceMap$b;->b:Lcom/google/common/collect/MutableClassToInstanceMap;

    invoke-direct {p0}, Le54;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic delegate()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/MutableClassToInstanceMap$b;->delegate()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic delegate()Ljava/util/Collection;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/MutableClassToInstanceMap$b;->delegate()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public delegate()Ljava/util/Set;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/google/common/collect/MutableClassToInstanceMap$b;->b:Lcom/google/common/collect/MutableClassToInstanceMap;

    invoke-virtual {p0}, Lcom/google/common/collect/MutableClassToInstanceMap;->delegate()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lcom/google/common/collect/MutableClassToInstanceMap$b$a;

    invoke-virtual {p0}, Lcom/google/common/collect/MutableClassToInstanceMap$b;->delegate()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/MutableClassToInstanceMap$b$a;-><init>(Lcom/google/common/collect/MutableClassToInstanceMap$b;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lu44;->standardToArray()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lu44;->standardToArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
