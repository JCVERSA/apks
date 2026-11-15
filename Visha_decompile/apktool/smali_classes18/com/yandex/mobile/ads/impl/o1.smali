.class public final Lcom/yandex/mobile/ads/impl/o1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/o1$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/yandex/mobile/ads/impl/o1$a;

.field private static volatile c:Lcom/yandex/mobile/ads/impl/o1;


# instance fields
.field private final a:Ljava/util/LinkedHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/mobile/ads/impl/o1$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/o1$a;-><init>(I)V

    sput-object v0, Lcom/yandex/mobile/ads/impl/o1;->b:Lcom/yandex/mobile/ads/impl/o1$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/o1;->a:Ljava/util/LinkedHashMap;

    .line 3
    new-instance v0, Lcom/yandex/mobile/ads/impl/y0;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/y0;-><init>()V

    .line 4
    const-string v1, "window_type_browser"

    invoke-virtual {p0, v1, v0}, Lcom/yandex/mobile/ads/impl/o1;->a(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/n1;)V

    .line 5
    new-instance v0, Lcom/yandex/mobile/ads/impl/s1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/s1;-><init>()V

    .line 6
    const-string v1, "window_type_activity_result"

    invoke-virtual {p0, v1, v0}, Lcom/yandex/mobile/ads/impl/o1;->a(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/n1;)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/o1;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lcom/yandex/mobile/ads/impl/o1;
    .locals 1

    .line 9
    sget-object v0, Lcom/yandex/mobile/ads/impl/o1;->c:Lcom/yandex/mobile/ads/impl/o1;

    return-object v0
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/o1;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/yandex/mobile/ads/impl/o1;->c:Lcom/yandex/mobile/ads/impl/o1;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/app/Activity;Landroid/widget/RelativeLayout;Lcom/yandex/mobile/ads/impl/v1;Lcom/yandex/mobile/ads/impl/e1;Landroid/content/Intent;Landroid/view/Window;Lcom/yandex/mobile/ads/impl/c1;)Lcom/yandex/mobile/ads/impl/m1;
    .locals 10

    move-object v1, p0

    move-object v0, p5

    monitor-enter p0

    .line 2
    :try_start_0
    const-string v2, "activity"

    move-object v3, p1

    invoke-static {p1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "rootLayout"

    move-object v4, p2

    invoke-static {p2, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "listener"

    move-object v5, p3

    invoke-static {p3, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "eventController"

    move-object v6, p4

    invoke-static {p4, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "intent"

    invoke-static {p5, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "window"

    move-object/from16 v8, p6

    invoke-static {v8, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    const-string v2, "window_type"

    invoke-virtual {p5, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v7, v1, Lcom/yandex/mobile/ads/impl/o1;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/mobile/ads/impl/n1;

    if-eqz v2, :cond_0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 5
    invoke-interface/range {v2 .. v9}, Lcom/yandex/mobile/ads/impl/n1;->a(Landroid/app/Activity;Landroid/widget/RelativeLayout;Lcom/yandex/mobile/ads/impl/v1;Lcom/yandex/mobile/ads/impl/e1;Landroid/content/Intent;Landroid/view/Window;Lcom/yandex/mobile/ads/impl/c1;)Lcom/yandex/mobile/ads/impl/m1;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/n1;)V
    .locals 1

    monitor-enter p0

    .line 6
    :try_start_0
    const-string v0, "windowType"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "creator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/o1;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/o1;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
