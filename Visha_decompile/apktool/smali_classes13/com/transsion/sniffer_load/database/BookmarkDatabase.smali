.class public abstract Lcom/transsion/sniffer_load/database/BookmarkDatabase;
.super Landroidx/room/RoomDatabase;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Database;
    entities = {
        Lcom/transsion/dbdata/beans/sniff/Bookmark;,
        Lcom/transsion/sniffer_load/data/ReviewHistory;,
        Lcom/transsion/sniffer_load/data/WebPreviewRecord;,
        Lcom/transsion/sniffer_load/data/DownloadHistory;
    }
    exportSchema = false
    version = 0x3
.end annotation


# static fields
.field public static a:Lcom/transsion/sniffer_load/database/BookmarkDatabase;

.field public static final b:Landroidx/room/migration/Migration;

.field public static final c:Landroidx/room/migration/Migration;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/sniffer_load/database/BookmarkDatabase$a;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/sniffer_load/database/BookmarkDatabase$a;-><init>(II)V

    sput-object v0, Lcom/transsion/sniffer_load/database/BookmarkDatabase;->b:Landroidx/room/migration/Migration;

    new-instance v0, Lcom/transsion/sniffer_load/database/BookmarkDatabase$b;

    const/4 v1, 0x3

    invoke-direct {v0, v2, v1}, Lcom/transsion/sniffer_load/database/BookmarkDatabase$b;-><init>(II)V

    sput-object v0, Lcom/transsion/sniffer_load/database/BookmarkDatabase;->c:Landroidx/room/migration/Migration;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static declared-synchronized c(Landroid/content/Context;)Lcom/transsion/sniffer_load/database/BookmarkDatabase;
    .locals 3

    const-class v0, Lcom/transsion/sniffer_load/database/BookmarkDatabase;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/sniffer_load/database/BookmarkDatabase;->a:Lcom/transsion/sniffer_load/database/BookmarkDatabase;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-class v1, Lcom/transsion/sniffer_load/database/BookmarkDatabase;

    const-string v2, "bookmark.db"

    invoke-static {p0, v1, v2}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    sget-object v1, Lcom/transsion/sniffer_load/database/BookmarkDatabase;->b:Landroidx/room/migration/Migration;

    filled-new-array {v1}, [Landroidx/room/migration/Migration;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    sget-object v1, Lcom/transsion/sniffer_load/database/BookmarkDatabase;->c:Landroidx/room/migration/Migration;

    filled-new-array {v1}, [Landroidx/room/migration/Migration;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/room/RoomDatabase$Builder;->allowMainThreadQueries()Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object p0

    check-cast p0, Lcom/transsion/sniffer_load/database/BookmarkDatabase;

    sput-object p0, Lcom/transsion/sniffer_load/database/BookmarkDatabase;->a:Lcom/transsion/sniffer_load/database/BookmarkDatabase;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/transsion/sniffer_load/database/BookmarkDatabase;->a:Lcom/transsion/sniffer_load/database/BookmarkDatabase;
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
.method public abstract a()Lig0;
.end method

.method public abstract b()Lnz2;
.end method

.method public abstract d()Ldv8;
.end method

.method public abstract e()Ljic;
.end method
