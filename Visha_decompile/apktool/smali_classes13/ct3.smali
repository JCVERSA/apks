.class public final synthetic Lct3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;


# direct methods
.method public synthetic constructor <init>(ZLcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lct3;->b:Z

    iput-object p2, p0, Lct3;->c:Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-boolean v0, p0, Lct3;->b:Z

    iget-object p0, p0, Lct3;->c:Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;

    invoke-static {v0, p0, p1, p2}, Lcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;->k0(ZLcom/transsion/tools/filetrans/activities/FileTransPermissionSheetDialogActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method
