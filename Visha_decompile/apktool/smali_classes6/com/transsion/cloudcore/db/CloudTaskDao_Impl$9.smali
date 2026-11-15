.class Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$9;
.super Landroidx/room/SharedSQLiteStatement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;


# direct methods
.method public constructor <init>(Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$9;->this$0:Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string p0, "UPDATE cloud_task SET local_file_id = ?,progress = 1.0, task_status = 5, update_time = ?, cloud_file_id = ?, file_name = ?,mime_type =?,file_type =?, isCloudFileExist = 1,isLocalFileExist = 1  WHERE task_id = ?"

    return-object p0
.end method
