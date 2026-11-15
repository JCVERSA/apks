.class Lcom/lzy/okgo/request/base/ProgressRequestBody$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/okgo/request/base/ProgressRequestBody;->d(Lcom/lzy/okgo/model/Progress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzy/okgo/request/base/ProgressRequestBody;

.field final synthetic val$progress:Lcom/lzy/okgo/model/Progress;


# direct methods
.method public constructor <init>(Lcom/lzy/okgo/request/base/ProgressRequestBody;Lcom/lzy/okgo/model/Progress;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lzy/okgo/request/base/ProgressRequestBody$1;->this$0:Lcom/lzy/okgo/request/base/ProgressRequestBody;

    iput-object p2, p0, Lcom/lzy/okgo/request/base/ProgressRequestBody$1;->val$progress:Lcom/lzy/okgo/model/Progress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/lzy/okgo/request/base/ProgressRequestBody$1;->this$0:Lcom/lzy/okgo/request/base/ProgressRequestBody;

    invoke-static {p0}, Lcom/lzy/okgo/request/base/ProgressRequestBody;->c(Lcom/lzy/okgo/request/base/ProgressRequestBody;)Luq0;

    return-void
.end method
