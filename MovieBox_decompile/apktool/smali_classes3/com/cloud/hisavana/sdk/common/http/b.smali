.class public final synthetic Lcom/cloud/hisavana/sdk/common/http/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/sdk/commonutil/util/Preconditions$a;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/http/b;->a:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onRun()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/b;->a:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$3;->b(Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
