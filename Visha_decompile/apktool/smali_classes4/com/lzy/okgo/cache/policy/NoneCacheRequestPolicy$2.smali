.class Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;

.field final synthetic val$error:Lhu8;


# direct methods
.method public constructor <init>(Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;Lhu8;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy$2;->this$0:Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;

    iput-object p2, p0, Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy$2;->val$error:Lhu8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy$2;->this$0:Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0
.end method
