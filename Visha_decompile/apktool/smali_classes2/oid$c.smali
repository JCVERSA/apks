.class public Loid$c;
.super Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Loid;->y(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Loid;


# direct methods
.method public constructor <init>(Loid;)V
    .locals 0

    iput-object p1, p0, Loid$c;->b:Loid;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 0

    iget-object p0, p0, Loid$c;->b:Loid;

    invoke-static {p0, p1}, Loid;->m(Loid;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void
.end method

.method public g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 0

    iget-object p1, p0, Loid$c;->b:Loid;

    invoke-static {p1}, Loid;->u(Loid;)Lcom/cloud/hisavana/sdk/q1;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Loid$c;->b:Loid;

    invoke-static {p0}, Loid;->u(Loid;)Lcom/cloud/hisavana/sdk/q1;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/q1;->o0(Z)V

    :cond_0
    return-void
.end method
