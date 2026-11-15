.class public Lutd$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgob$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lutd;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field public final synthetic b:Lutd;


# direct methods
.method public constructor <init>(Lutd;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    iput-object p1, p0, Lutd$a;->b:Lutd;

    iput-object p2, p0, Lutd$a;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 3

    iget-object v0, p0, Lutd$a;->b:Lutd;

    iget-object v1, p0, Lutd$a;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lutd;->p(Lutd;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V

    iget-object p0, p0, Lutd$a;->b:Lutd;

    invoke-static {p0, p1}, Lutd;->n(Lutd;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void
.end method

.method public onSuccess(I)V
    .locals 3

    iget-object v0, p0, Lutd$a;->b:Lutd;

    iget-object v1, p0, Lutd$a;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lutd;->p(Lutd;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V

    iget-object v0, p0, Lutd$a;->b:Lutd;

    invoke-static {v0, p1}, Lutd;->m(Lutd;I)V

    iget-object p1, p0, Lutd$a;->b:Lutd;

    invoke-static {p1}, Lutd;->l(Lutd;)V

    iget-object p0, p0, Lutd$a;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/U0;->N(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method
