.class Lcom/google/common/collect/MutableClassToInstanceMap$b$a;
.super Lcom/google/common/collect/o4;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/MutableClassToInstanceMap$b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/google/common/collect/MutableClassToInstanceMap$b;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MutableClassToInstanceMap$b;Ljava/util/Iterator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/MutableClassToInstanceMap$b$a;->b:Lcom/google/common/collect/MutableClassToInstanceMap$b;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/google/common/collect/o4;-><init>(Ljava/util/Iterator;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map$Entry;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MutableClassToInstanceMap$b$a;->b(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method b(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/common/collect/MutableClassToInstanceMap;->access$100(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
