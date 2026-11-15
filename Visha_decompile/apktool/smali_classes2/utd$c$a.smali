.class public Lutd$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh24;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lutd$c;->g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lutd$c;


# direct methods
.method public constructor <init>(Lutd$c;)V
    .locals 0

    iput-object p1, p0, Lutd$c$a;->a:Lutd$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lutd$c$a;->a:Lutd$c;

    iget-object p1, p0, Lutd$c;->c:Lutd;

    iget-object p0, p0, Lutd$c;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {p1, p0}, Lutd;->o(Lutd;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lutd$c$a;->a:Lutd$c;

    iget-object p0, p0, Lutd$c;->c:Lutd;

    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_ZIP_MATERIAL_DECOMPRESS_FAILED:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-static {p0, p1}, Lutd;->n(Lutd;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :goto_0
    return-void
.end method
