.class final Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge$b;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;-><init>(Landroid/webkit/WebView;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lujd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lc74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0007\n\u0002\u0008\u0003*\u0001\u0000\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "com/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge$b$a",
        "a",
        "()Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge$b$a;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge$b;->a:Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge$b$a;
    .locals 1

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge$b;->a:Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->E(Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p0

    new-instance v0, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge$b$a;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge$b$a;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge$b;->a()Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge$b$a;

    move-result-object p0

    return-object p0
.end method
