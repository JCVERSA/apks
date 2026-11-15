.class public final Lcom/yandex/mobile/ads/impl/hh0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/hh0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private final b:Lcom/yandex/mobile/ads/impl/l42;

.field public c:Ljava/net/Socket;

.field public d:Ljava/lang/String;

.field public e:Lokio/BufferedSource;

.field public f:Lokio/BufferedSink;

.field private g:Lcom/yandex/mobile/ads/impl/hh0$b;

.field private h:Lcom/yandex/mobile/ads/impl/cn1;

.field private i:I


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/l42;)V
    .locals 1

    const-string v0, "taskRunner"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/hh0$a;->a:Z

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/hh0$a;->b:Lcom/yandex/mobile/ads/impl/l42;

    sget-object p1, Lcom/yandex/mobile/ads/impl/hh0$b;->a:Lcom/yandex/mobile/ads/impl/hh0$b$a;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/hh0$a;->g:Lcom/yandex/mobile/ads/impl/hh0$b;

    sget-object p1, Lcom/yandex/mobile/ads/impl/cn1;->a:Lcom/yandex/mobile/ads/impl/cn1;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/hh0$a;->h:Lcom/yandex/mobile/ads/impl/cn1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/hh0$b;)Lcom/yandex/mobile/ads/impl/hh0$a;
    .locals 1

    .line 2
    const-string v0, "listener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/hh0$a;->g:Lcom/yandex/mobile/ads/impl/hh0$b;

    return-object p0
.end method

.method public final a(Ljava/net/Socket;Ljava/lang/String;Lokio/BufferedSource;Lokio/BufferedSink;)Lcom/yandex/mobile/ads/impl/hh0$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    const-string v0, "socket"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "peerName"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/hh0$a;->c:Ljava/net/Socket;

    .line 7
    iget-boolean p1, p0, Lcom/yandex/mobile/ads/impl/hh0$a;->a:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/yandex/mobile/ads/impl/g92;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MockWebServer "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    :goto_0
    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/hh0$a;->d:Ljava/lang/String;

    .line 11
    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/hh0$a;->e:Lokio/BufferedSource;

    .line 13
    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/hh0$a;->f:Lokio/BufferedSink;

    return-object p0
.end method

.method public final a()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/hh0$a;->a:Z

    return p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hh0$a;->d:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "connectionName"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final c()Lcom/yandex/mobile/ads/impl/hh0$b;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hh0$a;->g:Lcom/yandex/mobile/ads/impl/hh0$b;

    return-object p0
.end method

.method public final d()I
    .locals 0

    iget p0, p0, Lcom/yandex/mobile/ads/impl/hh0$a;->i:I

    return p0
.end method

.method public final e()Lcom/yandex/mobile/ads/impl/cn1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hh0$a;->h:Lcom/yandex/mobile/ads/impl/cn1;

    return-object p0
.end method

.method public final f()Lokio/BufferedSink;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hh0$a;->f:Lokio/BufferedSink;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "sink"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final g()Ljava/net/Socket;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hh0$a;->c:Ljava/net/Socket;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "socket"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final h()Lokio/BufferedSource;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hh0$a;->e:Lokio/BufferedSource;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "source"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final i()Lcom/yandex/mobile/ads/impl/l42;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hh0$a;->b:Lcom/yandex/mobile/ads/impl/l42;

    return-object p0
.end method

.method public final j()Lcom/yandex/mobile/ads/impl/hh0$a;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/yandex/mobile/ads/impl/hh0$a;->i:I

    return-object p0
.end method
