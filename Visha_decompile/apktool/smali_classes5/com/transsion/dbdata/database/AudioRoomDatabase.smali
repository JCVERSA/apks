.class public abstract Lcom/transsion/dbdata/database/AudioRoomDatabase;
.super Landroidx/room/RoomDatabase;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Database;
    entities = {
        Lcom/transsion/dbdata/database/PlayList;,
        Lcom/transsion/dbdata/database/PlayListMedia;,
        Lcom/transsion/dbdata/database/AudioAlbum;,
        Lcom/transsion/dbdata/database/ConvertAudio;,
        Lcom/transsion/dbdata/beans/LyricData;
    }
    exportSchema = false
    version = 0x7
.end annotation


# static fields
.field public static a:Lcom/transsion/dbdata/database/AudioRoomDatabase;

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


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/transsion/dbdata/database/AudioRoomDatabase$e;

    const/4 v1, 0x4

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/transsion/dbdata/database/AudioRoomDatabase$e;-><init>(II)V

    sput-object v0, Lcom/transsion/dbdata/database/AudioRoomDatabase;->b:Landroidx/room/migration/Migration;

    new-instance v0, Lcom/transsion/dbdata/database/AudioRoomDatabase$f;

    invoke-direct {v0, v2, v1}, Lcom/transsion/dbdata/database/AudioRoomDatabase$f;-><init>(II)V

    sput-object v0, Lcom/transsion/dbdata/database/AudioRoomDatabase;->c:Landroidx/room/migration/Migration;

    new-instance v0, Lcom/transsion/dbdata/database/AudioRoomDatabase$g;

    const/4 v3, 0x6

    invoke-direct {v0, v2, v3}, Lcom/transsion/dbdata/database/AudioRoomDatabase$g;-><init>(II)V

    sput-object v0, Lcom/transsion/dbdata/database/AudioRoomDatabase;->d:Landroidx/room/migration/Migration;

    new-instance v0, Lcom/transsion/dbdata/database/AudioRoomDatabase$h;

    const/4 v2, 0x1

    const/4 v4, 0x2

    invoke-direct {v0, v2, v4}, Lcom/transsion/dbdata/database/AudioRoomDatabase$h;-><init>(II)V

    sput-object v0, Lcom/transsion/dbdata/database/AudioRoomDatabase;->e:Landroidx/room/migration/Migration;

    new-instance v0, Lcom/transsion/dbdata/database/AudioRoomDatabase$i;

    const/4 v5, 0x3

    invoke-direct {v0, v4, v5}, Lcom/transsion/dbdata/database/AudioRoomDatabase$i;-><init>(II)V

    sput-object v0, Lcom/transsion/dbdata/database/AudioRoomDatabase;->f:Landroidx/room/migration/Migration;

    new-instance v0, Lcom/transsion/dbdata/database/AudioRoomDatabase$j;

    invoke-direct {v0, v5, v1}, Lcom/transsion/dbdata/database/AudioRoomDatabase$j;-><init>(II)V

    sput-object v0, Lcom/transsion/dbdata/database/AudioRoomDatabase;->g:Landroidx/room/migration/Migration;

    new-instance v0, Lcom/transsion/dbdata/database/AudioRoomDatabase$k;

    invoke-direct {v0, v1, v5}, Lcom/transsion/dbdata/database/AudioRoomDatabase$k;-><init>(II)V

    sput-object v0, Lcom/transsion/dbdata/database/AudioRoomDatabase;->h:Landroidx/room/migration/Migration;

    new-instance v0, Lcom/transsion/dbdata/database/AudioRoomDatabase$l;

    invoke-direct {v0, v5, v4}, Lcom/transsion/dbdata/database/AudioRoomDatabase$l;-><init>(II)V

    sput-object v0, Lcom/transsion/dbdata/database/AudioRoomDatabase;->i:Landroidx/room/migration/Migration;

    new-instance v0, Lcom/transsion/dbdata/database/AudioRoomDatabase$a;

    invoke-direct {v0, v4, v2}, Lcom/transsion/dbdata/database/AudioRoomDatabase$a;-><init>(II)V

    sput-object v0, Lcom/transsion/dbdata/database/AudioRoomDatabase;->j:Landroidx/room/migration/Migration;

    new-instance v0, Lcom/transsion/dbdata/database/AudioRoomDatabase$b;

    invoke-direct {v0, v2, v5}, Lcom/transsion/dbdata/database/AudioRoomDatabase$b;-><init>(II)V

    sput-object v0, Lcom/transsion/dbdata/database/AudioRoomDatabase;->k:Landroidx/room/migration/Migration;

    new-instance v0, Lcom/transsion/dbdata/database/AudioRoomDatabase$c;

    const/4 v1, 0x7

    invoke-direct {v0, v3, v1}, Lcom/transsion/dbdata/database/AudioRoomDatabase$c;-><init>(II)V

    sput-object v0, Lcom/transsion/dbdata/database/AudioRoomDatabase;->l:Landroidx/room/migration/Migration;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static declared-synchronized f(Landroid/content/Context;)Lcom/transsion/dbdata/database/AudioRoomDatabase;
    .locals 12

    const-class v0, Lcom/transsion/dbdata/database/AudioRoomDatabase;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/dbdata/database/AudioRoomDatabase;->a:Lcom/transsion/dbdata/database/AudioRoomDatabase;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-class v1, Lcom/transsion/dbdata/database/AudioRoomDatabase;

    const-string v2, "audioMedia.db"

    invoke-static {p0, v1, v2}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/room/RoomDatabase$Builder;->fallbackToDestructiveMigration()Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    sget-object v1, Lcom/transsion/dbdata/database/AudioRoomDatabase;->e:Landroidx/room/migration/Migration;

    sget-object v2, Lcom/transsion/dbdata/database/AudioRoomDatabase;->j:Landroidx/room/migration/Migration;

    sget-object v3, Lcom/transsion/dbdata/database/AudioRoomDatabase;->f:Landroidx/room/migration/Migration;

    sget-object v4, Lcom/transsion/dbdata/database/AudioRoomDatabase;->i:Landroidx/room/migration/Migration;

    sget-object v5, Lcom/transsion/dbdata/database/AudioRoomDatabase;->k:Landroidx/room/migration/Migration;

    sget-object v6, Lcom/transsion/dbdata/database/AudioRoomDatabase;->g:Landroidx/room/migration/Migration;

    sget-object v7, Lcom/transsion/dbdata/database/AudioRoomDatabase;->h:Landroidx/room/migration/Migration;

    sget-object v8, Lcom/transsion/dbdata/database/AudioRoomDatabase;->b:Landroidx/room/migration/Migration;

    sget-object v9, Lcom/transsion/dbdata/database/AudioRoomDatabase;->c:Landroidx/room/migration/Migration;

    sget-object v10, Lcom/transsion/dbdata/database/AudioRoomDatabase;->d:Landroidx/room/migration/Migration;

    sget-object v11, Lcom/transsion/dbdata/database/AudioRoomDatabase;->l:Landroidx/room/migration/Migration;

    filled-new-array/range {v1 .. v11}, [Landroidx/room/migration/Migration;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    new-instance v1, Lcom/transsion/dbdata/database/AudioRoomDatabase$d;

    invoke-direct {v1}, Lcom/transsion/dbdata/database/AudioRoomDatabase$d;-><init>()V

    invoke-virtual {p0, v1}, Landroidx/room/RoomDatabase$Builder;->addCallback(Landroidx/room/RoomDatabase$Callback;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/database/AudioRoomDatabase;

    sput-object p0, Lcom/transsion/dbdata/database/AudioRoomDatabase;->a:Lcom/transsion/dbdata/database/AudioRoomDatabase;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/transsion/dbdata/database/AudioRoomDatabase;->a:Lcom/transsion/dbdata/database/AudioRoomDatabase;
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
.method public abstract a()Lsl;
.end method

.method public abstract b()Lgi1;
.end method

.method public abstract c()Lav5;
.end method

.method public abstract d()Lx38;
.end method

.method public abstract e()Ld68;
.end method
