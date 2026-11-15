.class public final Lcom/transsion/dbdata/source/data/repository/SubtitleRepository$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0005H\u0002J\u0018\u0010\u0014\u001a\u00020\u0015*\u00020\u00162\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0005H\u0002J\u0008\u0010\u0018\u001a\u00020\u0019H\u0002J\u0008\u0010\u001a\u001a\u00020\u0019H\u0002J\u000e\u0010\u001b\u001a\u0004\u0018\u00010\u0015*\u00020\u001cH\u0002J\u0014\u0010\u001d\u001a\u00020\u001c*\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u0007H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00050\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000fX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0010\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/transsion/dbdata/source/data/repository/SubtitleRepository$Companion;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "INDEX_ID",
        "",
        "INDEX_TITLE",
        "INDEX_DATE_MODIFIED",
        "INDEX_DATA",
        "INDEX_SIZE",
        "supportedExtensions",
        "",
        "PROJECTION_SUBTITLE",
        "",
        "[Ljava/lang/String;",
        "isSubtitlePathSupportCustom",
        "",
        "path",
        "buildSubtitleInfo",
        "Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;",
        "Landroid/database/Cursor;",
        "filePath",
        "buildQuerySubtitleBundle",
        "Lcom/transsion/dbdata/source/data/repository/QueryBundle;",
        "buildQuerySpecialSubtitleBundle",
        "toSubtitleTrackInfo",
        "Lcom/transsion/dbdata/beans/media/SubtitleRecord;",
        "toSubtitleRecord",
        "mediaId",
        "dbdata_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository$Companion;->buildQuerySpecialSubtitleBundle$lambda$5(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$buildQuerySpecialSubtitleBundle(Lcom/transsion/dbdata/source/data/repository/SubtitleRepository$Companion;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository$Companion;->buildQuerySpecialSubtitleBundle()Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$buildQuerySubtitleBundle(Lcom/transsion/dbdata/source/data/repository/SubtitleRepository$Companion;)Lcom/transsion/dbdata/source/data/repository/QueryBundle;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository$Companion;->buildQuerySubtitleBundle()Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$buildSubtitleInfo(Lcom/transsion/dbdata/source/data/repository/SubtitleRepository$Companion;Landroid/database/Cursor;Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository$Companion;->buildSubtitleInfo(Landroid/database/Cursor;Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$toSubtitleRecord(Lcom/transsion/dbdata/source/data/repository/SubtitleRepository$Companion;Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;I)Lcom/transsion/dbdata/beans/media/SubtitleRecord;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository$Companion;->toSubtitleRecord(Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;I)Lcom/transsion/dbdata/beans/media/SubtitleRecord;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$toSubtitleTrackInfo(Lcom/transsion/dbdata/source/data/repository/SubtitleRepository$Companion;Lcom/transsion/dbdata/beans/media/SubtitleRecord;)Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository$Companion;->toSubtitleTrackInfo(Lcom/transsion/dbdata/beans/media/SubtitleRecord;)Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository$Companion;->buildQuerySubtitleBundle$lambda$2(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private final buildQuerySpecialSubtitleBundle()Lcom/transsion/dbdata/source/data/repository/QueryBundle;
    .locals 11

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v10, Ln7c;->e:[Ljava/lang/String;

    invoke-static {v10}, Ly45;->g(Ljava/lang/Object;)V

    new-instance v7, Lu5a;

    invoke-direct {v7}, Lu5a;-><init>()V

    const/16 v8, 0x1e

    const/4 v9, 0x0

    const-string v2, " OR "

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v10

    invoke-static/range {v1 .. v9}, Lhi;->s0([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le74;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v10}, Ld81;->D(Ljava/util/Collection;[Ljava/lang/Object;)Z

    new-instance v1, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    invoke-direct {v1}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;-><init>()V

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;->access$getPROJECTION_SUBTITLE$cp()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setProjection([Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setSelection(Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setSelectionArgs([Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    invoke-virtual {v1}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->build()Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object p0

    return-object p0
.end method

.method private static final buildQuerySpecialSubtitleBundle$lambda$5(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    const-string p0, "_data LIKE?"

    return-object p0
.end method

.method private final buildQuerySubtitleBundle()Lcom/transsion/dbdata/source/data/repository/QueryBundle;
    .locals 11

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lpp3;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ln7c;->d:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v1, Ln7c;->c:[Ljava/lang/String;

    :goto_0
    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    new-instance v8, Lv5a;

    invoke-direct {v8}, Lv5a;-><init>()V

    const/16 v9, 0x1e

    const/4 v10, 0x0

    const-string v3, " OR "

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    invoke-static/range {v2 .. v10}, Lhi;->s0([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le74;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ld81;->D(Ljava/util/Collection;[Ljava/lang/Object;)Z

    new-instance v1, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    invoke-direct {v1}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;-><init>()V

    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;->access$getPROJECTION_SUBTITLE$cp()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setProjection([Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setSelection(Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setSelectionArgs([Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    const-string p0, "date_modified DESC"

    invoke-virtual {v1, p0}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->setSortOrder(Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    invoke-virtual {v1}, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->build()Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    move-result-object p0

    return-object p0
.end method

.method private static final buildQuerySubtitleBundle$lambda$2(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    const-string p0, "_data LIKE?"

    return-object p0
.end method

.method private final buildSubtitleInfo(Landroid/database/Cursor;Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;
    .locals 5

    new-instance p0, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;-><init>()V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getIntSafe(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    iput v0, p0, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->id:I

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getStringSafe(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->name:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getLongSafe(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    iput-wide v3, p0, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->time:J

    if-nez p2, :cond_2

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getStringSafe(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object p2

    :cond_2
    iput-object p2, p0, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->path:Ljava/lang/String;

    const/4 p2, 0x4

    invoke-static {p1, p2}, Lcom/transsion/dbdata/source/data/ktx/CursorExtKt;->getLongSafe(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :cond_3
    iput-wide v1, p0, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->size:J

    return-object p0
.end method

.method public static synthetic buildSubtitleInfo$default(Lcom/transsion/dbdata/source/data/repository/SubtitleRepository$Companion;Landroid/database/Cursor;Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository$Companion;->buildSubtitleInfo(Landroid/database/Cursor;Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    move-result-object p0

    return-object p0
.end method

.method private final isSubtitlePathSupportCustom(Ljava/lang/String;)Z
    .locals 3

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-static {}, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;->access$getSupportedExtensions$cp()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lg1a;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    move p0, v2

    :cond_3
    :goto_0
    return p0
.end method

.method private final toSubtitleRecord(Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;I)Lcom/transsion/dbdata/beans/media/SubtitleRecord;
    .locals 3

    new-instance v0, Lcom/transsion/dbdata/beans/media/SubtitleRecord;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/SubtitleRecord;-><init>()V

    iput p2, v0, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->_id:I

    iget-object p2, p1, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->path:Ljava/lang/String;

    iput-object p2, v0, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->subtitle_path:Ljava/lang/String;

    iget p2, p1, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->track:I

    iput p2, v0, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_track:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_track_time:J

    iget p2, p1, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->sub_inner_id:I

    iput p2, v0, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_inner_id:I

    iget-object p2, p1, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->name:Ljava/lang/String;

    iput-object p2, v0, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_inner_name:Ljava/lang/String;

    iget-boolean p2, p1, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->isInnerSubtitle:Z

    iput p2, v0, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_type:I

    iget-object v1, p1, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->sub_local_lang_to:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_local_lang_to:Ljava/lang/String;

    if-eqz p2, :cond_0

    iget p0, p1, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->sub_format:I

    goto :goto_1

    :cond_0
    iget-object p2, p1, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->path:Ljava/lang/String;

    const-string v1, "NULL"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    :goto_0
    move p0, v1

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->path:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SubtitleRepository$Companion;->isSubtitlePathSupportCustom(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    :goto_1
    iput p0, v0, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_format:I

    return-object v0
.end method

.method private final toSubtitleTrackInfo(Lcom/transsion/dbdata/beans/media/SubtitleRecord;)Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;
    .locals 5

    iget-object p0, p1, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->subtitle_path:Ljava/lang/String;

    iget v0, p1, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_type:I

    const-string v1, "NULL"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, v2}, Lge6;->p(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;-><init>()V

    iget v0, p1, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_track:I

    iput v0, p0, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->track:I

    iget-wide v3, p1, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_track_time:J

    iput-wide v3, p0, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->time:J

    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->subtitle_path:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->path:Ljava/lang/String;

    iget v3, p1, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_type:I

    if-ne v3, v2, :cond_1

    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_inner_name:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lav3;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->name:Ljava/lang/String;

    iget v0, p1, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_inner_id:I

    iput v0, p0, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->sub_inner_id:I

    iget v0, p1, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_type:I

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->isInnerSubtitle:Z

    iget v0, p1, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_format:I

    iput v0, p0, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->sub_format:I

    iget v0, p1, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->_id:I

    iput v0, p0, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->id:I

    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_local_lang_to:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->sub_local_lang_to:Ljava/lang/String;

    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->subtitle_path:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget p1, p1, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_track_delay_time:F

    iput p1, p0, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->delayTime:F

    :cond_3
    return-object p0
.end method
