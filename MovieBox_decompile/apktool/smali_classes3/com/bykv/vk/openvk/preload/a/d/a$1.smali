.class final Lcom/bykv/vk/openvk/preload/a/d/a$1;
.super Lcom/bykv/vk/openvk/preload/a/b/e;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/preload/a/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/b/e;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Lcom/bykv/vk/openvk/preload/a/d/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/bykv/vk/openvk/preload/a/b/a/e;

    .line 2
    .line 3
    if-nez v0, :cond_4

    .line 4
    .line 5
    iget v0, p1, Lcom/bykv/vk/openvk/preload/a/d/a;->a:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/a/d/a;->q()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    :cond_0
    const/16 v1, 0xd

    .line 14
    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    const/16 v0, 0x9

    .line 18
    .line 19
    iput v0, p1, Lcom/bykv/vk/openvk/preload/a/d/a;->a:I

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    const/16 v1, 0xc

    .line 23
    .line 24
    if-ne v0, v1, :cond_2

    .line 25
    .line 26
    const/16 v0, 0x8

    .line 27
    .line 28
    iput v0, p1, Lcom/bykv/vk/openvk/preload/a/d/a;->a:I

    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    const/16 v1, 0xe

    .line 32
    .line 33
    if-ne v0, v1, :cond_3

    .line 34
    .line 35
    const/16 v0, 0xa

    .line 36
    .line 37
    iput v0, p1, Lcom/bykv/vk/openvk/preload/a/d/a;->a:I

    .line 38
    .line 39
    return-void

    .line 40
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v2, "Expected a name but was "

    .line 45
    .line 46
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/a/d/a;->f()Lcom/bykv/vk/openvk/preload/a/d/b;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/a/d/a;->r()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v0

    .line 71
    :cond_4
    const/4 p1, 0x0

    .line 72
    throw p1
.end method
