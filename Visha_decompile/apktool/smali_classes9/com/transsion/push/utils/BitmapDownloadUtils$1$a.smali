.class public Lcom/transsion/push/utils/BitmapDownloadUtils$1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/push/utils/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/push/utils/BitmapDownloadUtils$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/push/utils/BitmapDownloadUtils$1;


# direct methods
.method public constructor <init>(Lcom/transsion/push/utils/BitmapDownloadUtils$1;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/push/utils/BitmapDownloadUtils$1$a;->a:Lcom/transsion/push/utils/BitmapDownloadUtils$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/HashMap;)V
    .locals 2

    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "images download complete"

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/push/utils/BitmapDownloadUtils$1$a;->a:Lcom/transsion/push/utils/BitmapDownloadUtils$1;

    iget-object v0, p0, Lcom/transsion/push/utils/BitmapDownloadUtils$1;->val$listener:Lcom/transsion/push/utils/BitmapDownloadUtils$a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/push/utils/BitmapDownloadUtils$1;->val$message:Lcom/transsion/push/bean/PushMessage;

    invoke-interface {v0, p0, p1}, Lcom/transsion/push/utils/BitmapDownloadUtils$a;->a(Lcom/transsion/push/bean/PushMessage;Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method
