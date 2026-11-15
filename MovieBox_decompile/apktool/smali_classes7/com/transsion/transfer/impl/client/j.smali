.class public final synthetic Lcom/transsion/transfer/impl/client/j;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lst/a;


# instance fields
.field public final synthetic a:Lcom/transsion/transfer/impl/client/TransferClient;

.field public final synthetic b:Lcom/transsion/transfer/androidasync/http/b0;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/transfer/impl/client/TransferClient;Lcom/transsion/transfer/androidasync/http/b0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/transfer/impl/client/j;->a:Lcom/transsion/transfer/impl/client/TransferClient;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/transfer/impl/client/j;->b:Lcom/transsion/transfer/androidasync/http/b0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/impl/client/j;->a:Lcom/transsion/transfer/impl/client/TransferClient;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/transfer/impl/client/j;->b:Lcom/transsion/transfer/androidasync/http/b0;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/transsion/transfer/impl/client/TransferClient;->q(Lcom/transsion/transfer/impl/client/TransferClient;Lcom/transsion/transfer/androidasync/http/b0;Ljava/lang/Exception;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
