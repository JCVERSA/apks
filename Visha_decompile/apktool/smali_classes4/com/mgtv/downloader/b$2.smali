.class Lcom/mgtv/downloader/b$2;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/downloader/b;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/downloader/b;


# direct methods
.method public constructor <init>(Lcom/mgtv/downloader/b;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/downloader/b$2;->a:Lcom/mgtv/downloader/b;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/mgtv/downloader/util/d;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mgtv/downloader/b;->a()Lcom/mgtv/downloader/b;

    move-result-object v0

    const/16 v1, 0x8

    const-string v2, "\u524d\u53f0"

    invoke-virtual {v0, v1, v2}, Lcom/mgtv/downloader/b;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/mgtv/downloader/b;->a()Lcom/mgtv/downloader/b;

    move-result-object v0

    const/4 v1, 0x7

    const-string v2, "\u540e\u53f0"

    invoke-virtual {v0, v1, v2}, Lcom/mgtv/downloader/b;->a(ILjava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/mgtv/downloader/util/d;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mgtv/downloader/b;->a()Lcom/mgtv/downloader/b;

    move-result-object v0

    const/16 v1, 0xd

    const-string v2, "\u4eae\u5c4f"

    invoke-virtual {v0, v1, v2}, Lcom/mgtv/downloader/b;->a(ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/mgtv/downloader/b;->a()Lcom/mgtv/downloader/b;

    move-result-object v0

    const/16 v1, 0xe

    const-string v2, "\u606f\u5c4f"

    invoke-virtual {v0, v1, v2}, Lcom/mgtv/downloader/b;->a(ILjava/lang/String;)V

    :goto_1
    iget-object p0, p0, Lcom/mgtv/downloader/b$2;->a:Lcom/mgtv/downloader/b;

    invoke-static {p0}, Lcom/mgtv/downloader/b;->a(Lcom/mgtv/downloader/b;)V

    return-void
.end method
