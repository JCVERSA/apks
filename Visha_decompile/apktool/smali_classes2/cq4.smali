.class public final synthetic Lcq4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(ILcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcq4;->b:I

    iput-object p2, p0, Lcq4;->c:Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;

    iput-boolean p3, p0, Lcq4;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcq4;->b:I

    iget-object v1, p0, Lcq4;->c:Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;

    iget-boolean p0, p0, Lcq4;->d:Z

    invoke-static {v0, v1, p0}, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->q(ILcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;Z)V

    return-void
.end method
