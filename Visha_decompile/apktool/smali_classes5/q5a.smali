.class public abstract Lq5a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "_size"

    const-string v1, "_id"

    const-string v2, "_data"

    const-string v3, "date_modified"

    const-string v4, "title"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lq5a;->a:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1}, Lq5a;->h(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Lq5a;->g(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;)Z

    move-result p0

    return p0
.end method

.method public static c(Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;)I
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x1

    if-nez p1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->name:Ljava/lang/String;

    if-nez p0, :cond_3

    iget-object v3, p1, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->name:Ljava/lang/String;

    if-nez v3, :cond_3

    return v0

    :cond_3
    if-nez p0, :cond_4

    return v1

    :cond_4
    iget-object v3, p1, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->name:Ljava/lang/String;

    if-nez v3, :cond_5

    return v2

    :cond_5
    const-string v3, ""

    if-eqz p0, :cond_6

    goto :goto_0

    :cond_6
    move-object p0, v3

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->name:Ljava/lang/String;

    if-eqz p1, :cond_7

    move-object v3, p1

    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    :goto_1
    :try_start_0
    const-string v3, "([^0-9]*)(\\d+)(.*\\.[a-zA-Z0-9]+)$"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v5

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v6

    if-ne v5, v6, :cond_b

    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x3

    if-nez v6, :cond_a

    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-le v4, p0, :cond_8

    return v2

    :cond_8
    if-ge v4, p0, :cond_9

    return v1

    :cond_9
    return v0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_a
    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_b
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static d(Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;Z)I
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->name:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lq5a;->c(Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;)I

    move-result v0

    :cond_2
    :goto_0
    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    rsub-int/lit8 v0, v0, 0x0

    :goto_1
    return v0
.end method

.method public static e(Landroid/content/Context;ILcom/transsion/dbdata/beans/media/SubtitleTrackInfo;)Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Insert Subtitle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubtitleRecordHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p2, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->isInnerSubtitle:Z

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->path:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "insertSubtitle SubtitleTrackInfo sud is null"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/core/log/LogUtils;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->b()Lm5a;

    move-result-object p0

    iget-boolean v0, p2, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->isInnerSubtitle:Z

    if-eqz v0, :cond_1

    iget v0, p2, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->track:I

    invoke-interface {p0, p1, v0}, Lm5a;->queryInnerSubtitleByMediaAndTrack(II)Lcom/transsion/dbdata/beans/media/SubtitleRecord;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v0, p2, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->track:I

    iget-object v2, p2, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->path:Ljava/lang/String;

    invoke-interface {p0, p1, v0, v2}, Lm5a;->querySubtitleByMediaAndTrackAndPath(IILjava/lang/String;)Lcom/transsion/dbdata/beans/media/SubtitleRecord;

    move-result-object v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Insert Subtitle oldSubtitleRecord:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->time:J

    new-instance v2, Lcom/transsion/dbdata/beans/media/SubtitleRecord;

    invoke-direct {v2}, Lcom/transsion/dbdata/beans/media/SubtitleRecord;-><init>()V

    iput p1, v2, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->_id:I

    iget-object p1, p2, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->path:Ljava/lang/String;

    iput-object p1, v2, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->subtitle_path:Ljava/lang/String;

    iget v3, p2, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->track:I

    iput v3, v2, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_track:I

    iget-wide v3, p2, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->time:J

    iput-wide v3, v2, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_track_time:J

    iget v3, p2, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->sub_inner_id:I

    iput v3, v2, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_inner_id:I

    iget-object v3, p2, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->name:Ljava/lang/String;

    iput-object v3, v2, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_inner_name:Ljava/lang/String;

    iget-boolean v3, p2, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->isInnerSubtitle:Z

    iput v3, v2, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_type:I

    iget-object v4, p2, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->sub_local_lang_to:Ljava/lang/String;

    iput-object v4, v2, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_local_lang_to:Ljava/lang/String;

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    iget p1, p2, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->sub_format:I

    goto :goto_1

    :cond_2
    invoke-static {p1}, Ln7c;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v4

    goto :goto_1

    :cond_3
    const/4 p1, -0x1

    :goto_1
    iput p1, v2, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_format:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Insert Subtitle newSubtitleRecord:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_4

    const/4 p1, 0x0

    iput p1, v2, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_track_delay_time:F

    invoke-interface {p0, v2}, Lm5a;->insertSubtitleRecord(Lcom/transsion/dbdata/beans/media/SubtitleRecord;)J

    goto :goto_2

    :cond_4
    iget p1, v0, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->id:I

    iput p1, v2, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->id:I

    iget p1, p2, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->delayTime:F

    iput p1, v2, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_track_delay_time:F

    invoke-interface {p0, v2}, Lm5a;->updateSubtitleRecord(Lcom/transsion/dbdata/beans/media/SubtitleRecord;)V

    :goto_2
    return v4
.end method

.method public static f(Landroid/content/Context;Lcom/transsion/dbdata/beans/SubtitleHistory;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->i()Lw4a;

    move-result-object p0

    invoke-interface {p0, p1}, Lw4a;->insertSubtitleHistory(Lcom/transsion/dbdata/beans/SubtitleHistory;)V

    return-void
.end method

.method public static synthetic g(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;)Z
    .locals 0

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->path:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p0, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    check-cast p1, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lq5a;->d(Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;Z)I

    move-result p0

    return p0
.end method

.method public static i(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 14

    const-string v0, "querySpecialSystemSubtitles "

    const-string v1, "SubtitleRecordHelper"

    invoke-static {}, Lpp3;->j()Z

    move-result v2

    if-nez v2, :cond_0

    return-object p1

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_data LIKE?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ln7c;->e:[Ljava/lang/String;

    array-length v6, v6

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    add-int/lit8 v9, v6, -0x1

    if-ge v8, v9, :cond_1

    const-string v9, " OR _data LIKE?"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :catch_0
    move-exception p0

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "querySpecialSystemSubtitles selection:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v12, Ln7c;->e:[Ljava/lang/String;

    const-string v13, "date_modified DESC"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string p0, "external"

    invoke-static {p0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    sget-object v10, Lq5a;->a:[Ljava/lang/String;

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_3

    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;-><init>()V

    const-string v5, "_data"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->path:Ljava/lang/String;

    const-string v5, "_id"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, p0, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->id:I

    const-string v5, "title"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->name:Ljava/lang/String;

    const-string v5, "date_modified"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->time:J

    const-string v5, "_size"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->size:J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->path:Ljava/lang/String;

    if-eqz v5, :cond_2

    const-string v6, ".sub"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    iget-object v6, v5, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->path:Ljava/lang/String;

    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v8

    new-instance v9, Lp5a;

    invoke-direct {v9, v6}, Lp5a;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v6

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "querySpecialSystemSubtitles notExistSubFile "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_5
    if-eqz v4, :cond_6

    :goto_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :goto_4
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_6

    goto :goto_3

    :cond_6
    :goto_5
    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "querySpecialSystemSubtitles idxList:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :goto_6
    if-eqz v4, :cond_7

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_7
    throw p0
.end method

.method public static j(II)Ljava/util/List;
    .locals 6

    const-string v0, "SubtitleRecordHelper"

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoRoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->b()Lm5a;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lm5a;->getAllDataByMediaIdAndTrack(II)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/SubtitleRecord;

    new-instance v2, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    invoke-direct {v2}, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;-><init>()V

    iget v3, v1, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_track:I

    iput v3, v2, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->track:I

    iget-wide v3, v1, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_track_time:J

    iput-wide v3, v2, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->time:J

    iget-object v3, v1, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->subtitle_path:Ljava/lang/String;

    iput-object v3, v2, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->path:Ljava/lang/String;

    iget v4, v1, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    iget-object v3, v1, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_inner_name:Ljava/lang/String;

    goto :goto_1

    :cond_0
    invoke-static {v3}, Lav3;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    iput-object v3, v2, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->name:Ljava/lang/String;

    iget v3, v1, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_inner_id:I

    iput v3, v2, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->sub_inner_id:I

    iget v3, v1, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_type:I

    if-ne v3, v5, :cond_1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    iput-boolean v5, v2, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->isInnerSubtitle:Z

    iget v3, v1, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_format:I

    iput v3, v2, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->sub_format:I

    iget v3, v1, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->_id:I

    iput v3, v2, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->id:I

    iget-object v3, v1, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_local_lang_to:Ljava/lang/String;

    iput-object v3, v2, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->sub_local_lang_to:Ljava/lang/String;

    iget-object v3, v1, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->subtitle_path:Ljava/lang/String;

    const-string v4, "NULL"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget v1, v1, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_track_delay_time:F

    iput v1, v2, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->delayTime:F

    :cond_2
    :try_start_0
    iget-boolean v1, v2, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->isInnerSubtitle:Z

    if-nez v1, :cond_3

    iget-object v1, v2, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->path:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v2, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->path:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/io/File;

    iget-object v3, v2, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->path:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "querySubtitleByMediaIdAndTrack not exists "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "querySubtitleByMediaIdAndTrack "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    return-object p1
.end method

.method public static k(Landroid/content/Context;)Ljava/util/List;
    .locals 11

    const-string v0, "querySystemSubtitles "

    const-string v1, "SubtitleRecordHelper"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoRoomDatabase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->i()Lw4a;

    move-result-object v3

    invoke-static {}, Loa1;->e()I

    move-result v4

    invoke-interface {v3, v4}, Lw4a;->queryAllDownLoadSubtitle(I)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/dbdata/beans/SubtitleHistory;

    new-instance v5, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    invoke-direct {v5}, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;-><init>()V

    iget-object v6, v4, Lcom/transsion/dbdata/beans/SubtitleHistory;->subPath:Ljava/lang/String;

    iput-object v6, v5, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->path:Ljava/lang/String;

    iget-wide v7, v4, Lcom/transsion/dbdata/beans/SubtitleHistory;->subSize:J

    iput-wide v7, v5, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->size:J

    invoke-static {v6}, Lav3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->name:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_data LIKE?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lpp3;->j()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Ln7c;->d:[Ljava/lang/String;

    array-length v5, v5

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_9

    :catch_0
    move-exception v4

    goto/16 :goto_7

    :cond_1
    sget-object v5, Ln7c;->c:[Ljava/lang/String;

    array-length v5, v5

    :goto_1
    const/4 v6, 0x0

    :goto_2
    add-int/lit8 v7, v5, -0x1

    if-ge v6, v7, :cond_2

    const-string v7, " OR _data LIKE?"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "querySystemSubtitles selection:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lpp3;->j()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Ln7c;->d:[Ljava/lang/String;

    :goto_3
    move-object v9, v4

    goto :goto_4

    :cond_3
    sget-object v4, Ln7c;->c:[Ljava/lang/String;

    goto :goto_3

    :goto_4
    const-string v10, "date_modified DESC"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v4, "external"

    invoke-static {v4}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    sget-object v7, Lq5a;->a:[Ljava/lang/String;

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_4

    :goto_5
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    invoke-direct {v4}, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;-><init>()V

    const-string v5, "_data"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->path:Ljava/lang/String;

    const-string v5, "_id"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->id:I

    const-string v5, "title"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->name:Ljava/lang/String;

    const-string v5, "date_modified"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->time:J

    const-string v5, "_size"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->size:J

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :cond_4
    if-eqz v3, :cond_5

    :goto_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_8

    :goto_7
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_5

    goto :goto_6

    :cond_5
    :goto_8
    invoke-static {p0, v2}, Lq5a;->i(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lq5a;->l(Ljava/util/List;)Ljava/util/List;

    return-object v2

    :goto_9
    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_6
    throw p0
.end method

.method public static l(Ljava/util/List;)Ljava/util/List;
    .locals 1

    new-instance v0, Lo5a;

    invoke-direct {v0}, Lo5a;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-object p0
.end method
