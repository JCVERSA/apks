.class public abstract Lcom/transsion/compressor/image/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/compressor/image/d;


# instance fields
.field private a:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract a()Ljava/io/InputStream;
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/compressor/image/c;->a:Ljava/io/InputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    :catch_0
    iput-object v1, p0, Lcom/transsion/compressor/image/c;->a:Ljava/io/InputStream;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    iput-object v1, p0, Lcom/transsion/compressor/image/c;->a:Ljava/io/InputStream;

    .line 14
    .line 15
    throw v0

    .line 16
    :cond_0
    :goto_0
    return-void
.end method

.method public open()Ljava/io/InputStream;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/compressor/image/c;->close()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/compressor/image/c;->a()Ljava/io/InputStream;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/transsion/compressor/image/c;->a:Ljava/io/InputStream;

    .line 9
    .line 10
    return-object v0
.end method
