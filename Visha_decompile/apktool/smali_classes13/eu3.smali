.class public final synthetic Leu3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

.field public final synthetic c:Lcom/transsion/vishatransfer/data/Conversation;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;Lcom/transsion/vishatransfer/data/Conversation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leu3;->b:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    iput-object p2, p0, Leu3;->c:Lcom/transsion/vishatransfer/data/Conversation;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Leu3;->b:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    iget-object p0, p0, Leu3;->c:Lcom/transsion/vishatransfer/data/Conversation;

    invoke-static {v0, p0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mReceiveListener$1;->a(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;Lcom/transsion/vishatransfer/data/Conversation;)V

    return-void
.end method
