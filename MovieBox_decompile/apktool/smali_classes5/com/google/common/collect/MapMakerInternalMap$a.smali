.class Lcom/google/common/collect/MapMakerInternalMap$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/common/collect/MapMakerInternalMap$u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/google/common/collect/MapMakerInternalMap$h;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$a;->d()Lcom/google/common/collect/MapMakerInternalMap$d;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/MapMakerInternalMap$h;)Lcom/google/common/collect/MapMakerInternalMap$u;
    .locals 0

    .line 1
    invoke-static {p2}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x0

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$a;->c(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/MapMakerInternalMap$d;)Lcom/google/common/collect/MapMakerInternalMap$u;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public c(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/MapMakerInternalMap$d;)Lcom/google/common/collect/MapMakerInternalMap$u;
    .locals 0

    .line 1
    return-object p0
.end method

.method public clear()V
    .locals 0

    .line 1
    return-void
.end method

.method public d()Lcom/google/common/collect/MapMakerInternalMap$d;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method
