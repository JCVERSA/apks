.class public Lcom/google/common/collect/Maps$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Maps;->a(Lcom/google/common/collect/Maps$j;)Lo74;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/Maps$j;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Maps$j;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/Maps$b;->b:Lcom/google/common/collect/Maps$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/Maps$b;->b:Lcom/google/common/collect/Maps$j;

    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->z(Lcom/google/common/collect/Maps$j;Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Maps$b;->a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method
