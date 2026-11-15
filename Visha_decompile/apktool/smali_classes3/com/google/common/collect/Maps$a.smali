.class public Lcom/google/common/collect/Maps$a;
.super Li3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Maps;->z(Lcom/google/common/collect/Maps$j;Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/Map$Entry;

.field public final synthetic c:Lcom/google/common/collect/Maps$j;


# direct methods
.method public constructor <init>(Ljava/util/Map$Entry;Lcom/google/common/collect/Maps$j;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/Maps$a;->b:Ljava/util/Map$Entry;

    iput-object p2, p0, Lcom/google/common/collect/Maps$a;->c:Lcom/google/common/collect/Maps$j;

    invoke-direct {p0}, Li3;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/Maps$a;->b:Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/Maps$a;->c:Lcom/google/common/collect/Maps$j;

    iget-object v1, p0, Lcom/google/common/collect/Maps$a;->b:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object p0, p0, Lcom/google/common/collect/Maps$a;->b:Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/google/common/collect/Maps$j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
