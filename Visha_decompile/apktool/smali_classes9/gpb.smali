.class public abstract Lgpb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgpb$a;
    }
.end annotation


# static fields
.field public static a:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lgpb;->a:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Landroid/net/Uri;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lgpb;->b(Landroid/net/Uri;)Lgpb$a;

    move-result-object p0

    iget p0, p0, Lgpb$a;->c:I

    return p0
.end method

.method public static b(Landroid/net/Uri;)Lgpb$a;
    .locals 3

    sget-object v0, Lgpb;->a:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lgpb;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgpb$a;

    if-nez v1, :cond_0

    new-instance v1, Lgpb$a;

    invoke-direct {v1}, Lgpb$a;-><init>()V

    sget-object v2, Lgpb;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static c(Landroid/net/Uri;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    invoke-static {p0}, Lgpb;->b(Landroid/net/Uri;)Lgpb$a;

    move-result-object p0

    iget-wide v0, p0, Lgpb$a;->a:J

    return-wide v0
.end method

.method public static d(Landroid/net/Uri;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lgpb;->b(Landroid/net/Uri;)Lgpb$a;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 v1, -0x1

    iget p0, p0, Lgpb$a;->b:I

    if-ne v1, p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static e(Landroid/net/Uri;Landroid/media/MediaMetadataRetriever;)Lgpb$a;
    .locals 4

    if-eqz p1, :cond_2

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lgpb;->b(Landroid/net/Uri;)Lgpb$a;

    move-result-object p0

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lgpb$a;->a:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lgpb$a;->c:I

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static f(Landroid/net/Uri;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lgpb;->b(Landroid/net/Uri;)Lgpb$a;

    move-result-object p0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lgpb$a;->a:J

    const/4 v0, -0x1

    iput v0, p0, Lgpb$a;->c:I

    return-void
.end method
