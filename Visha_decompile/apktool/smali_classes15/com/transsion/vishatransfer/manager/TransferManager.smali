.class public final Lcom/transsion/vishatransfer/manager/TransferManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/transsion/vishatransfer/manager/TransferManager;",
        "",
        "<init>",
        "()V",
        "USER_TYPE_CLIENT",
        "",
        "USER_TYPE_SERVER",
        "NET_STAET_CONNECTED",
        "getInstance",
        "Lcom/transsion/vishatransfer/manager/ITransferHelper;",
        "context",
        "Landroid/app/Application;",
        "type",
        "vishatransferlib_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/transsion/vishatransfer/manager/TransferManager;

.field public static final NET_STAET_CONNECTED:I = 0x1

.field public static final USER_TYPE_CLIENT:I = 0x1

.field public static final USER_TYPE_SERVER:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/vishatransfer/manager/TransferManager;

    invoke-direct {v0}, Lcom/transsion/vishatransfer/manager/TransferManager;-><init>()V

    sput-object v0, Lcom/transsion/vishatransfer/manager/TransferManager;->INSTANCE:Lcom/transsion/vishatransfer/manager/TransferManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getInstance$default(Lcom/transsion/vishatransfer/manager/TransferManager;Landroid/app/Application;IILjava/lang/Object;)Lcom/transsion/vishatransfer/manager/ITransferHelper;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/vishatransfer/manager/TransferManager;->getInstance(Landroid/app/Application;I)Lcom/transsion/vishatransfer/manager/ITransferHelper;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getInstance(Landroid/app/Application;I)Lcom/transsion/vishatransfer/manager/ITransferHelper;
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    if-ne p2, p0, :cond_0

    sget-object p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->Companion:Lcom/transsion/vishatransfer/manager/WifiTransferManager$Companion;

    invoke-virtual {p0, p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$Companion;->getInstance(Landroid/app/Application;)Lcom/transsion/vishatransfer/manager/ITransferHelper;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->Companion:Lcom/transsion/vishatransfer/manager/WifiTransferManager$Companion;

    invoke-virtual {p0, p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$Companion;->getInstance(Landroid/app/Application;)Lcom/transsion/vishatransfer/manager/ITransferHelper;

    move-result-object p0

    :goto_0
    return-object p0
.end method
