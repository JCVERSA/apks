.class public Ltgd$a;
.super Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltgd;->n(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ltgd;


# direct methods
.method public constructor <init>(Ltgd;)V
    .locals 0

    iput-object p1, p0, Ltgd$a;->b:Ltgd;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 0

    iget-object p0, p0, Ltgd$a;->b:Ltgd;

    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_STORE_MATERIAL_TAKE_FAILED:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-static {p0, p1}, Ltgd;->l(Ltgd;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void
.end method

.method public g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 0

    iget-object p2, p0, Ltgd$a;->b:Ltgd;

    invoke-static {p2, p1}, Ltgd;->k(Ltgd;I)V

    iget-object p0, p0, Ltgd$a;->b:Ltgd;

    invoke-static {p0}, Ltgd;->j(Ltgd;)V

    return-void
.end method
