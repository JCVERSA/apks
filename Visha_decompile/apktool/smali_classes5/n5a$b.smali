.class public Ln5a$b;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln5a;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln5a;


# direct methods
.method public constructor <init>(Ln5a;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Ln5a$b;->a:Ln5a;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/transsion/dbdata/beans/media/SubtitleRecord;)V
    .locals 2

    iget p0, p2, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->id:I

    int-to-long v0, p0

    const/4 p0, 0x1

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget p0, p2, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->_id:I

    int-to-long v0, p0

    const/4 p0, 0x2

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-object p0, p2, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_id:Ljava/lang/String;

    const/4 v0, 0x3

    if-nez p0, :cond_0

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p0, p2, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->subtitle_path:Ljava/lang/String;

    const/4 v0, 0x4

    if-nez p0, :cond_1

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1
    iget p0, p2, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_track:I

    int-to-long v0, p0

    const/4 p0, 0x5

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget p0, p2, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_track_delay_time:F

    float-to-double v0, p0

    const/4 p0, 0x6

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindDouble(ID)V

    const/4 p0, 0x7

    iget-wide v0, p2, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_track_time:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget p0, p2, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_type:I

    int-to-long v0, p0

    const/16 p0, 0x8

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget p0, p2, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_format:I

    int-to-long v0, p0

    const/16 p0, 0x9

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget p0, p2, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_inner_id:I

    int-to-long v0, p0

    const/16 p0, 0xa

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-object p0, p2, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_inner_name:Ljava/lang/String;

    const/16 v0, 0xb

    if-nez p0, :cond_2

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    :cond_2
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_2
    iget-object p0, p2, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_local_lang_to:Ljava/lang/String;

    const/16 v0, 0xc

    if-nez p0, :cond_3

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_3

    :cond_3
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_3
    iget p0, p2, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->id:I

    int-to-long v0, p0

    const/16 p0, 0xd

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/beans/media/SubtitleRecord;

    invoke-virtual {p0, p1, p2}, Ln5a$b;->a(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/transsion/dbdata/beans/media/SubtitleRecord;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "UPDATE OR ABORT `SubtitleRecord` SET `id` = ?,`_id` = ?,`sub_id` = ?,`subtitle_path` = ?,`sub_track` = ?,`sub_track_delay_time` = ?,`sub_track_time` = ?,`sub_type` = ?,`sub_format` = ?,`sub_inner_id` = ?,`sub_inner_name` = ?,`sub_local_lang_to` = ? WHERE `id` = ?"

    return-object p0
.end method
