.class public final synthetic Lemc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu74;


# instance fields
.field public final synthetic b:Lu74;

.field public final synthetic c:Lcom/transsion/vishatransfer/manager/WifiTransferManager;


# direct methods
.method public synthetic constructor <init>(Lu74;Lcom/transsion/vishatransfer/manager/WifiTransferManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lemc;->b:Lu74;

    iput-object p2, p0, Lemc;->c:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lemc;->b:Lu74;

    iget-object p0, p0, Lemc;->c:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {v0, p0, p1, p2, p3}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->b(Lu74;Lcom/transsion/vishatransfer/manager/WifiTransferManager;ZLjava/lang/String;I)Lzfb;

    move-result-object p0

    return-object p0
.end method
