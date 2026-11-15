.class final Landroidx/compose/ui/graphics/k0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/compose/ui/graphics/a4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/k0$a;,
        Landroidx/compose/ui/graphics/k0$b;
    }
.end annotation


# static fields
.field public static final e:Landroidx/compose/ui/graphics/k0$a;

.field private static f:Z


# instance fields
.field private final a:Landroid/view/ViewGroup;

.field private final b:Ljava/lang/Object;

.field private c:Landroidx/compose/ui/graphics/layer/view/DrawChildContainer;

.field private final d:Landroid/content/ComponentCallbacks2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/k0$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/k0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/ui/graphics/k0;->e:Landroidx/compose/ui/graphics/k0$a;

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    sput-boolean v0, Landroidx/compose/ui/graphics/k0;->f:Z

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/graphics/k0;->a:Landroid/view/ViewGroup;

    .line 5
    .line 6
    new-instance p1, Ljava/lang/Object;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/compose/ui/graphics/k0;->b:Ljava/lang/Object;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Landroidx/compose/ui/graphics/k0;->d:Landroid/content/ComponentCallbacks2;

    .line 15
    .line 16
    return-void
.end method

.method private final c(Landroid/view/View;)J
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Landroidx/compose/ui/graphics/k0$b;->a(Landroid/view/View;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-wide/16 v0, -0x1

    .line 13
    .line 14
    :goto_0
    return-wide v0
.end method

.method private final d(Landroid/view/ViewGroup;)Landroidx/compose/ui/graphics/layer/view/DrawChildContainer;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/k0;->c:Landroidx/compose/ui/graphics/layer/view/DrawChildContainer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Landroidx/compose/ui/graphics/layer/view/ViewLayerContainer;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Landroidx/compose/ui/graphics/layer/view/ViewLayerContainer;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Landroidx/compose/ui/graphics/k0;->c:Landroidx/compose/ui/graphics/layer/view/DrawChildContainer;

    .line 18
    .line 19
    move-object v0, v1

    .line 20
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Landroidx/compose/ui/graphics/layer/GraphicsLayer;
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/k0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/compose/ui/graphics/k0;->a:Landroid/view/ViewGroup;

    .line 5
    .line 6
    invoke-direct {p0, v1}, Landroidx/compose/ui/graphics/k0;->c(Landroid/view/View;)J

    .line 7
    .line 8
    .line 9
    move-result-wide v10

    .line 10
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    .line 12
    const/16 v2, 0x1d

    .line 13
    .line 14
    if-lt v1, v2, :cond_0

    .line 15
    .line 16
    new-instance v1, Landroidx/compose/ui/graphics/layer/c0;

    .line 17
    .line 18
    const/4 v7, 0x6

    .line 19
    const/4 v8, 0x0

    .line 20
    const/4 v5, 0x0

    .line 21
    const/4 v6, 0x0

    .line 22
    move-object v2, v1

    .line 23
    move-wide v3, v10

    .line 24
    invoke-direct/range {v2 .. v8}, Landroidx/compose/ui/graphics/layer/c0;-><init>(JLandroidx/compose/ui/graphics/n1;Lz/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    sget-boolean v1, Landroidx/compose/ui/graphics/k0;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    :try_start_1
    new-instance v1, Landroidx/compose/ui/graphics/layer/e;

    .line 35
    .line 36
    iget-object v3, p0, Landroidx/compose/ui/graphics/k0;->a:Landroid/view/ViewGroup;

    .line 37
    .line 38
    const/16 v8, 0xc

    .line 39
    .line 40
    const/4 v9, 0x0

    .line 41
    const/4 v6, 0x0

    .line 42
    const/4 v7, 0x0

    .line 43
    move-object v2, v1

    .line 44
    move-wide v4, v10

    .line 45
    invoke-direct/range {v2 .. v9}, Landroidx/compose/ui/graphics/layer/e;-><init>(Landroid/view/View;JLandroidx/compose/ui/graphics/n1;Lz/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_1
    const/4 v1, 0x0

    .line 50
    :try_start_2
    sput-boolean v1, Landroidx/compose/ui/graphics/k0;->f:Z

    .line 51
    .line 52
    new-instance v1, Landroidx/compose/ui/graphics/layer/d0;

    .line 53
    .line 54
    iget-object v2, p0, Landroidx/compose/ui/graphics/k0;->a:Landroid/view/ViewGroup;

    .line 55
    .line 56
    invoke-direct {p0, v2}, Landroidx/compose/ui/graphics/k0;->d(Landroid/view/ViewGroup;)Landroidx/compose/ui/graphics/layer/view/DrawChildContainer;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    const/16 v8, 0xc

    .line 61
    .line 62
    const/4 v9, 0x0

    .line 63
    const/4 v6, 0x0

    .line 64
    const/4 v7, 0x0

    .line 65
    move-object v2, v1

    .line 66
    move-wide v4, v10

    .line 67
    invoke-direct/range {v2 .. v9}, Landroidx/compose/ui/graphics/layer/d0;-><init>(Landroidx/compose/ui/graphics/layer/view/DrawChildContainer;JLandroidx/compose/ui/graphics/n1;Lz/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    new-instance v1, Landroidx/compose/ui/graphics/layer/d0;

    .line 72
    .line 73
    iget-object v2, p0, Landroidx/compose/ui/graphics/k0;->a:Landroid/view/ViewGroup;

    .line 74
    .line 75
    invoke-direct {p0, v2}, Landroidx/compose/ui/graphics/k0;->d(Landroid/view/ViewGroup;)Landroidx/compose/ui/graphics/layer/view/DrawChildContainer;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    const/16 v8, 0xc

    .line 80
    .line 81
    const/4 v9, 0x0

    .line 82
    const/4 v6, 0x0

    .line 83
    const/4 v7, 0x0

    .line 84
    move-object v2, v1

    .line 85
    move-wide v4, v10

    .line 86
    invoke-direct/range {v2 .. v9}, Landroidx/compose/ui/graphics/layer/d0;-><init>(Landroidx/compose/ui/graphics/layer/view/DrawChildContainer;JLandroidx/compose/ui/graphics/n1;Lz/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 87
    .line 88
    .line 89
    :goto_0
    new-instance v2, Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 90
    .line 91
    const/4 v3, 0x0

    .line 92
    invoke-direct {v2, v1, v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;-><init>(Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;Landroidx/compose/ui/graphics/layer/e0;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    .line 94
    .line 95
    monitor-exit v0

    .line 96
    return-object v2

    .line 97
    :goto_1
    monitor-exit v0

    .line 98
    throw v1
.end method

.method public b(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/k0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->H()V

    .line 5
    .line 6
    .line 7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0

    .line 13
    throw p1
.end method
