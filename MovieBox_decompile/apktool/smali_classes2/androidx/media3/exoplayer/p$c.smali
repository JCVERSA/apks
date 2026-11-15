.class final Landroidx/media3/exoplayer/p$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/exoplayer/m4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# static fields
.field private static final e:Landroid/media/RouteDiscoveryPreference;


# instance fields
.field private a:Landroid/media/MediaRouter2;

.field private b:Landroid/media/MediaRouter2$RouteCallback;

.field private c:Landroid/media/MediaRouter2$ControllerCallback;

.field private d:Landroidx/media3/common/util/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Landroidx/media3/exoplayer/c0;->a()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/t;->a(Ljava/util/List;Z)Landroid/media/RouteDiscoveryPreference$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroidx/media3/exoplayer/d0;->a(Landroid/media/RouteDiscoveryPreference$Builder;)Landroid/media/RouteDiscoveryPreference;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Landroidx/media3/exoplayer/p$c;->e:Landroid/media/RouteDiscoveryPreference;

    .line 18
    .line 19
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/p$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroidx/media3/exoplayer/p$c;-><init>()V

    return-void
.end method

.method public static synthetic c(Landroidx/media3/exoplayer/p$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/p$c;->k()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Landroidx/media3/exoplayer/m4$a;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/p$c;->l(Landroidx/media3/exoplayer/m4$a;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Landroidx/media3/exoplayer/p$c;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/p$c;->m(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic f(Landroidx/media3/exoplayer/p$c;)Landroid/media/MediaRouter2;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/p$c;->a:Landroid/media/MediaRouter2;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Landroid/media/MediaRouter2;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/p$c;->j(Landroid/media/MediaRouter2;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic h(Landroidx/media3/exoplayer/p$c;)Landroidx/media3/common/util/g;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/p$c;->d:Landroidx/media3/common/util/g;

    .line 2
    .line 3
    return-object p0
.end method

.method private static i(Landroid/media/MediaRoute2Info;IZ)Z
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/b0;->a(Landroid/media/MediaRoute2Info;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    if-ne p0, v1, :cond_2

    .line 8
    .line 9
    if-eq p1, v1, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x2

    .line 12
    if-ne p1, p0, :cond_1

    .line 13
    .line 14
    :cond_0
    if-eqz p2, :cond_1

    .line 15
    .line 16
    move v0, v1

    .line 17
    :cond_1
    return v0

    .line 18
    :cond_2
    if-nez p0, :cond_3

    .line 19
    .line 20
    move v0, v1

    .line 21
    :cond_3
    return v0
.end method

.method private static j(Landroid/media/MediaRouter2;)Z
    .locals 3

    .line 1
    invoke-static {p0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroidx/media3/exoplayer/h0;->a(Ljava/lang/Object;)Landroid/media/MediaRouter2;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroidx/media3/exoplayer/v;->a(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$RoutingController;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroidx/media3/exoplayer/w;->a(Landroid/media/MediaRouter2$RoutingController;)Landroid/media/RoutingSessionInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Landroidx/media3/exoplayer/x;->a(Landroid/media/RoutingSessionInfo;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-static {p0}, Landroidx/media3/exoplayer/v;->a(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$RoutingController;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, Landroidx/media3/exoplayer/y;->a(Landroid/media/MediaRouter2$RoutingController;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-static {p0}, Landroidx/media3/exoplayer/v;->a(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$RoutingController;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0}, Landroidx/media3/exoplayer/z;->a(Landroid/media/MediaRouter2$RoutingController;)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-static {v2}, Landroidx/media3/exoplayer/a0;->a(Ljava/lang/Object;)Landroid/media/MediaRoute2Info;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-static {v2, v0, v1}, Landroidx/media3/exoplayer/p$c;->i(Landroid/media/MediaRoute2Info;IZ)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_0

    .line 60
    .line 61
    const/4 p0, 0x1

    .line 62
    return p0

    .line 63
    :cond_1
    const/4 p0, 0x0

    .line 64
    return p0
.end method

.method private synthetic k()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/p$c;->a:Landroid/media/MediaRouter2;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroidx/media3/exoplayer/h0;->a(Ljava/lang/Object;)Landroid/media/MediaRouter2;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Landroidx/media3/exoplayer/p$c;->c:Landroid/media/MediaRouter2$ControllerCallback;

    .line 12
    .line 13
    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Landroidx/media3/exoplayer/i0;->a(Ljava/lang/Object;)Landroid/media/MediaRouter2$ControllerCallback;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/j0;->a(Landroid/media/MediaRouter2;Landroid/media/MediaRouter2$ControllerCallback;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Landroidx/media3/exoplayer/p$c;->c:Landroid/media/MediaRouter2$ControllerCallback;

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/media3/exoplayer/p$c;->a:Landroid/media/MediaRouter2;

    .line 28
    .line 29
    iget-object v1, p0, Landroidx/media3/exoplayer/p$c;->b:Landroid/media/MediaRouter2$RouteCallback;

    .line 30
    .line 31
    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v1}, Landroidx/media3/exoplayer/k0;->a(Ljava/lang/Object;)Landroid/media/MediaRouter2$RouteCallback;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/u;->a(Landroid/media/MediaRouter2;Landroid/media/MediaRouter2$RouteCallback;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private static synthetic l(Landroidx/media3/exoplayer/m4$a;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/m4$a;->a(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic m(Landroid/content/Context;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/p$c;->d:Landroidx/media3/common/util/g;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroidx/media3/exoplayer/e0;->a(Landroid/content/Context;)Landroid/media/MediaRouter2;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Landroidx/media3/exoplayer/p$c;->a:Landroid/media/MediaRouter2;

    .line 11
    .line 12
    new-instance p1, Landroidx/media3/exoplayer/p$c$a;

    .line 13
    .line 14
    invoke-direct {p1, p0}, Landroidx/media3/exoplayer/p$c$a;-><init>(Landroidx/media3/exoplayer/p$c;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Landroidx/media3/exoplayer/p$c;->b:Landroid/media/MediaRouter2$RouteCallback;

    .line 18
    .line 19
    iget-object p1, p0, Landroidx/media3/exoplayer/p$c;->d:Landroidx/media3/common/util/g;

    .line 20
    .line 21
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    new-instance v0, Landroidx/media3/exoplayer/o0;

    .line 25
    .line 26
    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/o0;-><init>(Landroidx/media3/common/util/g;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Landroidx/media3/exoplayer/p$c;->a:Landroid/media/MediaRouter2;

    .line 30
    .line 31
    iget-object v1, p0, Landroidx/media3/exoplayer/p$c;->b:Landroid/media/MediaRouter2$RouteCallback;

    .line 32
    .line 33
    sget-object v2, Landroidx/media3/exoplayer/p$c;->e:Landroid/media/RouteDiscoveryPreference;

    .line 34
    .line 35
    invoke-static {p1, v0, v1, v2}, Landroidx/media3/exoplayer/f0;->a(Landroid/media/MediaRouter2;Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$RouteCallback;Landroid/media/RouteDiscoveryPreference;)V

    .line 36
    .line 37
    .line 38
    new-instance p1, Landroidx/media3/exoplayer/p$c$b;

    .line 39
    .line 40
    invoke-direct {p1, p0}, Landroidx/media3/exoplayer/p$c$b;-><init>(Landroidx/media3/exoplayer/p$c;)V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Landroidx/media3/exoplayer/p$c;->c:Landroid/media/MediaRouter2$ControllerCallback;

    .line 44
    .line 45
    iget-object v1, p0, Landroidx/media3/exoplayer/p$c;->a:Landroid/media/MediaRouter2;

    .line 46
    .line 47
    invoke-static {v1, v0, p1}, Landroidx/media3/exoplayer/g0;->a(Landroid/media/MediaRouter2;Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$ControllerCallback;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Landroidx/media3/exoplayer/p$c;->d:Landroidx/media3/common/util/g;

    .line 51
    .line 52
    iget-object v0, p0, Landroidx/media3/exoplayer/p$c;->a:Landroid/media/MediaRouter2;

    .line 53
    .line 54
    invoke-static {v0}, Landroidx/media3/exoplayer/p$c;->j(Landroid/media/MediaRouter2;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/g;->i(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/p$c;->d:Landroidx/media3/common/util/g;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroidx/media3/common/util/g;->d()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    :goto_0
    return v0
.end method

.method public b(Landroidx/media3/exoplayer/m4$a;Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Landroidx/media3/common/util/i;)V
    .locals 7

    .line 1
    new-instance v6, Landroidx/media3/common/util/g;

    .line 2
    .line 3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 4
    .line 5
    new-instance v5, Landroidx/media3/exoplayer/m0;

    .line 6
    .line 7
    invoke-direct {v5, p1}, Landroidx/media3/exoplayer/m0;-><init>(Landroidx/media3/exoplayer/m4$a;)V

    .line 8
    .line 9
    .line 10
    move-object v0, v6

    .line 11
    move-object v2, p4

    .line 12
    move-object v3, p3

    .line 13
    move-object v4, p5

    .line 14
    invoke-direct/range {v0 .. v5}, Landroidx/media3/common/util/g;-><init>(Ljava/lang/Object;Landroid/os/Looper;Landroid/os/Looper;Landroidx/media3/common/util/i;Landroidx/media3/common/util/g$a;)V

    .line 15
    .line 16
    .line 17
    iput-object v6, p0, Landroidx/media3/exoplayer/p$c;->d:Landroidx/media3/common/util/g;

    .line 18
    .line 19
    new-instance p1, Landroidx/media3/exoplayer/n0;

    .line 20
    .line 21
    invoke-direct {p1, p0, p2}, Landroidx/media3/exoplayer/n0;-><init>(Landroidx/media3/exoplayer/p$c;Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v6, p1}, Landroidx/media3/common/util/g;->h(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public disable()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/p$c;->d:Landroidx/media3/common/util/g;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/media3/common/util/g;

    .line 8
    .line 9
    new-instance v1, Landroidx/media3/exoplayer/l0;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/l0;-><init>(Landroidx/media3/exoplayer/p$c;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/g;->h(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
