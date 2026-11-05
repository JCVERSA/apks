.class public final Lcom/snaptube/ads/SplashScreenWrapper;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/snaptube/ads/SplashScreenWrapper;

.field public static final b:Lo/t14;

.field public static c:Z

.field public static final d:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/snaptube/ads/SplashScreenWrapper;

    invoke-direct {v0}, Lcom/snaptube/ads/SplashScreenWrapper;-><init>()V

    sput-object v0, Lcom/snaptube/ads/SplashScreenWrapper;->a:Lcom/snaptube/ads/SplashScreenWrapper;

    sget-object v0, Lcom/snaptube/ads/SplashScreenWrapper$keepOnScreenCondition$2;->INSTANCE:Lcom/snaptube/ads/SplashScreenWrapper$keepOnScreenCondition$2;

    invoke-static {v0}, Lkotlin/b;->b(Lo/bx2;)Lo/t14;

    move-result-object v0

    sput-object v0, Lcom/snaptube/ads/SplashScreenWrapper;->b:Lo/t14;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/snaptube/ads/SplashScreenWrapper;->c:Z

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/snaptube/ads/SplashScreenWrapper;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Z
    .locals 1

    invoke-static {}, Lcom/snaptube/ads/SplashScreenWrapper;->f()Z

    move-result v0

    return v0
.end method

.method public static final synthetic b()Z
    .locals 1

    sget-boolean v0, Lcom/snaptube/ads/SplashScreenWrapper;->c:Z

    return v0
.end method

.method public static final f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final c()V
    .locals 4

    sget-object v0, Lcom/snaptube/ads/SplashScreenWrapper;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    sget-object v2, Lcom/snaptube/ads/SplashScreenWrapper;->a:Lcom/snaptube/ads/SplashScreenWrapper;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/xn7;

    invoke-virtual {v2, v3, v1}, Lcom/snaptube/ads/SplashScreenWrapper;->e(Landroid/app/Activity;Lo/xn7;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/snaptube/ads/SplashScreenWrapper;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final d(Landroid/app/Activity;)V
    .locals 4

    sget-object v0, Lcom/snaptube/ads/SplashScreenWrapper;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, p1}, Lo/or3;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_1
    check-cast v1, Lo/xn7;

    if-eqz v1, :cond_2

    sget-object v0, Lcom/snaptube/ads/SplashScreenWrapper;->a:Lcom/snaptube/ads/SplashScreenWrapper;

    invoke-virtual {v0, p1, v1}, Lcom/snaptube/ads/SplashScreenWrapper;->e(Landroid/app/Activity;Lo/xn7;)V

    sget-object v0, Lcom/snaptube/ads/SplashScreenWrapper;->d:Ljava/util/Map;

    invoke-static {v0}, Lo/ud8;->d(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/xn7;

    :cond_2
    return-void
.end method

.method public final e(Landroid/app/Activity;Lo/xn7;)V
    .locals 1

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p1, Lo/fo7;

    invoke-direct {p1}, Lo/fo7;-><init>()V

    invoke-virtual {p2, p1}, Lo/xn7;->c(Lo/xn7$d;)V

    :cond_1
    return-void
.end method

.method public final g()Lo/xn7$d;
    .locals 1

    sget-object v0, Lcom/snaptube/ads/SplashScreenWrapper;->b:Lo/t14;

    invoke-interface {v0}, Lo/t14;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/xn7$d;

    return-object v0
.end method

.method public final h(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/snaptube/ads/SplashScreenWrapper;->c:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/ads/SplashScreenWrapper;->c()V

    return-void

    :cond_0
    sget-object v0, Lcom/snaptube/ads/SplashScreenWrapper;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    sget-object v1, Lo/xn7;->b:Lo/xn7$a;

    invoke-virtual {v1, p1}, Lo/xn7$a;->a(Landroid/app/Activity;)Lo/xn7;

    move-result-object v1

    invoke-virtual {p0}, Lcom/snaptube/ads/SplashScreenWrapper;->g()Lo/xn7$d;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/xn7;->c(Lo/xn7$d;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final i(ZLjava/lang/String;)V
    .locals 2

    const-string v0, "message"

    invoke-static {p2, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldKeepOnScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SplashScreenWrapper"

    invoke-static {v0, p2}, Lcom/snaptube/util/ProductionEnv;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p2, Lcom/snaptube/ads/SplashScreenWrapper;->c:Z

    if-ne p2, p1, :cond_0

    return-void

    :cond_0
    sput-boolean p1, Lcom/snaptube/ads/SplashScreenWrapper;->c:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/snaptube/ads/SplashScreenWrapper;->c()V

    :cond_1
    return-void
.end method
