.class public Lcom/cloud/hisavana/sdk/l$a;
.super Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/l;->r(Ldnd;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/l$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field public final synthetic c:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic d:Ldnd;

.field public final synthetic e:Lcom/cloud/hisavana/sdk/l$e;

.field public final synthetic f:Lcom/cloud/hisavana/sdk/l;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/l;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/util/concurrent/atomic/AtomicInteger;Ldnd;Lcom/cloud/hisavana/sdk/l$e;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/l$a;->f:Lcom/cloud/hisavana/sdk/l;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/l$a;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/l$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p4, p0, Lcom/cloud/hisavana/sdk/l$a;->d:Ldnd;

    iput-object p5, p0, Lcom/cloud/hisavana/sdk/l$a;->e:Lcom/cloud/hisavana/sdk/l$e;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 3

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "template html download failed, fallback to normal ad. error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "null"

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OfflineDownload"

    invoke-virtual {v0, v1, p1}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/l$a;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setTemplateHtmlFilePath(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/l$a;->f:Lcom/cloud/hisavana/sdk/l;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/l$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/l$a;->d:Ldnd;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/l$a;->e:Lcom/cloud/hisavana/sdk/l$e;

    invoke-static {p1, v0, v1, p0}, Lcom/cloud/hisavana/sdk/l;->d(Lcom/cloud/hisavana/sdk/l;Ljava/util/concurrent/atomic/AtomicInteger;Ldnd;Lcom/cloud/hisavana/sdk/l$e;)V

    return-void
.end method

.method public g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getFilePath()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/l$a;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p2, p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setTemplateHtmlFilePath(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/l$a;->f:Lcom/cloud/hisavana/sdk/l;

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/l$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/l$a;->d:Ldnd;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/l$a;->e:Lcom/cloud/hisavana/sdk/l$e;

    invoke-static {p1, p2, v0, p0}, Lcom/cloud/hisavana/sdk/l;->d(Lcom/cloud/hisavana/sdk/l;Ljava/util/concurrent/atomic/AtomicInteger;Ldnd;Lcom/cloud/hisavana/sdk/l$e;)V

    return-void
.end method
