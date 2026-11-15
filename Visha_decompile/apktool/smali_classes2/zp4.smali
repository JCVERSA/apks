.class public final synthetic Lzp4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;


# direct methods
.method public synthetic constructor <init>(ILcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lzp4;->b:I

    iput-object p2, p0, Lzp4;->c:Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lzp4;->b:I

    iget-object p0, p0, Lzp4;->c:Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;

    invoke-static {v0, p0}, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->s(ILcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;)V

    return-void
.end method
