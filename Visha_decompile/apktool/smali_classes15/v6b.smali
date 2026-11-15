.class public final synthetic Lv6b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/vishatransfer/socket/TransferSocketServer;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/vishatransfer/socket/TransferSocketServer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv6b;->b:Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lv6b;->b:Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    invoke-static {p0}, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->b(Lcom/transsion/vishatransfer/socket/TransferSocketServer;)V

    return-void
.end method
