.class public Ljt$i;
.super Landroidx/room/EntityInsertionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljt;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljt;


# direct methods
.method public constructor <init>(Ljt;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Ljt$i;->a:Ljt;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/transsion/dbdata/database/AudioPlayHistory;)V
    .locals 3

    invoke-virtual {p2}, Lcom/transsion/dbdata/database/AudioPlayHistory;->get_data()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/dbdata/database/AudioPlayHistory;->get_data()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p2}, Lcom/transsion/dbdata/database/AudioPlayHistory;->getMediaId()Ljava/lang/Long;

    move-result-object p0

    const/4 v0, 0x2

    if-nez p0, :cond_1

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/transsion/dbdata/database/AudioPlayHistory;->getMediaId()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :goto_1
    invoke-virtual {p2}, Lcom/transsion/dbdata/database/AudioPlayHistory;->getPlayCount()I

    move-result p0

    int-to-long v0, p0

    const/4 p0, 0x3

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p0, 0x4

    invoke-virtual {p2}, Lcom/transsion/dbdata/database/AudioPlayHistory;->getCreateTime()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p0, 0x5

    invoke-virtual {p2}, Lcom/transsion/dbdata/database/AudioPlayHistory;->getUpdateTime()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/database/AudioPlayHistory;

    invoke-virtual {p0, p1, p2}, Ljt$i;->a(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/transsion/dbdata/database/AudioPlayHistory;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "INSERT INTO `audio_play_history` (`_data`,`media_id`,`play_count`,`create_time`,`update_time`) VALUES (?,?,?,?,?)"

    return-object p0
.end method
