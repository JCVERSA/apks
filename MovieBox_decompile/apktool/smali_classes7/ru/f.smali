.class public final Lru/f;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final f:Lkotlin/Lazy;


# instance fields
.field public a:Z

.field public final b:Lcom/transsion/upgradesdk/net/g;

.field public c:J

.field public final d:Ljava/lang/String;

.field public final e:Lru/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 2
    .line 3
    sget-object v1, Lcom/transsion/upgradesdk/net/f;->a:Lcom/transsion/upgradesdk/net/f;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lru/f;->f:Lkotlin/Lazy;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsion/upgradesdk/net/g;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/transsion/upgradesdk/net/g;-><init>(Lru/f;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lru/f;->b:Lcom/transsion/upgradesdk/net/g;

    .line 10
    .line 11
    const-string v0, "UpgradeSdkManager"

    .line 12
    .line 13
    iput-object v0, p0, Lru/f;->d:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v0, Lru/e;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lru/e;-><init>(Lru/f;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lru/f;->e:Lru/e;

    .line 21
    .line 22
    return-void
.end method

.method public static final b(Lru/f;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string p0, "connectivityManager"

    .line 5
    .line 6
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lru/f;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lru/f;->a:Z

    .line 7
    .line 8
    sget-object v0, Lpu/a;->a:Landroid/app/Application;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const-string v2, "application"

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    move-object v0, v1

    .line 20
    :goto_0
    const-string v3, "connectivity"

    .line 21
    .line 22
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v3, "null cannot be cast to non-null type android.net.ConnectivityManager"

    .line 27
    .line 28
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 32
    .line 33
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 34
    .line 35
    const/16 v4, 0x18

    .line 36
    .line 37
    if-lt v3, v4, :cond_1

    .line 38
    .line 39
    iget-object v1, p0, Lru/f;->e:Lru/e;

    .line 40
    .line 41
    invoke-static {v0, v1}, Le2/b;->a(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    .line 46
    .line 47
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 48
    .line 49
    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    sget-object v3, Lpu/a;->a:Landroid/app/Application;

    .line 53
    .line 54
    if-eqz v3, :cond_2

    .line 55
    .line 56
    move-object v1, v3

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :goto_1
    iget-object v2, p0, Lru/f;->b:Lcom/transsion/upgradesdk/net/g;

    .line 62
    .line 63
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 64
    .line 65
    .line 66
    :cond_3
    :goto_2
    return-void
.end method
