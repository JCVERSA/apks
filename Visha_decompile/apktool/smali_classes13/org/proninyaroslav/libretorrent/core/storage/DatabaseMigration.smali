.class Lorg/proninyaroslav/libretorrent/core/storage/DatabaseMigration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/proninyaroslav/libretorrent/core/storage/DatabaseMigration$RoomDatabaseMigration;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "DatabaseMigration"

.field public static final b:Landroidx/room/migration/Migration;

.field public static final c:Landroidx/room/migration/Migration;

.field public static final d:Landroidx/room/migration/Migration;

.field public static final e:Landroidx/room/migration/Migration;

.field public static final f:Landroidx/room/migration/Migration;

.field public static final g:Landroidx/room/migration/Migration;

.field public static final h:Landroidx/room/migration/Migration;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/storage/DatabaseMigration$1;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/proninyaroslav/libretorrent/core/storage/DatabaseMigration$1;-><init>(II)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/storage/DatabaseMigration;->b:Landroidx/room/migration/Migration;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/storage/DatabaseMigration$2;

    const/4 v1, 0x3

    invoke-direct {v0, v2, v1}, Lorg/proninyaroslav/libretorrent/core/storage/DatabaseMigration$2;-><init>(II)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/storage/DatabaseMigration;->c:Landroidx/room/migration/Migration;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/storage/DatabaseMigration$3;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/proninyaroslav/libretorrent/core/storage/DatabaseMigration$3;-><init>(II)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/storage/DatabaseMigration;->d:Landroidx/room/migration/Migration;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/storage/DatabaseMigration$4;

    const/4 v1, 0x5

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/proninyaroslav/libretorrent/core/storage/DatabaseMigration$4;-><init>(II)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/storage/DatabaseMigration;->e:Landroidx/room/migration/Migration;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/storage/DatabaseMigration$5;

    const/4 v1, 0x7

    invoke-direct {v0, v2, v1}, Lorg/proninyaroslav/libretorrent/core/storage/DatabaseMigration$5;-><init>(II)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/storage/DatabaseMigration;->f:Landroidx/room/migration/Migration;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/storage/DatabaseMigration$6;

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/proninyaroslav/libretorrent/core/storage/DatabaseMigration$6;-><init>(II)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/storage/DatabaseMigration;->g:Landroidx/room/migration/Migration;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/storage/DatabaseMigration$7;

    const/16 v1, 0x9

    invoke-direct {v0, v2, v1}, Lorg/proninyaroslav/libretorrent/core/storage/DatabaseMigration$7;-><init>(II)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/storage/DatabaseMigration;->h:Landroidx/room/migration/Migration;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/storage/DatabaseMigration;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)[Landroidx/room/migration/Migration;
    .locals 3

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/storage/DatabaseMigration$RoomDatabaseMigration;

    invoke-direct {v0, p0}, Lorg/proninyaroslav/libretorrent/core/storage/DatabaseMigration$RoomDatabaseMigration;-><init>(Landroid/content/Context;)V

    const/16 p0, 0x8

    new-array p0, p0, [Landroidx/room/migration/Migration;

    sget-object v1, Lorg/proninyaroslav/libretorrent/core/storage/DatabaseMigration;->b:Landroidx/room/migration/Migration;

    const/4 v2, 0x0

    aput-object v1, p0, v2

    sget-object v1, Lorg/proninyaroslav/libretorrent/core/storage/DatabaseMigration;->c:Landroidx/room/migration/Migration;

    const/4 v2, 0x1

    aput-object v1, p0, v2

    sget-object v1, Lorg/proninyaroslav/libretorrent/core/storage/DatabaseMigration;->d:Landroidx/room/migration/Migration;

    const/4 v2, 0x2

    aput-object v1, p0, v2

    const/4 v1, 0x3

    aput-object v0, p0, v1

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/storage/DatabaseMigration;->e:Landroidx/room/migration/Migration;

    const/4 v1, 0x4

    aput-object v0, p0, v1

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/storage/DatabaseMigration;->f:Landroidx/room/migration/Migration;

    const/4 v1, 0x5

    aput-object v0, p0, v1

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/storage/DatabaseMigration;->g:Landroidx/room/migration/Migration;

    const/4 v1, 0x6

    aput-object v0, p0, v1

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/storage/DatabaseMigration;->h:Landroidx/room/migration/Migration;

    const/4 v1, 0x7

    aput-object v0, p0, v1

    return-object p0
.end method
