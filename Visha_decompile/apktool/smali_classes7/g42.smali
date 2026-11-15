.class public Lg42;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgc9;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lorg/acra/config/CoreConfiguration;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg42;->a:Landroid/content/Context;

    iput-object p2, p0, Lg42;->b:Lorg/acra/config/CoreConfiguration;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lov4;->a:Lov4;

    iget-object v2, p0, Lg42;->b:Lorg/acra/config/CoreConfiguration;

    invoke-virtual {v1, v2}, Lov4;->d(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "acraConfig"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "onlySendSilentReports"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lg42;->b(Landroid/os/Bundle;)V

    new-instance p1, Ljc9;

    iget-object v1, p0, Lg42;->a:Landroid/content/Context;

    iget-object v2, p0, Lg42;->b:Lorg/acra/config/CoreConfiguration;

    invoke-direct {p1, v1, v2}, Ljc9;-><init>(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljc9;->b(Z)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lg42;->a:Landroid/content/Context;

    const-string v3, "jobscheduler"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.app.job.JobScheduler"

    invoke-static {v2, v3}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/app/job/JobScheduler;

    new-instance v3, Landroid/app/job/JobInfo$Builder;

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p0, Lg42;->a:Landroid/content/Context;

    const-class v6, Lorg/acra/sender/JobSenderService;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v3, v1, v4}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-static {v0}, Ltn0;->c(Landroid/os/Bundle;)Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    const-string v3, "builder"

    invoke-static {v1, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lg42;->c(Landroid/app/job/JobInfo$Builder;)V

    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    :cond_0
    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Ljc9;->b(Z)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1, p0, v0}, Ljc9;->c(ZLandroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 0

    const-string p0, "extras"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public c(Landroid/app/job/JobInfo$Builder;)V
    .locals 2

    const-string p0, "job"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    return-void
.end method
