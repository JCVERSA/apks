.class public final synthetic Lzk1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/acra/dialog/CrashReportDialogHelper;


# direct methods
.method public synthetic constructor <init>(Lorg/acra/dialog/CrashReportDialogHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzk1;->b:Lorg/acra/dialog/CrashReportDialogHelper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lzk1;->b:Lorg/acra/dialog/CrashReportDialogHelper;

    invoke-static {p0}, Lorg/acra/dialog/CrashReportDialogHelper;->b(Lorg/acra/dialog/CrashReportDialogHelper;)V

    return-void
.end method
