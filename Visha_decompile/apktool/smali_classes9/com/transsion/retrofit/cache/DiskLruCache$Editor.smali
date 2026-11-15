.class public final Lcom/transsion/retrofit/cache/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/retrofit/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/retrofit/cache/DiskLruCache$Editor$FaultHidingOutputStream;
    }
.end annotation


# instance fields
.field private committed:Z

.field private final entry:Lcom/transsion/retrofit/cache/DiskLruCache$Entry;

.field private hasErrors:Z

.field final synthetic this$0:Lcom/transsion/retrofit/cache/DiskLruCache;

.field private final written:[Z


# direct methods
.method private constructor <init>(Lcom/transsion/retrofit/cache/DiskLruCache;Lcom/transsion/retrofit/cache/DiskLruCache$Entry;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/transsion/retrofit/cache/DiskLruCache$Editor;->this$0:Lcom/transsion/retrofit/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/transsion/retrofit/cache/DiskLruCache$Editor;->entry:Lcom/transsion/retrofit/cache/DiskLruCache$Entry;

    .line 4
    invoke-static {p2}, Lcom/transsion/retrofit/cache/DiskLruCache$Entry;->d(Lcom/transsion/retrofit/cache/DiskLruCache$Entry;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/transsion/retrofit/cache/DiskLruCache;->d(Lcom/transsion/retrofit/cache/DiskLruCache;)I

    move-result p1

    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, Lcom/transsion/retrofit/cache/DiskLruCache$Editor;->written:[Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/retrofit/cache/DiskLruCache;Lcom/transsion/retrofit/cache/DiskLruCache$Entry;Lgc2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/retrofit/cache/DiskLruCache$Editor;-><init>(Lcom/transsion/retrofit/cache/DiskLruCache;Lcom/transsion/retrofit/cache/DiskLruCache$Entry;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/retrofit/cache/DiskLruCache$Editor;)Lcom/transsion/retrofit/cache/DiskLruCache$Entry;
    .locals 0

    iget-object p0, p0, Lcom/transsion/retrofit/cache/DiskLruCache$Editor;->entry:Lcom/transsion/retrofit/cache/DiskLruCache$Entry;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/transsion/retrofit/cache/DiskLruCache$Editor;)[Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/retrofit/cache/DiskLruCache$Editor;->written:[Z

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/retrofit/cache/DiskLruCache$Editor;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/retrofit/cache/DiskLruCache$Editor;->hasErrors:Z

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/retrofit/cache/DiskLruCache$Editor;->this$0:Lcom/transsion/retrofit/cache/DiskLruCache;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/transsion/retrofit/cache/DiskLruCache;->g(Lcom/transsion/retrofit/cache/DiskLruCache;Lcom/transsion/retrofit/cache/DiskLruCache$Editor;Z)V

    return-void
.end method

.method public abortUnlessCommitted()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/retrofit/cache/DiskLruCache$Editor;->committed:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/retrofit/cache/DiskLruCache$Editor;->abort()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public commit()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/transsion/retrofit/cache/DiskLruCache$Editor;->hasErrors:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/retrofit/cache/DiskLruCache$Editor;->this$0:Lcom/transsion/retrofit/cache/DiskLruCache;

    const/4 v2, 0x0

    invoke-static {v0, p0, v2}, Lcom/transsion/retrofit/cache/DiskLruCache;->g(Lcom/transsion/retrofit/cache/DiskLruCache;Lcom/transsion/retrofit/cache/DiskLruCache$Editor;Z)V

    iget-object v0, p0, Lcom/transsion/retrofit/cache/DiskLruCache$Editor;->this$0:Lcom/transsion/retrofit/cache/DiskLruCache;

    iget-object v2, p0, Lcom/transsion/retrofit/cache/DiskLruCache$Editor;->entry:Lcom/transsion/retrofit/cache/DiskLruCache$Entry;

    invoke-static {v2}, Lcom/transsion/retrofit/cache/DiskLruCache$Entry;->b(Lcom/transsion/retrofit/cache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/retrofit/cache/DiskLruCache;->remove(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/retrofit/cache/DiskLruCache$Editor;->this$0:Lcom/transsion/retrofit/cache/DiskLruCache;

    invoke-static {v0, p0, v1}, Lcom/transsion/retrofit/cache/DiskLruCache;->g(Lcom/transsion/retrofit/cache/DiskLruCache;Lcom/transsion/retrofit/cache/DiskLruCache$Editor;Z)V

    :goto_0
    iput-boolean v1, p0, Lcom/transsion/retrofit/cache/DiskLruCache$Editor;->committed:Z

    return-void
.end method

.method public getString(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/transsion/retrofit/cache/DiskLruCache$Editor;->newInputStream(I)Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/transsion/retrofit/cache/DiskLruCache;->E(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public newInputStream(I)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/retrofit/cache/DiskLruCache$Editor;->this$0:Lcom/transsion/retrofit/cache/DiskLruCache;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/retrofit/cache/DiskLruCache$Editor;->entry:Lcom/transsion/retrofit/cache/DiskLruCache$Entry;

    invoke-static {v1}, Lcom/transsion/retrofit/cache/DiskLruCache$Entry;->a(Lcom/transsion/retrofit/cache/DiskLruCache$Entry;)Lcom/transsion/retrofit/cache/DiskLruCache$Editor;

    move-result-object v1

    if-ne v1, p0, :cond_1

    iget-object v1, p0, Lcom/transsion/retrofit/cache/DiskLruCache$Editor;->entry:Lcom/transsion/retrofit/cache/DiskLruCache$Entry;

    invoke-static {v1}, Lcom/transsion/retrofit/cache/DiskLruCache$Entry;->d(Lcom/transsion/retrofit/cache/DiskLruCache$Entry;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    iget-object p0, p0, Lcom/transsion/retrofit/cache/DiskLruCache$Editor;->entry:Lcom/transsion/retrofit/cache/DiskLruCache$Entry;

    invoke-virtual {p0, p1}, Lcom/transsion/retrofit/cache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v1

    :catch_0
    monitor-exit v0

    return-object v2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public newOutputStream(I)Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/transsion/retrofit/cache/DiskLruCache$Editor;->this$0:Lcom/transsion/retrofit/cache/DiskLruCache;

    invoke-static {v0}, Lcom/transsion/retrofit/cache/DiskLruCache;->d(Lcom/transsion/retrofit/cache/DiskLruCache;)I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/transsion/retrofit/cache/DiskLruCache$Editor;->this$0:Lcom/transsion/retrofit/cache/DiskLruCache;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/retrofit/cache/DiskLruCache$Editor;->entry:Lcom/transsion/retrofit/cache/DiskLruCache$Entry;

    invoke-static {v1}, Lcom/transsion/retrofit/cache/DiskLruCache$Entry;->a(Lcom/transsion/retrofit/cache/DiskLruCache$Entry;)Lcom/transsion/retrofit/cache/DiskLruCache$Editor;

    move-result-object v1

    if-ne v1, p0, :cond_1

    iget-object v1, p0, Lcom/transsion/retrofit/cache/DiskLruCache$Editor;->entry:Lcom/transsion/retrofit/cache/DiskLruCache$Entry;

    invoke-static {v1}, Lcom/transsion/retrofit/cache/DiskLruCache$Entry;->d(Lcom/transsion/retrofit/cache/DiskLruCache$Entry;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/transsion/retrofit/cache/DiskLruCache$Editor;->written:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/transsion/retrofit/cache/DiskLruCache$Editor;->entry:Lcom/transsion/retrofit/cache/DiskLruCache$Entry;

    invoke-virtual {v1, p1}, Lcom/transsion/retrofit/cache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    iget-object v1, p0, Lcom/transsion/retrofit/cache/DiskLruCache$Editor;->this$0:Lcom/transsion/retrofit/cache/DiskLruCache;

    invoke-static {v1}, Lcom/transsion/retrofit/cache/DiskLruCache;->a(Lcom/transsion/retrofit/cache/DiskLruCache;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    new-instance p1, Lcom/transsion/retrofit/cache/DiskLruCache$Editor$FaultHidingOutputStream;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v1, v2}, Lcom/transsion/retrofit/cache/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/transsion/retrofit/cache/DiskLruCache$Editor;Ljava/io/OutputStream;Lgc2;)V

    monitor-exit v0

    return-object p1

    :catch_1
    invoke-static {}, Lcom/transsion/retrofit/cache/DiskLruCache;->D()Ljava/io/OutputStream;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to be greater than 0 and less than the maximum value count of "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/retrofit/cache/DiskLruCache$Editor;->this$0:Lcom/transsion/retrofit/cache/DiskLruCache;

    invoke-static {p0}, Lcom/transsion/retrofit/cache/DiskLruCache;->d(Lcom/transsion/retrofit/cache/DiskLruCache;)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, p1}, Lcom/transsion/retrofit/cache/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object p0

    sget-object p1, Lcom/transsion/retrofit/cache/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lcom/transsion/retrofit/cache/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    invoke-static {v0}, Lcom/transsion/retrofit/cache/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method
