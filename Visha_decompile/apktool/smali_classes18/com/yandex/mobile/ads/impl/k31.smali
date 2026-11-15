.class public final Lcom/yandex/mobile/ads/impl/k31;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/s01;

.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/o3;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponse"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/k31;->a:Lcom/yandex/mobile/ads/impl/o8;

    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/o3;->q()Lcom/yandex/mobile/ads/impl/bv1;

    move-result-object p2

    invoke-interface {p2}, Lcom/yandex/mobile/ads/impl/bv1;->f()V

    sget-object p2, Lcom/yandex/mobile/ads/impl/jn2;->a:Lcom/yandex/mobile/ads/impl/jn2;

    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/o3;->q()Lcom/yandex/mobile/ads/impl/bv1;

    move-result-object p3

    invoke-interface {p3}, Lcom/yandex/mobile/ads/impl/bv1;->b()Lcom/yandex/mobile/ads/impl/ol2;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/yandex/mobile/ads/impl/nd;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/t92;Lcom/yandex/mobile/ads/impl/ie;)Lcom/yandex/mobile/ads/impl/s01;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/k31;->b:Lcom/yandex/mobile/ads/impl/s01;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/k31;->c:Z

    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/k31;->d:Z

    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/k31;->e:Z

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 4

    .line 4
    new-instance v0, Lcom/yandex/mobile/ads/impl/op1;

    .line 5
    sget-object v1, Lcom/yandex/mobile/ads/impl/op1$b;->P:Lcom/yandex/mobile/ads/impl/op1$b;

    .line 6
    const-string v2, "event_type"

    invoke-static {v2, p1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    filled-new-array {p1}, [Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/a;->n([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object p1

    .line 7
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/k31;->a:Lcom/yandex/mobile/ads/impl/o8;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/o8;->a()Lcom/yandex/mobile/ads/impl/f;

    move-result-object v2

    .line 8
    const-string v3, "reportType"

    invoke-static {v1, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "reportData"

    invoke-static {p1, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/op1$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lkotlin/collections/a;->C(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v0, v1, p1, v2}, Lcom/yandex/mobile/ads/impl/op1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/yandex/mobile/ads/impl/f;)V

    .line 10
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/k31;->b:Lcom/yandex/mobile/ads/impl/s01;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/s01;->a(Lcom/yandex/mobile/ads/impl/op1;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/k31;->e:Z

    if-eqz v0, :cond_0

    .line 2
    const-string v0, "first_auto_swipe"

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/k31;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/k31;->e:Z

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/k31;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "first_click_on_controls"

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/k31;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/k31;->c:Z

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/k31;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "first_user_swipe"

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/k31;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/k31;->d:Z

    :cond_0
    return-void
.end method
