.class Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;-><init>(Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$diskCacheFolder:Ljava/lang/String;

.field final synthetic val$diskCacheName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$2;->val$diskCacheFolder:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$2;->val$diskCacheName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getCacheDirectory()Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$2;->val$diskCacheFolder:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$2;->val$diskCacheName:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
