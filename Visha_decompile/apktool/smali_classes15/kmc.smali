.class public final synthetic Lkmc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc74;


# instance fields
.field public final synthetic b:Lcom/transsion/vishatransfer/manager/WifiTransferManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkmc;->b:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkmc;->b:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    invoke-static {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$socketClientListener$1;->c(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Lzfb;

    move-result-object p0

    return-object p0
.end method
