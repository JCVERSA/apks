.class public final Lak8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lak8;

.field public static volatile b:Ljava/lang/String;

.field public static volatile c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lak8;

    invoke-direct {v0}, Lak8;-><init>()V

    sput-object v0, Lak8;->a:Lak8;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    sget-object p0, Lak8;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Z
    .locals 0

    sget-boolean p0, Lak8;->c:Z

    return p0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lak8;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lak8;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    sput-object p1, Lak8;->b:Ljava/lang/String;

    const/4 p1, 0x1

    sput-boolean p1, Lak8;->c:Z

    sget-object p1, Lzfb;->a:Lzfb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
