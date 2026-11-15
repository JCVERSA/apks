.class public final Lorg/acra/dialog/CrashReportDialogHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/io/File;

.field public final c:Lorg/acra/config/CoreConfiguration;

.field public final d:Lyi5;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/acra/dialog/CrashReportDialogHelper;->a:Landroid/content/Context;

    const-string p1, "REPORT_CONFIG"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    const-string v0, "REPORT_FILE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    instance-of v0, p1, Lorg/acra/config/CoreConfiguration;

    if-eqz v0, :cond_0

    instance-of v0, p2, Ljava/io/File;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/acra/config/CoreConfiguration;

    iput-object p1, p0, Lorg/acra/dialog/CrashReportDialogHelper;->c:Lorg/acra/config/CoreConfiguration;

    check-cast p2, Ljava/io/File;

    iput-object p2, p0, Lorg/acra/dialog/CrashReportDialogHelper;->b:Ljava/io/File;

    new-instance p1, Lorg/acra/dialog/CrashReportDialogHelper$reportData$2;

    invoke-direct {p1, p0}, Lorg/acra/dialog/CrashReportDialogHelper$reportData$2;-><init>(Lorg/acra/dialog/CrashReportDialogHelper;)V

    invoke-static {p1}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lorg/acra/dialog/CrashReportDialogHelper;->d:Lyi5;

    return-void

    :cond_0
    sget-object p0, Lc;->d:Le;

    sget-object p1, Lc;->c:Ljava/lang/String;

    const-class p2, Lorg/acra/dialog/CrashReportDialogHelper;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal or incomplete call of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Le;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static synthetic a(Lorg/acra/dialog/CrashReportDialogHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/acra/dialog/CrashReportDialogHelper;->i(Lorg/acra/dialog/CrashReportDialogHelper;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lorg/acra/dialog/CrashReportDialogHelper;)V
    .locals 0

    invoke-static {p0}, Lorg/acra/dialog/CrashReportDialogHelper;->e(Lorg/acra/dialog/CrashReportDialogHelper;)V

    return-void
.end method

.method public static final synthetic c(Lorg/acra/dialog/CrashReportDialogHelper;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lorg/acra/dialog/CrashReportDialogHelper;->b:Ljava/io/File;

    return-object p0
.end method

.method public static final e(Lorg/acra/dialog/CrashReportDialogHelper;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/acra/file/BulkReportDeleter;

    iget-object p0, p0, Lorg/acra/dialog/CrashReportDialogHelper;->a:Landroid/content/Context;

    invoke-direct {v0, p0}, Lorg/acra/file/BulkReportDeleter;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0, p0}, Lorg/acra/file/BulkReportDeleter;->a(ZI)V

    return-void
.end method

.method public static final i(Lorg/acra/dialog/CrashReportDialogHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "User comment not added: "

    const-string v1, "this$0"

    invoke-static {p0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-boolean v1, Lc;->b:Z

    if-eqz v1, :cond_0

    sget-object v1, Lc;->d:Le;

    sget-object v2, Lc;->c:Ljava/lang/String;

    iget-object v3, p0, Lorg/acra/dialog/CrashReportDialogHelper;->b:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Add user comment to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Le;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/acra/dialog/CrashReportDialogHelper;->g()Lorg/acra/data/CrashReportData;

    move-result-object v1

    sget-object v2, Lorg/acra/ReportField;->USER_COMMENT:Lorg/acra/ReportField;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    if-nez p1, :cond_1

    move-object p1, v3

    :cond_1
    :try_start_1
    invoke-virtual {v1, v2, p1}, Lorg/acra/data/CrashReportData;->h(Lorg/acra/ReportField;Ljava/lang/String;)V

    sget-object p1, Lorg/acra/ReportField;->USER_EMAIL:Lorg/acra/ReportField;

    if-nez p2, :cond_2

    move-object p2, v3

    :cond_2
    invoke-virtual {v1, p1, p2}, Lorg/acra/data/CrashReportData;->h(Lorg/acra/ReportField;Ljava/lang/String;)V

    new-instance p1, Lcl1;

    invoke-direct {p1}, Lcl1;-><init>()V

    iget-object p2, p0, Lorg/acra/dialog/CrashReportDialogHelper;->b:Ljava/io/File;

    invoke-virtual {p1, v1, p2}, Lcl1;->b(Lorg/acra/data/CrashReportData;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :goto_1
    sget-object p2, Lc;->d:Le;

    sget-object v1, Lc;->c:Ljava/lang/String;

    invoke-interface {p2, v1, v0, p1}, Le;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :goto_2
    sget-object p2, Lc;->d:Le;

    sget-object v1, Lc;->c:Ljava/lang/String;

    invoke-interface {p2, v1, v0, p1}, Le;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    new-instance p1, Li29;

    iget-object p2, p0, Lorg/acra/dialog/CrashReportDialogHelper;->a:Landroid/content/Context;

    iget-object v0, p0, Lorg/acra/dialog/CrashReportDialogHelper;->c:Lorg/acra/config/CoreConfiguration;

    invoke-direct {p1, p2, v0}, Li29;-><init>(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;)V

    iget-object p0, p0, Lorg/acra/dialog/CrashReportDialogHelper;->b:Ljava/io/File;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Li29;->a(Ljava/io/File;Z)V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lzk1;

    invoke-direct {v1, p0}, Lzk1;-><init>(Lorg/acra/dialog/CrashReportDialogHelper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final f()Lorg/acra/config/CoreConfiguration;
    .locals 0

    iget-object p0, p0, Lorg/acra/dialog/CrashReportDialogHelper;->c:Lorg/acra/config/CoreConfiguration;

    return-object p0
.end method

.method public final g()Lorg/acra/data/CrashReportData;
    .locals 0

    iget-object p0, p0, Lorg/acra/dialog/CrashReportDialogHelper;->d:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/acra/data/CrashReportData;

    return-object p0
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lal1;

    invoke-direct {v1, p0, p1, p2}, Lal1;-><init>(Lorg/acra/dialog/CrashReportDialogHelper;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
