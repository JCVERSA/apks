.class final Lcom/yandex/mobile/ads/impl/sz$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/i40$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/sz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field private final b:Lcom/yandex/mobile/ads/impl/h40$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Lcom/yandex/mobile/ads/impl/g40;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Z

.field final synthetic e:Lcom/yandex/mobile/ads/impl/sz;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/sz;Lcom/yandex/mobile/ads/impl/h40$a;)V
    .locals 0
    .param p2    # Lcom/yandex/mobile/ads/impl/h40$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/sz$e;->e:Lcom/yandex/mobile/ads/impl/sz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/sz$e;->b:Lcom/yandex/mobile/ads/impl/h40$a;

    return-void
.end method

.method private synthetic a()V
    .locals 2

    .line 6
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/sz$e;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/sz$e;->c:Lcom/yandex/mobile/ads/impl/g40;

    if-eqz v0, :cond_1

    .line 8
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/sz$e;->b:Lcom/yandex/mobile/ads/impl/h40$a;

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/impl/g40;->a(Lcom/yandex/mobile/ads/impl/h40$a;)V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/sz$e;->e:Lcom/yandex/mobile/ads/impl/sz;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/sz;->d(Lcom/yandex/mobile/ads/impl/sz;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/sz$e;->d:Z

    return-void
.end method

.method public static synthetic a(Lcom/yandex/mobile/ads/impl/sz$e;Lcom/yandex/mobile/ads/impl/jc0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/sz$e;->b(Lcom/yandex/mobile/ads/impl/jc0;)V

    return-void
.end method

.method private b(Lcom/yandex/mobile/ads/impl/jc0;)V
    .locals 4

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/sz$e;->e:Lcom/yandex/mobile/ads/impl/sz;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/sz;->f(Lcom/yandex/mobile/ads/impl/sz;)I

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/yandex/mobile/ads/impl/sz$e;->d:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/sz;->j(Lcom/yandex/mobile/ads/impl/sz;)Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/sz$e;->b:Lcom/yandex/mobile/ads/impl/h40$a;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p1, v3}, Lcom/yandex/mobile/ads/impl/sz;->o(Lcom/yandex/mobile/ads/impl/sz;Landroid/os/Looper;Lcom/yandex/mobile/ads/impl/h40$a;Lcom/yandex/mobile/ads/impl/jc0;Z)Lcom/yandex/mobile/ads/impl/g40;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/sz$e;->c:Lcom/yandex/mobile/ads/impl/g40;

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/sz$e;->e:Lcom/yandex/mobile/ads/impl/sz;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/sz;->d(Lcom/yandex/mobile/ads/impl/sz;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic c(Lcom/yandex/mobile/ads/impl/sz$e;)V
    .locals 0

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/sz$e;->a()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/jc0;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/sz$e;->e:Lcom/yandex/mobile/ads/impl/sz;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/sz;->k(Lcom/yandex/mobile/ads/impl/sz;)Landroid/os/Handler;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v1, Lcom/yandex/mobile/ads/impl/tr2;

    invoke-direct {v1, p0, p1}, Lcom/yandex/mobile/ads/impl/tr2;-><init>(Lcom/yandex/mobile/ads/impl/sz$e;Lcom/yandex/mobile/ads/impl/jc0;)V

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final release()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/sz$e;->e:Lcom/yandex/mobile/ads/impl/sz;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/sz;->k(Lcom/yandex/mobile/ads/impl/sz;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/yandex/mobile/ads/impl/sr2;

    invoke-direct {v1, p0}, Lcom/yandex/mobile/ads/impl/sr2;-><init>(Lcom/yandex/mobile/ads/impl/sz$e;)V

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/impl/f92;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method
