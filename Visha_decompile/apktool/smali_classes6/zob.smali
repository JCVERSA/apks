.class public final Lzob;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwv4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzob$a;
    }
.end annotation


# static fields
.field public static final a:Lzob$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lzob$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lzob$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lzob;->a:Lzob$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lzob;->e(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Lcom/transsion/dbdata/beans/media/VideoTrackData;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Lkotlin/Pair;
    .locals 4

    const-string v0, "VideosTrackDataQueryEngine"

    const-string v1, "scope"

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "request"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p2}, Lxl8;->a()Lxk8;

    move-result-object v1

    instance-of v1, v1, Lxk8$d0;

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lxl8;->b()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Processing VideoTrackData batch query for type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lxl8;->a()Lxk8;

    move-result-object v1

    check-cast v1, Lxk8$d0;

    invoke-virtual {p2}, Lxl8;->b()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p0, v1, p2}, Lzob;->c(Lxk8$d0;Ljava/lang/Class;)Lkotlin/Pair;

    move-result-object p1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lxl8;->a()Lxk8;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object p0

    invoke-interface {p0}, Lde5;->o()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported input type for batch query: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lvmb;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error during queryBatch operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p0}, Lvmb;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object p1
.end method

.method public final c(Lxk8$d0;Ljava/lang/Class;)Lkotlin/Pair;
    .locals 2

    const-class p0, Lcom/transsion/dbdata/beans/media/VideoInfoTrack;

    invoke-static {p2, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 p1, 0x0

    const-string v0, "VideosTrackDataQueryEngine"

    if-eqz p0, :cond_1

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;

    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getVideoInfoTrack()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Successfully retrieved "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " VideoInfoTrack items"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lkotlin/Pair;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "VideoInfoTrack batch query returned null"

    invoke-static {v0, p0}, Lvmb;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Batch query not supported for type: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lvmb;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public final d(Lcom/transsion/dbdata/beans/media/VideoTrackData;Ljava/lang/Class;)Lcom/transsion/dbdata/beans/media/VideoTrackData;
    .locals 3

    const/4 p0, 0x0

    const-string v0, "VideosTrackDataQueryEngine"

    if-nez p1, :cond_0

    const-string p1, "Query result is null"

    invoke-static {v0, p1}, Lvmb;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move-object p1, p0

    goto :goto_1

    :cond_0
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object p0

    invoke-interface {p0}, Lde5;->o()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Query successful, result type: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object p1

    invoke-interface {p1}, Lde5;->o()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type mismatch: expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", got "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lvmb;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    return-object p1
.end method

.method public e(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Lcom/transsion/dbdata/beans/media/VideoTrackData;
    .locals 3

    const-string v0, "VideosTrackDataQueryEngine"

    const-string v1, "scope"

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "request"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p2}, Lxl8;->a()Lxk8;

    move-result-object v1

    instance-of v1, v1, Lxk8$d0;

    if-eqz v1, :cond_0

    const-string v1, "Processing VideoTrackData query"

    invoke-static {v0, v1}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;

    invoke-virtual {v1}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->getVideoTotalTrack()Lcom/transsion/dbdata/beans/media/VideoTotalTrack;

    move-result-object v1

    invoke-virtual {p2}, Lxl8;->b()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p0, v1, p2}, Lzob;->d(Lcom/transsion/dbdata/beans/media/VideoTrackData;Ljava/lang/Class;)Lcom/transsion/dbdata/beans/media/VideoTrackData;

    move-result-object p1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lxl8;->a()Lxk8;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object p0

    invoke-interface {p0}, Lde5;->o()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported input type: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lvmb;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error during querySingle operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p0}, Lvmb;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object p1
.end method
