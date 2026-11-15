.class public Lcom/cloud/hisavana/net/disklrucache/impl/DiskLruCacheFactory;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache$Factory;


# instance fields
.field private final a:J

.field private final b:I


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskLruCacheFactory;->a:J

    .line 5
    .line 6
    iput p3, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskLruCacheFactory;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;
    .locals 5

    .line 1
    new-instance v0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheImpl;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskLruCacheFactory;->a:J

    .line 4
    .line 5
    iget v3, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskLruCacheFactory;->b:I

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheImpl;-><init>(Ljava/io/File;JI)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
