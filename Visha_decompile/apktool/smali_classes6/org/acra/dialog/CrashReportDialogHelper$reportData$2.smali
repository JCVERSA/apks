.class final Lorg/acra/dialog/CrashReportDialogHelper$reportData$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/acra/dialog/CrashReportDialogHelper;-><init>(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lc74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lorg/acra/data/CrashReportData;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lorg/acra/dialog/CrashReportDialogHelper;


# direct methods
.method public constructor <init>(Lorg/acra/dialog/CrashReportDialogHelper;)V
    .locals 0

    iput-object p1, p0, Lorg/acra/dialog/CrashReportDialogHelper$reportData$2;->this$0:Lorg/acra/dialog/CrashReportDialogHelper;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/acra/dialog/CrashReportDialogHelper$reportData$2;->invoke()Lorg/acra/data/CrashReportData;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Lorg/acra/data/CrashReportData;
    .locals 1

    .line 2
    :try_start_0
    new-instance v0, Lcl1;

    invoke-direct {v0}, Lcl1;-><init>()V

    iget-object p0, p0, Lorg/acra/dialog/CrashReportDialogHelper$reportData$2;->this$0:Lorg/acra/dialog/CrashReportDialogHelper;

    invoke-static {p0}, Lorg/acra/dialog/CrashReportDialogHelper;->c(Lorg/acra/dialog/CrashReportDialogHelper;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcl1;->a(Ljava/io/File;)Lorg/acra/data/CrashReportData;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
