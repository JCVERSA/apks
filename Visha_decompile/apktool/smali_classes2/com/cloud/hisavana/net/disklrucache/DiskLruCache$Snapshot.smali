.class public final Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Snapshot;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Snapshot"
.end annotation


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:[Ljava/io/InputStream;

.field public final e:[J

.field public final synthetic f:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;[J)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Snapshot;->f:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Snapshot;->b:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Snapshot;->c:J

    .line 5
    iput-object p5, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Snapshot;->d:[Ljava/io/InputStream;

    .line 6
    iput-object p6, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Snapshot;->e:[J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;[JLcom/cloud/hisavana/net/disklrucache/DiskLruCache$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Snapshot;-><init>(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;[J)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    iget-object p0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Snapshot;->d:[Ljava/io/InputStream;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/cloud/hisavana/net/disklrucache/utils/DiskLruCacheUtil;->b(Ljava/io/Closeable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
