.class public final Lcom/transsion/letswitch/ipc/IPCConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/transsion/letswitch/ipc/IPCConstants;",
        "",
        "<init>",
        "()V",
        "IPC_TAG_SERVICE",
        "",
        "IPC_TAG_PROXY",
        "ipc_release"
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
.field public static final INSTANCE:Lcom/transsion/letswitch/ipc/IPCConstants;

.field public static final IPC_TAG_PROXY:Ljava/lang/String; = "IPCProxy"

.field public static final IPC_TAG_SERVICE:Ljava/lang/String; = "IPCService"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/letswitch/ipc/IPCConstants;

    invoke-direct {v0}, Lcom/transsion/letswitch/ipc/IPCConstants;-><init>()V

    sput-object v0, Lcom/transsion/letswitch/ipc/IPCConstants;->INSTANCE:Lcom/transsion/letswitch/ipc/IPCConstants;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
