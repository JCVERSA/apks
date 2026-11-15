.class public final Lcom/transsion/mediationads/manager/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/mediationads/manager/a$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/transsion/mediationads/manager/a$a;

.field public static volatile b:Lcom/transsion/mediationads/manager/a;

.field public static volatile c:Z

.field public static d:Lcom/transsion/mediationads/beans/SplashInterstitialStrategy;

.field public static e:Lcom/transsion/mediationads/beans/SplashInterstitialStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/mediationads/manager/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/mediationads/manager/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/mediationads/manager/a;->a:Lcom/transsion/mediationads/manager/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/mediationads/manager/a;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lcom/transsion/mediationads/manager/a;
    .locals 1

    sget-object v0, Lcom/transsion/mediationads/manager/a;->b:Lcom/transsion/mediationads/manager/a;

    return-object v0
.end method

.method public static final synthetic b(Lcom/transsion/mediationads/manager/a;)V
    .locals 0

    sput-object p0, Lcom/transsion/mediationads/manager/a;->b:Lcom/transsion/mediationads/manager/a;

    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/mediationads/manager/a;->f()Lcom/transsion/mediationads/beans/SplashInterstitialStrategy;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/transsion/mediationads/manager/b;->a:Lcom/transsion/mediationads/manager/b$a;

    invoke-virtual {v0}, Lcom/transsion/mediationads/manager/b$a;->a()Lcom/transsion/mediationads/manager/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/mediationads/beans/SplashInterstitialStrategy;->getProtectDays()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/mediationads/manager/b;->g(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final d()Z
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/mediationads/manager/a;->g()Lcom/transsion/mediationads/beans/SplashInterstitialStrategy;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/transsion/mediationads/manager/b;->a:Lcom/transsion/mediationads/manager/b$a;

    invoke-virtual {v0}, Lcom/transsion/mediationads/manager/b$a;->a()Lcom/transsion/mediationads/manager/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/mediationads/beans/SplashInterstitialStrategy;->getProtectDays()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/mediationads/manager/b;->g(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final e(Lcom/transsion/mediationads/beans/SplashInterstitialStrategy;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/mediationads/beans/SplashInterstitialStrategy;->getProtectDays()I

    move-result p0

    if-gez p0, :cond_1

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/transsion/mediationads/beans/SplashInterstitialStrategy;->setProtectDays(I)V

    :cond_1
    return-void
.end method

.method public final f()Lcom/transsion/mediationads/beans/SplashInterstitialStrategy;
    .locals 0

    sget-object p0, Lcom/transsion/mediationads/manager/a;->e:Lcom/transsion/mediationads/beans/SplashInterstitialStrategy;

    return-object p0
.end method

.method public final g()Lcom/transsion/mediationads/beans/SplashInterstitialStrategy;
    .locals 0

    sget-object p0, Lcom/transsion/mediationads/manager/a;->d:Lcom/transsion/mediationads/beans/SplashInterstitialStrategy;

    return-object p0
.end method

.method public final h()Z
    .locals 0

    sget-boolean p0, Lcom/transsion/mediationads/manager/a;->c:Z

    return p0
.end method

.method public final i(Lcom/transsion/mediationads/beans/SplashInterstitialStrategy;)Z
    .locals 2

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/mediationads/beans/SplashInterstitialStrategy;->getPositionType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/mediationads/beans/SplashInterstitialStrategy;->getPositionType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    :cond_1
    move p0, v1

    :cond_2
    return p0
.end method

.method public final j()V
    .locals 1

    const/4 p0, 0x1

    sput-boolean p0, Lcom/transsion/mediationads/manager/a;->c:Z

    const-string p0, "mediation_ad_SplashInterstitialStrategyManagerCore"

    const-string v0, "Splash/interstitial strategy marked parse completed without cache data"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final k(Lcom/transsion/mediationads/beans/AdDisplayResponse;)V
    .locals 6

    const-string v0, "mediation_ad_SplashInterstitialStrategyManagerCore"

    const-string v1, "adDisplayResponse"

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1}, Lcom/transsion/mediationads/beans/AdDisplayResponse;->getSplashList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/transsion/mediationads/beans/SplashInterstitialStrategy;

    invoke-virtual {v5}, Lcom/transsion/mediationads/beans/SplashInterstitialStrategy;->getPositionType()I

    move-result v5

    if-ne v5, v1, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :catch_0
    move-exception p0

    goto/16 :goto_5

    :cond_1
    move-object v4, v3

    :goto_0
    check-cast v4, Lcom/transsion/mediationads/beans/SplashInterstitialStrategy;

    goto :goto_1

    :cond_2
    move-object v4, v3

    :goto_1
    sput-object v4, Lcom/transsion/mediationads/manager/a;->d:Lcom/transsion/mediationads/beans/SplashInterstitialStrategy;

    invoke-virtual {p1}, Lcom/transsion/mediationads/beans/AdDisplayResponse;->getSplashList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/transsion/mediationads/beans/SplashInterstitialStrategy;

    invoke-virtual {v4}, Lcom/transsion/mediationads/beans/SplashInterstitialStrategy;->getPositionType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    goto :goto_2

    :cond_4
    move-object v2, v3

    :goto_2
    check-cast v2, Lcom/transsion/mediationads/beans/SplashInterstitialStrategy;

    goto :goto_3

    :cond_5
    move-object v2, v3

    :goto_3
    sput-object v2, Lcom/transsion/mediationads/manager/a;->e:Lcom/transsion/mediationads/beans/SplashInterstitialStrategy;

    sget-object p1, Lcom/transsion/mediationads/manager/a;->d:Lcom/transsion/mediationads/beans/SplashInterstitialStrategy;

    invoke-virtual {p0, p1}, Lcom/transsion/mediationads/manager/a;->e(Lcom/transsion/mediationads/beans/SplashInterstitialStrategy;)V

    sget-object p1, Lcom/transsion/mediationads/manager/a;->e:Lcom/transsion/mediationads/beans/SplashInterstitialStrategy;

    invoke-virtual {p0, p1}, Lcom/transsion/mediationads/manager/a;->e(Lcom/transsion/mediationads/beans/SplashInterstitialStrategy;)V

    sget-object p1, Lcom/transsion/mediationads/manager/a;->d:Lcom/transsion/mediationads/beans/SplashInterstitialStrategy;

    invoke-virtual {p0, p1}, Lcom/transsion/mediationads/manager/a;->i(Lcom/transsion/mediationads/beans/SplashInterstitialStrategy;)Z

    move-result p1

    if-nez p1, :cond_6

    sget-object p1, Lcom/transsion/mediationads/manager/a;->d:Lcom/transsion/mediationads/beans/SplashInterstitialStrategy;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ineffective splash strategy: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v3, Lcom/transsion/mediationads/manager/a;->d:Lcom/transsion/mediationads/beans/SplashInterstitialStrategy;

    :cond_6
    sget-object p1, Lcom/transsion/mediationads/manager/a;->e:Lcom/transsion/mediationads/beans/SplashInterstitialStrategy;

    invoke-virtual {p0, p1}, Lcom/transsion/mediationads/manager/a;->i(Lcom/transsion/mediationads/beans/SplashInterstitialStrategy;)Z

    move-result p0

    if-nez p0, :cond_7

    sget-object p0, Lcom/transsion/mediationads/manager/a;->e:Lcom/transsion/mediationads/beans/SplashInterstitialStrategy;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ineffective interstitial strategy: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v3, Lcom/transsion/mediationads/manager/a;->e:Lcom/transsion/mediationads/beans/SplashInterstitialStrategy;

    :cond_7
    sget-object p0, Lcom/transsion/mediationads/manager/a;->d:Lcom/transsion/mediationads/beans/SplashInterstitialStrategy;

    sget-object p1, Lcom/transsion/mediationads/manager/a;->e:Lcom/transsion/mediationads/beans/SplashInterstitialStrategy;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Splash/interstitial strategies - splash: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", interstitial: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    sput-boolean v1, Lcom/transsion/mediationads/manager/a;->c:Z

    goto :goto_6

    :goto_5
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse splash/interstitial strategy: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_6
    return-void

    :goto_7
    sput-boolean v1, Lcom/transsion/mediationads/manager/a;->c:Z

    throw p0
.end method
