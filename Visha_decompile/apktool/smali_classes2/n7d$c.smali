.class public final Ln7d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgob$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln7d;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln7d;

.field public final synthetic b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;


# direct methods
.method public constructor <init>(Ln7d;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    iput-object p1, p0, Ln7d$c;->a:Ln7d;

    iput-object p2, p0, Ln7d$c;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 3

    const-string v0, "error"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ln7d$c;->a:Ln7d;

    iget-object v1, p0, Ln7d$c;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ln7d;->m(Ln7d;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V

    iget-object p0, p0, Ln7d$c;->a:Ln7d;

    invoke-static {p0, p1}, Ln7d;->j(Ln7d;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void
.end method

.method public onSuccess(I)V
    .locals 3

    iget-object v0, p0, Ln7d$c;->a:Ln7d;

    iget-object v1, p0, Ln7d$c;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ln7d;->m(Ln7d;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V

    iget-object v0, p0, Ln7d$c;->a:Ln7d;

    invoke-static {v0, p1}, Ln7d;->u(Ln7d;I)V

    iget-object p1, p0, Ln7d$c;->a:Ln7d;

    invoke-static {p1}, Ln7d;->t(Ln7d;)V

    iget-object p0, p0, Ln7d$c;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/U0;->N(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method
