.class public final Lq5b;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq5b$a;
    }
.end annotation


# static fields
.field public static final b:Lq5b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lq5b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lq5b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lq5b;->b:Lq5b$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "cloud_drive_transfer.db"

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    sget-object p0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->CRC_ALGORITHM:Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->getColumn()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ALTER TABLE UploadBlockInfo ADD COLUMN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " VARCHAR(16)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->CRC_VALUE:Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->getColumn()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " VARCHAR(64)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->FILE_MODIFIED_TIME:Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->getColumn()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " INTEGER"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13

    const-string p0, "db"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->ID:Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->getColumn()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->TASK_ID:Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->getColumn()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->CURRENT:Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->getColumn()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->OFFSET:Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;

    invoke-virtual {v2}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->getColumn()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->START:Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;

    invoke-virtual {v3}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->getColumn()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->END:Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;

    invoke-virtual {v4}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->getColumn()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n            CREATE TABLE DownloadBlockInfo (\n                "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " INTEGER PRIMARY KEY AUTOINCREMENT,\n                "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " VARCHAR(64),\n                "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER NOT NULL,\n                "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT,\n                "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT\n            )\n            "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->ID:Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;

    invoke-virtual {v2}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->getColumn()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->TASK_ID:Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;

    invoke-virtual {v3}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->getColumn()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->FILE_ID:Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;

    invoke-virtual {v4}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->getColumn()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->UPLOAD_ID:Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;

    invoke-virtual {v5}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->getColumn()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->CURRENT:Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;

    invoke-virtual {v6}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->getColumn()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->STATE:Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;

    invoke-virtual {v7}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->getColumn()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->CRC_ALGORITHM:Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;

    invoke-virtual {v8}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->getColumn()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->CRC_VALUE:Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;

    invoke-virtual {v9}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->getColumn()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->FILE_MODIFIED_TIME:Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;

    invoke-virtual {v10}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->getColumn()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\n            CREATE TABLE UploadBlockInfo(\n                "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " VARCHAR(64) NOT NULL,\n                "

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " VARCHAR(128),\n                "

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " INTEGER,\n                "

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " VARCHAR(16),\n                "

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " INTEGER\n            )\n            "

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const-string p3, "db"

    invoke-static {p1, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x2

    if-ge p2, p3, :cond_0

    invoke-virtual {p0, p1}, Lq5b;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    move p2, p3

    :cond_0
    const/4 p3, 0x3

    if-ge p2, p3, :cond_1

    invoke-virtual {p0, p1}, Lq5b;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1
    return-void
.end method
