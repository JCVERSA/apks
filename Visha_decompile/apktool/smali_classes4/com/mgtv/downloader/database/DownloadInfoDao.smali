.class public Lcom/mgtv/downloader/database/DownloadInfoDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/downloader/database/DownloadInfoDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao<",
        "Lcom/mgtv/downloader/database/c;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "DOWNLOAD_INFO"


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/mgtv/downloader/database/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    return-void
.end method

.method public static a(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    const-string p1, "IF NOT EXISTS "

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"DOWNLOAD_INFO\" (\"_id\" INTEGER PRIMARY KEY ,\"VIDEO_ID\" TEXT,\"IMAGE\" TEXT,\"NAME\" TEXT,\"VIDEO_URL\" TEXT,\"FILE_PATH\" TEXT,\"COMPLETE_SIZE\" INTEGER,\"TOTAL_SIZE\" INTEGER,\"STATUS\" INTEGER,\"OPERATE_TIME\" INTEGER,\"SPEED\" INTEGER,\"IDC\" TEXT,\"NID\" TEXT,\"DOMAINS\" TEXT,\"ROOT_ID\" INTEGER,\"COLLECTION_ID\" INTEGER,\"COLLECTION_NAME\" TEXT,\"COLLECTION_IMAGE\" TEXT,\"CLIP_ID\" TEXT,\"PL_ID\" TEXT,\"DATA_TYPE\" INTEGER,\"VIDEO_INDEX\" INTEGER,\"DEFINITION\" INTEGER,\"FREEURL\" TEXT,\"SERIESID\" TEXT,\"FILE_SIZE\" TEXT,\"PLAY_PRIORITY\" TEXT,\"FILE_MD5\" TEXT,\"NNAME\" TEXT,\"NTITLE\" TEXT,\"FNAME\" TEXT,\"NDESC\" TEXT,\"MEDIA_TYPE\" INTEGER,\"FILE_ID\" TEXT,\"DURATION\" INTEGER,\"WATCH_TIME\" INTEGER,\"FILE_MD5_CAL\" TEXT,\"SDK_VERSION\" TEXT,\"CONTENTID\" TEXT,\"PRIORITY\" TEXT,\"LIMITSPEED\" TEXT,\"AT\" TEXT,\"EXTRA\" TEXT,\"CXID\" TEXT,\"CHANNEL\" TEXT,\"FILESOURCETYPE\" TEXT,\"RTYPE\" TEXT,\"OPENID\" TEXT);"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static b(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p1, "IF EXISTS "

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"DOWNLOAD_INFO\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;I)Ljava/lang/Long;
    .locals 0

    .line 197
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public a(Lcom/mgtv/downloader/database/c;)Ljava/lang/Long;
    .locals 0

    if-eqz p1, :cond_0

    .line 248
    invoke-virtual {p1}, Lcom/mgtv/downloader/database/c;->a()Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final a(Lcom/mgtv/downloader/database/c;J)Ljava/lang/Long;
    .locals 0

    .line 246
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/mgtv/downloader/database/c;->a(Ljava/lang/Long;)V

    .line 247
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public a(Landroid/database/Cursor;Lcom/mgtv/downloader/database/c;I)V
    .locals 3

    .line 198
    invoke-interface {p1, p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    move-object p0, v0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :goto_0
    invoke-virtual {p2, p0}, Lcom/mgtv/downloader/database/c;->a(Ljava/lang/Long;)V

    add-int/lit8 p0, p3, 0x1

    .line 199
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p0, v0

    goto :goto_1

    :cond_1
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {p2, p0}, Lcom/mgtv/downloader/database/c;->a(Ljava/lang/String;)V

    add-int/lit8 p0, p3, 0x2

    .line 200
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object p0, v0

    goto :goto_2

    :cond_2
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-virtual {p2, p0}, Lcom/mgtv/downloader/database/c;->b(Ljava/lang/String;)V

    add-int/lit8 p0, p3, 0x3

    .line 201
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object p0, v0

    goto :goto_3

    :cond_3
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_3
    invoke-virtual {p2, p0}, Lcom/mgtv/downloader/database/c;->c(Ljava/lang/String;)V

    add-int/lit8 p0, p3, 0x4

    .line 202
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object p0, v0

    goto :goto_4

    :cond_4
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_4
    invoke-virtual {p2, p0}, Lcom/mgtv/downloader/database/c;->d(Ljava/lang/String;)V

    add-int/lit8 p0, p3, 0x5

    .line 203
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object p0, v0

    goto :goto_5

    :cond_5
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_5
    invoke-virtual {p2, p0}, Lcom/mgtv/downloader/database/c;->e(Ljava/lang/String;)V

    add-int/lit8 p0, p3, 0x6

    .line 204
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object p0, v0

    goto :goto_6

    :cond_6
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :goto_6
    invoke-virtual {p2, p0}, Lcom/mgtv/downloader/database/c;->b(Ljava/lang/Long;)V

    add-int/lit8 p0, p3, 0x7

    .line 205
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object p0, v0

    goto :goto_7

    :cond_7
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :goto_7
    invoke-virtual {p2, p0}, Lcom/mgtv/downloader/database/c;->c(Ljava/lang/Long;)V

    add-int/lit8 p0, p3, 0x8

    .line 206
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object p0, v0

    goto :goto_8

    :cond_8
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_8
    invoke-virtual {p2, p0}, Lcom/mgtv/downloader/database/c;->a(Ljava/lang/Integer;)V

    add-int/lit8 p0, p3, 0x9

    .line 207
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object p0, v0

    goto :goto_9

    :cond_9
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :goto_9
    invoke-virtual {p2, p0}, Lcom/mgtv/downloader/database/c;->d(Ljava/lang/Long;)V

    add-int/lit8 p0, p3, 0xa

    .line 208
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object p0, v0

    goto :goto_a

    :cond_a
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_a
    invoke-virtual {p2, p0}, Lcom/mgtv/downloader/database/c;->b(Ljava/lang/Integer;)V

    add-int/lit8 p0, p3, 0xb

    .line 209
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_b

    move-object p0, v0

    goto :goto_b

    :cond_b
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_b
    invoke-virtual {p2, p0}, Lcom/mgtv/downloader/database/c;->f(Ljava/lang/String;)V

    add-int/lit8 p0, p3, 0xc

    .line 210
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_c

    move-object p0, v0

    goto :goto_c

    :cond_c
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_c
    invoke-virtual {p2, p0}, Lcom/mgtv/downloader/database/c;->g(Ljava/lang/String;)V

    add-int/lit8 p0, p3, 0xd

    .line 211
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_d

    move-object p0, v0

    goto :goto_d

    :cond_d
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_d
    invoke-virtual {p2, p0}, Lcom/mgtv/downloader/database/c;->h(Ljava/lang/String;)V

    add-int/lit8 p0, p3, 0xe

    .line 212
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_e

    move-object p0, v0

    goto :goto_e

    :cond_e
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_e
    invoke-virtual {p2, p0}, Lcom/mgtv/downloader/database/c;->c(Ljava/lang/Integer;)V

    add-int/lit8 p0, p3, 0xf

    .line 213
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_f

    move-object p0, v0

    goto :goto_f

    :cond_f
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_f
    invoke-virtual {p2, p0}, Lcom/mgtv/downloader/database/c;->d(Ljava/lang/Integer;)V

    add-int/lit8 p0, p3, 0x10

    .line 214
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_10

    move-object p0, v0

    goto :goto_10

    :cond_10
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_10
    invoke-virtual {p2, p0}, Lcom/mgtv/downloader/database/c;->i(Ljava/lang/String;)V

    add-int/lit8 p0, p3, 0x11

    .line 215
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_11

    move-object p0, v0

    goto :goto_11

    :cond_11
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_11
    invoke-virtual {p2, p0}, Lcom/mgtv/downloader/database/c;->j(Ljava/lang/String;)V

    add-int/lit8 p0, p3, 0x12

    .line 216
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_12

    move-object p0, v0

    goto :goto_12

    :cond_12
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_12
    invoke-virtual {p2, p0}, Lcom/mgtv/downloader/database/c;->k(Ljava/lang/String;)V

    add-int/lit8 p0, p3, 0x13

    .line 217
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_13

    move-object p0, v0

    goto :goto_13

    :cond_13
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_13
    invoke-virtual {p2, p0}, Lcom/mgtv/downloader/database/c;->l(Ljava/lang/String;)V

    add-int/lit8 p0, p3, 0x14

    .line 218
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_14

    move-object p0, v0

    goto :goto_14

    :cond_14
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_14
    invoke-virtual {p2, p0}, Lcom/mgtv/downloader/database/c;->e(Ljava/lang/Integer;)V

    add-int/lit8 p0, p3, 0x15

    .line 219
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_15

    move-object p0, v0

    goto :goto_15

    :cond_15
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_15
    invoke-virtual {p2, p0}, Lcom/mgtv/downloader/database/c;->f(Ljava/lang/Integer;)V

    add-int/lit8 p0, p3, 0x16

    .line 220
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_16

    move-object p0, v0

    goto :goto_16

    :cond_16
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_16
    invoke-virtual {p2, p0}, Lcom/mgtv/downloader/database/c;->g(Ljava/lang/Integer;)V

    add-int/lit8 p0, p3, 0x17

    .line 221
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_17

    move-object p0, v0

    goto :goto_17

    :cond_17
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_17
    invoke-virtual {p2, p0}, Lcom/mgtv/downloader/database/c;->m(Ljava/lang/String;)V

    add-int/lit8 p0, p3, 0x18

    .line 222
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_18

    move-object p0, v0

    goto :goto_18

    :cond_18
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_18
    invoke-virtual {p2, p0}, Lcom/mgtv/downloader/database/c;->n(Ljava/lang/String;)V

    add-int/lit8 p0, p3, 0x19

    .line 223
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_19

    move-object p0, v0

    goto :goto_19

    :cond_19
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_19
    invoke-virtual {p2, p0}, Lcom/mgtv/downloader/database/c;->o(Ljava/lang/String;)V

    add-int/lit8 p0, p3, 0x1a

    .line 224
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    move-object p0, v0

    goto :goto_1a

    :cond_1a
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1a
    invoke-virtual {p2, p0}, Lcom/mgtv/downloader/database/c;->p(Ljava/lang/String;)V

    add-int/lit8 p0, p3, 0x1b

    .line 225
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    move-object p0, v0

    goto :goto_1b

    :cond_1b
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1b
    invoke-virtual {p2, p0}, Lcom/mgtv/downloader/database/c;->q(Ljava/lang/String;)V

    add-int/lit8 p0, p3, 0x1c

    .line 226
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    move-object p0, v0

    goto :goto_1c

    :cond_1c
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1c
    invoke-virtual {p2, p0}, Lcom/mgtv/downloader/database/c;->r(Ljava/lang/String;)V

    add-int/lit8 p0, p3, 0x1d

    .line 227
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    move-object p0, v0

    goto :goto_1d

    :cond_1d
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1d
    invoke-virtual {p2, p0}, Lcom/mgtv/downloader/database/c;->s(Ljava/lang/String;)V

    add-int/lit8 p0, p3, 0x1e

    .line 228
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    move-object p0, v0

    goto :goto_1e

    :cond_1e
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1e
    invoke-virtual {p2, p0}, Lcom/mgtv/downloader/database/c;->t(Ljava/lang/String;)V

    add-int/lit8 p0, p3, 0x1f

    .line 229
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    move-object p0, v0

    goto :goto_1f

    :cond_1f
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1f
    invoke-virtual {p2, p0}, Lcom/mgtv/downloader/database/c;->u(Ljava/lang/String;)V

    add-int/lit8 p0, p3, 0x20

    .line 230
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_20

    move-object p0, v0

    goto :goto_20

    :cond_20
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_20
    invoke-virtual {p2, p0}, Lcom/mgtv/downloader/database/c;->h(Ljava/lang/Integer;)V

    add-int/lit8 p0, p3, 0x21

    .line 231
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_21

    move-object p0, v0

    goto :goto_21

    :cond_21
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_21
    invoke-virtual {p2, p0}, Lcom/mgtv/downloader/database/c;->w(Ljava/lang/String;)V

    add-int/lit8 p0, p3, 0x22

    .line 232
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_22

    move-object p0, v0

    goto :goto_22

    :cond_22
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_22
    invoke-virtual {p2, p0}, Lcom/mgtv/downloader/database/c;->j(Ljava/lang/Integer;)V

    add-int/lit8 p0, p3, 0x23

    .line 233
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_23

    move-object p0, v0

    goto :goto_23

    :cond_23
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_23
    invoke-virtual {p2, p0}, Lcom/mgtv/downloader/database/c;->i(Ljava/lang/Integer;)V

    add-int/lit8 p0, p3, 0x24

    .line 234
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_24

    move-object p0, v0

    goto :goto_24

    :cond_24
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_24
    invoke-virtual {p2, p0}, Lcom/mgtv/downloader/database/c;->v(Ljava/lang/String;)V

    add-int/lit8 p0, p3, 0x25

    .line 235
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_25

    move-object p0, v0

    goto :goto_25

    :cond_25
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_25
    invoke-virtual {p2, p0}, Lcom/mgtv/downloader/database/c;->x(Ljava/lang/String;)V

    add-int/lit8 p0, p3, 0x26

    .line 236
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_26

    move-object p0, v0

    goto :goto_26

    :cond_26
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_26
    invoke-virtual {p2, p0}, Lcom/mgtv/downloader/database/c;->y(Ljava/lang/String;)V

    add-int/lit8 p0, p3, 0x27

    .line 237
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_27

    move-object p0, v0

    goto :goto_27

    :cond_27
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_27
    invoke-virtual {p2, p0}, Lcom/mgtv/downloader/database/c;->z(Ljava/lang/String;)V

    add-int/lit8 p0, p3, 0x28

    .line 238
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_28

    move-object p0, v0

    goto :goto_28

    :cond_28
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_28
    invoke-virtual {p2, p0}, Lcom/mgtv/downloader/database/c;->A(Ljava/lang/String;)V

    add-int/lit8 p0, p3, 0x29

    .line 239
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_29

    move-object p0, v0

    goto :goto_29

    :cond_29
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_29
    invoke-virtual {p2, p0}, Lcom/mgtv/downloader/database/c;->B(Ljava/lang/String;)V

    add-int/lit8 p0, p3, 0x2a

    .line 240
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    move-object p0, v0

    goto :goto_2a

    :cond_2a
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_2a
    invoke-virtual {p2, p0}, Lcom/mgtv/downloader/database/c;->C(Ljava/lang/String;)V

    add-int/lit8 p0, p3, 0x2b

    .line 241
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    move-object p0, v0

    goto :goto_2b

    :cond_2b
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_2b
    invoke-virtual {p2, p0}, Lcom/mgtv/downloader/database/c;->D(Ljava/lang/String;)V

    add-int/lit8 p0, p3, 0x2c

    .line 242
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    move-object p0, v0

    goto :goto_2c

    :cond_2c
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_2c
    invoke-virtual {p2, p0}, Lcom/mgtv/downloader/database/c;->E(Ljava/lang/String;)V

    add-int/lit8 p0, p3, 0x2d

    .line 243
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    move-object p0, v0

    goto :goto_2d

    :cond_2d
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_2d
    invoke-virtual {p2, p0}, Lcom/mgtv/downloader/database/c;->F(Ljava/lang/String;)V

    add-int/lit8 p0, p3, 0x2e

    .line 244
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2e

    move-object p0, v0

    goto :goto_2e

    :cond_2e
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_2e
    invoke-virtual {p2, p0}, Lcom/mgtv/downloader/database/c;->G(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x2f

    .line 245
    invoke-interface {p1, p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result p0

    if-eqz p0, :cond_2f

    goto :goto_2f

    :cond_2f
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2f
    invoke-virtual {p2, v0}, Lcom/mgtv/downloader/database/c;->H(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/database/sqlite/SQLiteStatement;Lcom/mgtv/downloader/database/c;)V
    .locals 3

    .line 100
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteProgram;->clearBindings()V

    .line 101
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->a()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 102
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 103
    :cond_0
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->b()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    .line 104
    invoke-virtual {p1, v0, p0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 105
    :cond_1
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->c()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v0, 0x3

    .line 106
    invoke-virtual {p1, v0, p0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 107
    :cond_2
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->d()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    const/4 v0, 0x4

    .line 108
    invoke-virtual {p1, v0, p0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 109
    :cond_3
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->e()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    const/4 v0, 0x5

    .line 110
    invoke-virtual {p1, v0, p0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 111
    :cond_4
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->f()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    const/4 v0, 0x6

    .line 112
    invoke-virtual {p1, v0, p0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 113
    :cond_5
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->g()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_6

    const/4 v0, 0x7

    .line 114
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 115
    :cond_6
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->h()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_7

    const/16 v0, 0x8

    .line 116
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 117
    :cond_7
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->i()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 118
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v0, p0

    const/16 p0, 0x9

    invoke-virtual {p1, p0, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 119
    :cond_8
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->j()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_9

    const/16 v0, 0xa

    .line 120
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 121
    :cond_9
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->k()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 122
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v0, p0

    const/16 p0, 0xb

    invoke-virtual {p1, p0, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 123
    :cond_a
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->l()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_b

    const/16 v0, 0xc

    .line 124
    invoke-virtual {p1, v0, p0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 125
    :cond_b
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->m()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_c

    const/16 v0, 0xd

    .line 126
    invoke-virtual {p1, v0, p0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 127
    :cond_c
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->n()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_d

    const/16 v0, 0xe

    .line 128
    invoke-virtual {p1, v0, p0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 129
    :cond_d
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->o()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 130
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v0, p0

    const/16 p0, 0xf

    invoke-virtual {p1, p0, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 131
    :cond_e
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->p()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 132
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v0, p0

    const/16 p0, 0x10

    invoke-virtual {p1, p0, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 133
    :cond_f
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->q()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_10

    const/16 v0, 0x11

    .line 134
    invoke-virtual {p1, v0, p0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 135
    :cond_10
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->r()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_11

    const/16 v0, 0x12

    .line 136
    invoke-virtual {p1, v0, p0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 137
    :cond_11
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->s()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_12

    const/16 v0, 0x13

    .line 138
    invoke-virtual {p1, v0, p0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 139
    :cond_12
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->t()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_13

    const/16 v0, 0x14

    .line 140
    invoke-virtual {p1, v0, p0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 141
    :cond_13
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->u()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 142
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v0, p0

    const/16 p0, 0x15

    invoke-virtual {p1, p0, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 143
    :cond_14
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->v()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 144
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v0, p0

    const/16 p0, 0x16

    invoke-virtual {p1, p0, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 145
    :cond_15
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->w()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 146
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v0, p0

    const/16 p0, 0x17

    invoke-virtual {p1, p0, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 147
    :cond_16
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->x()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_17

    const/16 v0, 0x18

    .line 148
    invoke-virtual {p1, v0, p0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 149
    :cond_17
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->y()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_18

    const/16 v0, 0x19

    .line 150
    invoke-virtual {p1, v0, p0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 151
    :cond_18
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->z()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_19

    const/16 v0, 0x1a

    .line 152
    invoke-virtual {p1, v0, p0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 153
    :cond_19
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->A()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1a

    const/16 v0, 0x1b

    .line 154
    invoke-virtual {p1, v0, p0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 155
    :cond_1a
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->B()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1b

    const/16 v0, 0x1c

    .line 156
    invoke-virtual {p1, v0, p0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 157
    :cond_1b
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->C()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1c

    const/16 v0, 0x1d

    .line 158
    invoke-virtual {p1, v0, p0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 159
    :cond_1c
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->D()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1d

    const/16 v0, 0x1e

    .line 160
    invoke-virtual {p1, v0, p0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 161
    :cond_1d
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->E()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1e

    const/16 v0, 0x1f

    .line 162
    invoke-virtual {p1, v0, p0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 163
    :cond_1e
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->F()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1f

    const/16 v0, 0x20

    .line 164
    invoke-virtual {p1, v0, p0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 165
    :cond_1f
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->G()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 166
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v0, p0

    const/16 p0, 0x21

    invoke-virtual {p1, p0, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 167
    :cond_20
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->K()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_21

    const/16 v0, 0x22

    .line 168
    invoke-virtual {p1, v0, p0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 169
    :cond_21
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->I()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 170
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v0, p0

    const/16 p0, 0x23

    invoke-virtual {p1, p0, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 171
    :cond_22
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->H()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_23

    .line 172
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v0, p0

    const/16 p0, 0x24

    invoke-virtual {p1, p0, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 173
    :cond_23
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->J()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_24

    const/16 v0, 0x25

    .line 174
    invoke-virtual {p1, v0, p0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 175
    :cond_24
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->L()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_25

    const/16 v0, 0x26

    .line 176
    invoke-virtual {p1, v0, p0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 177
    :cond_25
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->M()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_26

    const/16 v0, 0x27

    .line 178
    invoke-virtual {p1, v0, p0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 179
    :cond_26
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->N()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_27

    const/16 v0, 0x28

    .line 180
    invoke-virtual {p1, v0, p0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 181
    :cond_27
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->O()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_28

    const/16 v0, 0x29

    .line 182
    invoke-virtual {p1, v0, p0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 183
    :cond_28
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->P()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_29

    const/16 v0, 0x2a

    .line 184
    invoke-virtual {p1, v0, p0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 185
    :cond_29
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->Q()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2a

    const/16 v0, 0x2b

    .line 186
    invoke-virtual {p1, v0, p0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 187
    :cond_2a
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->R()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2b

    const/16 v0, 0x2c

    .line 188
    invoke-virtual {p1, v0, p0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 189
    :cond_2b
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->S()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2c

    const/16 v0, 0x2d

    .line 190
    invoke-virtual {p1, v0, p0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 191
    :cond_2c
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->T()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2d

    const/16 v0, 0x2e

    .line 192
    invoke-virtual {p1, v0, p0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 193
    :cond_2d
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->U()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2e

    const/16 v0, 0x2f

    .line 194
    invoke-virtual {p1, v0, p0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 195
    :cond_2e
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->V()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2f

    const/16 p2, 0x30

    .line 196
    invoke-virtual {p1, p2, p0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    :cond_2f
    return-void
.end method

.method public final a(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/mgtv/downloader/database/c;)V
    .locals 3

    .line 3
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 4
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->a()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 6
    :cond_0
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->b()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    .line 7
    invoke-interface {p1, v0, p0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 8
    :cond_1
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->c()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v0, 0x3

    .line 9
    invoke-interface {p1, v0, p0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 10
    :cond_2
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->d()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    const/4 v0, 0x4

    .line 11
    invoke-interface {p1, v0, p0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 12
    :cond_3
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->e()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    const/4 v0, 0x5

    .line 13
    invoke-interface {p1, v0, p0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 14
    :cond_4
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->f()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    const/4 v0, 0x6

    .line 15
    invoke-interface {p1, v0, p0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 16
    :cond_5
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->g()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_6

    const/4 v0, 0x7

    .line 17
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 18
    :cond_6
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->h()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_7

    const/16 v0, 0x8

    .line 19
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 20
    :cond_7
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->i()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 21
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v0, p0

    const/16 p0, 0x9

    invoke-interface {p1, p0, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 22
    :cond_8
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->j()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_9

    const/16 v0, 0xa

    .line 23
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 24
    :cond_9
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->k()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 25
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v0, p0

    const/16 p0, 0xb

    invoke-interface {p1, p0, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 26
    :cond_a
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->l()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_b

    const/16 v0, 0xc

    .line 27
    invoke-interface {p1, v0, p0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 28
    :cond_b
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->m()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_c

    const/16 v0, 0xd

    .line 29
    invoke-interface {p1, v0, p0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 30
    :cond_c
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->n()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_d

    const/16 v0, 0xe

    .line 31
    invoke-interface {p1, v0, p0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 32
    :cond_d
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->o()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 33
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v0, p0

    const/16 p0, 0xf

    invoke-interface {p1, p0, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 34
    :cond_e
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->p()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 35
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v0, p0

    const/16 p0, 0x10

    invoke-interface {p1, p0, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 36
    :cond_f
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->q()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_10

    const/16 v0, 0x11

    .line 37
    invoke-interface {p1, v0, p0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 38
    :cond_10
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->r()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_11

    const/16 v0, 0x12

    .line 39
    invoke-interface {p1, v0, p0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 40
    :cond_11
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->s()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_12

    const/16 v0, 0x13

    .line 41
    invoke-interface {p1, v0, p0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 42
    :cond_12
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->t()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_13

    const/16 v0, 0x14

    .line 43
    invoke-interface {p1, v0, p0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 44
    :cond_13
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->u()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 45
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v0, p0

    const/16 p0, 0x15

    invoke-interface {p1, p0, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 46
    :cond_14
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->v()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 47
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v0, p0

    const/16 p0, 0x16

    invoke-interface {p1, p0, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 48
    :cond_15
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->w()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 49
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v0, p0

    const/16 p0, 0x17

    invoke-interface {p1, p0, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 50
    :cond_16
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->x()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_17

    const/16 v0, 0x18

    .line 51
    invoke-interface {p1, v0, p0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 52
    :cond_17
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->y()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_18

    const/16 v0, 0x19

    .line 53
    invoke-interface {p1, v0, p0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 54
    :cond_18
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->z()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_19

    const/16 v0, 0x1a

    .line 55
    invoke-interface {p1, v0, p0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 56
    :cond_19
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->A()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1a

    const/16 v0, 0x1b

    .line 57
    invoke-interface {p1, v0, p0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 58
    :cond_1a
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->B()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1b

    const/16 v0, 0x1c

    .line 59
    invoke-interface {p1, v0, p0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 60
    :cond_1b
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->C()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1c

    const/16 v0, 0x1d

    .line 61
    invoke-interface {p1, v0, p0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 62
    :cond_1c
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->D()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1d

    const/16 v0, 0x1e

    .line 63
    invoke-interface {p1, v0, p0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 64
    :cond_1d
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->E()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1e

    const/16 v0, 0x1f

    .line 65
    invoke-interface {p1, v0, p0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 66
    :cond_1e
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->F()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1f

    const/16 v0, 0x20

    .line 67
    invoke-interface {p1, v0, p0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 68
    :cond_1f
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->G()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 69
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v0, p0

    const/16 p0, 0x21

    invoke-interface {p1, p0, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 70
    :cond_20
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->K()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_21

    const/16 v0, 0x22

    .line 71
    invoke-interface {p1, v0, p0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 72
    :cond_21
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->I()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 73
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v0, p0

    const/16 p0, 0x23

    invoke-interface {p1, p0, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 74
    :cond_22
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->H()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_23

    .line 75
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v0, p0

    const/16 p0, 0x24

    invoke-interface {p1, p0, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 76
    :cond_23
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->J()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_24

    const/16 v0, 0x25

    .line 77
    invoke-interface {p1, v0, p0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 78
    :cond_24
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->L()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_25

    const/16 v0, 0x26

    .line 79
    invoke-interface {p1, v0, p0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 80
    :cond_25
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->M()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_26

    const/16 v0, 0x27

    .line 81
    invoke-interface {p1, v0, p0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 82
    :cond_26
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->N()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_27

    const/16 v0, 0x28

    .line 83
    invoke-interface {p1, v0, p0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 84
    :cond_27
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->O()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_28

    const/16 v0, 0x29

    .line 85
    invoke-interface {p1, v0, p0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 86
    :cond_28
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->P()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_29

    const/16 v0, 0x2a

    .line 87
    invoke-interface {p1, v0, p0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 88
    :cond_29
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->Q()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2a

    const/16 v0, 0x2b

    .line 89
    invoke-interface {p1, v0, p0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 90
    :cond_2a
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->R()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2b

    const/16 v0, 0x2c

    .line 91
    invoke-interface {p1, v0, p0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 92
    :cond_2b
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->S()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2c

    const/16 v0, 0x2d

    .line 93
    invoke-interface {p1, v0, p0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 94
    :cond_2c
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->T()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2d

    const/16 v0, 0x2e

    .line 95
    invoke-interface {p1, v0, p0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 96
    :cond_2d
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->U()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2e

    const/16 v0, 0x2f

    .line 97
    invoke-interface {p1, v0, p0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 98
    :cond_2e
    invoke-virtual {p2}, Lcom/mgtv/downloader/database/c;->V()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2f

    const/16 p2, 0x30

    .line 99
    invoke-interface {p1, p2, p0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_2f
    return-void
.end method

.method public b(Landroid/database/Cursor;I)Lcom/mgtv/downloader/database/c;
    .locals 51

    move-object/from16 v0, p1

    .line 3
    new-instance v49, Lcom/mgtv/downloader/database/c;

    .line 4
    invoke-interface/range {p1 .. p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface/range {p1 .. p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_0
    add-int/lit8 v3, p2, 0x1

    .line 5
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    add-int/lit8 v4, p2, 0x2

    .line 6
    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    add-int/lit8 v5, p2, 0x3

    .line 7
    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_3
    add-int/lit8 v6, p2, 0x4

    .line 8
    invoke-interface {v0, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_4
    add-int/lit8 v7, p2, 0x5

    .line 9
    invoke-interface {v0, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v7, 0x0

    goto :goto_5

    :cond_5
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_5
    add-int/lit8 v8, p2, 0x6

    .line 10
    invoke-interface {v0, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v8, 0x0

    goto :goto_6

    :cond_6
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    :goto_6
    add-int/lit8 v9, p2, 0x7

    .line 11
    invoke-interface {v0, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v9, 0x0

    goto :goto_7

    :cond_7
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    :goto_7
    add-int/lit8 v10, p2, 0x8

    .line 12
    invoke-interface {v0, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_8

    const/4 v10, 0x0

    goto :goto_8

    :cond_8
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    :goto_8
    add-int/lit8 v11, p2, 0x9

    .line 13
    invoke-interface {v0, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_9

    const/4 v11, 0x0

    goto :goto_9

    :cond_9
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    :goto_9
    add-int/lit8 v12, p2, 0xa

    .line 14
    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_a

    const/4 v12, 0x0

    goto :goto_a

    :cond_a
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    :goto_a
    add-int/lit8 v13, p2, 0xb

    .line 15
    invoke-interface {v0, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_b

    const/4 v13, 0x0

    goto :goto_b

    :cond_b
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    :goto_b
    add-int/lit8 v14, p2, 0xc

    .line 16
    invoke-interface {v0, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_c

    const/4 v14, 0x0

    goto :goto_c

    :cond_c
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    :goto_c
    add-int/lit8 v15, p2, 0xd

    .line 17
    invoke-interface {v0, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_d

    const/4 v15, 0x0

    goto :goto_d

    :cond_d
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    :goto_d
    add-int/lit8 v2, p2, 0xe

    .line 18
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_e

    const/16 v16, 0x0

    goto :goto_e

    :cond_e
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v16, v2

    :goto_e
    add-int/lit8 v2, p2, 0xf

    .line 19
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_f

    const/16 v17, 0x0

    goto :goto_f

    :cond_f
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v17, v2

    :goto_f
    add-int/lit8 v2, p2, 0x10

    .line 20
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_10

    const/16 v18, 0x0

    goto :goto_10

    :cond_10
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v18, v2

    :goto_10
    add-int/lit8 v2, p2, 0x11

    .line 21
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_11

    const/16 v19, 0x0

    goto :goto_11

    :cond_11
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v19, v2

    :goto_11
    add-int/lit8 v2, p2, 0x12

    .line 22
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_12

    const/16 v20, 0x0

    goto :goto_12

    :cond_12
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v20, v2

    :goto_12
    add-int/lit8 v2, p2, 0x13

    .line 23
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_13

    const/16 v21, 0x0

    goto :goto_13

    :cond_13
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v21, v2

    :goto_13
    add-int/lit8 v2, p2, 0x14

    .line 24
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_14

    const/16 v22, 0x0

    goto :goto_14

    :cond_14
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v22, v2

    :goto_14
    add-int/lit8 v2, p2, 0x15

    .line 25
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_15

    const/16 v23, 0x0

    goto :goto_15

    :cond_15
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v23, v2

    :goto_15
    add-int/lit8 v2, p2, 0x16

    .line 26
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v24

    if-eqz v24, :cond_16

    const/16 v24, 0x0

    goto :goto_16

    :cond_16
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v24, v2

    :goto_16
    add-int/lit8 v2, p2, 0x17

    .line 27
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_17

    const/16 v25, 0x0

    goto :goto_17

    :cond_17
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v25, v2

    :goto_17
    add-int/lit8 v2, p2, 0x18

    .line 28
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_18

    const/16 v26, 0x0

    goto :goto_18

    :cond_18
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v26, v2

    :goto_18
    add-int/lit8 v2, p2, 0x19

    .line 29
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v27

    if-eqz v27, :cond_19

    const/16 v27, 0x0

    goto :goto_19

    :cond_19
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v27, v2

    :goto_19
    add-int/lit8 v2, p2, 0x1a

    .line 30
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_1a

    const/16 v28, 0x0

    goto :goto_1a

    :cond_1a
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v28, v2

    :goto_1a
    add-int/lit8 v2, p2, 0x1b

    .line 31
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v29

    if-eqz v29, :cond_1b

    const/16 v29, 0x0

    goto :goto_1b

    :cond_1b
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v29, v2

    :goto_1b
    add-int/lit8 v2, p2, 0x1c

    .line 32
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v30

    if-eqz v30, :cond_1c

    const/16 v30, 0x0

    goto :goto_1c

    :cond_1c
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v30, v2

    :goto_1c
    add-int/lit8 v2, p2, 0x1d

    .line 33
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v31

    if-eqz v31, :cond_1d

    const/16 v31, 0x0

    goto :goto_1d

    :cond_1d
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v31, v2

    :goto_1d
    add-int/lit8 v2, p2, 0x1e

    .line 34
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v32

    if-eqz v32, :cond_1e

    const/16 v32, 0x0

    goto :goto_1e

    :cond_1e
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v32, v2

    :goto_1e
    add-int/lit8 v2, p2, 0x1f

    .line 35
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_1f

    const/16 v33, 0x0

    goto :goto_1f

    :cond_1f
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v33, v2

    :goto_1f
    add-int/lit8 v2, p2, 0x20

    .line 36
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v34

    if-eqz v34, :cond_20

    const/16 v34, 0x0

    goto :goto_20

    :cond_20
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v34, v2

    :goto_20
    add-int/lit8 v2, p2, 0x21

    .line 37
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_21

    const/16 v35, 0x0

    goto :goto_21

    :cond_21
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v35, v2

    :goto_21
    add-int/lit8 v2, p2, 0x22

    .line 38
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v36

    if-eqz v36, :cond_22

    const/16 v36, 0x0

    goto :goto_22

    :cond_22
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v36, v2

    :goto_22
    add-int/lit8 v2, p2, 0x23

    .line 39
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v37

    if-eqz v37, :cond_23

    const/16 v37, 0x0

    goto :goto_23

    :cond_23
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v37, v2

    :goto_23
    add-int/lit8 v2, p2, 0x24

    .line 40
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v38

    if-eqz v38, :cond_24

    const/16 v38, 0x0

    goto :goto_24

    :cond_24
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v38, v2

    :goto_24
    add-int/lit8 v2, p2, 0x25

    .line 41
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v39

    if-eqz v39, :cond_25

    const/16 v39, 0x0

    goto :goto_25

    :cond_25
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v39, v2

    :goto_25
    add-int/lit8 v2, p2, 0x26

    .line 42
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v40

    if-eqz v40, :cond_26

    const/16 v40, 0x0

    goto :goto_26

    :cond_26
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v40, v2

    :goto_26
    add-int/lit8 v2, p2, 0x27

    .line 43
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v41

    if-eqz v41, :cond_27

    const/16 v41, 0x0

    goto :goto_27

    :cond_27
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v41, v2

    :goto_27
    add-int/lit8 v2, p2, 0x28

    .line 44
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v42

    if-eqz v42, :cond_28

    const/16 v42, 0x0

    goto :goto_28

    :cond_28
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v42, v2

    :goto_28
    add-int/lit8 v2, p2, 0x29

    .line 45
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v43

    if-eqz v43, :cond_29

    const/16 v43, 0x0

    goto :goto_29

    :cond_29
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v43, v2

    :goto_29
    add-int/lit8 v2, p2, 0x2a

    .line 46
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v44

    if-eqz v44, :cond_2a

    const/16 v44, 0x0

    goto :goto_2a

    :cond_2a
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v44, v2

    :goto_2a
    add-int/lit8 v2, p2, 0x2b

    .line 47
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v45

    if-eqz v45, :cond_2b

    const/16 v45, 0x0

    goto :goto_2b

    :cond_2b
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v45, v2

    :goto_2b
    add-int/lit8 v2, p2, 0x2c

    .line 48
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v46

    if-eqz v46, :cond_2c

    const/16 v46, 0x0

    goto :goto_2c

    :cond_2c
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v46, v2

    :goto_2c
    add-int/lit8 v2, p2, 0x2d

    .line 49
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v47

    if-eqz v47, :cond_2d

    const/16 v47, 0x0

    goto :goto_2d

    :cond_2d
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v47, v2

    :goto_2d
    add-int/lit8 v2, p2, 0x2e

    .line 50
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v48

    if-eqz v48, :cond_2e

    const/16 v48, 0x0

    goto :goto_2e

    :cond_2e
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v48, v2

    :goto_2e
    add-int/lit8 v2, p2, 0x2f

    .line 51
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v50

    if-eqz v50, :cond_2f

    const/16 v50, 0x0

    goto :goto_2f

    :cond_2f
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v50, v0

    :goto_2f
    move-object/from16 v0, v49

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v26

    move-object/from16 v26, v27

    move-object/from16 v27, v28

    move-object/from16 v28, v29

    move-object/from16 v29, v30

    move-object/from16 v30, v31

    move-object/from16 v31, v32

    move-object/from16 v32, v33

    move-object/from16 v33, v34

    move-object/from16 v34, v35

    move-object/from16 v35, v36

    move-object/from16 v36, v37

    move-object/from16 v37, v38

    move-object/from16 v38, v39

    move-object/from16 v39, v40

    move-object/from16 v40, v41

    move-object/from16 v41, v42

    move-object/from16 v42, v43

    move-object/from16 v43, v44

    move-object/from16 v44, v45

    move-object/from16 v45, v46

    move-object/from16 v46, v47

    move-object/from16 v47, v48

    move-object/from16 v48, v50

    invoke-direct/range {v0 .. v48}, Lcom/mgtv/downloader/database/c;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v49
.end method

.method public b(Lcom/mgtv/downloader/database/c;)Z
    .locals 0

    .line 52
    invoke-virtual {p1}, Lcom/mgtv/downloader/database/c;->a()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/mgtv/downloader/database/c;

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/downloader/database/DownloadInfoDao;->a(Landroid/database/sqlite/SQLiteStatement;Lcom/mgtv/downloader/database/c;)V

    return-void
.end method

.method public synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/mgtv/downloader/database/c;

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/downloader/database/DownloadInfoDao;->a(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/mgtv/downloader/database/c;)V

    return-void
.end method

.method public synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/mgtv/downloader/database/c;

    invoke-virtual {p0, p1}, Lcom/mgtv/downloader/database/DownloadInfoDao;->a(Lcom/mgtv/downloader/database/c;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public synthetic hasKey(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/mgtv/downloader/database/c;

    invoke-virtual {p0, p1}, Lcom/mgtv/downloader/database/DownloadInfoDao;->b(Lcom/mgtv/downloader/database/c;)Z

    move-result p0

    return p0
.end method

.method public final isEntityUpdateable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/mgtv/downloader/database/DownloadInfoDao;->b(Landroid/database/Cursor;I)Lcom/mgtv/downloader/database/c;

    move-result-object p0

    return-object p0
.end method

.method public synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    check-cast p2, Lcom/mgtv/downloader/database/c;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mgtv/downloader/database/DownloadInfoDao;->a(Landroid/database/Cursor;Lcom/mgtv/downloader/database/c;I)V

    return-void
.end method

.method public synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/downloader/database/DownloadInfoDao;->a(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/mgtv/downloader/database/c;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mgtv/downloader/database/DownloadInfoDao;->a(Lcom/mgtv/downloader/database/c;J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
