.class public final synthetic Lu6b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/vishatransfer/socket/TransferSocketClient;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/vishatransfer/socket/TransferSocketClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu6b;->b:Lcom/transsion/vishatransfer/socket/TransferSocketClient;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lu6b;->b:Lcom/transsion/vishatransfer/socket/TransferSocketClient;

    invoke-static {p0}, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->a(Lcom/transsion/vishatransfer/socket/TransferSocketClient;)V

    return-void
.end method
