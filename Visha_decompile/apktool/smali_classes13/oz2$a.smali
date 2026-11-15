.class public Loz2$a;
.super Landroidx/room/EntityInsertionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Loz2;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Loz2;


# direct methods
.method public constructor <init>(Loz2;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Loz2$a;->a:Loz2;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/transsion/sniffer_load/data/DownloadHistory;)V
    .locals 2

    iget-object p0, p2, Lcom/transsion/sniffer_load/data/DownloadHistory;->mediaId:Ljava/lang/String;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p0, p2, Lcom/transsion/sniffer_load/data/DownloadHistory;->originSite:Ljava/lang/String;

    const/4 v0, 0x2

    if-nez p0, :cond_1

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1
    iget-object p0, p2, Lcom/transsion/sniffer_load/data/DownloadHistory;->videoSite:Ljava/lang/String;

    const/4 v0, 0x3

    if-nez p0, :cond_2

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    :cond_2
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_2
    const/4 p0, 0x4

    iget-wide v0, p2, Lcom/transsion/sniffer_load/data/DownloadHistory;->timeStamp:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/sniffer_load/data/DownloadHistory;

    invoke-virtual {p0, p1, p2}, Loz2$a;->a(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/transsion/sniffer_load/data/DownloadHistory;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "INSERT OR REPLACE INTO `DownloadHistory` (`mediaId`,`originSite`,`videoSite`,`timeStamp`) VALUES (?,?,?,?)"

    return-object p0
.end method
