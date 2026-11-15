.class public Lo6;
.super Lia1;
.source "SourceFile"


# static fields
.field public static f:Lo6;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lia1;-><init>()V

    return-void
.end method

.method public static declared-synchronized j()Lo6;
    .locals 3

    const-class v0, Lo6;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo6;->f:Lo6;

    if-nez v1, :cond_1

    const-class v1, Lo6;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v2, Lo6;->f:Lo6;

    if-nez v2, :cond_0

    new-instance v2, Lo6;

    invoke-direct {v2}, Lo6;-><init>()V

    sput-object v2, Lo6;->f:Lo6;

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    :catchall_1
    move-exception v1

    goto :goto_3

    :cond_1
    :goto_2
    sget-object v1, Lo6;->f:Lo6;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v1

    :goto_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 0

    const-string p0, "UPDATE_SDK_S"

    return-object p0
.end method
