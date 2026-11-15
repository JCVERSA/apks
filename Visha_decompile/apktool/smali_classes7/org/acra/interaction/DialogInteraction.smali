.class public Lorg/acra/interaction/DialogInteraction;
.super Lorg/acra/plugins/HasConfigPlugin;
.source "SourceFile"

# interfaces
.implements Lorg/acra/interaction/ReportInteraction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/acra/interaction/DialogInteraction$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0017\u0018\u0000 \u00112\u00020\u00012\u00020\u0002:\u0001\u0012B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\'\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0012\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\'\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0013"
    }
    d2 = {
        "Lorg/acra/interaction/DialogInteraction;",
        "Lorg/acra/plugins/HasConfigPlugin;",
        "Lorg/acra/interaction/ReportInteraction;",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "context",
        "Lorg/acra/config/CoreConfiguration;",
        "config",
        "Ljava/io/File;",
        "reportFile",
        "Landroid/content/Intent;",
        "createCrashReportDialogIntent",
        "(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Ljava/io/File;)Landroid/content/Intent;",
        "",
        "performInteraction",
        "(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Ljava/io/File;)Z",
        "Companion",
        "a",
        "acra-dialog_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lorg/acra/interaction/DialogInteraction$a;

.field public static final EXTRA_REPORT_CONFIG:Ljava/lang/String; = "REPORT_CONFIG"

.field public static final EXTRA_REPORT_FILE:Ljava/lang/String; = "REPORT_FILE"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/acra/interaction/DialogInteraction$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/acra/interaction/DialogInteraction$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/acra/interaction/DialogInteraction;->Companion:Lorg/acra/interaction/DialogInteraction$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-class v0, Lorg/acra/config/DialogConfiguration;

    invoke-direct {p0, v0}, Lorg/acra/plugins/HasConfigPlugin;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private createCrashReportDialogIntent(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Ljava/io/File;)Landroid/content/Intent;
    .locals 3

    sget-boolean p0, Lc;->b:Z

    if-eqz p0, :cond_0

    sget-object p0, Lc;->d:Le;

    sget-object v0, Lc;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating DialogIntent for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Le;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance p0, Landroid/content/Intent;

    const-class v0, Lorg/acra/config/DialogConfiguration;

    invoke-static {p2, v0}, Lue1;->b(Lorg/acra/config/CoreConfiguration;Ljava/lang/Class;)Lorg/acra/config/Configuration;

    move-result-object v0

    check-cast v0, Lorg/acra/config/DialogConfiguration;

    invoke-virtual {v0}, Lorg/acra/config/DialogConfiguration;->getReportDialogClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "REPORT_FILE"

    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "REPORT_CONFIG"

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object p0
.end method


# virtual methods
.method public performInteraction(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Ljava/io/File;)Z
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reportFile"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Log9;

    invoke-direct {v0, p1, p2}, Log9;-><init>(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;)V

    invoke-virtual {v0}, Log9;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "acra.alwaysaccept"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-boolean v0, Lc;->b:Z

    if-eqz v0, :cond_1

    sget-object v0, Lc;->d:Le;

    sget-object v1, Lc;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating CrashReportDialog for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Le;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/acra/interaction/DialogInteraction;->createCrashReportDialogIntent(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Ljava/io/File;)Landroid/content/Intent;

    move-result-object p0

    const/high16 p2, 0x10000000

    invoke-virtual {p0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v2
.end method
