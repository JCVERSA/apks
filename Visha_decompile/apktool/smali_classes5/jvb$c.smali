.class public Ljvb$c;
.super Landroidx/room/EntityInsertionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljvb;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljvb;


# direct methods
.method public constructor <init>(Ljvb;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Ljvb$c;->a:Ljvb;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/transsion/dbdata/database/VideoPlayListMedia;)V
    .locals 2

    iget p0, p2, Lcom/transsion/dbdata/database/VideoPlayListMedia;->id:I

    int-to-long v0, p0

    const/4 p0, 0x1

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-object p0, p2, Lcom/transsion/dbdata/database/VideoPlayListMedia;->name:Ljava/lang/String;

    const/4 v0, 0x2

    if-nez p0, :cond_0

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    iget p0, p2, Lcom/transsion/dbdata/database/VideoPlayListMedia;->playlist_id:I

    int-to-long v0, p0

    const/4 p0, 0x3

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget p0, p2, Lcom/transsion/dbdata/database/VideoPlayListMedia;->media_id:I

    int-to-long v0, p0

    const/4 p0, 0x4

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget p0, p2, Lcom/transsion/dbdata/database/VideoPlayListMedia;->playlistFlag:I

    int-to-long v0, p0

    const/4 p0, 0x5

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget p0, p2, Lcom/transsion/dbdata/database/VideoPlayListMedia;->play_count:I

    int-to-long v0, p0

    const/4 p0, 0x6

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p0, 0x7

    iget-wide v0, p2, Lcom/transsion/dbdata/database/VideoPlayListMedia;->record_time:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-object p0, p2, Lcom/transsion/dbdata/database/VideoPlayListMedia;->_data:Ljava/lang/String;

    const/16 p2, 0x8

    if-nez p0, :cond_1

    invoke-interface {p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    :cond_1
    invoke-interface {p1, p2, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/database/VideoPlayListMedia;

    invoke-virtual {p0, p1, p2}, Ljvb$c;->a(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/transsion/dbdata/database/VideoPlayListMedia;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "INSERT OR ABORT INTO `video_media_playList` (`id`,`name`,`playlist_id`,`media_id`,`playlistFlag`,`play_count`,`record_time`,`_data`) VALUES (nullif(?, 0),?,?,?,?,?,?,?)"

    return-object p0
.end method
