.class public final Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->x1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$a;->b:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "reason"

    invoke-static {v2, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TEST] send connect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FileTransSheetDialogActivity"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    const-string v1, "[TEST] send CLIENT_ASK, onConnectAsync"

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$a;->b:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    invoke-static {v1}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->J0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)Lcom/transsion/vishatransfer/manager/ITransferHelper;

    move-result-object v1

    new-instance v3, Lcom/transsion/vishatransfer/data/Conversation;

    new-instance v13, Lcom/transsion/vishatransfer/data/DeviceInfo;

    iget-object v6, v0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$a;->b:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    invoke-static {v6}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->I0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v13, v6}, Lcom/transsion/vishatransfer/data/DeviceInfo;-><init>(Ljava/lang/String;)V

    const/16 v14, 0xe

    const/4 v15, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v3

    invoke-direct/range {v6 .. v15}, Lcom/transsion/vishatransfer/data/Conversation;-><init>(IJZIILcom/transsion/vishatransfer/data/DeviceInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v3}, Lcom/transsion/vishatransfer/manager/ITransferHelper;->sendConversationToService(Lcom/transsion/vishatransfer/data/Conversation;)V

    iget-object v0, v0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$a;->b:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    const/4 v1, 0x4

    invoke-static {v0, v1, v5, v4, v2}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->Q0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;IZILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$a;->b:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    const/4 v3, 0x5

    invoke-static {v1, v3, v5, v4, v2}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->Q0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;IZILjava/lang/Object;)V

    sget-object v1, Lcom/transsion/dbdata/markpoint/a;->a:Lcom/transsion/dbdata/markpoint/a$a;

    iget-object v0, v0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$a;->b:Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;

    invoke-static {v0}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->B0(Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;)J

    move-result-wide v2

    move/from16 v0, p3

    invoke-virtual {v1, v5, v2, v3, v0}, Lcom/transsion/dbdata/markpoint/a$a;->e(ZJI)V

    :goto_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$a;->a(ZLjava/lang/String;I)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
