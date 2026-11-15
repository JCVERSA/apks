.class public Lcom/transsion/audio/lyrics/LrcSearcher$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Led7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/lyrics/LrcSearcher;->s()Lmc7;
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

    iput-object p1, p0, Lcom/transsion/audio/lyrics/LrcSearcher$7;->a:Lcom/transsion/audio/lyrics/LrcSearcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lrc7;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/audio/lyrics/LrcSearcher$7;->a:Lcom/transsion/audio/lyrics/LrcSearcher;

    invoke-static {v1}, Lcom/transsion/audio/lyrics/LrcSearcher;->c(Lcom/transsion/audio/lyrics/LrcSearcher;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v1

    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lru5;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/transsion/retrofit/cache/CacheManager;->getInstance()Lcom/transsion/retrofit/cache/CacheManager;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/transsion/audio/lyrics/LrcSearcher$7;->a:Lcom/transsion/audio/lyrics/LrcSearcher;

    invoke-static {v3}, Lcom/transsion/audio/lyrics/LrcSearcher;->c(Lcom/transsion/audio/lyrics/LrcSearcher;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v3

    iget-object v3, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/retrofit/cache/CacheManager;->getCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v2, Lcom/transsion/audio/lyrics/LrcSearcher$7$1;

    invoke-direct {v2, p0}, Lcom/transsion/audio/lyrics/LrcSearcher$7$1;-><init>(Lcom/transsion/audio/lyrics/LrcSearcher$7;)V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v0, v2}, Lfi1;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/transsion/audio/lyrics/LrcSearcher$7;->a:Lcom/transsion/audio/lyrics/LrcSearcher;

    invoke-static {p0}, Lcom/transsion/audio/lyrics/LrcSearcher;->c(Lcom/transsion/audio/lyrics/LrcSearcher;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v2, p0, v1}, Lru5;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p1, v0}, Lk93;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {p1, p0}, Lk93;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
