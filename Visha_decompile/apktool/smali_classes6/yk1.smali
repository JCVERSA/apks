.class public final synthetic Lyk1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic b:Lorg/acra/dialog/CrashReportDialog;


# direct methods
.method public synthetic constructor <init>(Lorg/acra/dialog/CrashReportDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyk1;->b:Lorg/acra/dialog/CrashReportDialog;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lyk1;->b:Lorg/acra/dialog/CrashReportDialog;

    invoke-static {p0, p1}, Lorg/acra/dialog/CrashReportDialog;->a(Lorg/acra/dialog/CrashReportDialog;Landroid/content/DialogInterface;)V

    return-void
.end method
