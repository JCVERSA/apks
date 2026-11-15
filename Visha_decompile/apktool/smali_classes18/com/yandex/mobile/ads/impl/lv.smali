.class public final Lcom/yandex/mobile/ads/impl/lv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/f42;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/lv$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/du;

.field private final b:Lcom/yandex/mobile/ads/impl/t8;

.field private final c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/du;Lcom/yandex/mobile/ads/impl/t8;Landroid/os/Handler;)V
    .locals 1

    const-string v0, "customClickHandler"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultReceiver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/lv;->a:Lcom/yandex/mobile/ads/impl/du;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/lv;->b:Lcom/yandex/mobile/ads/impl/t8;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/lv;->c:Landroid/os/Handler;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/lv;)Lcom/yandex/mobile/ads/impl/t8;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lv;->b:Lcom/yandex/mobile/ads/impl/t8;

    return-object p0
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/lv;Ljava/lang/String;)V
    .locals 1

    .line 8
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$targetUrl"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Lcom/yandex/mobile/ads/impl/lv$a;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/lv$a;-><init>(Lcom/yandex/mobile/ads/impl/lv;)V

    .line 10
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lv;->a:Lcom/yandex/mobile/ads/impl/du;

    invoke-interface {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/du;->a(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/eu;)V

    return-void
.end method

.method public static synthetic b(Lcom/yandex/mobile/ads/impl/lv;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/lv;->a(Lcom/yandex/mobile/ads/impl/lv;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/tp1;Ljava/lang/String;)V
    .locals 3

    .line 2
    const-string v0, "reporter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetUrl"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    const-string v1, "click_type"

    const-string v2, "custom"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v1, Lcom/yandex/mobile/ads/impl/v82;->a:Lcom/yandex/mobile/ads/impl/v82;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/v82;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "click_url"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v1, Lcom/yandex/mobile/ads/impl/op1$b;->c:Lcom/yandex/mobile/ads/impl/op1$b;

    invoke-interface {p1, v0}, Lcom/yandex/mobile/ads/impl/tp1;->a(Ljava/util/HashMap;)V

    .line 7
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/lv;->c:Landroid/os/Handler;

    new-instance v0, Lumd;

    invoke-direct {v0, p0, p2}, Lumd;-><init>(Lcom/yandex/mobile/ads/impl/lv;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
