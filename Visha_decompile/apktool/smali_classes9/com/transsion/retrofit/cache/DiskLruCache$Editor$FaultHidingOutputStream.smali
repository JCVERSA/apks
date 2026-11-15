.class Lcom/transsion/retrofit/cache/DiskLruCache$Editor$FaultHidingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/retrofit/cache/DiskLruCache$Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FaultHidingOutputStream"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/retrofit/cache/DiskLruCache$Editor;


# direct methods
.method private constructor <init>(Lcom/transsion/retrofit/cache/DiskLruCache$Editor;Ljava/io/OutputStream;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/transsion/retrofit/cache/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/transsion/retrofit/cache/DiskLruCache$Editor;

    .line 3
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/retrofit/cache/DiskLruCache$Editor;Ljava/io/OutputStream;Lgc2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/retrofit/cache/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/transsion/retrofit/cache/DiskLruCache$Editor;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p0, p0, Lcom/transsion/retrofit/cache/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/transsion/retrofit/cache/DiskLruCache$Editor;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/transsion/retrofit/cache/DiskLruCache$Editor;->c(Lcom/transsion/retrofit/cache/DiskLruCache$Editor;Z)V

    :goto_0
    return-void
.end method

.method public flush()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p0, p0, Lcom/transsion/retrofit/cache/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/transsion/retrofit/cache/DiskLruCache$Editor;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/transsion/retrofit/cache/DiskLruCache$Editor;->c(Lcom/transsion/retrofit/cache/DiskLruCache$Editor;Z)V

    :goto_0
    return-void
.end method

.method public write(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    iget-object p0, p0, Lcom/transsion/retrofit/cache/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/transsion/retrofit/cache/DiskLruCache$Editor;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/retrofit/cache/DiskLruCache$Editor;->c(Lcom/transsion/retrofit/cache/DiskLruCache$Editor;Z)V

    :goto_0
    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 3
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    iget-object p0, p0, Lcom/transsion/retrofit/cache/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/transsion/retrofit/cache/DiskLruCache$Editor;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/retrofit/cache/DiskLruCache$Editor;->c(Lcom/transsion/retrofit/cache/DiskLruCache$Editor;Z)V

    :goto_0
    return-void
.end method
