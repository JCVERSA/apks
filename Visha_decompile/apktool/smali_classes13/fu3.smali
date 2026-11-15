.class public final synthetic Lfu3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfu3;->b:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lfu3;->b:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    invoke-static {p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mSendListener$1;->a(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)V

    return-void
.end method
