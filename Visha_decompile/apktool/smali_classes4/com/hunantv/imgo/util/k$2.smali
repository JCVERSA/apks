.class final Lcom/hunantv/imgo/util/k$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/imgo/util/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/imgo/util/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/util/k$2;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/hunantv/imgo/util/k$2;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/hunantv/imgo/util/k$2;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/hunantv/imgo/util/k$2;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    const-string v0, "UTF-8"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vcode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/imgo/util/k$2;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&jump="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/imgo/util/k$2;->b:Ljava/lang/String;

    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&from="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/imgo/util/k$2;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    move-object v5, v0

    goto :goto_1

    :catchall_0
    const-string v0, ""

    goto :goto_0

    :goto_1
    new-instance v0, Lcom/hunantv/imgo/a/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hunantv/imgo/a/e;-><init>(Landroid/content/Context;)V

    new-instance v7, Lcom/hunantv/imgo/data/EventClickData;

    invoke-static {}, Lcom/hunantv/imgo/util/u;->a()Ljava/lang/String;

    move-result-object v2

    const-string v4, "1"

    iget-object v6, p0, Lcom/hunantv/imgo/util/k$2;->d:Ljava/lang/String;

    const-string v3, "downdiver"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/hunantv/imgo/data/EventClickData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/imgo/util/k$2;->a:Ljava/lang/String;

    invoke-virtual {v7, p0}, Lcom/hunantv/imgo/data/EventClickData;->setCpid(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/hunantv/imgo/a/e;->a(Lcom/hunantv/imgo/data/EventClickData;)V

    return-void
.end method
