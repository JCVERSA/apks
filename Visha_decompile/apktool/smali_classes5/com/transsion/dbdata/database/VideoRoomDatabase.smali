.class public abstract Lcom/transsion/dbdata/database/VideoRoomDatabase;
.super Landroidx/room/RoomDatabase;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Database;
    entities = {
        Lcom/transsion/dbdata/database/VideoRecord;,
        Lcom/transsion/dbdata/beans/media/SubtitleRecord;,
        Lcom/transsion/dbdata/database/VideoPlayList;,
        Lcom/transsion/dbdata/database/VideoPlayListMedia;,
        Lcom/transsion/dbdata/database/AudioTrack;,
        Lcom/transsion/dbdata/beans/SubtitleSettingData;,
        Lcom/transsion/dbdata/beans/SubtitleHistory;,
        Lcom/transsion/dbdata/database/ConvertingVideo;
    }
    exportSchema = false
    version = 0xb
.end annotation


# static fields
.field public static a:Lcom/transsion/dbdata/database/VideoRoomDatabase;

.field public static final b:Landroidx/room/migration/Migration;

.field public static final c:Landroidx/room/migration/Migration;

.field public static final d:Landroidx/room/migration/Migration;

.field public static final e:Landroidx/room/migration/Migration;

.field public static final f:Landroidx/room/migration/Migration;

.field public static final g:Landroidx/room/migration/Migration;

.field public static final h:Landroidx/room/migration/Migration;

.field public static final i:Landroidx/room/migration/Migration;

.field public static final j:Landroidx/room/migration/Migration;

.field public static final k:Landroidx/room/migration/Migration;

.field public static final l:Landroidx/room/migration/Migration;

