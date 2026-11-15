.class public Lcom/transsion/audio/lyrics/LrcSearcher$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Led7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/lyrics/LrcSearcher;->o()Lmc7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/audio/lyrics/LrcSearcher;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/lyrics/LrcSearcher;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/lyrics/LrcSearcher$5;->a:Lcom/transsion/audio/lyrics/LrcSearcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lrc7;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/lyrics/LrcSearcher$5;->a:Lcom/transsion/audio/lyrics/LrcSearcher;

    invoke-static {v0}, Lcom/transsion/audio/lyrics/LrcSearcher;->c(Lcom/transsion/audio/lyrics/LrcSearcher;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v0}, Lru5;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/transsion/retrofit/cache/CacheManager;->getInstance()Lcom/transsion/retrofit/cache/CacheManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/lyrics/LrcSearcher$5;->a:Lcom/transsion/audio/lyrics/LrcSearcher;

    invoke-static {v1}, Lcom/transsion/audio/lyrics/LrcSearcher;->c(Lcom/transsion/audio/lyrics/LrcSearcher;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v1

    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/cache/CacheManager;->getCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/audio/lyrics/LrcSearcher$5;->a:Lcom/transsion/audio/lyrics/LrcSearcher;

    invoke-static {v1}, Lcom/transsion/audio/lyrics/LrcSearcher;->c(Lcom/transsion/audio/lyrics/LrcSearcher;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v1

    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lru5;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    new-instance v1, Lcom/transsion/audio/lyrics/LrcSearcher$5$1;

    invoke-direct {v1, p0}, Lcom/transsion/audio/lyrics/LrcSearcher$5$1;-><init>(Lcom/transsion/audio/lyrics/LrcSearcher$5;)V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {v0, p0}, Lfi1;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p1, p0}, Lk93;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {p1, p0}, Lk93;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
