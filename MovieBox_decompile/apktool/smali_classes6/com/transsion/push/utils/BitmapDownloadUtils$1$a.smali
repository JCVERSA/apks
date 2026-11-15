.class Lcom/transsion/push/utils/BitmapDownloadUtils$1$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/push/utils/n$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/push/utils/BitmapDownloadUtils$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/push/utils/BitmapDownloadUtils$1;


# direct methods
.method constructor <init>(Lcom/transsion/push/utils/BitmapDownloadUtils$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/utils/BitmapDownloadUtils$1$a;->a:Lcom/transsion/push/utils/BitmapDownloadUtils$1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/util/HashMap;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 2
    .line 3
    const-string v1, "images download complete"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/transsion/push/utils/BitmapDownloadUtils$1$a;->a:Lcom/transsion/push/utils/BitmapDownloadUtils$1;

    .line 9
    .line 10
    iget-object v1, v0, Lcom/transsion/push/utils/BitmapDownloadUtils$1;->val$listener:Lcom/transsion/push/utils/BitmapDownloadUtils$a;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v0, v0, Lcom/transsion/push/utils/BitmapDownloadUtils$1;->val$message:Lcom/transsion/push/bean/PushMessage;

    .line 15
    .line 16
    invoke-interface {v1, v0, p1}, Lcom/transsion/push/utils/BitmapDownloadUtils$a;->a(Lcom/transsion/push/bean/PushMessage;Ljava/util/HashMap;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
