.class Lcom/cloud/hisavana/sdk/api/listener/AdCallback$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->z(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/api/listener/d;

.field final synthetic b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

.field final synthetic c:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/api/listener/AdCallback;Lcom/cloud/hisavana/sdk/api/listener/d;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/listener/AdCallback$1;->c:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/api/listener/AdCallback$1;->a:Lcom/cloud/hisavana/sdk/api/listener/d;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/hisavana/sdk/api/listener/AdCallback$1;->b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/listener/AdCallback$1;->a:Lcom/cloud/hisavana/sdk/api/listener/d;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/listener/AdCallback$1;->b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/listener/d;->onNativeAdShow(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
