.class public final Lcom/cloud/hisavana/sdk/k0$c;
.super Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/k0;->f(Ljava/lang/String;Ldnd;Ljava/util/concurrent/atomic/AtomicInteger;Lc74;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ldnd;

.field public final synthetic f:Lc74;

.field public final synthetic g:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;Ldnd;Lc74;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/k0$c;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/k0$c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/k0$c;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/cloud/hisavana/sdk/k0$c;->e:Ldnd;

    iput-object p5, p0, Lcom/cloud/hisavana/sdk/k0$c;->f:Lc74;

    iput-object p6, p0, Lcom/cloud/hisavana/sdk/k0$c;->g:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 3

    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request error\uff0cURL---\u300b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/k0$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultMaterialManager"

    invoke-virtual {p1, v1, v0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/k0$c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    sget-object p1, Lcom/cloud/hisavana/sdk/k0;->a:Lcom/cloud/hisavana/sdk/k0;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/k0$c;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/k0$c;->e:Ldnd;

    invoke-virtual {v1}, Ldnd;->c()Ldnd;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/k0$c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/k0$c;->f:Lc74;

    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/cloud/hisavana/sdk/k0;->f(Ljava/lang/String;Ldnd;Ljava/util/concurrent/atomic/AtomicInteger;Lc74;)V

    return-void
.end method

.method public g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 7

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/k0$c;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/k0$c;->g:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/k0$c;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/k0$c;->e:Ldnd;

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/k0$c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/k0$c;->f:Lc74;

    invoke-static {}, Likd;->b()Likd;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "request success\uff0cmain url is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", filepath ----\u300b"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v5, "DefaultMaterialManager"

    invoke-virtual {v4, v5, p1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/hisavana/sdk/l0;->a:Lcom/cloud/hisavana/sdk/l0;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getAdCreativeId(...)"

    invoke-static {v4, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getCodeSeatId()Ljava/lang/String;

    move-result-object v0

    const-string v5, "getCodeSeatId(...)"

    invoke-static {v0, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getFilePath()Ljava/lang/String;

    move-result-object p2

    const-string v5, "getFilePath(...)"

    invoke-static {p2, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4, v0, p2}, Lcom/cloud/hisavana/sdk/l0;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/hisavana/sdk/k0;->a:Lcom/cloud/hisavana/sdk/k0;

    invoke-virtual {v2}, Ldnd;->c()Ldnd;

    move-result-object p2

    invoke-virtual {p1, v1, p2, v3, p0}, Lcom/cloud/hisavana/sdk/k0;->f(Ljava/lang/String;Ldnd;Ljava/util/concurrent/atomic/AtomicInteger;Lc74;)V

    :cond_0
    return-void
.end method
