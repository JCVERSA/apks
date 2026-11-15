.class public Lcom/mgtv/downloader/database/DownloadInfoDao$Properties;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/downloader/database/DownloadInfoDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final A:Lorg/greenrobot/greendao/Property;

.field public static final B:Lorg/greenrobot/greendao/Property;

.field public static final C:Lorg/greenrobot/greendao/Property;

.field public static final D:Lorg/greenrobot/greendao/Property;

.field public static final E:Lorg/greenrobot/greendao/Property;

.field public static final F:Lorg/greenrobot/greendao/Property;

.field public static final G:Lorg/greenrobot/greendao/Property;

.field public static final H:Lorg/greenrobot/greendao/Property;

.field public static final I:Lorg/greenrobot/greendao/Property;

.field public static final J:Lorg/greenrobot/greendao/Property;

.field public static final K:Lorg/greenrobot/greendao/Property;

.field public static final L:Lorg/greenrobot/greendao/Property;

.field public static final M:Lorg/greenrobot/greendao/Property;

.field public static final N:Lorg/greenrobot/greendao/Property;

.field public static final O:Lorg/greenrobot/greendao/Property;

.field public static final P:Lorg/greenrobot/greendao/Property;

.field public static final Q:Lorg/greenrobot/greendao/Property;

.field public static final R:Lorg/greenrobot/greendao/Property;

.field public static final S:Lorg/greenrobot/greendao/Property;

.field public static final T:Lorg/greenrobot/greendao/Property;

.field public static final U:Lorg/greenrobot/greendao/Property;

.field public static final V:Lorg/greenrobot/greendao/Property;

.field public static final a:Lorg/greenrobot/greendao/Property;

.field public static final b:Lorg/greenrobot/greendao/Property;

.field public static final c:Lorg/greenrobot/greendao/Property;

.field public static final d:Lorg/greenrobot/greendao/Property;

.field public static final e:Lorg/greenrobot/greendao/Property;

.field public static final f:Lorg/greenrobot/greendao/Property;

.field public static final g:Lorg/greenrobot/greendao/Property;

.field public static final h:Lorg/greenrobot/greendao/Property;

.field public static final i:Lorg/greenrobot/greendao/Property;

.field public static final j:Lorg/greenrobot/greendao/Property;

.field public static final k:Lorg/greenrobot/greendao/Property;

.field public static final l:Lorg/greenrobot/greendao/Property;

.field public static final m:Lorg/greenrobot/greendao/Property;

.field public static final n:Lorg/greenrobot/greendao/Property;

.field public static final o:Lorg/greenrobot/greendao/Property;

.field public static final p:Lorg/greenrobot/greendao/Property;

.field public static final q:Lorg/greenrobot/greendao/Property;

.field public static final r:Lorg/greenrobot/greendao/Property;

.field public static final s:Lorg/greenrobot/greendao/Property;

.field public static final t:Lorg/greenrobot/greendao/Property;

.field public static final u:Lorg/greenrobot/greendao/Property;

.field public static final v:Lorg/greenrobot/greendao/Property;

.field public static final w:Lorg/greenrobot/greendao/Property;

.field public static final x:Lorg/greenrobot/greendao/Property;

.field public static final y:Lorg/greenrobot/greendao/Property;

