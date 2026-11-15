.class public final Lcom/yandex/mobile/ads/impl/xs0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/xs0$a;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/Object;

.field private static volatile g:Lcom/yandex/mobile/ads/impl/xs0;

.field public static final synthetic h:I


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/at0;

.field private final b:Lcom/yandex/mobile/ads/impl/zs0;

.field private final c:Lcom/yandex/mobile/ads/impl/pw1;

.field private final d:Lcom/yandex/mobile/ads/impl/kx1;

.field private final e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/xs0;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    new-instance v2, Lcom/yandex/mobile/ads/impl/at0;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/at0;-><init>()V

    .line 2
    new-instance v3, Lcom/yandex/mobile/ads/impl/zs0;

    invoke-direct {v3}, Lcom/yandex/mobile/ads/impl/zs0;-><init>()V

    .line 3
    sget v0, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v4

    .line 4
    new-instance v5, Lcom/yandex/mobile/ads/impl/kx1;

    invoke-direct {v5}, Lcom/yandex/mobile/ads/impl/kx1;-><init>()V

    move-object v0, p0

    move-object v1, p1

    .line 5
    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/xs0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/at0;Lcom/yandex/mobile/ads/impl/zs0;Lcom/yandex/mobile/ads/impl/pw1;Lcom/yandex/mobile/ads/impl/kx1;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/at0;Lcom/yandex/mobile/ads/impl/zs0;Lcom/yandex/mobile/ads/impl/pw1;Lcom/yandex/mobile/ads/impl/kx1;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/xs0;->a:Lcom/yandex/mobile/ads/impl/at0;

    .line 8
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/xs0;->b:Lcom/yandex/mobile/ads/impl/zs0;

    .line 9
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/xs0;->c:Lcom/yandex/mobile/ads/impl/pw1;

    .line 10
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/xs0;->d:Lcom/yandex/mobile/ads/impl/kx1;

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "getApplicationContext(...)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/xs0;->e:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic a()Lcom/yandex/mobile/ads/impl/xs0;
    .locals 1

    .line 2
    sget-object v0, Lcom/yandex/mobile/ads/impl/xs0;->g:Lcom/yandex/mobile/ads/impl/xs0;

    return-object v0
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/xs0;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/yandex/mobile/ads/impl/xs0;->g:Lcom/yandex/mobile/ads/impl/xs0;

    return-void
.end method

.method public static final synthetic b()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/yandex/mobile/ads/impl/xs0;->f:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final c()Landroid/location/Location;
    .locals 4

    sget-object v0, Lcom/yandex/mobile/ads/impl/xs0;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/xs0;->c:Lcom/yandex/mobile/ads/impl/pw1;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/pw1;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/xs0;->d:Lcom/yandex/mobile/ads/impl/kx1;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/xs0;->e:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "context"

    invoke-static {v2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/kx1;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/xs0;->b:Lcom/yandex/mobile/ads/impl/zs0;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/xs0;->e:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/zs0;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Lx71;->c()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/mobile/ads/impl/ys0;

    invoke-interface {v3}, Lcom/yandex/mobile/ads/impl/ys0;->a()Landroid/location/Location;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    invoke-static {v2}, Lx71;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xs0;->a:Lcom/yandex/mobile/ads/impl/at0;

    invoke-virtual {p0, v1}, Lcom/yandex/mobile/ads/impl/at0;->a(Ljava/util/List;)Landroid/location/Location;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    monitor-exit v0

    return-object p0

    :goto_2
    monitor-exit v0

    throw p0
.end method