.field public static final m:Landroidx/room/migration/Migration;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/dbdata/database/VideoRoomDatabase$f;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/dbdata/database/VideoRoomDatabase$f;-><init>(II)V

    sput-object v0, Lcom/transsion/dbdata/database/VideoRoomDatabase;->b:Landroidx/room/migration/Migration;

    new-instance v0, Lcom/transsion/dbdata/database/VideoRoomDatabase$g;

    invoke-direct {v0, v2, v1}, Lcom/transsion/dbdata/database/VideoRoomDatabase$g;-><init>(II)V

    sput-object v0, Lcom/transsion/dbdata/database/VideoRoomDatabase;->c:Landroidx/room/migration/Migration;

    new-instance v0, Lcom/transsion/dbdata/database/VideoRoomDatabase$h;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v2}, Lcom/transsion/dbdata/database/VideoRoomDatabase$h;-><init>(II)V

    sput-object v0, Lcom/transsion/dbdata/database/VideoRoomDatabase;->d:Landroidx/room/migration/Migration;

    new-instance v0, Lcom/transsion/dbdata/database/VideoRoomDatabase$i;

    invoke-direct {v0, v2, v1}, Lcom/transsion/dbdata/database/VideoRoomDatabase$i;-><init>(II)V

    sput-object v0, Lcom/transsion/dbdata/database/VideoRoomDatabase;->e:Landroidx/room/migration/Migration;

    new-instance v0, Lcom/transsion/dbdata/database/VideoRoomDatabase$j;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/transsion/dbdata/database/VideoRoomDatabase$j;-><init>(II)V

    sput-object v0, Lcom/transsion/dbdata/database/VideoRoomDatabase;->f:Landroidx/room/migration/Migration;

    new-instance v0, Lcom/transsion/dbdata/database/VideoRoomDatabase$k;

    const/4 v1, 0x5

    invoke-direct {v0, v2, v1}, Lcom/transsion/dbdata/database/VideoRoomDatabase$k;-><init>(II)V

    sput-object v0, Lcom/transsion/dbdata/database/VideoRoomDatabase;->g:Landroidx/room/migration/Migration;

    new-instance v0, Lcom/transsion/dbdata/database/VideoRoomDatabase$l;

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/transsion/dbdata/database/VideoRoomDatabase$l;-><init>(II)V

    sput-object v0, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h:Landroidx/room/migration/Migration;

    new-instance v0, Lcom/transsion/dbdata/database/VideoRoomDatabase$m;

    const/4 v1, 0x7

    invoke-direct {v0, v2, v1}, Lcom/transsion/dbdata/database/VideoRoomDatabase$m;-><init>(II)V

    sput-object v0, Lcom/transsion/dbdata/database/VideoRoomDatabase;->i:Landroidx/room/migration/Migration;

    new-instance v0, Lcom/transsion/dbdata/database/VideoRoomDatabase$a;

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/transsion/dbdata/database/VideoRoomDatabase$a;-><init>(II)V

    sput-object v0, Lcom/transsion/dbdata/database/VideoRoomDatabase;->j:Landroidx/room/migration/Migration;

    new-instance v0, Lcom/transsion/dbdata/database/VideoRoomDatabase$b;

    const/16 v1, 0x9

    invoke-direct {v0, v2, v1}, Lcom/transsion/dbdata/database/VideoRoomDatabase$b;-><init>(II)V

    sput-object v0, Lcom/transsion/dbdata/database/VideoRoomDatabase;->k:Landroidx/room/migration/Migration;

    new-instance v0, Lcom/transsion/dbdata/database/VideoRoomDatabase$c;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/transsion/dbdata/database/VideoRoomDatabase$c;-><init>(II)V

    sput-object v0, Lcom/transsion/dbdata/database/VideoRoomDatabase;->l:Landroidx/room/migration/Migration;

    new-instance v0, Lcom/transsion/dbdata/database/VideoRoomDatabase$d;

    const/16 v1, 0xb

    invoke-direct {v0, v2, v1}, Lcom/transsion/dbdata/database/VideoRoomDatabase$d;-><init>(II)V

    sput-object v0, Lcom/transsion/dbdata/database/VideoRoomDatabase;->m:Landroidx/room/migration/Migration;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static declared-synchronized h(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoRoomDatabase;
    .locals 11

    const-class v0, Lcom/transsion/dbdata/database/VideoRoomDatabase;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/dbdata/database/VideoRoomDatabase;->a:Lcom/transsion/dbdata/database/VideoRoomDatabase;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-class v1, Lcom/transsion/dbdata/database/VideoRoomDatabase;

    const-string v2, "medias.db"

    invoke-static {p0, v1, v2}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/room/RoomDatabase$Builder;->fallbackToDestructiveMigration()Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    sget-object v1, Lcom/transsion/dbdata/database/VideoRoomDatabase;->f:Landroidx/room/migration/Migration;

    sget-object v2, Lcom/transsion/dbdata/database/VideoRoomDatabase;->d:Landroidx/room/migration/Migration;

    sget-object v3, Lcom/transsion/dbdata/database/VideoRoomDatabase;->e:Landroidx/room/migration/Migration;

    sget-object v4, Lcom/transsion/dbdata/database/VideoRoomDatabase;->g:Landroidx/room/migration/Migration;

    sget-object v5, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h:Landroidx/room/migration/Migration;

    sget-object v6, Lcom/transsion/dbdata/database/VideoRoomDatabase;->i:Landroidx/room/migration/Migration;

    sget-object v7, Lcom/transsion/dbdata/database/VideoRoomDatabase;->j:Landroidx/room/migration/Migration;

    sget-object v8, Lcom/transsion/dbdata/database/VideoRoomDatabase;->k:Landroidx/room/migration/Migration;

    sget-object v9, Lcom/transsion/dbdata/database/VideoRoomDatabase;->l:Landroidx/room/migration/Migration;

    sget-object v10, Lcom/transsion/dbdata/database/VideoRoomDatabase;->m:Landroidx/room/migration/Migration;

    filled-new-array/range {v1 .. v10}, [Landroidx/room/migration/Migration;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    new-instance v1, Lcom/transsion/dbdata/database/VideoRoomDatabase$e;

    invoke-direct {v1}, Lcom/transsion/dbdata/database/VideoRoomDatabase$e;-><init>()V

    invoke-virtual {p0, v1}, Landroidx/room/RoomDatabase$Builder;->addCallback(Landroidx/room/RoomDatabase$Callback;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/database/VideoRoomDatabase;

    sput-object p0, Lcom/transsion/dbdata/database/VideoRoomDatabase;->a:Lcom/transsion/dbdata/database/VideoRoomDatabase;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/transsion/dbdata/database/VideoRoomDatabase;->a:Lcom/transsion/dbdata/database/VideoRoomDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public abstract a()Lqj1;
.end method

.method public abstract b()Lm5a;
.end method

.method public abstract c()Lh6a;
.end method

.method public abstract d()Ljub;
.end method

.method public abstract e()Livb;
.end method

.method public abstract f()Lg5c;
.end method

.method public abstract g()Lq10;
.end method

.method public abstract i()Lw4a;
.end method
