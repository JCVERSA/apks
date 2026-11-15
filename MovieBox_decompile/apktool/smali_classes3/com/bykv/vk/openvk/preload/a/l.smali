.class public final Lcom/bykv/vk/openvk/preload/a/l;
.super Lcom/bykv/vk/openvk/preload/a/i;
.source "source.java"


# instance fields
.field private final a:Lcom/bykv/vk/openvk/preload/a/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bykv/vk/openvk/preload/a/b/g<",
            "Ljava/lang/String;",
            "Lcom/bykv/vk/openvk/preload/a/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/i;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/bykv/vk/openvk/preload/a/b/g;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/a/b/g;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/a/l;->a:Lcom/bykv/vk/openvk/preload/a/b/g;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/bykv/vk/openvk/preload/a/i;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/l;->a:Lcom/bykv/vk/openvk/preload/a/b/g;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    sget-object p2, Lcom/bykv/vk/openvk/preload/a/k;->a:Lcom/bykv/vk/openvk/preload/a/k;

    .line 6
    .line 7
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/bykv/vk/openvk/preload/a/b/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final d()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/bykv/vk/openvk/preload/a/i;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/l;->a:Lcom/bykv/vk/openvk/preload/a/b/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/preload/a/b/g;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-eq p1, p0, :cond_1

    .line 2
    .line 3
    instance-of v0, p1, Lcom/bykv/vk/openvk/preload/a/l;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Lcom/bykv/vk/openvk/preload/a/l;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/bykv/vk/openvk/preload/a/l;->a:Lcom/bykv/vk/openvk/preload/a/b/g;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/l;->a:Lcom/bykv/vk/openvk/preload/a/b/g;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    return p1

    .line 22
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 23
    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/l;->a:Lcom/bykv/vk/openvk/preload/a/b/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
