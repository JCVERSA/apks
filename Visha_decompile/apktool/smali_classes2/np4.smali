.class public final synthetic Lnp4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cloud/sdk/commonutil/util/Preconditions$a;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/webkit/ValueCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnp4;->a:Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;

    iput-object p2, p0, Lnp4;->b:Ljava/lang/String;

    iput-object p3, p0, Lnp4;->c:Landroid/webkit/ValueCallback;

    return-void
.end method


# virtual methods
.method public final onRun()V
    .locals 2

    iget-object v0, p0, Lnp4;->a:Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;

    iget-object v1, p0, Lnp4;->b:Ljava/lang/String;

    iget-object p0, p0, Lnp4;->c:Landroid/webkit/ValueCallback;

    invoke-static {v0, v1, p0}, Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;->a(Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method
