.class Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "source.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x6

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDatabaseHelper;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 2
    const-string v0, "awss3transfertable.db"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 3
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDatabaseHelper;->a:Landroid/content/Context;

    .line 4
    iput p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDatabaseHelper;->b:I

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDatabaseHelper;->b:I

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferTable;->f(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDatabaseHelper;->a:Landroid/content/Context;

    .line 2
    .line 3
    const-string p3, "awss3transfertable.db"

    .line 4
    .line 5
    invoke-virtual {p2, p3}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferTable;->g(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
