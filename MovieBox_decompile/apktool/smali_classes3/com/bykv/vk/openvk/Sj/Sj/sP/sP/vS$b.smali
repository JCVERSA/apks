.class final Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS$b;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS$b;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/net/Socket;

    .line 3
    .line 4
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS$b;->a:Ljava/lang/String;

    .line 5
    .line 6
    iget v3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS$b;->b:I

    .line 7
    .line 8
    invoke-direct {v1, v2, v3}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    .line 10
    .line 11
    const/16 v0, 0x7d0

    .line 12
    .line 13
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v2, "Ping\n"

    .line 21
    .line 22
    sget-object v3, Lh6/a;->b:Ljava/nio/charset/Charset;

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 32
    .line 33
    .line 34
    new-instance v0, Ljava/io/BufferedReader;

    .line 35
    .line 36
    new-instance v2, Ljava/io/InputStreamReader;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string v2, "OK"

    .line 53
    .line 54
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    .line 62
    invoke-static {v1}, Lh6/a;->q(Ljava/net/Socket;)V

    .line 63
    .line 64
    .line 65
    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    goto :goto_1

    .line 68
    :cond_0
    :goto_0
    invoke-static {v1}, Lh6/a;->q(Ljava/net/Socket;)V

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :catchall_1
    move-exception v1

    .line 73
    move-object v4, v1

    .line 74
    move-object v1, v0

    .line 75
    move-object v0, v4

    .line 76
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    const-string v2, "ping error"

    .line 80
    .line 81
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {v2, v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->l(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :goto_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 90
    .line 91
    return-object v0

    .line 92
    :catchall_2
    move-exception v0

    .line 93
    invoke-static {v1}, Lh6/a;->q(Ljava/net/Socket;)V

    .line 94
    .line 95
    .line 96
    throw v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS$b;->a()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
