.class Lcom/cloud/tmc/miniapp/TmcInitializer$8;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/TmcProxy$LazyGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/TmcInitializer;->setupProxy(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/cloud/tmc/kernel/proxy/TmcProxy$LazyGetter<",
        "Lcom/cloud/tmc/integration/permission/proxy/AuthenticationProxy;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/TmcInitializer$8;->val$context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public get()Lcom/cloud/tmc/integration/permission/proxy/AuthenticationProxy;
    .locals 2

    .line 2
    new-instance v0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/TmcInitializer$8;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultAuthenticationProxyImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/TmcInitializer$8;->get()Lcom/cloud/tmc/integration/permission/proxy/AuthenticationProxy;

    move-result-object v0

    return-object v0
.end method
