.class public Lcom/cloud/hisavana/net/disklrucache/impl/DiskLruCacheFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache$Factory;


# instance fields
.field public final a:J

.field public final b:I


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskLruCacheFactory;->a:J

    iput p3, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskLruCacheFactory;->b:I

    return-void
.end method


# virtual methods
.method public a()Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;
    .locals 4

    new-instance v0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheImpl;

    iget-wide v1, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskLruCacheFactory;->a:J

    iget p0, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskLruCacheFactory;->b:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2, p0}, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheImpl;-><init>(Ljava/io/File;JI)V

    return-object v0
.end method
