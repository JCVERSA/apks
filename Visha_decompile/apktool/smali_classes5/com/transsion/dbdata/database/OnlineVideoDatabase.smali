.class public abstract Lcom/transsion/dbdata/database/OnlineVideoDatabase;
.super Landroidx/room/RoomDatabase;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Database;
    entities = {
        Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;,
        Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;
    }
    exportSchema = false
    version = 0x7
.end annotation


# static fields
.field public static volatile a:Lcom/transsion/dbdata/database/OnlineVideoDatabase;

.field public static final b:Landroidx/room/migration/Migration;

.field public static final c:Landroidx/room/migration/Migration;

.field public static final d:Landroidx/room/migration/Migration;

.field public static final e:Landroidx/room/migration/Migration;

.field public static final f:Landroidx/room/migration/Migration;

.field public static final g:Landroidx/room/migration/Migration;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/transsion/dbdata/database/OnlineVideoDatabase$a;

    const/4 v1, 0x7

    const/4 v2, 0x6

    invoke-direct {v0, v2, v1}, Lcom/transsion/dbdata/database/OnlineVideoDatabase$a;-><init>(II)V

    sput-object v0, Lcom/transsion/dbdata/database/OnlineVideoDatabase;->b:Landroidx/room/migration/Migration;

    new-instance v0, Lcom/transsion/dbdata/database/OnlineVideoDatabase$b;

    const/4 v1, 0x5

    invoke-direct {v0, v1, v2}, Lcom/transsion/dbdata/database/OnlineVideoDatabase$b;-><init>(II)V

    sput-object v0, Lcom/transsion/dbdata/database/OnlineVideoDatabase;->c:Landroidx/room/migration/Migration;

    new-instance v0, Lcom/transsion/dbdata/database/OnlineVideoDatabase$c;

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Lcom/transsion/dbdata/database/OnlineVideoDatabase$c;-><init>(II)V

    sput-object v0, Lcom/transsion/dbdata/database/OnlineVideoDatabase;->d:Landroidx/room/migration/Migration;

    new-instance v0, Lcom/transsion/dbdata/database/OnlineVideoDatabase$d;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v2}, Lcom/transsion/dbdata/database/OnlineVideoDatabase$d;-><init>(II)V

    sput-object v0, Lcom/transsion/dbdata/database/OnlineVideoDatabase;->e:Landroidx/room/migration/Migration;

    new-instance v0, Lcom/transsion/dbdata/database/OnlineVideoDatabase$e;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3}, Lcom/transsion/dbdata/database/OnlineVideoDatabase$e;-><init>(II)V

    sput-object v0, Lcom/transsion/dbdata/database/OnlineVideoDatabase;->f:Landroidx/room/migration/Migration;

    new-instance v0, Lcom/transsion/dbdata/database/OnlineVideoDatabase$f;

    invoke-direct {v0, v3, v1}, Lcom/transsion/dbdata/database/OnlineVideoDatabase$f;-><init>(II)V

    sput-object v0, Lcom/transsion/dbdata/database/OnlineVideoDatabase;->g:Landroidx/room/migration/Migration;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static a()Lcom/transsion/dbdata/database/OnlineVideoDatabase;
    .locals 8

    sget-object v0, Lcom/transsion/dbdata/database/OnlineVideoDatabase;->a:Lcom/transsion/dbdata/database/OnlineVideoDatabase;

    if-nez v0, :cond_1

    const-class v0, Lcom/transsion/dbdata/database/OnlineVideoDatabase;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/dbdata/database/OnlineVideoDatabase;->a:Lcom/transsion/dbdata/database/OnlineVideoDatabase;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/transsion/dbdata/database/OnlineVideoDatabase;

    const-string v3, "online_video_info.db"

    invoke-static {v1, v2, v3}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object v1

    sget-object v2, Lcom/transsion/dbdata/database/OnlineVideoDatabase;->f:Landroidx/room/migration/Migration;

    sget-object v3, Lcom/transsion/dbdata/database/OnlineVideoDatabase;->g:Landroidx/room/migration/Migration;

    sget-object v4, Lcom/transsion/dbdata/database/OnlineVideoDatabase;->e:Landroidx/room/migration/Migration;

    sget-object v5, Lcom/transsion/dbdata/database/OnlineVideoDatabase;->d:Landroidx/room/migration/Migration;

    sget-object v6, Lcom/transsion/dbdata/database/OnlineVideoDatabase;->c:Landroidx/room/migration/Migration;

    sget-object v7, Lcom/transsion/dbdata/database/OnlineVideoDatabase;->b:Landroidx/room/migration/Migration;

    filled-new-array/range {v2 .. v7}, [Landroidx/room/migration/Migration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase$Builder;->fallbackToDestructiveMigration()Landroidx/room/RoomDatabase$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/database/OnlineVideoDatabase;

    sput-object v1, Lcom/transsion/dbdata/database/OnlineVideoDatabase;->a:Lcom/transsion/dbdata/database/OnlineVideoDatabase;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/transsion/dbdata/database/OnlineVideoDatabase;->a:Lcom/transsion/dbdata/database/OnlineVideoDatabase;

    return-object v0
.end method


# virtual methods
.method public abstract b()Lzf7;
.end method

.method public abstract c()Lsg7;
.end method
