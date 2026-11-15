.class final Lcom/transsion/apiinvoke/ipc/ApiServiceConnect$ApiServiceConnectHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/apiinvoke/ipc/ApiServiceConnect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiServiceConnectHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/transsion/apiinvoke/ipc/ApiServiceConnect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/apiinvoke/ipc/ApiServiceConnect;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/apiinvoke/ipc/ApiServiceConnect;-><init>(Lcom/transsion/apiinvoke/ipc/ApiServiceConnect$1;)V

    sput-object v0, Lcom/transsion/apiinvoke/ipc/ApiServiceConnect$ApiServiceConnectHolder;->INSTANCE:Lcom/transsion/apiinvoke/ipc/ApiServiceConnect;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/transsion/apiinvoke/ipc/ApiServiceConnect;
    .locals 1

    sget-object v0, Lcom/transsion/apiinvoke/ipc/ApiServiceConnect$ApiServiceConnectHolder;->INSTANCE:Lcom/transsion/apiinvoke/ipc/ApiServiceConnect;

    return-object v0
.end method
