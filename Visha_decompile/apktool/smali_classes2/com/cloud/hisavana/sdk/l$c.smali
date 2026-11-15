.class public Lcom/cloud/hisavana/sdk/l$c;
.super Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/l;->e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;IZLdnd;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/l$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic e:Ldnd;

.field public final synthetic f:Lcom/cloud/hisavana/sdk/l$e;

.field public final synthetic g:Lcom/cloud/hisavana/sdk/l;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/l;ZLjava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ldnd;Lcom/cloud/hisavana/sdk/l$e;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/l$c;->g:Lcom/cloud/hisavana/sdk/l;

    iput-boolean p2, p0, Lcom/cloud/hisavana/sdk/l$c;->b:Z

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/l$c;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/cloud/hisavana/sdk/l$c;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p5, p0, Lcom/cloud/hisavana/sdk/l$c;->e:Ldnd;

    iput-object p6, p0, Lcom/cloud/hisavana/sdk/l$c;->f:Lcom/cloud/hisavana/sdk/l$e;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 2

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/l$c;->g:Lcom/cloud/hisavana/sdk/l;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/l$c;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/l$c;->e:Ldnd;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/l$c;->f:Lcom/cloud/hisavana/sdk/l$e;

    invoke-static {p1, v0, v1, p0}, Lcom/cloud/hisavana/sdk/l;->d(Lcom/cloud/hisavana/sdk/l;Ljava/util/concurrent/atomic/AtomicInteger;Ldnd;Lcom/cloud/hisavana/sdk/l$e;)V

    return-void
.end method

.method public g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 1

    iget-boolean p1, p0, Lcom/cloud/hisavana/sdk/l$c;->b:Z

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/l$c;->g:Lcom/cloud/hisavana/sdk/l;

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getFilePath()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/l$c;->c:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/cloud/hisavana/sdk/l;->c(Lcom/cloud/hisavana/sdk/l;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/l$c;->g:Lcom/cloud/hisavana/sdk/l;

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/l$c;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/l$c;->e:Ldnd;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/l$c;->f:Lcom/cloud/hisavana/sdk/l$e;

    invoke-static {p1, p2, v0, p0}, Lcom/cloud/hisavana/sdk/l;->d(Lcom/cloud/hisavana/sdk/l;Ljava/util/concurrent/atomic/AtomicInteger;Ldnd;Lcom/cloud/hisavana/sdk/l$e;)V

    return-void
.end method
