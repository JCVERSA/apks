.class public final Lcom/yandex/mobile/ads/impl/fb0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/fb0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/fb0$b;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/kx1;Lcom/yandex/mobile/ads/impl/uq;Lcom/yandex/mobile/ads/impl/uq1;Lcom/yandex/mobile/ads/impl/gf1;)Lcom/yandex/mobile/ads/impl/fb0$a;
    .locals 7

    .line 1
    const-string v0, "context"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "sensitiveModeChecker"

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "configuration"

    invoke-static {p2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "resourceUtils"

    invoke-static {p3, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "optOutRepository"

    invoke-static {p4, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/uq;->b()Lcom/yandex/mobile/ads/impl/o50;

    move-result-object v1

    .line 3
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/uq;->a()Lcom/yandex/mobile/ads/impl/jc;

    move-result-object v2

    .line 4
    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/kx1;->b(Landroid/content/Context;)Z

    move-result p1

    .line 5
    new-instance v3, Lcom/yandex/mobile/ads/impl/fb0$a;

    invoke-direct {v3, p1}, Lcom/yandex/mobile/ads/impl/fb0$a;-><init>(Z)V

    .line 6
    invoke-virtual {v3, p0}, Lcom/yandex/mobile/ads/impl/fb0$a;->b(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->L0()Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p1

    .line 8
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/jc;->a()Lcom/yandex/mobile/ads/impl/lc;

    move-result-object v3

    .line 9
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/jc;->b()Z

    move-result v4

    .line 10
    invoke-virtual {p1, v3, v4}, Lcom/yandex/mobile/ads/impl/fb0$a;->a(Lcom/yandex/mobile/ads/impl/lc;Z)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p1

    .line 11
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/jc;->c()Lcom/yandex/mobile/ads/impl/lc;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/yandex/mobile/ads/impl/fb0$a;->a(Lcom/yandex/mobile/ads/impl/lc;)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p1

    .line 12
    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 13
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 14
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 16
    const-string v4, "level"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 17
    const-string v6, "scale"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-le v4, v5, :cond_0

    if-lez v3, :cond_0

    int-to-float v4, v4

    int-to-float v3, v3

    div-float/2addr v4, v3

    const/16 v3, 0x64

    int-to-float v3, v3

    mul-float/2addr v4, v3

    .line 18
    invoke-static {v4}, Ls86;->c(F)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v3, 0x0

    .line 19
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v3}, Lcom/yandex/mobile/ads/impl/sp0;->c([Ljava/lang/Object;)V

    .line 20
    :cond_0
    :goto_0
    invoke-virtual {p1, v2}, Lcom/yandex/mobile/ads/impl/fb0$a;->b(Ljava/lang/Integer;)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->M0()Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p1

    .line 22
    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/fb0$a;->g(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p1

    .line 23
    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/fb0$a;->h(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p1

    .line 24
    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/fb0$a;->i(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p1

    .line 25
    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/fb0$a;->l(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p1

    .line 26
    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/fb0$a;->k(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->P0()Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p1

    .line 28
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/kx1;->a(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/yandex/mobile/ads/impl/fb0$a;->a(Z)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p1

    .line 29
    invoke-static {}, Lcom/yandex/mobile/ads/impl/oa;->a()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/yandex/mobile/ads/impl/fb0$a;->a(J)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p1

    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->N0()Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p1

    .line 31
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o50;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p0, v2}, Lcom/yandex/mobile/ads/impl/fb0$a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p1

    .line 32
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o50;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/yandex/mobile/ads/impl/fb0$a;->j(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p1

    .line 33
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o50;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/yandex/mobile/ads/impl/fb0$a;->e(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p1

    .line 34
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/uq;->c()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/yandex/mobile/ads/impl/fb0$a;->a(Ljava/util/List;)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p1

    .line 35
    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/fb0$a;->d(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->Q0()Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p1

    .line 37
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 40
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    .line 41
    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    .line 42
    invoke-virtual {p1, p2}, Lcom/yandex/mobile/ads/impl/fb0$a;->a(I)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->K0()Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p1

    .line 44
    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/fb0$a;->e(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p1

    .line 45
    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/fb0$a;->f(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p1

    .line 46
    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/fb0$a;->c(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p1

    .line 47
    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/fb0$a;->j(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p1

    .line 48
    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/fb0$a;->n(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p1

    .line 49
    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/fb0$a;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p1

    .line 50
    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/fb0$a;->o(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p1

    .line 51
    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/fb0$a;->m(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p1

    .line 52
    invoke-virtual {p1, v1}, Lcom/yandex/mobile/ads/impl/fb0$a;->a(Lcom/yandex/mobile/ads/impl/o50;)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p1

    .line 53
    invoke-virtual {p4}, Lcom/yandex/mobile/ads/impl/gf1;->a()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/yandex/mobile/ads/impl/fb0$a;->b(Z)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p1

    .line 54
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/ih1;->c(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/fb0$a;->a(Ljava/lang/Boolean;)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p0

    .line 55
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/fb0$a;->O0()Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/kx1;)Lcom/yandex/mobile/ads/impl/fb0$a;
    .locals 3

    .line 56
    new-instance v0, Lcom/yandex/mobile/ads/impl/uq1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/uq1;-><init>()V

    .line 57
    new-instance v1, Lcom/yandex/mobile/ads/impl/gf1;

    .line 58
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/rs0;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ps0;

    move-result-object v2

    .line 59
    invoke-direct {v1, p0, v2}, Lcom/yandex/mobile/ads/impl/gf1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/ps0;)V

    .line 60
    const-string v2, "context"

    invoke-static {p0, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "adConfiguration"

    invoke-static {p1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "sensitiveModeChecker"

    invoke-static {p2, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "resourceUtils"

    invoke-static {v0, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "optOutRepository"

    invoke-static {v1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o3;->g()Lcom/yandex/mobile/ads/impl/uq;

    move-result-object v2

    .line 62
    invoke-static {p0, p2, v2, v0, v1}, Lcom/yandex/mobile/ads/impl/fb0$b;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/kx1;Lcom/yandex/mobile/ads/impl/uq;Lcom/yandex/mobile/ads/impl/uq1;Lcom/yandex/mobile/ads/impl/gf1;)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p2

    .line 63
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o3;->a()Lcom/yandex/mobile/ads/impl/v7;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yandex/mobile/ads/impl/fb0$a;->a(Lcom/yandex/mobile/ads/impl/v7;)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p2

    .line 64
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o3;->b()Lcom/yandex/mobile/ads/impl/ts;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yandex/mobile/ads/impl/fb0$a;->a(Lcom/yandex/mobile/ads/impl/ts;)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p2

    .line 65
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o3;->d()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yandex/mobile/ads/impl/fb0$a;->a(Ljava/lang/Integer;)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p2

    .line 66
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o3;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yandex/mobile/ads/impl/fb0$a;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p2

    .line 67
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o3;->p()Lcom/yandex/mobile/ads/impl/ca1;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yandex/mobile/ads/impl/fb0$a;->a(Lcom/yandex/mobile/ads/impl/ca1;)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p2

    .line 68
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o3;->r()Lcom/yandex/mobile/ads/impl/gz1;

    move-result-object v0

    invoke-virtual {p2, p0, v0}, Lcom/yandex/mobile/ads/impl/fb0$a;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/gz1;)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p2

    .line 69
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o3;->s()Lcom/yandex/mobile/ads/impl/fa1;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yandex/mobile/ads/impl/fb0$a;->a(Lcom/yandex/mobile/ads/impl/fa1;)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p2

    .line 70
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/fb0$a;->R0()Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p2

    .line 71
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o3;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yandex/mobile/ads/impl/fb0$a;->b(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p2

    .line 72
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o3;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yandex/mobile/ads/impl/fb0$a;->c(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p2

    .line 73
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o3;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yandex/mobile/ads/impl/fb0$a;->f(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p2

    .line 74
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o3;->o()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/yandex/mobile/ads/impl/fb0$a;->a(I)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p2

    .line 75
    invoke-virtual {p2, p0, p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p0

    return-object p0
.end method
