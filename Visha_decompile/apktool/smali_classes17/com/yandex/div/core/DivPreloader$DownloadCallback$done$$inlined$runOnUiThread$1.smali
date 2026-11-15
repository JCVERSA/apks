.class public final Lcom/yandex/div/core/DivPreloader$DownloadCallback$done$$inlined$runOnUiThread$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/DivPreloader$DownloadCallback;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\u0004\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lzfb;",
        "run",
        "()V",
        "com/yandex/div/core/DivPreloader$DownloadCallback$runOnUiThread$$inlined$executeOnMainThread$1",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yandex/div/core/DivPreloader$DownloadCallback;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/DivPreloader$DownloadCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/DivPreloader$DownloadCallback$done$$inlined$runOnUiThread$1;->this$0:Lcom/yandex/div/core/DivPreloader$DownloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/div/core/DivPreloader$DownloadCallback$done$$inlined$runOnUiThread$1;->this$0:Lcom/yandex/div/core/DivPreloader$DownloadCallback;

    invoke-static {v0}, Lcom/yandex/div/core/DivPreloader$DownloadCallback;->f(Lcom/yandex/div/core/DivPreloader$DownloadCallback;)I

    move-result v0

    iget-object v1, p0, Lcom/yandex/div/core/DivPreloader$DownloadCallback$done$$inlined$runOnUiThread$1;->this$0:Lcom/yandex/div/core/DivPreloader$DownloadCallback;

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v0}, Lcom/yandex/div/core/DivPreloader$DownloadCallback;->i(Lcom/yandex/div/core/DivPreloader$DownloadCallback;I)V

    iget-object v0, p0, Lcom/yandex/div/core/DivPreloader$DownloadCallback$done$$inlined$runOnUiThread$1;->this$0:Lcom/yandex/div/core/DivPreloader$DownloadCallback;

    invoke-static {v0}, Lcom/yandex/div/core/DivPreloader$DownloadCallback;->f(Lcom/yandex/div/core/DivPreloader$DownloadCallback;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/div/core/DivPreloader$DownloadCallback$done$$inlined$runOnUiThread$1;->this$0:Lcom/yandex/div/core/DivPreloader$DownloadCallback;

    invoke-static {v0}, Lcom/yandex/div/core/DivPreloader$DownloadCallback;->h(Lcom/yandex/div/core/DivPreloader$DownloadCallback;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yandex/div/core/DivPreloader$DownloadCallback$done$$inlined$runOnUiThread$1;->this$0:Lcom/yandex/div/core/DivPreloader$DownloadCallback;

    invoke-static {v0}, Lcom/yandex/div/core/DivPreloader$DownloadCallback;->e(Lcom/yandex/div/core/DivPreloader$DownloadCallback;)Lcom/yandex/div/core/DivPreloader$a;

    move-result-object v0

    iget-object p0, p0, Lcom/yandex/div/core/DivPreloader$DownloadCallback$done$$inlined$runOnUiThread$1;->this$0:Lcom/yandex/div/core/DivPreloader$DownloadCallback;

    invoke-static {p0}, Lcom/yandex/div/core/DivPreloader$DownloadCallback;->g(Lcom/yandex/div/core/DivPreloader$DownloadCallback;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0, p0}, Lcom/yandex/div/core/DivPreloader$a;->a(Z)V

    :cond_1
    return-void
.end method
