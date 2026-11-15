.class final Lcom/bykv/vk/openvk/preload/a/b/a/m$25;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bykv/vk/openvk/preload/a/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/preload/a/b/a/m;->a(Lcom/bykv/vk/openvk/preload/a/c/a;Lcom/bykv/vk/openvk/preload/a/r;)Lcom/bykv/vk/openvk/preload/a/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/bykv/vk/openvk/preload/a/c/a;

.field private synthetic b:Lcom/bykv/vk/openvk/preload/a/r;


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/preload/a/c/a;Lcom/bykv/vk/openvk/preload/a/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/a/b/a/m$25;->a:Lcom/bykv/vk/openvk/preload/a/c/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bykv/vk/openvk/preload/a/b/a/m$25;->b:Lcom/bykv/vk/openvk/preload/a/r;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lcom/bykv/vk/openvk/preload/a/d;Lcom/bykv/vk/openvk/preload/a/c/a;)Lcom/bykv/vk/openvk/preload/a/r;
    .locals 0
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
    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/a/b/a/m$25;->a:Lcom/bykv/vk/openvk/preload/a/c/a;

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Lcom/bykv/vk/openvk/preload/a/c/a;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/a/b/a/m$25;->b:Lcom/bykv/vk/openvk/preload/a/r;

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return-object p1
.end method
