.class public final Ljc9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lorg/acra/config/CoreConfiguration;

.field public final c:Lorg/acra/file/ReportLocator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljc9;->a:Landroid/content/Context;

    iput-object p2, p0, Ljc9;->b:Lorg/acra/config/CoreConfiguration;

    new-instance p2, Lorg/acra/file/ReportLocator;

    invoke-direct {p2, p1}, Lorg/acra/file/ReportLocator;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Ljc9;->c:Lorg/acra/file/ReportLocator;

    return-void
.end method

.method public static synthetic a(Ljc9;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Ljc9;->d(Ljc9;Ljava/lang/String;)V

    return-void
.end method

.method public static final d(Ljc9;Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ljc9;->a:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lxoa;->a(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final b(Z)Ljava/util/List;
    .locals 7

    sget-boolean v0, Lc;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lc;->d:Le;

    sget-object v1, Lc;->c:Ljava/lang/String;

    const-string v2, "Using PluginLoader to find ReportSender factories"

    invoke-interface {v0, v1, v2}, Le;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Ljc9;->b:Lorg/acra/config/CoreConfiguration;

    invoke-virtual {v0}, Lorg/acra/config/CoreConfiguration;->getPluginLoader()Lorg/acra/plugins/PluginLoader;

    move-result-object v0

    iget-object v1, p0, Ljc9;->b:Lorg/acra/config/CoreConfiguration;

    const-class v2, Lorg/acra/sender/ReportSenderFactory;

    invoke-interface {v0, v1, v2}, Lorg/acra/plugins/PluginLoader;->loadEnabled(Lorg/acra/config/CoreConfiguration;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    sget-boolean v1, Lc;->b:Z

    if-eqz v1, :cond_1

    sget-object v1, Lc;->d:Le;

    sget-object v2, Lc;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reportSenderFactories : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Le;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/acra/sender/ReportSenderFactory;

    iget-object v3, p0, Ljc9;->a:Landroid/content/Context;

    iget-object v4, p0, Ljc9;->b:Lorg/acra/config/CoreConfiguration;

    invoke-interface {v2, v3, v4}, Lorg/acra/sender/ReportSenderFactory;->create(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;)Lus8;

    move-result-object v2

    sget-boolean v3, Lc;->b:Z

    if-eqz v3, :cond_2

    sget-object v3, Lc;->d:Le;

    sget-object v4, Lc;->c:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding reportSender : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Le;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lus8;

    invoke-interface {v2}, Lus8;->b()Z

    move-result v2

    if-ne p1, v2, :cond_4

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-object p0
.end method

.method public final c(ZLandroid/os/Bundle;)V
    .locals 10

    const-string v0, "extras"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lc;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lc;->d:Le;

    sget-object v1, Lc;->c:Ljava/lang/String;

    const-string v2, "About to start sending reports from SenderService"

    invoke-interface {v0, v1, v2}, Le;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Ljc9;->b(Z)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Li81;->e1(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lc;->b:Z

    if-eqz v0, :cond_1

    sget-object v0, Lc;->d:Le;

    sget-object v1, Lc;->c:Ljava/lang/String;

    const-string v2, "No ReportSenders configured - adding NullSender"

    invoke-interface {v0, v1, v2}, Le;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_6

    :cond_1
    :goto_0
    new-instance v0, Lg37;

    invoke-direct {v0}, Lg37;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Ljc9;->c:Lorg/acra/file/ReportLocator;

    invoke-virtual {v0}, Lorg/acra/file/ReportLocator;->b()[Ljava/io/File;

    move-result-object v0

    new-instance v1, Lorg/acra/sender/ReportDistributor;

    iget-object v2, p0, Ljc9;->a:Landroid/content/Context;

    iget-object v3, p0, Ljc9;->b:Lorg/acra/config/CoreConfiguration;

    invoke-direct {v1, v2, v3, p1, p2}, Lorg/acra/sender/ReportDistributor;-><init>(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Ljava/util/List;Landroid/os/Bundle;)V

    new-instance p1, Lbl1;

    invoke-direct {p1}, Lbl1;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_1
    if-ge v3, v2, :cond_6

    aget-object v6, v0, v3

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "report.name"

    invoke-static {v7, v8}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Lbl1;->a(Ljava/lang/String;)Z

    move-result v7

    xor-int/lit8 v8, v7, 0x1

    const-string v9, "onlySendSilentReports"

    invoke-virtual {p2, v9}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    if-nez v7, :cond_3

    goto :goto_2

    :cond_3
    or-int/2addr v5, v8

    const/4 v7, 0x5

    if-lt v4, v7, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v1, v6}, Lorg/acra/sender/ReportDistributor;->a(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_5

    add-int/lit8 v4, v4, 0x1

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    :goto_3
    if-lez v4, :cond_7

    iget-object p1, p0, Ljc9;->b:Lorg/acra/config/CoreConfiguration;

    invoke-virtual {p1}, Lorg/acra/config/CoreConfiguration;->getReportSendSuccessToast()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_7
    iget-object p1, p0, Ljc9;->b:Lorg/acra/config/CoreConfiguration;

    invoke-virtual {p1}, Lorg/acra/config/CoreConfiguration;->getReportSendFailureToast()Ljava/lang/String;

    move-result-object p1

    :goto_4
    if-eqz v5, :cond_a

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_a

    sget-boolean p2, Lc;->b:Z

    if-eqz p2, :cond_9

    sget-object p2, Lc;->d:Le;

    sget-object v0, Lc;->c:Ljava/lang/String;

    if-lez v4, :cond_8

    const-string v1, "success"

    goto :goto_5

    :cond_8
    const-string v1, "failure"

    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "About to show "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " toast"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Le;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lic9;

    invoke-direct {v0, p0, p1}, Lic9;-><init>(Ljc9;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :goto_6
    sget-object p1, Lc;->d:Le;

    sget-object p2, Lc;->c:Ljava/lang/String;

    const-string v0, ""

    invoke-interface {p1, p2, v0, p0}, Le;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    :goto_7
    sget-boolean p0, Lc;->b:Z

    if-eqz p0, :cond_b

    sget-object p0, Lc;->d:Le;

    sget-object p1, Lc;->c:Ljava/lang/String;

    const-string p2, "Finished sending reports from SenderService"

    invoke-interface {p0, p1, p2}, Le;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void
.end method
