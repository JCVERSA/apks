.class Lcom/lzy/okserver/upload/UploadTask$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/okserver/upload/UploadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzy/okserver/upload/UploadTask;

.field final synthetic val$progress:Lcom/lzy/okgo/model/Progress;


# direct methods
.method public constructor <init>(Lcom/lzy/okserver/upload/UploadTask;Lcom/lzy/okgo/model/Progress;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lzy/okserver/upload/UploadTask$6;->this$0:Lcom/lzy/okserver/upload/UploadTask;

    iput-object p2, p0, Lcom/lzy/okserver/upload/UploadTask$6;->val$progress:Lcom/lzy/okgo/model/Progress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/lzy/okserver/upload/UploadTask$6;->this$0:Lcom/lzy/okserver/upload/UploadTask;

    iget-object p0, p0, Lcom/lzy/okserver/upload/UploadTask;->listeners:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method
