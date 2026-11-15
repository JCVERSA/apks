.class Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$6;
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

    iput-object p1, p0, Lcom/transsion/cloudcore/db/CloudTaskDao_Impl$6;->this$0:Lcom/transsion/cloudcore/db/CloudTaskDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string p0, "DELETE FROM cloud_task WHERE task_type = 1 OR (task_type = 2 AND download_source = 1)"

    return-object p0
.end method
