.class public final Lcom/transsion/publish/PublishManager$d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/compressor/image/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/publish/PublishManager;->disposeImage(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/publish/api/bean/MediaImageEntity;

.field final synthetic b:Lcom/transsion/publish/PublishManager;

.field final synthetic c:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/transsion/publish/api/bean/MediaImageEntity;Lcom/transsion/publish/PublishManager;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/publish/PublishManager$d;->a:Lcom/transsion/publish/api/bean/MediaImageEntity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/publish/PublishManager$d;->b:Lcom/transsion/publish/PublishManager;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/publish/PublishManager$d;->c:Ljava/util/List;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "path"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Ljava/io/File;[IJ)V
    .locals 7

    .line 1
    const-string v0, "file"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "ints"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "TranCompressor success...file "

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    const/4 v5, 0x4

    .line 31
    const/4 v6, 0x0

    .line 32
    const-string v2, "TNPublish"

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/transsion/publish/PublishManager$d;->a:Lcom/transsion/publish/api/bean/MediaImageEntity;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const-string v1, "getAbsolutePath(...)"

    .line 45
    .line 46
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1}, Lcom/transsion/publish/api/bean/MediaImageEntity;->setUrl(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/transsion/publish/PublishManager$d;->a:Lcom/transsion/publish/api/bean/MediaImageEntity;

    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    aget v0, p2, v0

    .line 56
    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p1, v0}, Lcom/transsion/publish/api/bean/MediaImageEntity;->setWidth(Ljava/lang/Integer;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/transsion/publish/PublishManager$d;->a:Lcom/transsion/publish/api/bean/MediaImageEntity;

    .line 65
    .line 66
    const/4 v0, 0x1

    .line 67
    aget p2, p2, v0

    .line 68
    .line 69
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-virtual {p1, p2}, Lcom/transsion/publish/api/bean/MediaImageEntity;->setHeight(Ljava/lang/Integer;)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/transsion/publish/PublishManager$d;->a:Lcom/transsion/publish/api/bean/MediaImageEntity;

    .line 77
    .line 78
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {p1, p2}, Lcom/transsion/publish/api/bean/MediaImageEntity;->setSize(Ljava/lang/Long;)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lcom/transsion/publish/PublishManager$d;->b:Lcom/transsion/publish/PublishManager;

    .line 86
    .line 87
    iget-object p2, p0, Lcom/transsion/publish/PublishManager$d;->a:Lcom/transsion/publish/api/bean/MediaImageEntity;

    .line 88
    .line 89
    iget-object p3, p0, Lcom/transsion/publish/PublishManager$d;->c:Ljava/util/List;

    .line 90
    .line 91
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 92
    .line 93
    .line 94
    move-result p3

    .line 95
    invoke-static {p1, p2, p3}, Lcom/transsion/publish/PublishManager;->access$check(Lcom/transsion/publish/PublishManager;Lcom/transsion/publish/api/bean/MediaImageEntity;I)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/transsion/publish/PublishManager$d;->b:Lcom/transsion/publish/PublishManager;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/publish/PublishManager$d;->a:Lcom/transsion/publish/api/bean/MediaImageEntity;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/publish/PublishManager$d;->c:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {p1, v0, v1}, Lcom/transsion/publish/PublishManager;->access$check(Lcom/transsion/publish/PublishManager;Lcom/transsion/publish/api/bean/MediaImageEntity;I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
