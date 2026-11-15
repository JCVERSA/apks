.class Lcom/cloud/hisavana/net/impl/HttpCallbackImpl$ResponderHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResponderHandler"
.end annotation


# instance fields
.field public final a:Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl$ResponderHandler;->a:Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl$ResponderHandler;->a:Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->g(Landroid/os/Message;)V

    return-void
.end method
