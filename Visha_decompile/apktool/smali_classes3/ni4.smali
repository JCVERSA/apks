.class public Lni4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile b:Lni4;


# instance fields
.field public final a:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lni4;->a:Ljava/util/Set;

    return-void
.end method

.method public static a()Lni4;
    .locals 2

    sget-object v0, Lni4;->b:Lni4;

    if-nez v0, :cond_1

    const-class v1, Lni4;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lni4;->b:Lni4;

    if-nez v0, :cond_0

    new-instance v0, Lni4;

    invoke-direct {v0}, Lni4;-><init>()V

    sput-object v0, Lni4;->b:Lni4;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method


# virtual methods
.method public b()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lni4;->a:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lni4;->a:Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
