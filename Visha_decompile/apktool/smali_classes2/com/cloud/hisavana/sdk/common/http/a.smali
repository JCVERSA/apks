.class public final synthetic Lcom/cloud/hisavana/sdk/common/http/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cloud/sdk/commonutil/util/Preconditions$a;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/http/a;->a:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    return-void
.end method


# virtual methods
.method public final onRun()V
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/http/a;->a:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$3;->b(Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    return-void
.end method