.field public static final z:Lorg/greenrobot/greendao/Property;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v6, Lorg/greenrobot/greendao/Property;

    const/4 v4, 0x1

    const-string v5, "_id"

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Long;

    const-string v3, "id"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v6, Lcom/mgtv/downloader/database/DownloadInfoDao$Properties;->a:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const/4 v11, 0x0

    const-string v12, "VIDEO_ID"

    const/4 v8, 0x1

    const-class v9, Ljava/lang/String;

    const-string v10, "videoId"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/mgtv/downloader/database/DownloadInfoDao$Properties;->b:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const/4 v5, 0x0

    const-string v6, "IMAGE"

    const/4 v2, 0x2

    const-class v3, Ljava/lang/String;

    const-string v4, "image"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/mgtv/downloader/database/DownloadInfoDao$Properties;->c:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-string v12, "NAME"

    const/4 v8, 0x3

    const-class v9, Ljava/lang/String;

    const-string v10, "name"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/mgtv/downloader/database/DownloadInfoDao$Properties;->d:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-string v6, "VIDEO_URL"

    const/4 v2, 0x4

    const-class v3, Ljava/lang/String;

    const-string v4, "videoUrl"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/mgtv/downloader/database/DownloadInfoDao$Properties;->e:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-string v12, "FILE_PATH"

    const/4 v8, 0x5

    const-class v9, Ljava/lang/String;

    const-string v10, "filePath"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/mgtv/downloader/database/DownloadInfoDao$Properties;->f:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-string v6, "COMPLETE_SIZE"

    const/4 v2, 0x6

    const-class v3, Ljava/lang/Long;

    const-string v4, "completeSize"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/mgtv/downloader/database/DownloadInfoDao$Properties;->g:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-string v12, "TOTAL_SIZE"

    const/4 v8, 0x7

    const-class v9, Ljava/lang/Long;

    const-string v10, "totalSize"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/mgtv/downloader/database/DownloadInfoDao$Properties;->h:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-string v6, "STATUS"

    const/16 v2, 0x8

    const-class v3, Ljava/lang/Integer;

    const-string v4, "status"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/mgtv/downloader/database/DownloadInfoDao$Properties;->i:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-string v12, "OPERATE_TIME"

    const/16 v8, 0x9

    const-class v9, Ljava/lang/Long;

    const-string v10, "operateTime"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/mgtv/downloader/database/DownloadInfoDao$Properties;->j:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-string v6, "SPEED"

    const/16 v2, 0xa

    const-class v3, Ljava/lang/Integer;

    const-string v4, "speed"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/mgtv/downloader/database/DownloadInfoDao$Properties;->k:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-string v12, "IDC"

    const/16 v8, 0xb

    const-class v9, Ljava/lang/String;

    const-string v10, "idc"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/mgtv/downloader/database/DownloadInfoDao$Properties;->l:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-string v6, "NID"

    const/16 v2, 0xc

    const-class v3, Ljava/lang/String;

    const-string v4, "nid"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/mgtv/downloader/database/DownloadInfoDao$Properties;->m:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-string v12, "DOMAINS"

    const/16 v8, 0xd

    const-class v9, Ljava/lang/String;

    const-string v10, "domains"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/mgtv/downloader/database/DownloadInfoDao$Properties;->n:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-string v6, "ROOT_ID"

    const/16 v2, 0xe

    const-class v3, Ljava/lang/Integer;

    const-string v4, "rootId"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/mgtv/downloader/database/DownloadInfoDao$Properties;->o:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-string v12, "COLLECTION_ID"

    const/16 v8, 0xf

    const-class v9, Ljava/lang/Integer;

    const-string v10, "collectionId"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/mgtv/downloader/database/DownloadInfoDao$Properties;->p:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-string v6, "COLLECTION_NAME"

    const/16 v2, 0x10

    const-class v3, Ljava/lang/String;

    const-string v4, "collectionName"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/mgtv/downloader/database/DownloadInfoDao$Properties;->q:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-string v12, "COLLECTION_IMAGE"

    const/16 v8, 0x11

    const-class v9, Ljava/lang/String;

    const-string v10, "collectionImage"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/mgtv/downloader/database/DownloadInfoDao$Properties;->r:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-string v6, "CLIP_ID"

    const/16 v2, 0x12

    const-class v3, Ljava/lang/String;

    const-string v4, "clipId"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/mgtv/downloader/database/DownloadInfoDao$Properties;->s:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-string v12, "PL_ID"

    const/16 v8, 0x13

    const-class v9, Ljava/lang/String;

    const-string v10, "plId"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/mgtv/downloader/database/DownloadInfoDao$Properties;->t:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-string v6, "DATA_TYPE"

    const/16 v2, 0x14

    const-class v3, Ljava/lang/Integer;

    const-string v4, "dataType"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/mgtv/downloader/database/DownloadInfoDao$Properties;->u:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-string v12, "VIDEO_INDEX"

    const/16 v8, 0x15

    const-class v9, Ljava/lang/Integer;

    const-string v10, "videoIndex"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/mgtv/downloader/database/DownloadInfoDao$Properties;->v:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-string v6, "DEFINITION"

    const/16 v2, 0x16

    const-class v3, Ljava/lang/Integer;

    const-string v4, "definition"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/mgtv/downloader/database/DownloadInfoDao$Properties;->w:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-string v12, "FREEURL"

    const/16 v8, 0x17

    const-class v9, Ljava/lang/String;

    const-string v10, "freeUrl"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/mgtv/downloader/database/DownloadInfoDao$Properties;->x:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-string v6, "SERIESID"

    const/16 v2, 0x18

    const-class v3, Ljava/lang/String;

    const-string v4, "seriesId"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/mgtv/downloader/database/DownloadInfoDao$Properties;->y:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-string v12, "FILE_SIZE"

    const/16 v8, 0x19

    const-class v9, Ljava/lang/String;

    const-string v10, "fileSize"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/mgtv/downloader/database/DownloadInfoDao$Properties;->z:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-string v6, "PLAY_PRIORITY"

    const/16 v2, 0x1a

    const-class v3, Ljava/lang/String;

    const-string v4, "playPriority"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/mgtv/downloader/database/DownloadInfoDao$Properties;->A:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-string v12, "FILE_MD5"

    const/16 v8, 0x1b

    const-class v9, Ljava/lang/String;

    const-string v10, "fileMD5"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/mgtv/downloader/database/DownloadInfoDao$Properties;->B:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-string v6, "NNAME"

    const/16 v2, 0x1c

    const-class v3, Ljava/lang/String;

    const-string v4, "nname"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/mgtv/downloader/database/DownloadInfoDao$Properties;->C:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-string v12, "NTITLE"

    const/16 v8, 0x1d

    const-class v9, Ljava/lang/String;

    const-string v10, "ntitle"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/mgtv/downloader/database/DownloadInfoDao$Properties;->D:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-string v6, "FNAME"

    const/16 v2, 0x1e

    const-class v3, Ljava/lang/String;

    const-string v4, "fname"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/mgtv/downloader/database/DownloadInfoDao$Properties;->E:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-string v12, "NDESC"

    const/16 v8, 0x1f

    const-class v9, Ljava/lang/String;

    const-string v10, "ndesc"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/mgtv/downloader/database/DownloadInfoDao$Properties;->F:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-string v6, "MEDIA_TYPE"

    const/16 v2, 0x20

    const-class v3, Ljava/lang/Integer;

    const-string v4, "mediaType"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/mgtv/downloader/database/DownloadInfoDao$Properties;->G:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-string v12, "FILE_ID"

    const/16 v8, 0x21

    const-class v9, Ljava/lang/String;

    const-string v10, "fileID"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/mgtv/downloader/database/DownloadInfoDao$Properties;->H:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-string v6, "DURATION"

    const/16 v2, 0x22

    const-class v3, Ljava/lang/Integer;

    const-string v4, "duration"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/mgtv/downloader/database/DownloadInfoDao$Properties;->I:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-string v12, "WATCH_TIME"

    const/16 v8, 0x23

    const-class v9, Ljava/lang/Integer;

    const-string v10, "watchTime"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/mgtv/downloader/database/DownloadInfoDao$Properties;->J:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-string v6, "FILE_MD5_CAL"

    const/16 v2, 0x24

    const-class v3, Ljava/lang/String;

    const-string v4, "fileMD5Calc"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/mgtv/downloader/database/DownloadInfoDao$Properties;->K:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-string v12, "SDK_VERSION"

    const/16 v8, 0x25

    const-class v9, Ljava/lang/String;

    const-string v10, "sdkVersion"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/mgtv/downloader/database/DownloadInfoDao$Properties;->L:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-string v6, "CONTENTID"

    const/16 v2, 0x26

    const-class v3, Ljava/lang/String;

    const-string v4, "contentId"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/mgtv/downloader/database/DownloadInfoDao$Properties;->M:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-string v12, "PRIORITY"

    const/16 v8, 0x27

    const-class v9, Ljava/lang/String;

    const-string v10, "priority"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/mgtv/downloader/database/DownloadInfoDao$Properties;->N:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-string v6, "LIMITSPEED"

    const/16 v2, 0x28

    const-class v3, Ljava/lang/String;

    const-string v4, "limitSpeed"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/mgtv/downloader/database/DownloadInfoDao$Properties;->O:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-string v12, "AT"

    const/16 v8, 0x29

    const-class v9, Ljava/lang/String;

    const-string v10, "at"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/mgtv/downloader/database/DownloadInfoDao$Properties;->P:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-string v6, "EXTRA"

    const/16 v2, 0x2a

    const-class v3, Ljava/lang/String;

    const-string v4, "extra"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/mgtv/downloader/database/DownloadInfoDao$Properties;->Q:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-string v12, "CXID"

    const/16 v8, 0x2b

    const-class v9, Ljava/lang/String;

    const-string v10, "cxId"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/mgtv/downloader/database/DownloadInfoDao$Properties;->R:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-string v6, "CHANNEL"

    const/16 v2, 0x2c

    const-class v3, Ljava/lang/String;

    const-string v4, "channel"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/mgtv/downloader/database/DownloadInfoDao$Properties;->S:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-string v12, "FILESOURCETYPE"

    const/16 v8, 0x2d

    const-class v9, Ljava/lang/String;

    const-string v10, "fileSourceType"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/mgtv/downloader/database/DownloadInfoDao$Properties;->T:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-string v6, "RTYPE"

    const/16 v2, 0x2e

    const-class v3, Ljava/lang/String;

    const-string v4, "rType"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/mgtv/downloader/database/DownloadInfoDao$Properties;->U:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-string v12, "OPENID"

    const/16 v8, 0x2f

    const-class v9, Ljava/lang/String;

    const-string v10, "openId"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/mgtv/downloader/database/DownloadInfoDao$Properties;->V:Lorg/greenrobot/greendao/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
