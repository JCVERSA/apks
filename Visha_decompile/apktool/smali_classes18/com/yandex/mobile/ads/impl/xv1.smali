.class public final Lcom/yandex/mobile/ads/impl/xv1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/mobile/ads/impl/i11;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/i11;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "integrationChecker"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/xv1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/xv1;->b:Lcom/yandex/mobile/ads/impl/i11;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/yx;
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/xv1;->b:Lcom/yandex/mobile/ads/impl/i11;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xv1;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/i11;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/i11$a;

    move-result-object p0

    sget-object v0, Lcom/yandex/mobile/ads/impl/i11$a$a;->a:Lcom/yandex/mobile/ads/impl/i11$a$a;

    invoke-static {p0, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/yandex/mobile/ads/impl/yx;

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/yandex/mobile/ads/impl/yx;-><init>(ZLjava/util/List;)V

    goto :goto_1

    :cond_0
    instance-of v0, p0, Lcom/yandex/mobile/ads/impl/i11$a$b;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/yandex/mobile/ads/impl/i11$a$b;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/i11$a$b;->a()Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/bp0;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/bp0;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/yandex/mobile/ads/impl/yx;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/yandex/mobile/ads/impl/yx;-><init>(ZLjava/util/List;)V

    :goto_1
    return-object p0

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
