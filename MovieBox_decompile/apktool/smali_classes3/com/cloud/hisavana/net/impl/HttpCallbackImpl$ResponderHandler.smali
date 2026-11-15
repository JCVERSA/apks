.class Lcom/cloud/hisavana/net/impl/HttpCallbackImpl$ResponderHandler;
.super Landroid/os/Handler;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResponderHandler"
.end annotation


# instance fields
.field private final a:Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl$ResponderHandler;->a:Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl$ResponderHandler;->a:Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->g(Landroid/os/Message;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
