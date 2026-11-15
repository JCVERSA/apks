.class public abstract Lcom/transsion/dbdata/database/MediaRoomDatabase;
.super Landroidx/room/RoomDatabase;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Database;
    entities = {
        Lcom/transsion/dbdata/database/PlayListItem;,
        Lcom/transsion/dbdata/database/PlayListMediaItem;,
        Lcom/transsion/dbdata/database/UserBehaviorItem;,
        Lcom/transsion/dbdata/database/MediaDataMissingItem;,
        Lcom/transsion/dbdata/database/AudioPlayHistory;
    }
    exportSchema = false
    version = 0x2
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\'\u0018\u0000 \u00132\u00020\u0001:\u0001\u0014B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H&\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH&\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\rH&\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H&\u00a2\u0006\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/transsion/dbdata/database/MediaRoomDatabase;",
        "Landroidx/room/RoomDatabase;",
        "<init>",
        "()V",
        "Lb68;",
        "j",
        "()Lb68;",
        "Lf68;",
        "k",
        "()Lf68;",
        "Lnjb;",
        "l",
        "()Lnjb;",
        "Loe6;",
        "h",
        "()Loe6;",
        "Lht;",
        "f",
        "()Lht;",
        "a",
        "Companion",
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


# static fields
.field public static final a:Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static volatile d:Lcom/transsion/dbdata/database/MediaRoomDatabase;

.field public static final e:Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion$MIGRATION_1_2$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/dbdata/database/MediaRoomDatabase;->a:Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion;

    const-string v0, "Recently Added"

    sput-object v0, Lcom/transsion/dbdata/database/MediaRoomDatabase;->b:Ljava/lang/String;

    const-string v0, "Favorite"

    sput-object v0, Lcom/transsion/dbdata/database/MediaRoomDatabase;->c:Ljava/lang/String;

    new-instance v0, Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion$MIGRATION_1_2$1;

    invoke-direct {v0}, Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion$MIGRATION_1_2$1;-><init>()V

    sput-object v0, Lcom/transsion/dbdata/database/MediaRoomDatabase;->e:Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion$MIGRATION_1_2$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lcom/transsion/dbdata/database/MediaRoomDatabase;
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/database/MediaRoomDatabase;->d:Lcom/transsion/dbdata/database/MediaRoomDatabase;

    return-object v0
.end method

.method public static final synthetic b()Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion$MIGRATION_1_2$1;
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/database/MediaRoomDatabase;->e:Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion$MIGRATION_1_2$1;

    return-object v0
.end method

.method public static final synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/database/MediaRoomDatabase;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/database/MediaRoomDatabase;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic e(Lcom/transsion/dbdata/database/MediaRoomDatabase;)V
    .locals 0

    sput-object p0, Lcom/transsion/dbdata/database/MediaRoomDatabase;->d:Lcom/transsion/dbdata/database/MediaRoomDatabase;

    return-void
.end method

.method public static final g()Lcom/transsion/dbdata/database/MediaRoomDatabase;
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/database/MediaRoomDatabase;->a:Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion;

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion;->d()Lcom/transsion/dbdata/database/MediaRoomDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static final i(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/database/MediaRoomDatabase;->a:Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion;->f(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public abstract f()Lht;
.end method

.method public abstract h()Loe6;
.end method

.method public abstract j()Lb68;
.end method

.method public abstract k()Lf68;
.end method

.method public abstract l()Lnjb;
.end method
