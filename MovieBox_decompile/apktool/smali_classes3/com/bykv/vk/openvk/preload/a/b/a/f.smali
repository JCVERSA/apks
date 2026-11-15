.class public final Lcom/bykv/vk/openvk/preload/a/b/a/f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bykv/vk/openvk/preload/a/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/preload/a/b/a/f$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/bykv/vk/openvk/preload/a/b/b;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/preload/a/b/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/a/b/a/f;->a:Lcom/bykv/vk/openvk/preload/a/b/b;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/bykv/vk/openvk/preload/a/d;Lcom/bykv/vk/openvk/preload/a/c/a;)Lcom/bykv/vk/openvk/preload/a/r;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bykv/vk/openvk/preload/a/d;",
            "Lcom/bykv/vk/openvk/preload/a/c/a<",
            "TT;>;)",
            "Lcom/bykv/vk/openvk/preload/a/r<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/bykv/vk/openvk/preload/a/c/a;->b()Ljava/lang/reflect/Type;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p2}, Lcom/bykv/vk/openvk/preload/a/c/a;->a()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-class v2, Ljava/util/Map;

    .line 10
    .line 11
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    return-object p1

    .line 19
    :cond_0
    invoke-static {v0}, Lcom/bykv/vk/openvk/preload/a/b/a;->b(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/preload/a/b/a;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x0

    .line 28
    aget-object v2, v0, v1

    .line 29
    .line 30
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 31
    .line 32
    if-eq v2, v3, :cond_2

    .line 33
    .line 34
    const-class v3, Ljava/lang/Boolean;

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-static {v2}, Lcom/bykv/vk/openvk/preload/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/bykv/vk/openvk/preload/a/c/a;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {p1, v2}, Lcom/bykv/vk/openvk/preload/a/d;->a(Lcom/bykv/vk/openvk/preload/a/c/a;)Lcom/bykv/vk/openvk/preload/a/r;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    :goto_0
    move-object v7, v2

    .line 48
    goto :goto_2

    .line 49
    :cond_2
    :goto_1
    sget-object v2, Lcom/bykv/vk/openvk/preload/a/b/a/m;->c:Lcom/bykv/vk/openvk/preload/a/r;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :goto_2
    const/4 v2, 0x1

    .line 53
    aget-object v3, v0, v2

    .line 54
    .line 55
    invoke-static {v3}, Lcom/bykv/vk/openvk/preload/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/bykv/vk/openvk/preload/a/c/a;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {p1, v3}, Lcom/bykv/vk/openvk/preload/a/d;->a(Lcom/bykv/vk/openvk/preload/a/c/a;)Lcom/bykv/vk/openvk/preload/a/r;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    iget-object v3, p0, Lcom/bykv/vk/openvk/preload/a/b/a/f;->a:Lcom/bykv/vk/openvk/preload/a/b/b;

    .line 64
    .line 65
    invoke-virtual {v3, p2}, Lcom/bykv/vk/openvk/preload/a/b/b;->a(Lcom/bykv/vk/openvk/preload/a/c/a;)Lcom/bykv/vk/openvk/preload/a/b/h;

    .line 66
    .line 67
    .line 68
    move-result-object v10

    .line 69
    new-instance p2, Lcom/bykv/vk/openvk/preload/a/b/a/f$a;

    .line 70
    .line 71
    aget-object v6, v0, v1

    .line 72
    .line 73
    aget-object v8, v0, v2

    .line 74
    .line 75
    move-object v3, p2

    .line 76
    move-object v4, p0

    .line 77
    move-object v5, p1

    .line 78
    invoke-direct/range {v3 .. v10}, Lcom/bykv/vk/openvk/preload/a/b/a/f$a;-><init>(Lcom/bykv/vk/openvk/preload/a/b/a/f;Lcom/bykv/vk/openvk/preload/a/d;Ljava/lang/reflect/Type;Lcom/bykv/vk/openvk/preload/a/r;Ljava/lang/reflect/Type;Lcom/bykv/vk/openvk/preload/a/r;Lcom/bykv/vk/openvk/preload/a/b/h;)V

    .line 79
    .line 80
    .line 81
    return-object p2
.end method
