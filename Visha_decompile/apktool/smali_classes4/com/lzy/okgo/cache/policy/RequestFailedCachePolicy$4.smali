.class Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy;->b(Lcom/lzy/okgo/cache/CacheEntity;Luq0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy;


# direct methods
.method public constructor <init>(Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy$4;->this$0:Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy$4;->this$0:Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy$4;->this$0:Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy;

    iget-object p0, p0, Lp90;->a:Lcom/lzy/okgo/request/base/Request;

    const/4 p0, 0x0

    throw p0
.end method
