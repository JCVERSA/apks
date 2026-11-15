.class public final Lcom/yandex/mobile/ads/impl/wi$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/wi$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/wi$a$a$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/yandex/mobile/ads/impl/wi$a$a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/wi$a$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method private static synthetic a(Lcom/yandex/mobile/ads/impl/wi$a$a$a;IJJ)V
    .locals 6

    .line 7
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/wi$a$a$a;->b(Lcom/yandex/mobile/ads/impl/wi$a$a$a;)Lcom/yandex/mobile/ads/impl/wi$a;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/wi$a;->b(IJJ)V

    return-void
.end method

.method public static synthetic b(Lcom/yandex/mobile/ads/impl/wi$a$a$a;IJJ)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/yandex/mobile/ads/impl/wi$a$a;->a(Lcom/yandex/mobile/ads/impl/wi$a$a$a;IJJ)V

    return-void
.end method


# virtual methods
.method public final a(IJJ)V
    .locals 9

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wi$a$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/yandex/mobile/ads/impl/wi$a$a$a;

    .line 5
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/wi$a$a$a;->c(Lcom/yandex/mobile/ads/impl/wi$a$a$a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/wi$a$a$a;->a(Lcom/yandex/mobile/ads/impl/wi$a$a$a;)Landroid/os/Handler;

    move-result-object v0

    new-instance v8, Lcom/yandex/mobile/ads/impl/zr2;

    move-object v1, v8

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/yandex/mobile/ads/impl/zr2;-><init>(Lcom/yandex/mobile/ads/impl/wi$a$a$a;IJJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Landroid/os/Handler;Lcom/yandex/mobile/ads/impl/ed;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p0, p2}, Lcom/yandex/mobile/ads/impl/wi$a$a;->a(Lcom/yandex/mobile/ads/impl/ed;)V

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wi$a$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/yandex/mobile/ads/impl/wi$a$a$a;

    invoke-direct {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/wi$a$a$a;-><init>(Landroid/os/Handler;Lcom/yandex/mobile/ads/impl/ed;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/ed;)V
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/wi$a$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/wi$a$a$a;

    .line 9
    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/wi$a$a$a;->b(Lcom/yandex/mobile/ads/impl/wi$a$a$a;)Lcom/yandex/mobile/ads/impl/wi$a;

    move-result-object v2

    if-ne v2, p1, :cond_0

    const/4 v2, 0x1

    .line 10
    invoke-static {v1, v2}, Lcom/yandex/mobile/ads/impl/wi$a$a$a;->d(Lcom/yandex/mobile/ads/impl/wi$a$a$a;Z)V

    .line 11
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/wi$a$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method
