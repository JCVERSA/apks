.class public Lcom/google/common/collect/StandardTable$c$b$a;
.super Li3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/StandardTable$c$b;->d()Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/Map$Entry;

.field public final synthetic c:Lcom/google/common/collect/StandardTable$c$b;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/StandardTable$c$b;Ljava/util/Map$Entry;)V
    .locals 0

    iput-object p2, p0, Lcom/google/common/collect/StandardTable$c$b$a;->b:Ljava/util/Map$Entry;

    iput-object p1, p0, Lcom/google/common/collect/StandardTable$c$b$a;->c:Lcom/google/common/collect/StandardTable$c$b;

    invoke-direct {p0}, Li3;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/StandardTable$c$b$a;->b:Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/StandardTable$c$b$a;->b:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object p0, p0, Lcom/google/common/collect/StandardTable$c$b$a;->c:Lcom/google/common/collect/StandardTable$c$b;

    iget-object p0, p0, Lcom/google/common/collect/StandardTable$c$b;->e:Lcom/google/common/collect/StandardTable$c;

    iget-object p0, p0, Lcom/google/common/collect/StandardTable$c;->e:Ljava/lang/Object;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/StandardTable$c$b$a;->b:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object p0, p0, Lcom/google/common/collect/StandardTable$c$b$a;->c:Lcom/google/common/collect/StandardTable$c$b;

    iget-object p0, p0, Lcom/google/common/collect/StandardTable$c$b;->e:Lcom/google/common/collect/StandardTable$c;

    iget-object p0, p0, Lcom/google/common/collect/StandardTable$c;->e:Ljava/lang/Object;

    invoke-static {p1}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lr37;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
