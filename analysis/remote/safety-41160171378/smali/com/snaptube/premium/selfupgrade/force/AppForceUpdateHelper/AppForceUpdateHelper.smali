.class public final Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;

.field public static final b:Ljava/util/Set;

.field public static final c:Ljava/util/Set;

.field public static d:Z

.field public static e:Lo/wu7;

.field public static final f:Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;

    invoke-direct {v0}, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;-><init>()V

    sput-object v0, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->a:Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->b:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->c:Ljava/util/Set;

    new-instance v0, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper$a;

    invoke-direct {v0}, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper$a;-><init>()V

    sput-object v0, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->f:Landroid/app/Application$ActivityLifecycleCallbacks;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->g(Landroid/app/Activity;)V

    return-void
.end method

.method public static final synthetic b()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->c:Ljava/util/Set;

    return-object v0
.end method

.method public static final synthetic c()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->b:Ljava/util/Set;

    return-object v0
.end method

.method public static final synthetic d(Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;Landroid/app/Activity;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->n(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic e(Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->s(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final f(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->isApkExist()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->l()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final g(Landroid/app/Activity;)V
    .locals 2

    sget-object v0, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->e:Lo/wu7;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/wu7;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper$checkForceUpdateAsync$1;

    invoke-direct {v0, p1}, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper$checkForceUpdateAsync$1;-><init>(Landroid/app/Activity;)V

    const/4 p1, 0x1

    const/4 v1, 0x0

    invoke-static {v1, v0, p1, v1}, Lo/mp6;->d(Lrx/d;Lo/bx2;ILjava/lang/Object;)Lo/wu7;

    move-result-object p1

    sput-object p1, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->e:Lo/wu7;

    return-void
.end method

.method public final h()V
    .locals 2

    sget-object v0, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 4

    sget-object v0, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->b:Ljava/util/Set;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/app/Activity;

    instance-of v3, v3, Lcom/snaptube/premium/selfupgrade/force/ForceUpdateActivity;

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final j()Z
    .locals 1

    sget-boolean v0, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->d:Z

    return v0
.end method

.method public final k(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->f:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public final l()Z
    .locals 7

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->Z1()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->I()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v2

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final m(Landroid/content/Context;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/snaptube/premium/selfupgrade/force/ForceUpdateActivity;->s:Lcom/snaptube/premium/selfupgrade/force/ForceUpdateActivity$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/snaptube/premium/selfupgrade/force/ForceUpdateActivity$a;->a(Landroid/content/Context;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->i()V

    return-void
.end method

.method public final n(Landroid/app/Activity;)Z
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-string v5, "intercom"

    invoke-static {v0, v5, v2, v3, v4}, Lkotlin/text/StringsKt__StringsKt;->S(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    instance-of v0, p1, Lcom/snaptube/premium/selfupgrade/force/ForceUpdateActivity;

    if-nez v0, :cond_1

    instance-of p1, p1, Lcom/snaptube/premium/selfupgrade/normal/NormalUpdateActivity;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final o(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Ljava/lang/String;)Z
    .locals 3

    invoke-static {p1}, Lo/rh8;->b(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-static {}, Lo/sq5;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->isStrongUpdate()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->isStrictForceUpdate()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->isApkExist()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->d:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->isApkMd5Correct()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->deleteApk()Z

    const/4 p1, 0x0

    invoke-static {p1, p2}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->r(Landroid/app/Activity;Ljava/lang/String;)V

    return v1

    :cond_2
    return v2

    :cond_3
    invoke-virtual {p0, p1}, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->f(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v1
.end method

.method public final p(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Z
    .locals 1

    invoke-static {p1}, Lo/rh8;->b(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lo/sq5;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->isNormalUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->isApkExist()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->l()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->g0(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final q(Z)V
    .locals 0

    sput-boolean p1, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->d:Z

    return-void
.end method

.method public final r(Landroid/content/Context;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "popTriggerScene"

    invoke-static {p3, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    sget-object v0, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->a:Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;

    invoke-virtual {v0, p2, p3}, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->o(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v0, p2}, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->f(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p3, "any_page_visible_force"

    :cond_1
    invoke-virtual {v0, p1, v1, p3}, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->m(Landroid/content/Context;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Ljava/lang/String;)V

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final s(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->M()Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->a:Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;

    invoke-virtual {v1, v0}, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->p(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {p1, v0, p2}, Lcom/snaptube/premium/NavigationManager;->l0(Landroid/content/Context;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
