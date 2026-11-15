.class public Lorg/apache/tools/ant/util/q;
.super Ljava/io/OutputStream;
.source "source.java"


# instance fields
.field private a:Ljava/io/OutputStream;

.field private b:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/tools/ant/util/q;->a:Ljava/io/OutputStream;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/apache/tools/ant/util/q;->b:Ljava/io/OutputStream;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/util/q;->a:Ljava/io/OutputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/tools/ant/util/q;->b:Ljava/io/OutputStream;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    iget-object v1, p0, Lorg/apache/tools/ant/util/q;->b:Ljava/io/OutputStream;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method public flush()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/util/q;->a:Ljava/io/OutputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/tools/ant/util/q;->b:Ljava/io/OutputStream;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public write(I)V
    .locals 1

    .line 5
    iget-object v0, p0, Lorg/apache/tools/ant/util/q;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 6
    iget-object v0, p0, Lorg/apache/tools/ant/util/q;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/util/q;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 2
    iget-object v0, p0, Lorg/apache/tools/ant/util/q;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/apache/tools/ant/util/q;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 4
    iget-object v0, p0, Lorg/apache/tools/ant/util/q;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
