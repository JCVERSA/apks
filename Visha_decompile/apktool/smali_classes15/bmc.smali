.class public final synthetic Lbmc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc74;


# instance fields
.field public final synthetic b:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/vishatransfer/manager/WifiTransferManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbmc;->b:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    iput p2, p0, Lbmc;->c:I

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lbmc;->b:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    iget p0, p0, Lbmc;->c:I

    invoke-static {v0, p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->c(Lcom/transsion/vishatransfer/manager/WifiTransferManager;I)Lzfb;

    move-result-object p0

    return-object p0
.end method
