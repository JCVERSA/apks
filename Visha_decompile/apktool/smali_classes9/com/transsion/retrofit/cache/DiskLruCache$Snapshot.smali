.class public final Lcom/transsion/retrofit/cache/DiskLruCache$Snapshot;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/retrofit/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Snapshot"
.end annotation


# instance fields
.field private final ins:[Ljava/io/InputStream;

.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private final sequenceNumber:J

.field final synthetic this$0:Lcom/transsion/retrofit/cache/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/transsion/retrofit/cache/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;[J)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/transsion/retrofit/cache/DiskLruCache$Snapshot;->this$0:Lcom/transsion/retrofit/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/transsion/retrofit/cache/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lcom/transsion/retrofit/cache/DiskLruCache$Snapshot;->sequenceNumber:J

    .line 5
    iput-object p5, p0, Lcom/transsion/retrofit/cache/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    .line 6
    iput-object p6, p0, Lcom/transsion/retrofit/cache/DiskLruCache$Snapshot;->lengths:[J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/retrofit/cache/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;[JLgc2;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/transsion/retrofit/cache/DiskLruCache$Snapshot;-><init>(Lcom/transsion/retrofit/cache/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;[J)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    iget-object p0, p0, Lcom/transsion/retrofit/cache/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/transsion/retrofit/cache/Util;->closeQuietly(Ljava/io/Closeable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public edit()Lcom/transsion/retrofit/cache/DiskLruCache$Editor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/retrofit/cache/DiskLruCache$Snapshot;->this$0:Lcom/transsion/retrofit/cache/DiskLruCache;

    iget-object v1, p0, Lcom/transsion/retrofit/cache/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    iget-wide v2, p0, Lcom/transsion/retrofit/cache/DiskLruCache$Snapshot;->sequenceNumber:J

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/retrofit/cache/DiskLruCache;->h(Lcom/transsion/retrofit/cache/DiskLruCache;Ljava/lang/String;J)Lcom/transsion/retrofit/cache/DiskLruCache$Editor;

    move-result-object p0

    return-object p0
.end method

.method public getInputStream(I)Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lcom/transsion/retrofit/cache/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getLength(I)J
    .locals 0

    iget-object p0, p0, Lcom/transsion/retrofit/cache/DiskLruCache$Snapshot;->lengths:[J

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/transsion/retrofit/cache/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/retrofit/cache/DiskLruCache;->E(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
