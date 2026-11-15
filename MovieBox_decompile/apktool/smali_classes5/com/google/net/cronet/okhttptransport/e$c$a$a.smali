.class Lcom/google/net/cronet/okhttptransport/e$c$a$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/common/util/concurrent/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/net/cronet/okhttptransport/e$c$a;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/net/cronet/okhttptransport/e$c$a;


# direct methods
.method constructor <init>(Lcom/google/net/cronet/okhttptransport/e$c$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/net/cronet/okhttptransport/e$c$a$a;->a:Lcom/google/net/cronet/okhttptransport/e$c$a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/e$c$a$a;->a:Lcom/google/net/cronet/okhttptransport/e$c$a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/net/cronet/okhttptransport/e$c$a;->d(Lcom/google/net/cronet/okhttptransport/e$c$a;)Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/net/cronet/okhttptransport/UploadBodyDataBroker;->j(Ljava/lang/Throwable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method
