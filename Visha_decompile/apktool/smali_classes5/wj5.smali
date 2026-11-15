.class public final Lwj5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldu4;


# static fields
.field public static final a:Lwj5;

.field public static final b:Lcom/transsion/dbdata/database/AudioRoomDatabase;

.field public static final c:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lwj5;

    invoke-direct {v0}, Lwj5;-><init>()V

    sput-object v0, Lwj5;->a:Lwj5;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->f(Landroid/content/Context;)Lcom/transsion/dbdata/database/AudioRoomDatabase;

    move-result-object v0

    sput-object v0, Lwj5;->b:Lcom/transsion/dbdata/database/AudioRoomDatabase;

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    sput-object v0, Lwj5;->c:Landroid/app/Application;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic V(Lwj5;IZILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lwj5;->U(IZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lwj5;Ljava/lang/String;)Lcr$a;
    .locals 0

    invoke-virtual {p0, p1}, Lwj5;->g(Ljava/lang/String;)Lcr$a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d()Landroid/app/Application;
    .locals 1

    sget-object v0, Lwj5;->c:Landroid/app/Application;

    return-object v0
.end method


# virtual methods
.method public A(Z)Lkotlin/Pair;
    .locals 6

    const/4 p0, 0x0

    invoke-static {p0}, Lb00;->o(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string p0, "null cannot be cast to non-null type java.util.ArrayList<com.transsion.dbdata.beans.media.AudioItem?>"

    invoke-static {v0, p0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->filterAudio$default(Ljava/util/List;ZZZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public B()Ljava/util/List;
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/16 v2, 0x1b

    const/4 v3, 0x0

    invoke-static {p0, v2, v3, v0, v1}, Lwj5;->V(Lwj5;IZILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public C()Ljava/util/List;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public D()Ljava/util/List;
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/16 v2, 0x1a

    const/4 v3, 0x0

    invoke-static {p0, v2, v3, v0, v1}, Lwj5;->V(Lwj5;IZILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public E(I)Ljava/util/List;
    .locals 2

    if-gtz p1, :cond_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->f(Landroid/content/Context;)Lcom/transsion/dbdata/database/AudioRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->b()Lgi1;

    move-result-object p0

    invoke-interface {p0}, Lgi1;->getConvertPathListOrderTime()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcr$a;

    invoke-direct {v0}, Lcr$a;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcr$a;->f(Z)Lcr$a;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcr$a;->z(Ljava/util/ArrayList;)Lcr$a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcr$a;->g(I)Lcr$a;

    move-result-object p0

    invoke-virtual {p0}, Lcr$a;->e()Lcr;

    move-result-object p0

    sget-object p1, Lwj5;->c:Landroid/app/Application;

    const-string v0, "app"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p0, p1, v0}, Los1;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Class;)Lns1;

    move-result-object p0

    sget-object p1, Lcom/transsion/dbdata/engine/DataEngine;->a:Lcom/transsion/dbdata/engine/DataEngine;

    sget-object v0, Lcom/transsion/dbdata/engine/base/scope/DataScope;->AUDIO:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/dbdata/engine/DataEngine;->c(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public F(I)Lcom/transsion/dbdata/database/AudioAlbum;
    .locals 0

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->f(Landroid/content/Context;)Lcom/transsion/dbdata/database/AudioRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->a()Lsl;

    move-result-object p0

    invoke-interface {p0, p1}, Lsl;->getAudioAlbum(I)Lcom/transsion/dbdata/database/AudioAlbum;

    move-result-object p0

    return-object p0
.end method

.method public G(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 1

    const-string p0, "displayName"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcr$a;

    invoke-direct {p0}, Lcr$a;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcr$a;->f(Z)Lcr$a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcr$a;->h(Ljava/lang/String;)Lcr$a;

    move-result-object p0

    invoke-virtual {p0}, Lcr$a;->e()Lcr;

    move-result-object p0

    sget-object p1, Lwj5;->c:Landroid/app/Application;

    const-string v0, "app"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p0, p1, v0}, Los1;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Class;)Lns1;

    move-result-object p0

    sget-object p1, Lcom/transsion/dbdata/engine/DataEngine;->a:Lcom/transsion/dbdata/engine/DataEngine;

    sget-object v0, Lcom/transsion/dbdata/engine/base/scope/DataScope;->AUDIO:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/dbdata/engine/DataEngine;->a(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/media/AudioItem;

    sget-object p1, Lwj5;->a:Lwj5;

    const-string v0, "getAudioItemByDisplayName"

    invoke-virtual {p1, v0, p0}, Lwj5;->k0(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public H(I)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 1

    new-instance p0, Lcr$a;

    invoke-direct {p0}, Lcr$a;-><init>()V

    invoke-virtual {p0, p1}, Lcr$a;->s(I)Lcr$a;

    move-result-object p0

    invoke-virtual {p0}, Lcr$a;->e()Lcr;

    move-result-object p0

    sget-object p1, Lwj5;->c:Landroid/app/Application;

    const-string v0, "app"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p0, p1, v0}, Los1;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Class;)Lns1;

    move-result-object p0

    sget-object p1, Lcom/transsion/dbdata/engine/DataEngine;->a:Lcom/transsion/dbdata/engine/DataEngine;

    sget-object v0, Lcom/transsion/dbdata/engine/base/scope/DataScope;->AUDIO:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/dbdata/engine/DataEngine;->a(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/media/AudioItem;

    sget-object p1, Lwj5;->a:Lwj5;

    const-string v0, "getAudioItemById"

    invoke-virtual {p1, v0, p0}, Lwj5;->k0(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public I(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 1

    const-string p0, "path"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcr$a;

    invoke-direct {p0}, Lcr$a;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcr$a;->f(Z)Lcr$a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcr$a;->y(Ljava/lang/String;)Lcr$a;

    move-result-object p0

    invoke-virtual {p0}, Lcr$a;->e()Lcr;

    move-result-object p0

    sget-object p1, Lwj5;->c:Landroid/app/Application;

    const-string v0, "app"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p0, p1, v0}, Los1;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Class;)Lns1;

    move-result-object p0

    sget-object p1, Lcom/transsion/dbdata/engine/DataEngine;->a:Lcom/transsion/dbdata/engine/DataEngine;

    sget-object v0, Lcom/transsion/dbdata/engine/base/scope/DataScope;->AUDIO:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/dbdata/engine/DataEngine;->a(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/media/AudioItem;

    sget-object p1, Lwj5;->a:Lwj5;

    const-string v0, "getAudioItemByPath"

    invoke-virtual {p1, v0, p0}, Lwj5;->k0(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public J(Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 1

    const-string p0, "uri"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcr$a;

    invoke-direct {p0}, Lcr$a;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcr$a;->f(Z)Lcr$a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcr$a;->D(Landroid/net/Uri;)Lcr$a;

    move-result-object p0

    invoke-virtual {p0}, Lcr$a;->e()Lcr;

    move-result-object p0

    sget-object p1, Lwj5;->c:Landroid/app/Application;

    const-string v0, "app"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p0, p1, v0}, Los1;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Class;)Lns1;

    move-result-object p0

    sget-object p1, Lcom/transsion/dbdata/engine/DataEngine;->a:Lcom/transsion/dbdata/engine/DataEngine;

    sget-object v0, Lcom/transsion/dbdata/engine/base/scope/DataScope;->AUDIO:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/dbdata/engine/DataEngine;->a(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/media/AudioItem;

    sget-object p1, Lwj5;->a:Lwj5;

    const-string v0, "getAudioItemByUri"

    invoke-virtual {p1, v0, p0}, Lwj5;->k0(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public K(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    const-string v0, "albumName"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/dbdata/beans/media/MediaBucket;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/MediaBucket;-><init>()V

    invoke-virtual {v0, p1}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setParentName(Ljava/lang/String;)V

    invoke-static {p0, p2}, Lwj5;->c(Lwj5;Ljava/lang/String;)Lcr$a;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcr$a;->f(Z)Lcr$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcr$a;->u(Lcom/transsion/dbdata/beans/media/MediaBucket;)Lcr$a;

    move-result-object p1

    const/16 p2, 0x19

    invoke-virtual {p1, p2}, Lcr$a;->k(I)Lcr$a;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcr$a;->c(Z)Lcr$a;

    move-result-object p1

    invoke-virtual {p1}, Lcr$a;->e()Lcr;

    move-result-object p1

    invoke-static {}, Lwj5;->d()Landroid/app/Application;

    move-result-object p2

    const-string v0, "access$getApp$p(...)"

    invoke-static {p2, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p1, p2, v0}, Los1;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Class;)Lns1;

    move-result-object p1

    const-string p2, "getAudioListByAlbum"

    invoke-virtual {p0, p1, p2}, Lwj5;->s(Lns1;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public L(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    const-string v0, "artistName"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/dbdata/beans/media/MediaBucket;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/MediaBucket;-><init>()V

    invoke-virtual {v0, p1}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setParentName(Ljava/lang/String;)V

    invoke-static {p0, p2}, Lwj5;->c(Lwj5;Ljava/lang/String;)Lcr$a;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcr$a;->f(Z)Lcr$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcr$a;->u(Lcom/transsion/dbdata/beans/media/MediaBucket;)Lcr$a;

    move-result-object p1

    const/16 p2, 0x1a

    invoke-virtual {p1, p2}, Lcr$a;->k(I)Lcr$a;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcr$a;->c(Z)Lcr$a;

    move-result-object p1

    invoke-virtual {p1}, Lcr$a;->e()Lcr;

    move-result-object p1

    invoke-static {}, Lwj5;->d()Landroid/app/Application;

    move-result-object p2

    const-string v0, "access$getApp$p(...)"

    invoke-static {p2, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p1, p2, v0}, Los1;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Class;)Lns1;

    move-result-object p1

    const-string p2, "getAudioListByArtistName"

    invoke-virtual {p0, p1, p2}, Lwj5;->s(Lns1;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public M(JLjava/lang/String;Ljava/lang/String;Z)Lkotlin/Pair;
    .locals 1

    const-string v0, "parentPath"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/dbdata/beans/media/MediaBucket;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/MediaBucket;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setBucketId(J)Lcom/transsion/dbdata/beans/media/MediaBucket;

    invoke-virtual {v0, p3}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setParentPath(Ljava/lang/String;)V

    invoke-static {p0, p4}, Lwj5;->c(Lwj5;Ljava/lang/String;)Lcr$a;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcr$a;->f(Z)Lcr$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcr$a;->u(Lcom/transsion/dbdata/beans/media/MediaBucket;)Lcr$a;

    move-result-object p1

    const/16 p2, 0x16

    invoke-virtual {p1, p2}, Lcr$a;->k(I)Lcr$a;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcr$a;->c(Z)Lcr$a;

    move-result-object p1

    invoke-virtual {p1}, Lcr$a;->e()Lcr;

    move-result-object p1

    invoke-static {}, Lwj5;->d()Landroid/app/Application;

    move-result-object p3

    const-string p5, "access$getApp$p(...)"

    invoke-static {p3, p5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-class p5, Lcom/transsion/dbdata/beans/AudioResultModel;

    invoke-static {p1, p3, p5}, Los1;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Class;)Lns1;

    move-result-object p1

    invoke-virtual {p0, p4}, Lwj5;->g(Ljava/lang/String;)Lcr$a;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcr$a;->f(Z)Lcr$a;

    move-result-object p0

    invoke-virtual {p0}, Lcr$a;->e()Lcr;

    move-result-object p0

    sget-object p2, Lwj5;->c:Landroid/app/Application;

    const-string p3, "app"

    invoke-static {p2, p3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p2, p5}, Los1;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Class;)Lns1;

    move-result-object p0

    sget-object p2, Lcom/transsion/dbdata/engine/DataEngine;->a:Lcom/transsion/dbdata/engine/DataEngine;

    sget-object p3, Lcom/transsion/dbdata/engine/base/scope/DataScope;->AUDIO:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    invoke-virtual {p2, p3, p0}, Lcom/transsion/dbdata/engine/DataEngine;->a(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/AudioResultModel;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/AudioResultModel;->getFilterCount()J

    move-result-wide p4

    goto :goto_0

    :cond_0
    const-wide/16 p4, 0x0

    :goto_0
    invoke-virtual {p2, p3, p1}, Lcom/transsion/dbdata/engine/DataEngine;->a(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/AudioResultModel;

    if-eqz p0, :cond_1

    new-instance p1, Lkotlin/Pair;

    long-to-int p2, p4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/AudioResultModel;->getListData()Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Lkotlin/Pair;

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getAudioListByBucketIdAndParentPath oldMethod(size:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "):"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "LegacyAudioDataManager"

    invoke-static {p2, p0}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public N(Ljava/util/List;Z)Ljava/util/List;
    .locals 0

    const-string p0, "mediaIds"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object p2, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-eqz p2, :cond_1

    invoke-interface {p0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p1, Lcr$a;

    invoke-direct {p1}, Lcr$a;-><init>()V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcr$a;->f(Z)Lcr$a;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, p2}, Lcr$a;->z(Ljava/util/ArrayList;)Lcr$a;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Lcr$a;->g(I)Lcr$a;

    move-result-object p0

    invoke-virtual {p0}, Lcr$a;->e()Lcr;

    move-result-object p0

    sget-object p1, Lwj5;->c:Landroid/app/Application;

    const-string p2, "app"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-class p2, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p0, p1, p2}, Los1;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Class;)Lns1;

    move-result-object p0

    sget-object p1, Lcom/transsion/dbdata/engine/DataEngine;->a:Lcom/transsion/dbdata/engine/DataEngine;

    sget-object p2, Lcom/transsion/dbdata/engine/base/scope/DataScope;->AUDIO:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/dbdata/engine/DataEngine;->c(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public O(Ljava/lang/String;Z)Ljava/util/List;
    .locals 0

    const-string p0, "parentPath"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcr$a;

    invoke-direct {p0}, Lcr$a;-><init>()V

    invoke-virtual {p0, p1}, Lcr$a;->x(Ljava/lang/String;)Lcr$a;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcr$a;->f(Z)Lcr$a;

    move-result-object p0

    const/16 p1, 0x22

    invoke-virtual {p0, p1}, Lcr$a;->k(I)Lcr$a;

    move-result-object p0

    invoke-virtual {p0}, Lcr$a;->e()Lcr;

    move-result-object p0

    sget-object p1, Lwj5;->c:Landroid/app/Application;

    const-string p2, "app"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-class p2, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p0, p1, p2}, Los1;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Class;)Lns1;

    move-result-object p0

    sget-object p1, Lcom/transsion/dbdata/engine/DataEngine;->a:Lcom/transsion/dbdata/engine/DataEngine;

    sget-object p2, Lcom/transsion/dbdata/engine/base/scope/DataScope;->AUDIO:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/dbdata/engine/DataEngine;->c(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public P(Ljava/util/List;Ljava/lang/String;Z)Ljava/util/List;
    .locals 0

    const-string p0, "mediaIds"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcr$a;

    invoke-direct {p0}, Lcr$a;-><init>()V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcr$a;->f(Z)Lcr$a;

    move-result-object p0

    new-instance p2, Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p2}, Lcr$a;->B(Ljava/util/ArrayList;)Lcr$a;

    move-result-object p0

    invoke-virtual {p0}, Lcr$a;->e()Lcr;

    move-result-object p0

    sget-object p1, Lwj5;->c:Landroid/app/Application;

    const-string p2, "app"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-class p2, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p0, p1, p2}, Los1;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Class;)Lns1;

    move-result-object p0

    sget-object p1, Lcom/transsion/dbdata/engine/DataEngine;->a:Lcom/transsion/dbdata/engine/DataEngine;

    sget-object p2, Lcom/transsion/dbdata/engine/base/scope/DataScope;->AUDIO:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/dbdata/engine/DataEngine;->c(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public Q()Ljava/util/List;
    .locals 1

    const-string v0, "filter_duration"

    invoke-virtual {p0, v0}, Lwj5;->u(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public R()Ljava/util/List;
    .locals 1

    const-string v0, "filter_size"

    invoke-virtual {p0, v0}, Lwj5;->u(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public S(Ljava/lang/String;Z)Ljava/util/List;
    .locals 1

    invoke-virtual {p0, p1}, Lwj5;->g(Ljava/lang/String;)Lcr$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcr$a;->f(Z)Lcr$a;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcr$a;->j(Z)Lcr$a;

    move-result-object p1

    invoke-virtual {p1}, Lcr$a;->e()Lcr;

    move-result-object p1

    sget-object p2, Lwj5;->c:Landroid/app/Application;

    const-string v0, "app"

    invoke-static {p2, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p1, p2, v0}, Los1;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Class;)Lns1;

    move-result-object p1

    const-string p2, "getAudioListWithAllFiltersApplied"

    invoke-virtual {p0, p1, p2}, Lwj5;->s(Lns1;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public T(I)Lcom/transsion/dbdata/beans/LyricData;
    .locals 0

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->f(Landroid/content/Context;)Lcom/transsion/dbdata/database/AudioRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->c()Lav5;

    move-result-object p0

    invoke-interface {p0, p1}, Lav5;->queryLyricData(I)Lcom/transsion/dbdata/beans/LyricData;

    move-result-object p0

    return-object p0
.end method

.method public final U(IZ)Ljava/util/List;
    .locals 2

    new-instance p0, Lxb6;

    invoke-direct {p0, p1, p2}, Lxb6;-><init>(IZ)V

    sget-object p2, Lwj5;->c:Landroid/app/Application;

    const-string v0, "app"

    invoke-static {p2, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/transsion/dbdata/beans/media/MediaBucket;

    invoke-static {p0, p2, v0}, Los1;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Class;)Lns1;

    move-result-object p0

    sget-object p2, Lcom/transsion/dbdata/engine/DataEngine;->a:Lcom/transsion/dbdata/engine/DataEngine;

    sget-object v0, Lcom/transsion/dbdata/engine/base/scope/DataScope;->AUDIO:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    invoke-virtual {p2, v0, p0}, Lcom/transsion/dbdata/engine/DataEngine;->c(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBucketList(type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") oldMethod(size:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LegacyAudioDataManager"

    invoke-static {p2, p1}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public W(JLjava/lang/String;)Ljava/util/List;
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/beans/media/MediaBucket;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/MediaBucket;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setBucketId(J)Lcom/transsion/dbdata/beans/media/MediaBucket;

    if-eqz p3, :cond_0

    invoke-virtual {v0, p3}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setParentPath(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lwj5;->c(Lwj5;Ljava/lang/String;)Lcr$a;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcr$a;->f(Z)Lcr$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcr$a;->u(Lcom/transsion/dbdata/beans/media/MediaBucket;)Lcr$a;

    move-result-object p1

    const/16 p3, 0x17

    invoke-virtual {p1, p3}, Lcr$a;->k(I)Lcr$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcr$a;->c(Z)Lcr$a;

    move-result-object p1

    invoke-virtual {p1}, Lcr$a;->e()Lcr;

    move-result-object p1

    invoke-static {}, Lwj5;->d()Landroid/app/Application;

    move-result-object p2

    const-string p3, "access$getApp$p(...)"

    invoke-static {p2, p3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-class p3, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p1, p2, p3}, Los1;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Class;)Lns1;

    move-result-object p1

    const-string p2, "getFilterSettingsFolderPreviewList"

    invoke-virtual {p0, p1, p2}, Lwj5;->s(Lns1;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public X()Ljava/util/List;
    .locals 2

    const/16 v0, 0x1b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lwj5;->U(IZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public Y(ZLjava/lang/String;)Ljava/util/List;
    .locals 3

    invoke-virtual {p0, p2}, Lwj5;->g(Ljava/lang/String;)Lcr$a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcr$a;->f(Z)Lcr$a;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcr$a;->A(I)Lcr$a;

    move-result-object p0

    invoke-virtual {p0}, Lcr$a;->e()Lcr;

    move-result-object p0

    sget-object p2, Lwj5;->c:Landroid/app/Application;

    const-string v0, "app"

    invoke-static {p2, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p0, p2, v0}, Los1;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Class;)Lns1;

    move-result-object p0

    sget-object p2, Lcom/transsion/dbdata/engine/DataEngine;->a:Lcom/transsion/dbdata/engine/DataEngine;

    sget-object v0, Lcom/transsion/dbdata/engine/base/scope/DataScope;->AUDIO:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    invoke-virtual {p2, v0, p0}, Lcom/transsion/dbdata/engine/DataEngine;->c(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/util/List;

    move-result-object p0

    sget-object p2, Lwj5;->b:Lcom/transsion/dbdata/database/AudioRoomDatabase;

    invoke-virtual {p2}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->e()Ld68;

    move-result-object p2

    invoke-static {}, Loa1;->e()I

    move-result v0

    invoke-interface {p2, v0}, Ld68;->getAllAudioViewRecord(I)Ljava/util/List;

    move-result-object p2

    check-cast p0, Ljava/lang/Iterable;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Lky5;->g(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lwn8;->d(II)I

    move-result v0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget v2, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/collections/a;->C(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Ly45;->g(Ljava/lang/Object;)V

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/database/PlayListMedia;

    iget v1, v1, Lcom/transsion/dbdata/database/PlayListMedia;->media_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0, p1}, Lns9;->z(Ljava/util/List;Z)Ljava/util/List;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getMostFrequentlyPlayedAudioList oldMethod: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LegacyAudioDataManager"

    invoke-static {p1, p0}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public Z()Z
    .locals 0

    invoke-static {p0}, Ldu4$a;->c(Ldu4;)Z

    move-result p0

    return p0
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    invoke-static {p1}, Lb00;->q(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAudioPlayRecordList oldMethod("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LegacyAudioDataManager"

    invoke-static {v0, p1}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    return-object p0
.end method

.method public a0(JLjava/lang/String;)Ljava/util/List;
    .locals 6

    long-to-int p0, p1

    invoke-static {p0, p3}, Lb00;->n(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->filterAudio$default(Ljava/util/List;ZZZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    sget-object p0, Ldw6;->c:Ldw6$a;

    invoke-virtual {p0}, Ldw6$a;->a()Ldw6;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ldw6;->j(ZLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    sget-object p1, Lwj5;->a:Lwj5;

    const-string v0, "getAudioMVList"

    invoke-virtual {p1, v0, p0}, Lwj5;->j0(Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method public b0()Ljava/util/List;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ldp3;->e()Ldp3;

    move-result-object v1

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1, v2}, Ldp3;->k(Landroid/content/Context;)V

    new-instance v1, Lcom/transsion/dbdata/database/PlayList;

    const-string v2, "\u6700\u8fd1\u6dfb\u52a0"

    invoke-direct {v1, v2}, Lcom/transsion/dbdata/database/PlayList;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcr$a;

    invoke-direct {v2}, Lcr$a;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcr$a;->C(Z)Lcr$a;

    move-result-object v2

    invoke-virtual {v2}, Lcr$a;->e()Lcr;

    move-result-object v2

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v4

    const-string v5, "getApp(...)"

    invoke-static {v4, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v6, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {v2, v4, v6}, Los1;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Class;)Lns1;

    move-result-object v2

    sget-object v4, Lcom/transsion/dbdata/engine/DataEngine;->a:Lcom/transsion/dbdata/engine/DataEngine;

    sget-object v6, Lcom/transsion/dbdata/engine/base/scope/DataScope;->AUDIO:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    invoke-virtual {v4, v6, v2}, Lcom/transsion/dbdata/engine/DataEngine;->c(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v2}, Luo8;->a(Landroid/content/Context;Ljava/util/List;)I

    move-result v2

    iput v2, v1, Lcom/transsion/dbdata/database/PlayList;->count:I

    invoke-static {}, Lcom/transsion/dbdata/datamanager/RecentAddDataManager;->a()Lcom/transsion/dbdata/datamanager/RecentAddDataManager;

    move-result-object v2

    iget-object v2, v2, Lcom/transsion/dbdata/datamanager/RecentAddDataManager;->i:Landroid/net/Uri;

    iput-object v2, v1, Lcom/transsion/dbdata/database/PlayList;->uri:Landroid/net/Uri;

    invoke-static {}, Lcom/transsion/dbdata/datamanager/RecentAddDataManager;->a()Lcom/transsion/dbdata/datamanager/RecentAddDataManager;

    move-result-object v2

    iget-object v2, v2, Lcom/transsion/dbdata/datamanager/RecentAddDataManager;->j:Landroid/net/Uri;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/transsion/dbdata/datamanager/RecentAddDataManager;->a()Lcom/transsion/dbdata/datamanager/RecentAddDataManager;

    move-result-object v2

    iget-object v2, v2, Lcom/transsion/dbdata/datamanager/RecentAddDataManager;->j:Landroid/net/Uri;

    iput-object v2, v1, Lcom/transsion/dbdata/database/PlayList;->uri:Landroid/net/Uri;

    iput-boolean v3, v1, Lcom/transsion/dbdata/database/PlayList;->isCustomCover:Z

    :cond_0
    const/16 v2, 0x29

    iput v2, v1, Lcom/transsion/dbdata/database/PlayList;->listFlag:I

    const/4 v2, -0x1

    iput v2, v1, Lcom/transsion/dbdata/database/PlayList;->id:I

    iget v2, v1, Lcom/transsion/dbdata/database/PlayList;->count:I

    const/4 v4, 0x0

    if-lez v2, :cond_1

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    const-string v5, "redshots_recently_added_music"

    invoke-virtual {v2, v5, v3}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v2

    const/16 v5, 0x448

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v6}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/transsion/dbdata/database/PlayList;

    const-string v2, "\u6536\u85cf"

    invoke-direct {v1, v2}, Lcom/transsion/dbdata/database/PlayList;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lwj5;->A(Z)Lkotlin/Pair;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    iput p0, v1, Lcom/transsion/dbdata/database/PlayList;->count:I

    const/16 p0, 0x21

    iput p0, v1, Lcom/transsion/dbdata/database/PlayList;->listFlag:I

    invoke-static {}, Ldp3;->e()Ldp3;

    move-result-object p0

    iget-object p0, p0, Ldp3;->e:Landroid/net/Uri;

    iput-object p0, v1, Lcom/transsion/dbdata/database/PlayList;->uri:Landroid/net/Uri;

    invoke-static {}, Ldp3;->e()Ldp3;

    move-result-object p0

    iget-object p0, p0, Ldp3;->f:Landroid/net/Uri;

    if-eqz p0, :cond_2

    iput-boolean v3, v1, Lcom/transsion/dbdata/database/PlayList;->isCustomCover:Z

    invoke-static {}, Ldp3;->e()Ldp3;

    move-result-object p0

    iget-object p0, p0, Ldp3;->f:Landroid/net/Uri;

    iput-object p0, v1, Lcom/transsion/dbdata/database/PlayList;->uri:Landroid/net/Uri;

    :cond_2
    iput v4, v1, Lcom/transsion/dbdata/database/PlayList;->id:I

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->f(Landroid/content/Context;)Lcom/transsion/dbdata/database/AudioRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->d()Lx38;

    move-result-object p0

    invoke-static {}, Loa1;->e()I

    move-result v1

    invoke-interface {p0, v1}, Lx38;->getPlayList(I)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lb00;->p(Ljava/util/List;)Ljava/util/List;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    move-object v1, p0

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/database/PlayList;

    sget-object v3, Lwj5;->a:Lwj5;

    iget v4, v2, Lcom/transsion/dbdata/database/PlayList;->id:I

    int-to-long v4, v4

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lwj5;->a0(JLjava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, v2, Lcom/transsion/dbdata/database/PlayList;->count:I

    goto :goto_0

    :cond_3
    check-cast p0, Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public c0(IILcom/transsion/dbdata/beans/media/AudioItem;Z)Lcom/transsion/dbdata/database/PlayListMediaItem;
    .locals 11

    const-string p0, "audioItem"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    if-eqz p4, :cond_0

    invoke-static {}, Ldp3;->e()Ldp3;

    move-result-object p4

    iget-object v0, p3, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ldp3;->f(Ljava/lang/String;)Z

    move-result p4

    xor-int/2addr p0, p4

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p4

    invoke-static {p4}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->f(Landroid/content/Context;)Lcom/transsion/dbdata/database/AudioRoomDatabase;

    move-result-object p4

    invoke-virtual {p4}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->e()Ld68;

    move-result-object p4

    iget v0, p3, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-interface {p4, p1, v0}, Ld68;->getPlayListMediaByIds(II)Ljava/util/List;

    move-result-object p4

    const-string v0, "getPlayListMediaByIds(...)"

    invoke-static {p4, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/transsion/dbdata/database/PlayListMediaItem;

    int-to-long v3, p1

    iget-object v8, p3, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    const-string p1, "data"

    invoke-static {v8, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v9, 0x9

    const/4 v10, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v10}, Lcom/transsion/dbdata/database/PlayListMediaItem;-><init>(JJIJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_1
    return-object p0
.end method

.method public d0(ZLjava/lang/String;)Ljava/util/List;
    .locals 6

    new-instance p0, Lcr$a;

    invoke-direct {p0}, Lcr$a;-><init>()V

    invoke-virtual {p0, p2}, Lcr$a;->t(Ljava/lang/String;)Lcr$a;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcr$a;->C(Z)Lcr$a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcr$a;->f(Z)Lcr$a;

    move-result-object p0

    invoke-virtual {p0}, Lcr$a;->e()Lcr;

    move-result-object p0

    sget-object p1, Lwj5;->c:Landroid/app/Application;

    const-string p2, "app"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-class p2, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p0, p1, p2}, Los1;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Class;)Lns1;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    sget-object p1, Lcom/transsion/dbdata/engine/DataEngine;->a:Lcom/transsion/dbdata/engine/DataEngine;

    sget-object p2, Lcom/transsion/dbdata/engine/base/scope/DataScope;->AUDIO:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/dbdata/engine/DataEngine;->c(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->filterAudio$default(Ljava/util/List;ZZZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public e(ILjava/lang/String;)I
    .locals 3

    const-string p0, "path"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->f(Landroid/content/Context;)Lcom/transsion/dbdata/database/AudioRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->b()Lgi1;

    move-result-object p0

    new-instance v0, Lcom/transsion/dbdata/database/ConvertAudio;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/transsion/dbdata/database/ConvertAudio;-><init>(ILjava/lang/String;J)V

    invoke-interface {p0, v0}, Lgi1;->insert(Lcom/transsion/dbdata/database/ConvertAudio;)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public e0(ZLcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 1

    const-string p0, "item"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ldp3;->e()Ldp3;

    move-result-object p0

    iget-object v0, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ldp3;->f(Ljava/lang/String;)Z

    move-result p0

    if-eqz p1, :cond_0

    invoke-static {}, Ldp3;->e()Ldp3;

    move-result-object p1

    xor-int/lit8 v0, p0, 0x1

    invoke-virtual {p1, v0, p2}, Ldp3;->a(ZLcom/transsion/dbdata/beans/media/AudioItem;)V

    :cond_0
    return p0
.end method

.method public f(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 0

    const-string p0, "mediaItem"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Ldw6;->c:Ldw6$a;

    invoke-virtual {p0}, Ldw6$a;->a()Ldw6;

    move-result-object p0

    invoke-virtual {p0, p1}, Ldw6;->e(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p0

    return p0
.end method

.method public f0(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 1

    const-string p0, "data"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Ldw6;->c:Ldw6$a;

    invoke-virtual {p0}, Ldw6$a;->a()Ldw6;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ldw6;->f(Lcom/transsion/dbdata/beans/media/MediaItem;Z)Z

    move-result p0

    return p0
.end method

.method public final g(Ljava/lang/String;)Lcr$a;
    .locals 0

    new-instance p0, Lcr$a;

    invoke-direct {p0}, Lcr$a;-><init>()V

    invoke-virtual {p0, p1}, Lcr$a;->t(Ljava/lang/String;)Lcr$a;

    return-object p0
.end method

.method public g0(Ljava/lang/String;)Z
    .locals 0

    sget-object p0, Ldw6;->c:Ldw6$a;

    invoke-virtual {p0}, Ldw6$a;->a()Ldw6;

    move-result-object p0

    invoke-virtual {p0, p1}, Ldw6;->g(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public h()Z
    .locals 0

    sget-object p0, Lwj5;->c:Landroid/app/Application;

    invoke-static {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->f(Landroid/content/Context;)Lcom/transsion/dbdata/database/AudioRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->e()Ld68;

    move-result-object p0

    invoke-interface {p0}, Ld68;->deleteAllAudioPlayRecord()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public h0(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 1

    const-string p0, "item"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/dbdata/datamanager/RecentAddDataManager;->a()Lcom/transsion/dbdata/datamanager/RecentAddDataManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/dbdata/datamanager/RecentAddDataManager;->e(Lcom/transsion/dbdata/beans/media/MediaItem;Z)Z

    move-result p0

    return p0
.end method

.method public i(ILjava/lang/String;)I
    .locals 0

    const-string p0, "path"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->f(Landroid/content/Context;)Lcom/transsion/dbdata/database/AudioRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->b()Lgi1;

    move-result-object p0

    invoke-interface {p0, p1}, Lgi1;->deleteAudioByMediaId(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "LegacyAudioDataManager"

    const-string p2, "deleteAudioConvertedElement error"

    invoke-static {p1, p2, p0}, Lvmb;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final i0(Ljava/lang/String;)Z
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_1

    const-string p0, "filter_size"

    invoke-static {p1, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "filter_duration"

    invoke-static {p1, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public j(Ljava/util/List;)Z
    .locals 2

    const-string p0, "items"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lwj5;->c:Landroid/app/Application;

    invoke-static {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->f(Landroid/content/Context;)Lcom/transsion/dbdata/database/AudioRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->e()Ld68;

    move-result-object p0

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Li81;->a1(Ljava/util/Collection;)[I

    move-result-object p1

    invoke-interface {p0, p1}, Ld68;->deleteAudioPlayRecordByIds([I)I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final j0(Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p2, :cond_1

    const-string p2, "NULL"

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " oldMethod(size:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "):"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LegacyAudioDataManager"

    invoke-static {p1, p0}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public k(ILjava/lang/String;)Z
    .locals 0

    const-string p0, "path"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {}, Lcom/transsion/dbdata/utils/PlayCountDataManager;->b()Lcom/transsion/dbdata/utils/PlayCountDataManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/transsion/dbdata/utils/PlayCountDataManager;->d(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p0}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move-object p0, p1

    :cond_0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final k0(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    if-nez p2, :cond_0

    const-string p2, "NULL"

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " oldMethod:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LegacyAudioDataManager"

    invoke-static {p1, p0}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public l(Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 1

    const-string p0, "item"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->f(Landroid/content/Context;)Lcom/transsion/dbdata/database/AudioRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->e()Ld68;

    move-result-object p0

    iget v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-interface {p0, v0}, Ld68;->deleteAudioPlayRecordById(I)I

    invoke-static {}, Lcom/transsion/dbdata/utils/PlayCountDataManager;->b()Lcom/transsion/dbdata/utils/PlayCountDataManager;

    move-result-object p0

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/utils/PlayCountDataManager;->d(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public l0()Landroidx/lifecycle/LiveData;
    .locals 2

    :try_start_0
    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->f(Landroid/content/Context;)Lcom/transsion/dbdata/database/AudioRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->a()Lsl;

    move-result-object p0

    invoke-static {}, Loa1;->f()I

    move-result v0

    invoke-interface {p0, v0}, Lsl;->getAll(I)Landroidx/lifecycle/LiveData;

    move-result-object p0

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "LegacyAudioDataManager"

    const-string v1, "observeAllMediaDataMissing failed"

    invoke-static {v0, v1, p0}, Lvmb;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p0, Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public m(J)I
    .locals 1

    sget-object p0, Lwj5;->c:Landroid/app/Application;

    invoke-static {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->f(Landroid/content/Context;)Lcom/transsion/dbdata/database/AudioRoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->e()Ld68;

    move-result-object v0

    long-to-int p1, p1

    invoke-interface {v0, p1}, Ld68;->deletePlayListMediaByPlayListId(I)V

    invoke-static {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->f(Landroid/content/Context;)Lcom/transsion/dbdata/database/AudioRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->d()Lx38;

    move-result-object p0

    invoke-interface {p0, p1}, Lx38;->deletePlayListById(I)I

    move-result p0

    return p0
.end method

.method public m0()Ljava/util/List;
    .locals 2

    sget-boolean p0, Lpp3;->y:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string v0, "music_video"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance p0, Lcr$a;

    invoke-direct {p0}, Lcr$a;-><init>()V

    invoke-virtual {p0, v1}, Lcr$a;->f(Z)Lcr$a;

    move-result-object p0

    invoke-virtual {p0}, Lcr$a;->e()Lcr;

    move-result-object p0

    sget-object v0, Lwj5;->c:Landroid/app/Application;

    const-string v1, "app"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p0, v0, v1}, Los1;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Class;)Lns1;

    move-result-object p0

    sget-object v0, Lcom/transsion/dbdata/engine/DataEngine;->a:Lcom/transsion/dbdata/engine/DataEngine;

    sget-object v1, Lcom/transsion/dbdata/engine/base/scope/DataScope;->AUDIO:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/dbdata/engine/DataEngine;->c(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public n(ILcom/transsion/dbdata/beans/media/AudioItem;Z)I
    .locals 0

    const-string p0, "audioItem"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->f(Landroid/content/Context;)Lcom/transsion/dbdata/database/AudioRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->e()Ld68;

    move-result-object p0

    iget p2, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-interface {p0, p1, p2}, Ld68;->deletePlayListMedia(II)I

    move-result p0

    return p0
.end method

.method public n0(ZLcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    const-string p0, "item"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p1}, Lb00;->s(Lcom/transsion/dbdata/beans/media/AudioItem;Z)V

    return-void
.end method

.method public o(ILjava/util/List;Z)I
    .locals 0

    const-string p0, "mediaIds"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->f(Landroid/content/Context;)Lcom/transsion/dbdata/database/AudioRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->e()Ld68;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    check-cast p2, Ljava/util/Collection;

    invoke-static {p2}, Li81;->a1(Ljava/util/Collection;)[I

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ld68;->deletePlayListMedia(I[I)I

    move-result p0

    return p0
.end method

.method public o0(Ljava/lang/String;Z)J
    .locals 0

    const-string p0, "name"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_0
    new-instance p0, Lcom/transsion/dbdata/database/PlayList;

    invoke-direct {p0, p1}, Lcom/transsion/dbdata/database/PlayList;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/dbdata/database/PlayList;->setup_time:J

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->f(Landroid/content/Context;)Lcom/transsion/dbdata/database/AudioRoomDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->d()Lx38;

    move-result-object p1

    invoke-interface {p1, p0}, Lx38;->insertPlayList(Lcom/transsion/dbdata/database/PlayList;)J

    move-result-wide p0

    return-wide p0
.end method

.method public p(Lcom/transsion/dbdata/beans/media/AudioItem;IIZ)I
    .locals 0

    const-string p0, "audioItem"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->f(Landroid/content/Context;)Lcom/transsion/dbdata/database/AudioRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->e()Ld68;

    move-result-object p0

    invoke-static {}, Ldp3;->e()Ldp3;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p1}, Ldp3;->a(ZLcom/transsion/dbdata/beans/media/AudioItem;)V

    iget p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-interface {p0, p1}, Ld68;->deleteFavoriteItemById(I)I

    return p3

    :cond_0
    sget-object p0, Lcom/transsion/dbdata/database/MediaRoomDatabase;->a:Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion;

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion;->d()Lcom/transsion/dbdata/database/MediaRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/MediaRoomDatabase;->k()Lf68;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Lf68;->deleteByPlayListId(II)I

    move-result p0

    return p0
.end method

.method public p0(Ljava/lang/String;JLcom/transsion/dbdata/beans/media/AudioItem;)I
    .locals 8

    const-string p0, "playlistName"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "mediaItem"

    invoke-static {p4, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->f(Landroid/content/Context;)Lcom/transsion/dbdata/database/AudioRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->e()Ld68;

    move-result-object p0

    long-to-int v0, p2

    iget-object v2, p4, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget v3, p4, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lrv8;->a(ILjava/lang/String;Ljava/lang/String;IIIJ)Lcom/transsion/dbdata/database/PlayListMedia;

    move-result-object p1

    invoke-interface {p0, p1}, Ld68;->insertPlayListMedia(Lcom/transsion/dbdata/database/PlayListMedia;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int p0, p0

    goto :goto_0

    :catch_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public q(Lcom/transsion/dbdata/beans/media/MediaItem;Le74;)V
    .locals 0

    const-string p0, "item"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "delete"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public q0(Ljava/lang/String;JLjava/util/ArrayList;Z)Ljava/util/List;
    .locals 6

    const-string p0, "playListName"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "mediaItems"

    invoke-static {p4, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->f(Landroid/content/Context;)Lcom/transsion/dbdata/database/AudioRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->e()Ld68;

    move-result-object p0

    if-eqz p5, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const-string p3, "iterator(...)"

    invoke-static {p2, p3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    const-string p4, "next(...)"

    invoke-static {p3, p4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v0, p3, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget v1, p3, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lrv8;->c(Ljava/lang/String;IIIJ)Lcom/transsion/dbdata/database/PlayListMedia;

    move-result-object p4

    const-string p5, "initPlayListMedia(...)"

    invoke-static {p4, p5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ldp3;->e()Ldp3;

    move-result-object p4

    const/4 p5, 0x1

    invoke-virtual {p4, p5, p3}, Ldp3;->a(ZLcom/transsion/dbdata/beans/media/AudioItem;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Ld68;->insertPlayListMedia(Ljava/util/List;)[J

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_1
    long-to-int p0, p2

    invoke-static {p0, p1, p4}, Lb00;->f(ILjava/lang/String;Ljava/util/ArrayList;)[J

    move-result-object p0

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    new-instance p1, Ljava/util/ArrayList;

    array-length p2, p0

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    array-length p2, p0

    const/4 p3, 0x0

    :goto_1
    if-ge p3, p2, :cond_2

    aget-wide p4, p0, p3

    long-to-int p4, p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p1, p4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_2
    return-object p1

    :catch_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public r(Ljava/util/List;Le74;)V
    .locals 0

    const-string p0, "items"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "delete"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public r0(I)V
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/datamanager/RecentAddDataManager;->a()Lcom/transsion/dbdata/datamanager/RecentAddDataManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/dbdata/datamanager/RecentAddDataManager;->i(IZ)V

    return-void
.end method

.method public final s(Lns1;Ljava/lang/String;)Ljava/util/List;
    .locals 2

    sget-object v0, Lcom/transsion/dbdata/engine/DataEngine;->a:Lcom/transsion/dbdata/engine/DataEngine;

    sget-object v1, Lcom/transsion/dbdata/engine/base/scope/DataScope;->AUDIO:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    invoke-virtual {v0, v1, p1}, Lcom/transsion/dbdata/engine/DataEngine;->c(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lwj5;->j0(Ljava/lang/String;Ljava/util/List;)V

    return-object p1
.end method

.method public s0(ILjava/lang/String;I)I
    .locals 0

    :try_start_0
    new-instance p0, Lcom/transsion/dbdata/beans/LyricData;

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/LyricData;-><init>()V

    iput-object p2, p0, Lcom/transsion/dbdata/beans/LyricData;->_data:Ljava/lang/String;

    iput p3, p0, Lcom/transsion/dbdata/beans/LyricData;->offset:I

    iput p1, p0, Lcom/transsion/dbdata/beans/LyricData;->media_id:I

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->f(Landroid/content/Context;)Lcom/transsion/dbdata/database/AudioRoomDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->c()Lav5;

    move-result-object p1

    invoke-interface {p1, p0}, Lav5;->insert(Lcom/transsion/dbdata/beans/LyricData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final t(Lns1;Ljava/lang/String;)Lcom/transsion/dbdata/beans/AudioResultModel;
    .locals 1

    sget-object p0, Lcom/transsion/dbdata/engine/DataEngine;->a:Lcom/transsion/dbdata/engine/DataEngine;

    sget-object v0, Lcom/transsion/dbdata/engine/base/scope/DataScope;->AUDIO:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/dbdata/engine/DataEngine;->a(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/AudioResultModel;

    if-eqz p0, :cond_0

    sget-object p1, Lwj5;->a:Lwj5;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/AudioResultModel;->getListData()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lwj5;->j0(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-object p0
.end method

.method public t0(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    sget-object p0, Lwj5;->c:Landroid/app/Application;

    const-string v0, "app"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/transsion/dbdata/beans/SearchBean;

    invoke-static {p1, p0, v0}, Los1;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Class;)Lns1;

    move-result-object p0

    sget-object p1, Lcom/transsion/dbdata/engine/DataEngine;->a:Lcom/transsion/dbdata/engine/DataEngine;

    sget-object v0, Lcom/transsion/dbdata/engine/base/scope/DataScope;->AUDIO:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/dbdata/engine/DataEngine;->c(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final u(Ljava/lang/String;)Ljava/util/List;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start execute getFilteredMediaList(type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LegacyAudioDataManager"

    invoke-static {v2, v0}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lwj5;->i0(Ljava/lang/String;)Z

    move-result v0

    const-string v3, "getFilteredList(type:"

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")\uff0cinvalid filtering type"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcr$a;

    invoke-direct {v0}, Lcr$a;-><init>()V

    invoke-virtual {v0, p1}, Lcr$a;->i(Ljava/lang/String;)Lcr$a;

    move-result-object v0

    invoke-virtual {v0}, Lcr$a;->e()Lcr;

    move-result-object v0

    sget-object v2, Lwj5;->c:Landroid/app/Application;

    const-string v4, "app"

    invoke-static {v2, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v4, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {v0, v2, v4}, Los1;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Class;)Lns1;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lwj5;->s(Lns1;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public u0(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const-string p0, "mediaPath"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "customCoverPath"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->f(Landroid/content/Context;)Lcom/transsion/dbdata/database/AudioRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->a()Lsl;

    move-result-object p0

    new-instance p2, Lcom/transsion/dbdata/database/AudioAlbum;

    invoke-direct {p2, p1, p3}, Lcom/transsion/dbdata/database/AudioAlbum;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, p2}, Lsl;->insert(Lcom/transsion/dbdata/database/AudioAlbum;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final v(Ljava/util/List;)Ljava/util/List;
    .locals 6

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lwj5;->b:Lcom/transsion/dbdata/database/AudioRoomDatabase;

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->e()Ld68;

    move-result-object v0

    invoke-static {}, Loa1;->e()I

    move-result v1

    invoke-interface {v0, v1}, Ld68;->getAllAudioViewRecord(I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/database/PlayListMedia;

    move-object v2, p1

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget v4, v4, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget v5, v1, Lcom/transsion/dbdata/database/PlayListMedia;->media_id:I

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    check-cast v3, Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v3, :cond_3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lwj5;->b:Lcom/transsion/dbdata/database/AudioRoomDatabase;

    invoke-virtual {v2}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->e()Ld68;

    move-result-object v2

    invoke-interface {v2, v1}, Ld68;->deletePlayListMedia(Lcom/transsion/dbdata/database/PlayListMedia;)V

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method public v0(Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 0

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lb00;->r(Lcom/transsion/dbdata/beans/media/AudioItem;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/util/List;
    .locals 4

    const/16 v0, 0x19

    const-class v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    const-string v2, "app"

    if-eq p4, v0, :cond_10

    const/16 v0, 0x1a

    if-eq p4, v0, :cond_e

    const/4 v0, 0x0

    const/4 v3, 0x1

    packed-switch p4, :pswitch_data_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto/16 :goto_6

    :pswitch_0
    if-nez p5, :cond_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto/16 :goto_6

    :cond_0
    sget-object p0, Lwj5;->b:Lcom/transsion/dbdata/database/AudioRoomDatabase;

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->e()Ld68;

    move-result-object p0

    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    long-to-int p1, p1

    invoke-interface {p0, p1}, Ld68;->getPlayListMediaIdByPlayListId(I)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lcr$a;

    invoke-direct {p1}, Lcr$a;-><init>()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, p2}, Lcr$a;->v(Ljava/util/ArrayList;)Lcr$a;

    move-result-object p0

    invoke-virtual {p0}, Lcr$a;->e()Lcr;

    move-result-object p0

    sget-object p1, Lwj5;->c:Landroid/app/Application;

    invoke-static {p1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Los1;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Class;)Lns1;

    move-result-object p0

    sget-object p1, Lcom/transsion/dbdata/engine/DataEngine;->a:Lcom/transsion/dbdata/engine/DataEngine;

    sget-object p2, Lcom/transsion/dbdata/engine/base/scope/DataScope;->AUDIO:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/dbdata/engine/DataEngine;->c(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/util/List;

    move-result-object p0

    goto/16 :goto_6

    :cond_2
    :goto_0
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto/16 :goto_6

    :pswitch_1
    new-instance p0, Lcr$a;

    invoke-direct {p0}, Lcr$a;-><init>()V

    invoke-virtual {p0, v3}, Lcr$a;->C(Z)Lcr$a;

    move-result-object p0

    invoke-virtual {p0}, Lcr$a;->e()Lcr;

    move-result-object p0

    sget-object p1, Lwj5;->c:Landroid/app/Application;

    invoke-static {p1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Los1;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Class;)Lns1;

    move-result-object p0

    sget-object p1, Lcom/transsion/dbdata/engine/DataEngine;->a:Lcom/transsion/dbdata/engine/DataEngine;

    sget-object p2, Lcom/transsion/dbdata/engine/base/scope/DataScope;->AUDIO:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/dbdata/engine/DataEngine;->c(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/util/List;

    move-result-object p0

    goto/16 :goto_6

    :pswitch_2
    sget-object p0, Lwj5;->b:Lcom/transsion/dbdata/database/AudioRoomDatabase;

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->e()Ld68;

    move-result-object p0

    invoke-static {}, Loa1;->e()I

    move-result p1

    invoke-interface {p0, p1}, Ld68;->getFavoriteItemMediaIds(I)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Lcr$a;

    invoke-direct {p1}, Lcr$a;-><init>()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, p2}, Lcr$a;->v(Ljava/util/ArrayList;)Lcr$a;

    move-result-object p0

    invoke-virtual {p0}, Lcr$a;->e()Lcr;

    move-result-object p0

    sget-object p1, Lwj5;->c:Landroid/app/Application;

    invoke-static {p1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Los1;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Class;)Lns1;

    move-result-object p0

    sget-object p1, Lcom/transsion/dbdata/engine/DataEngine;->a:Lcom/transsion/dbdata/engine/DataEngine;

    sget-object p2, Lcom/transsion/dbdata/engine/base/scope/DataScope;->AUDIO:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/dbdata/engine/DataEngine;->c(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/util/List;

    move-result-object p0

    goto/16 :goto_6

    :cond_4
    :goto_1
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto/16 :goto_6

    :pswitch_3
    sget-object p1, Lwj5;->b:Lcom/transsion/dbdata/database/AudioRoomDatabase;

    invoke-virtual {p1}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->e()Ld68;

    move-result-object p1

    invoke-static {}, Loa1;->e()I

    move-result p2

    invoke-interface {p1, p2}, Ld68;->getAudioPlayRecordMediaIds(I)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_2

    :cond_5
    new-instance p2, Lcr$a;

    invoke-direct {p2}, Lcr$a;-><init>()V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2, p3}, Lcr$a;->v(Ljava/util/ArrayList;)Lcr$a;

    move-result-object p1

    invoke-virtual {p1}, Lcr$a;->e()Lcr;

    move-result-object p1

    sget-object p2, Lwj5;->c:Landroid/app/Application;

    invoke-static {p2, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2, v1}, Los1;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Class;)Lns1;

    move-result-object p1

    sget-object p2, Lcom/transsion/dbdata/engine/DataEngine;->a:Lcom/transsion/dbdata/engine/DataEngine;

    sget-object p3, Lcom/transsion/dbdata/engine/base/scope/DataScope;->AUDIO:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    invoke-virtual {p2, p3, p1}, Lcom/transsion/dbdata/engine/DataEngine;->c(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lwj5;->v(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    goto/16 :goto_6

    :cond_6
    :goto_2
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto/16 :goto_6

    :pswitch_4
    if-nez p5, :cond_7

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto/16 :goto_6

    :cond_7
    sget-object p0, Lwj5;->b:Lcom/transsion/dbdata/database/AudioRoomDatabase;

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->e()Ld68;

    move-result-object p0

    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    long-to-int p1, p1

    invoke-interface {p0, p1}, Ld68;->getPlayListMediaIdByPlayListId(I)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    if-eqz p0, :cond_9

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_3

    :cond_8
    new-instance p1, Lcr$a;

    invoke-direct {p1}, Lcr$a;-><init>()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, p2}, Lcr$a;->v(Ljava/util/ArrayList;)Lcr$a;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcr$a;->h(Ljava/lang/String;)Lcr$a;

    move-result-object p0

    invoke-virtual {p0}, Lcr$a;->e()Lcr;

    move-result-object p0

    sget-object p1, Lwj5;->c:Landroid/app/Application;

    invoke-static {p1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Los1;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Class;)Lns1;

    move-result-object p0

    sget-object p1, Lcom/transsion/dbdata/engine/DataEngine;->a:Lcom/transsion/dbdata/engine/DataEngine;

    sget-object p2, Lcom/transsion/dbdata/engine/base/scope/DataScope;->AUDIO:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/dbdata/engine/DataEngine;->c(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/util/List;

    move-result-object p0

    goto/16 :goto_6

    :cond_9
    :goto_3
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto/16 :goto_6

    :pswitch_5
    new-instance p0, Lcr$a;

    invoke-direct {p0}, Lcr$a;-><init>()V

    invoke-virtual {p0, v3}, Lcr$a;->C(Z)Lcr$a;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcr$a;->h(Ljava/lang/String;)Lcr$a;

    move-result-object p0

    invoke-virtual {p0}, Lcr$a;->e()Lcr;

    move-result-object p0

    sget-object p1, Lwj5;->c:Landroid/app/Application;

    invoke-static {p1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Los1;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Class;)Lns1;

    move-result-object p0

    sget-object p1, Lcom/transsion/dbdata/engine/DataEngine;->a:Lcom/transsion/dbdata/engine/DataEngine;

    sget-object p2, Lcom/transsion/dbdata/engine/base/scope/DataScope;->AUDIO:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/dbdata/engine/DataEngine;->c(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/util/List;

    move-result-object p0

    goto/16 :goto_6

    :pswitch_6
    sget-object p0, Lwj5;->b:Lcom/transsion/dbdata/database/AudioRoomDatabase;

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->e()Ld68;

    move-result-object p0

    invoke-static {}, Loa1;->e()I

    move-result p1

    invoke-interface {p0, p1}, Ld68;->getFavoriteItemMediaIds(I)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    if-eqz p0, :cond_b

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_4

    :cond_a
    new-instance p1, Lcr$a;

    invoke-direct {p1}, Lcr$a;-><init>()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, p2}, Lcr$a;->v(Ljava/util/ArrayList;)Lcr$a;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcr$a;->h(Ljava/lang/String;)Lcr$a;

    move-result-object p0

    invoke-virtual {p0}, Lcr$a;->e()Lcr;

    move-result-object p0

    sget-object p1, Lwj5;->c:Landroid/app/Application;

    invoke-static {p1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Los1;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Class;)Lns1;

    move-result-object p0

    sget-object p1, Lcom/transsion/dbdata/engine/DataEngine;->a:Lcom/transsion/dbdata/engine/DataEngine;

    sget-object p2, Lcom/transsion/dbdata/engine/base/scope/DataScope;->AUDIO:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/dbdata/engine/DataEngine;->c(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/util/List;

    move-result-object p0

    goto/16 :goto_6

    :cond_b
    :goto_4
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto/16 :goto_6

    :pswitch_7
    sget-object p0, Lwj5;->b:Lcom/transsion/dbdata/database/AudioRoomDatabase;

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->e()Ld68;

    move-result-object p0

    invoke-static {}, Loa1;->e()I

    move-result p1

    invoke-interface {p0, p1}, Ld68;->getAudioPlayRecordMediaIds(I)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    if-eqz p0, :cond_d

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_5

    :cond_c
    new-instance p1, Lcr$a;

    invoke-direct {p1}, Lcr$a;-><init>()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, p2}, Lcr$a;->v(Ljava/util/ArrayList;)Lcr$a;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcr$a;->h(Ljava/lang/String;)Lcr$a;

    move-result-object p0

    invoke-virtual {p0}, Lcr$a;->e()Lcr;

    move-result-object p0

    sget-object p1, Lwj5;->c:Landroid/app/Application;

    invoke-static {p1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Los1;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Class;)Lns1;

    move-result-object p0

    sget-object p1, Lcom/transsion/dbdata/engine/DataEngine;->a:Lcom/transsion/dbdata/engine/DataEngine;

    sget-object p2, Lcom/transsion/dbdata/engine/base/scope/DataScope;->AUDIO:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/dbdata/engine/DataEngine;->c(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/util/List;

    move-result-object p0

    goto/16 :goto_6

    :cond_d
    :goto_5
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto/16 :goto_6

    :pswitch_8
    new-instance p0, Lcr$a;

    invoke-direct {p0}, Lcr$a;-><init>()V

    invoke-virtual {p0, v0}, Lcr$a;->u(Lcom/transsion/dbdata/beans/media/MediaBucket;)Lcr$a;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcr$a;->h(Ljava/lang/String;)Lcr$a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcr$a;->a(Ljava/lang/String;)Lcr$a;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcr$a;->k(I)Lcr$a;

    move-result-object p0

    invoke-virtual {p0}, Lcr$a;->e()Lcr;

    move-result-object p0

    sget-object p1, Lwj5;->c:Landroid/app/Application;

    invoke-static {p1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Los1;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Class;)Lns1;

    move-result-object p0

    sget-object p1, Lcom/transsion/dbdata/engine/DataEngine;->a:Lcom/transsion/dbdata/engine/DataEngine;

    sget-object p2, Lcom/transsion/dbdata/engine/base/scope/DataScope;->AUDIO:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/dbdata/engine/DataEngine;->c(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/util/List;

    move-result-object p0

    goto/16 :goto_6

    :pswitch_9
    new-instance p0, Lcr$a;

    invoke-direct {p0}, Lcr$a;-><init>()V

    invoke-virtual {p0, v0}, Lcr$a;->u(Lcom/transsion/dbdata/beans/media/MediaBucket;)Lcr$a;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcr$a;->h(Ljava/lang/String;)Lcr$a;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcr$a;->b(Ljava/lang/String;)Lcr$a;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcr$a;->k(I)Lcr$a;

    move-result-object p0

    invoke-virtual {p0}, Lcr$a;->e()Lcr;

    move-result-object p0

    sget-object p1, Lwj5;->c:Landroid/app/Application;

    invoke-static {p1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Los1;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Class;)Lns1;

    move-result-object p0

    sget-object p1, Lcom/transsion/dbdata/engine/DataEngine;->a:Lcom/transsion/dbdata/engine/DataEngine;

    sget-object p2, Lcom/transsion/dbdata/engine/base/scope/DataScope;->AUDIO:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/dbdata/engine/DataEngine;->c(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/util/List;

    move-result-object p0

    goto/16 :goto_6

    :pswitch_a
    new-instance p0, Lcr$a;

    invoke-direct {p0}, Lcr$a;-><init>()V

    new-instance p1, Lcom/transsion/dbdata/beans/media/MediaBucket;

    invoke-direct {p1}, Lcom/transsion/dbdata/beans/media/MediaBucket;-><init>()V

    invoke-virtual {p0, p1}, Lcr$a;->u(Lcom/transsion/dbdata/beans/media/MediaBucket;)Lcr$a;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcr$a;->x(Ljava/lang/String;)Lcr$a;

    move-result-object p0

    const-wide/16 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcr$a;->d(J)Lcr$a;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcr$a;->k(I)Lcr$a;

    move-result-object p0

    invoke-virtual {p0}, Lcr$a;->e()Lcr;

    move-result-object p0

    sget-object p1, Lwj5;->c:Landroid/app/Application;

    invoke-static {p1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Los1;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Class;)Lns1;

    move-result-object p0

    sget-object p1, Lcom/transsion/dbdata/engine/DataEngine;->a:Lcom/transsion/dbdata/engine/DataEngine;

    sget-object p2, Lcom/transsion/dbdata/engine/base/scope/DataScope;->AUDIO:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/dbdata/engine/DataEngine;->c(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/util/List;

    move-result-object p0

    goto :goto_6

    :cond_e
    if-nez p2, :cond_f

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto :goto_6

    :cond_f
    new-instance p0, Lcr$a;

    invoke-direct {p0}, Lcr$a;-><init>()V

    new-instance p1, Lcom/transsion/dbdata/beans/media/MediaBucket;

    invoke-direct {p1}, Lcom/transsion/dbdata/beans/media/MediaBucket;-><init>()V

    invoke-virtual {p0, p1}, Lcr$a;->u(Lcom/transsion/dbdata/beans/media/MediaBucket;)Lcr$a;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcr$a;->x(Ljava/lang/String;)Lcr$a;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcr$a;->k(I)Lcr$a;

    move-result-object p0

    invoke-virtual {p0}, Lcr$a;->e()Lcr;

    move-result-object p0

    sget-object p1, Lwj5;->c:Landroid/app/Application;

    invoke-static {p1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Los1;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Class;)Lns1;

    move-result-object p0

    sget-object p1, Lcom/transsion/dbdata/engine/DataEngine;->a:Lcom/transsion/dbdata/engine/DataEngine;

    sget-object p2, Lcom/transsion/dbdata/engine/base/scope/DataScope;->AUDIO:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/dbdata/engine/DataEngine;->c(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/util/List;

    move-result-object p0

    goto :goto_6

    :cond_10
    new-instance p0, Lcr$a;

    invoke-direct {p0}, Lcr$a;-><init>()V

    new-instance p2, Lcom/transsion/dbdata/beans/media/MediaBucket;

    invoke-direct {p2}, Lcom/transsion/dbdata/beans/media/MediaBucket;-><init>()V

    invoke-virtual {p0, p2}, Lcr$a;->u(Lcom/transsion/dbdata/beans/media/MediaBucket;)Lcr$a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcr$a;->x(Ljava/lang/String;)Lcr$a;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcr$a;->k(I)Lcr$a;

    move-result-object p0

    invoke-virtual {p0}, Lcr$a;->e()Lcr;

    move-result-object p0

    sget-object p1, Lwj5;->c:Landroid/app/Application;

    invoke-static {p1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Los1;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Class;)Lns1;

    move-result-object p0

    sget-object p1, Lcom/transsion/dbdata/engine/DataEngine;->a:Lcom/transsion/dbdata/engine/DataEngine;

    sget-object p2, Lcom/transsion/dbdata/engine/base/scope/DataScope;->AUDIO:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/dbdata/engine/DataEngine;->c(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/util/List;

    move-result-object p0

    :goto_6
    return-object p0

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public w0(Lcom/transsion/dbdata/beans/media/AudioItem;Ljava/lang/String;)I
    .locals 0

    const-string p0, "audioItem"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "newPath"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository;->Companion:Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository$Companion;

    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository$Companion;->getInstance()Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository;->updateConvertedAudioItem(Lcom/transsion/dbdata/beans/media/AudioItem;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public x()Ljava/util/List;
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/16 v2, 0x19

    const/4 v3, 0x0

    invoke-static {p0, v2, v3, v0, v1}, Lwj5;->V(Lwj5;IZILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public x0(Lcom/transsion/dbdata/database/PlayList;)I
    .locals 0

    const-string p0, "playList"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lwj5;->c:Landroid/app/Application;

    invoke-static {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->f(Landroid/content/Context;)Lcom/transsion/dbdata/database/AudioRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->d()Lx38;

    move-result-object p0

    invoke-interface {p0, p1}, Lx38;->updatePlayList(Lcom/transsion/dbdata/database/PlayList;)I

    move-result p0

    return p0
.end method

.method public y()Ljava/util/List;
    .locals 1

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->f(Landroid/content/Context;)Lcom/transsion/dbdata/database/AudioRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->a()Lsl;

    move-result-object p0

    invoke-interface {p0}, Lsl;->getAllAudioAlbum()Ljava/util/List;

    move-result-object p0

    const-string v0, "getAllAudioAlbum(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public y0(Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 0

    const-string p0, "audioItem"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public z(Ljava/lang/String;)Lkotlin/Pair;
    .locals 3

    invoke-virtual {p0}, Lwj5;->Z()Z

    move-result v0

    invoke-virtual {p0, p1}, Lwj5;->g(Ljava/lang/String;)Lcr$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcr$a;->f(Z)Lcr$a;

    move-result-object p1

    invoke-virtual {p1}, Lcr$a;->e()Lcr;

    move-result-object p1

    sget-object v0, Lwj5;->c:Landroid/app/Application;

    const-string v1, "app"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v1, Lcom/transsion/dbdata/beans/AudioResultModel;

    invoke-static {p1, v0, v1}, Los1;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Class;)Lns1;

    move-result-object p1

    const-string v0, "getAllAudioList"

    invoke-virtual {p0, p1, v0}, Lwj5;->t(Lns1;Ljava/lang/String;)Lcom/transsion/dbdata/beans/AudioResultModel;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p1, Lvdb;->a:Lvdb$a;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/AudioResultModel;->getListData()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllAudioList "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LegacyAudioDataManager"

    invoke-virtual {p1, v1, v0}, Lvdb$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lkotlin/Pair;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/AudioResultModel;->getFilterCount()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/AudioResultModel;->getListData()Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/Pair;

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object p1
.end method
