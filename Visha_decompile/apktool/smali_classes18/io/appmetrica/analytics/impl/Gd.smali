.class public final Lio/appmetrica/analytics/impl/Gd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashHandler;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Lg;

.field public final b:Le74;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Lg;Le74;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/Lg;",
            "Le74;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Gd;->a:Lio/appmetrica/analytics/impl/Lg;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/Gd;->b:Le74;

    return-void
.end method

.method public static final a(Lio/appmetrica/analytics/impl/Gd;Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash;Ljava/io/File;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Gd;->b:Le74;

    invoke-virtual {p1}, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final b(Lio/appmetrica/analytics/impl/Gd;Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash;Ljava/io/File;)V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Gd;->b:Le74;

    invoke-virtual {p1}, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash;

    .line 3
    :try_start_0
    new-instance v9, Lio/appmetrica/analytics/impl/y0;

    .line 4
    invoke-virtual {v0}, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash;->getSource()Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;

    move-result-object v2

    .line 5
    invoke-virtual {v0}, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash;->getHandlerVersion()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {v0}, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash;->getUuid()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual {v0}, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash;->getDumpFile()Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-virtual {v0}, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash;->getCreationTime()J

    move-result-wide v6

    .line 9
    invoke-virtual {v0}, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash;->getMetadata()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/appmetrica/analytics/impl/A0;->a(Ljava/lang/String;)Lio/appmetrica/analytics/impl/z0;

    move-result-object v8

    invoke-static {v8}, Ly45;->g(Ljava/lang/Object;)V

    move-object v1, v9

    .line 10
    invoke-direct/range {v1 .. v8}, Lio/appmetrica/analytics/impl/y0;-><init>(Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLio/appmetrica/analytics/impl/z0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_0

    .line 11
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Gd;->a:Lio/appmetrica/analytics/impl/Lg;

    new-instance v2, Lhd4;

    invoke-direct {v2, p0, v0}, Lhd4;-><init>(Lio/appmetrica/analytics/impl/Gd;Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    new-instance v0, Lio/appmetrica/analytics/impl/Jg;

    invoke-direct {v0, v9}, Lio/appmetrica/analytics/impl/Jg;-><init>(Lio/appmetrica/analytics/impl/y0;)V

    invoke-virtual {v1, v9, v2, v0}, Lio/appmetrica/analytics/impl/Lg;->a(Lio/appmetrica/analytics/impl/y0;Lio/appmetrica/analytics/coreapi/internal/backport/Consumer;Lio/appmetrica/analytics/coreapi/internal/backport/Function;)V

    goto :goto_0

    .line 13
    :cond_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Gd;->b:Le74;

    invoke-virtual {v0}, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final newCrash(Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash;)V
    .locals 9

    :try_start_0
    new-instance v8, Lio/appmetrica/analytics/impl/y0;

    invoke-virtual {p1}, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash;->getSource()Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;

    move-result-object v1

    invoke-virtual {p1}, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash;->getHandlerVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash;->getDumpFile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash;->getCreationTime()J

    move-result-wide v5

    invoke-virtual {p1}, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash;->getMetadata()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/appmetrica/analytics/impl/A0;->a(Ljava/lang/String;)Lio/appmetrica/analytics/impl/z0;

    move-result-object v7

    invoke-static {v7}, Ly45;->g(Ljava/lang/Object;)V

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lio/appmetrica/analytics/impl/y0;-><init>(Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLio/appmetrica/analytics/impl/z0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v8, 0x0

    :goto_0
    if-eqz v8, :cond_0

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Gd;->a:Lio/appmetrica/analytics/impl/Lg;

    new-instance v1, Lgd4;

    invoke-direct {v1, p0, p1}, Lgd4;-><init>(Lio/appmetrica/analytics/impl/Gd;Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lio/appmetrica/analytics/impl/Ig;

    invoke-direct {p0, v8}, Lio/appmetrica/analytics/impl/Ig;-><init>(Lio/appmetrica/analytics/impl/y0;)V

    invoke-virtual {v0, v8, v1, p0}, Lio/appmetrica/analytics/impl/Lg;->a(Lio/appmetrica/analytics/impl/y0;Lio/appmetrica/analytics/coreapi/internal/backport/Consumer;Lio/appmetrica/analytics/coreapi/internal/backport/Function;)V

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Gd;->b:Le74;

    invoke-virtual {p1}, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method
