.class public Lzr6;
.super Ljava/io/OutputStream;
.source "SourceFile"


# static fields
.field public static final d:Ljava/lang/String; = "zr6"


# instance fields
.field public b:Lby0;

.field public c:Ljava/io/BufferedOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lby0;Ljava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const-string p1, "com.mq.mgmi.client.message.internal.nls.logcat"

    sget-object v0, Lzr6;->d:Ljava/lang/String;

    invoke-static {p1, v0}, Lw7d;->a(Ljava/lang/String;Ljava/lang/String;)Lg6d;

    new-instance p1, Ljava/io/BufferedOutputStream;

    invoke-direct {p1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lzr6;->c:Ljava/io/BufferedOutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lzr6;->c:Ljava/io/BufferedOutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 0

    iget-object p0, p0, Lzr6;->c:Ljava/io/BufferedOutputStream;

    invoke-virtual {p0}, Ljava/io/BufferedOutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lzr6;->c:Ljava/io/BufferedOutputStream;

    invoke-virtual {p0, p1}, Ljava/io/BufferedOutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 1

    .line 2
    iget-object v0, p0, Lzr6;->c:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    iget-object p0, p0, Lzr6;->b:Lby0;

    array-length p1, p1

    invoke-virtual {p0, p1}, Lby0;->c(I)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 3
    iget-object v0, p0, Lzr6;->c:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/BufferedOutputStream;->write([BII)V

    iget-object p0, p0, Lzr6;->b:Lby0;

    invoke-virtual {p0, p3}, Lby0;->c(I)V

    return-void
.end method
