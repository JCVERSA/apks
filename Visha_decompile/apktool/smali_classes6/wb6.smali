.class public final Lwb6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwv4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwb6$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lwb6;->c(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Lcom/transsion/dbdata/beans/media/MediaBucket;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Lkotlin/Pair;
    .locals 2

    const-string p0, "scope"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "request"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lxl8;->a()Lxk8;

    move-result-object p0

    instance-of v0, p0, Lxk8$h;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lwb6$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    invoke-virtual {p2}, Lxl8;->a()Lxk8;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "queryBatch unhandled action type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PlayListElementQueryEngine"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate;

    check-cast p0, Lxk8$h;

    invoke-virtual {p1, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate;->queryAudioBucketList(Lxk8$h;)Lkotlin/Pair;

    move-result-object v1

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate;

    check-cast p0, Lxk8$h;

    invoke-virtual {p1, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate;->queryVideoBucketList(Lxk8$h;)Lkotlin/Pair;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public c(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Lcom/transsion/dbdata/beans/media/MediaBucket;
    .locals 0

    invoke-static {p0, p1, p2}, Lwv4$a;->a(Lwv4;Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/media/MediaBucket;

    return-object p0
.end method
