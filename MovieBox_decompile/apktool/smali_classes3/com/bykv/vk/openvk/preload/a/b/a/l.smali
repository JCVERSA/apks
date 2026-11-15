.class final Lcom/bykv/vk/openvk/preload/a/b/a/l;
.super Lcom/bykv/vk/openvk/preload/a/r;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bykv/vk/openvk/preload/a/r<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bykv/vk/openvk/preload/a/d;

.field private final b:Lcom/bykv/vk/openvk/preload/a/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bykv/vk/openvk/preload/a/r<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/preload/a/d;Lcom/bykv/vk/openvk/preload/a/r;Ljava/lang/reflect/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/preload/a/d;",
            "Lcom/bykv/vk/openvk/preload/a/r<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/r;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/a/b/a/l;->a:Lcom/bykv/vk/openvk/preload/a/d;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bykv/vk/openvk/preload/a/b/a/l;->b:Lcom/bykv/vk/openvk/preload/a/r;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/bykv/vk/openvk/preload/a/b/a/l;->c:Ljava/lang/reflect/Type;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Lcom/bykv/vk/openvk/preload/a/d/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/preload/a/d/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/a/l;->b:Lcom/bykv/vk/openvk/preload/a/r;

    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/preload/a/r;->a(Lcom/bykv/vk/openvk/preload/a/d/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/bykv/vk/openvk/preload/a/d/c;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/preload/a/d/c;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/a/l;->b:Lcom/bykv/vk/openvk/preload/a/r;

    .line 3
    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/a/b/a/l;->c:Ljava/lang/reflect/Type;

    if-eqz p2, :cond_1

    .line 4
    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    instance-of v2, v1, Ljava/lang/reflect/TypeVariable;

    if-nez v2, :cond_0

    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 5
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 6
    :cond_1
    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/a/b/a/l;->c:Ljava/lang/reflect/Type;

    if-eq v1, v2, :cond_2

    .line 7
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/a/l;->a:Lcom/bykv/vk/openvk/preload/a/d;

    invoke-static {v1}, Lcom/bykv/vk/openvk/preload/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/bykv/vk/openvk/preload/a/c/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/preload/a/d;->a(Lcom/bykv/vk/openvk/preload/a/c/a;)Lcom/bykv/vk/openvk/preload/a/r;

    move-result-object v0

    .line 8
    instance-of v1, v0, Lcom/bykv/vk/openvk/preload/a/b/a/h$a;

    if-eqz v1, :cond_2

    .line 9
    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/a/b/a/l;->b:Lcom/bykv/vk/openvk/preload/a/r;

    instance-of v2, v1, Lcom/bykv/vk/openvk/preload/a/b/a/h$a;

    if-nez v2, :cond_2

    move-object v0, v1

    .line 10
    :cond_2
    invoke-virtual {v0, p1, p2}, Lcom/bykv/vk/openvk/preload/a/r;->a(Lcom/bykv/vk/openvk/preload/a/d/c;Ljava/lang/Object;)V

    return-void
.end method
