.class Lcom/mgtv/data/aphone/core/db/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/database/sqlite/SQLiteDatabase;

.field private b:Lcom/mgtv/data/aphone/core/db/h;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/mgtv/data/aphone/core/db/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/db/g;->a:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p2, p0, Lcom/mgtv/data/aphone/core/db/g;->b:Lcom/mgtv/data/aphone/core/db/h;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/data/aphone/core/db/g;->b:Lcom/mgtv/data/aphone/core/db/h;

    iget-object v1, p0, Lcom/mgtv/data/aphone/core/db/g;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-interface {v0, v1}, Lcom/mgtv/data/aphone/core/db/h;->a(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mgtv/data/aphone/core/db/g;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lcom/mgtv/data/aphone/core/db/g;->b:Lcom/mgtv/data/aphone/core/db/h;

    iget-object v1, p0, Lcom/mgtv/data/aphone/core/db/g;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-interface {v0, v1}, Lcom/mgtv/data/aphone/core/db/h;->b(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/data/aphone/core/db/g;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_1
    iget-object p0, p0, Lcom/mgtv/data/aphone/core/db/g;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :goto_1
    :try_start_2
    iget-object p0, p0, Lcom/mgtv/data/aphone/core/db/g;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    throw v0
.end method
