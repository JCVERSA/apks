.class public final synthetic Ldt3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic b:Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldt3;->b:Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Ldt3;->b:Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;

    invoke-static {p0, p1}, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->o0(Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;Landroid/content/DialogInterface;)V

    return-void
.end method
