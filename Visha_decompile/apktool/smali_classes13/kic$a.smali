.class public Lkic$a;
.super Landroidx/room/EntityInsertionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkic;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lkic;


# direct methods
.method public constructor <init>(Lkic;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Lkic$a;->a:Lkic;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/transsion/sniffer_load/data/WebPreviewRecord;)V
    .locals 2

    iget-wide v0, p2, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->id:J

    const/4 p0, 0x1

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-object p0, p2, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->title:Ljava/lang/String;

    const/4 v0, 0x2

    if-nez p0, :cond_0

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p0, p2, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->icon:[B

    const/4 v0, 0x3

    if-nez p0, :cond_1

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindBlob(I[B)V

    :goto_1
    iget-object p0, p2, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->previewBitmap:[B

    const/4 v0, 0x4

    if-nez p0, :cond_2

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    :cond_2
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindBlob(I[B)V

    :goto_2
    iget-object p0, p2, Lcom/transsion/sniffer_load/data/WebPreviewRecord;->webUrl:Ljava/lang/String;

    const/4 p2, 0x5

    if-nez p0, :cond_3

    invoke-interface {p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_3

    :cond_3
    invoke-interface {p1, p2, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_3
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/sniffer_load/data/WebPreviewRecord;

    invoke-virtual {p0, p1, p2}, Lkic$a;->a(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/transsion/sniffer_load/data/WebPreviewRecord;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "INSERT OR ABORT INTO `WebPreviewRecord` (`id`,`title`,`icon`,`previewBitmap`,`webUrl`) VALUES (nullif(?, 0),?,?,?,?)"

    return-object p0
.end method
