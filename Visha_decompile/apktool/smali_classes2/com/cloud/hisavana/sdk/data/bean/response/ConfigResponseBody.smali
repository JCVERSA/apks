.class public Lcom/cloud/hisavana/sdk/data/bean/response/ConfigResponseBody;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private code:Ljava/lang/Integer;

.field private data:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigResponseBody;->code:Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getData()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigResponseBody;->data:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigResponseBody;->message:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method
