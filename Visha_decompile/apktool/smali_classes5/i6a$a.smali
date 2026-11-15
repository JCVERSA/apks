.class public Li6a$a;
.super Landroidx/room/EntityInsertionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li6a;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li6a;


# direct methods
.method public constructor <init>(Li6a;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Li6a$a;->a:Li6a;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/transsion/dbdata/beans/SubtitleSettingData;)V
    .locals 2

    iget p0, p2, Lcom/transsion/dbdata/beans/SubtitleSettingData;->videoId:I

    int-to-long v0, p0

    const/4 p0, 0x1

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget p0, p2, Lcom/transsion/dbdata/beans/SubtitleSettingData;->location:I

    int-to-long v0, p0

    const/4 p0, 0x2

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget p0, p2, Lcom/transsion/dbdata/beans/SubtitleSettingData;->translateY:I

    int-to-long v0, p0

    const/4 p0, 0x3

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget p0, p2, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textAlignment:I

    int-to-long v0, p0

    const/4 p0, 0x4

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget p0, p2, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textSize:I

    int-to-long v0, p0

    const/4 p0, 0x5

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget p0, p2, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textStyle:I

    int-to-long v0, p0

    const/4 p0, 0x6

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget p0, p2, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textColor:I

    int-to-long v0, p0

    const/4 p0, 0x7

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget p0, p2, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textBackgroundColor:I

    int-to-long v0, p0

    const/16 p0, 0x8

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget p0, p2, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textBackgroundOpacity:I

    int-to-long v0, p0

    const/16 p0, 0x9

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget p0, p2, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textDrag:I

    int-to-long v0, p0

    const/16 p0, 0xa

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget p0, p2, Lcom/transsion/dbdata/beans/SubtitleSettingData;->time:I

    int-to-long v0, p0

    const/16 p0, 0xb

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/beans/SubtitleSettingData;

    invoke-virtual {p0, p1, p2}, Li6a$a;->a(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/transsion/dbdata/beans/SubtitleSettingData;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "INSERT OR REPLACE INTO `SubtitleSetting` (`video_id`,`location`,`translateY`,`text_alignment`,`text_size`,`text_style`,`text_color`,`text_background_color`,`text_background_opacity`,`text_drag`,`time`) VALUES (?,?,?,?,?,?,?,?,?,?,?)"

    return-object p0
.end method
