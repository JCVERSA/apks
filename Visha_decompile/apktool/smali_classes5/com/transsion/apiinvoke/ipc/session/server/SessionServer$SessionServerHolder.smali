.class Lcom/transsion/apiinvoke/ipc/session/server/SessionServer$SessionServerHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/apiinvoke/ipc/session/server/SessionServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionServerHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/transsion/apiinvoke/ipc/session/server/SessionServer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/apiinvoke/ipc/session/server/SessionServer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/apiinvoke/ipc/session/server/SessionServer;-><init>(Lcom/transsion/apiinvoke/ipc/session/server/SessionServer$1;)V

    sput-object v0, Lcom/transsion/apiinvoke/ipc/session/server/SessionServer$SessionServerHolder;->INSTANCE:Lcom/transsion/apiinvoke/ipc/session/server/SessionServer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/transsion/apiinvoke/ipc/session/server/SessionServer;
    .locals 1

    sget-object v0, Lcom/transsion/apiinvoke/ipc/session/server/SessionServer$SessionServerHolder;->INSTANCE:Lcom/transsion/apiinvoke/ipc/session/server/SessionServer;

    return-object v0
.end method
