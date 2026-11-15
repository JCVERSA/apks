.class final Lcom/bykv/vk/openvk/preload/a/b/a/f$a;
.super Lcom/bykv/vk/openvk/preload/a/r;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/preload/a/b/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bykv/vk/openvk/preload/a/r<",
        "Ljava/util/Map<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bykv/vk/openvk/preload/a/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bykv/vk/openvk/preload/a/r<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/bykv/vk/openvk/preload/a/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bykv/vk/openvk/preload/a/r<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/bykv/vk/openvk/preload/a/b/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bykv/vk/openvk/preload/a/b/h<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/preload/a/b/a/f;Lcom/bykv/vk/openvk/preload/a/d;Ljava/lang/reflect/Type;Lcom/bykv/vk/openvk/preload/a/r;Ljava/lang/reflect/Type;Lcom/bykv/vk/openvk/preload/a/r;Lcom/bykv/vk/openvk/preload/a/b/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/preload/a/d;",
            "Ljava/lang/reflect/Type;",
            "Lcom/bykv/vk/openvk/preload/a/r<",
            "TK;>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/bykv/vk/openvk/preload/a/r<",
            "TV;>;",
            "Lcom/bykv/vk/openvk/preload/a/b/h<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/r;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/bykv/vk/openvk/preload/a/b/a/l;

    .line 5
    .line 6
    invoke-direct {p1, p2, p4, p3}, Lcom/bykv/vk/openvk/preload/a/b/a/l;-><init>(Lcom/bykv/vk/openvk/preload/a/d;Lcom/bykv/vk/openvk/preload/a/r;Ljava/lang/reflect/Type;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/a/b/a/f$a;->a:Lcom/bykv/vk/openvk/preload/a/r;

    .line 10
    .line 11
    new-instance p1, Lcom/bykv/vk/openvk/preload/a/b/a/l;

    .line 12
    .line 13
    invoke-direct {p1, p2, p6, p5}, Lcom/bykv/vk/openvk/preload/a/b/a/l;-><init>(Lcom/bykv/vk/openvk/preload/a/d;Lcom/bykv/vk/openvk/preload/a/r;Ljava/lang/reflect/Type;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/a/b/a/f$a;->b:Lcom/bykv/vk/openvk/preload/a/r;

    .line 17
    .line 18
    iput-object p7, p0, Lcom/bykv/vk/openvk/preload/a/b/a/f$a;->c:Lcom/bykv/vk/openvk/preload/a/b/h;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/bykv/vk/openvk/preload/a/d/a;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/a/d/a;->f()Lcom/bykv/vk/openvk/preload/a/d/b;

    move-result-object v0

    .line 9
    sget-object v1, Lcom/bykv/vk/openvk/preload/a/d/b;->i:Lcom/bykv/vk/openvk/preload/a/d/b;

    if-ne v0, v1, :cond_0

    .line 10
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/a/d/a;->j()V

    const/4 p1, 0x0

    return-object p1

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/a/b/a/f$a;->c:Lcom/bykv/vk/openvk/preload/a/b/h;

    invoke-interface {v1}, Lcom/bykv/vk/openvk/preload/a/b/h;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 12
    sget-object v2, Lcom/bykv/vk/openvk/preload/a/d/b;->a:Lcom/bykv/vk/openvk/preload/a/d/b;

    const-string v3, "duplicate key: "

    if-ne v0, v2, :cond_3

    .line 13
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/a/d/a;->a()V

    .line 14
    :goto_0
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/a/d/a;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/a/d/a;->a()V

    .line 16
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/a/f$a;->a:Lcom/bykv/vk/openvk/preload/a/r;

    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/preload/a/r;->a(Lcom/bykv/vk/openvk/preload/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    .line 17
    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/a/b/a/f$a;->b:Lcom/bykv/vk/openvk/preload/a/r;

    invoke-virtual {v2, p1}, Lcom/bykv/vk/openvk/preload/a/r;->a(Lcom/bykv/vk/openvk/preload/a/d/a;)Ljava/lang/Object;

    move-result-object v2

    .line 18
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 19
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/a/d/a;->b()V

    goto :goto_0

    .line 20
    :cond_1
    new-instance p1, Lcom/bykv/vk/openvk/preload/a/p;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/bykv/vk/openvk/preload/a/p;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_2
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/a/d/a;->b()V

    goto :goto_2

    .line 22
    :cond_3
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/a/d/a;->c()V

    .line 23
    :goto_1
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/a/d/a;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 24
    sget-object v0, Lcom/bykv/vk/openvk/preload/a/b/e;->a:Lcom/bykv/vk/openvk/preload/a/b/e;

    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/preload/a/b/e;->a(Lcom/bykv/vk/openvk/preload/a/d/a;)V

    .line 25
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/a/f$a;->a:Lcom/bykv/vk/openvk/preload/a/r;

    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/preload/a/r;->a(Lcom/bykv/vk/openvk/preload/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    .line 26
    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/a/b/a/f$a;->b:Lcom/bykv/vk/openvk/preload/a/r;

    invoke-virtual {v2, p1}, Lcom/bykv/vk/openvk/preload/a/r;->a(Lcom/bykv/vk/openvk/preload/a/d/a;)Ljava/lang/Object;

    move-result-object v2

    .line 27
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_1

    .line 28
    :cond_4
    new-instance p1, Lcom/bykv/vk/openvk/preload/a/p;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/bykv/vk/openvk/preload/a/p;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_5
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/a/d/a;->d()V

    :goto_2
    return-object v1
.end method

.method public final synthetic a(Lcom/bykv/vk/openvk/preload/a/d/c;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/util/Map;

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/a/d/c;->h()Lcom/bykv/vk/openvk/preload/a/d/c;

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/a/d/c;->f()Lcom/bykv/vk/openvk/preload/a/d/c;

    .line 4
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bykv/vk/openvk/preload/a/d/c;->a(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/a/d/c;

    .line 6
    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/a/b/a/f$a;->b:Lcom/bykv/vk/openvk/preload/a/r;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/bykv/vk/openvk/preload/a/r;->a(Lcom/bykv/vk/openvk/preload/a/d/c;Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/a/d/c;->g()Lcom/bykv/vk/openvk/preload/a/d/c;

    return-void
.end method
