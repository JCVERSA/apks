.class Lcom/transsion/apiinvoke/invoke/InvokeChain$InvokeChainQueueHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/apiinvoke/invoke/InvokeChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InvokeChainQueueHolder"
.end annotation


# static fields
.field private static final holder:Lcom/transsion/apiinvoke/invoke/InvokeChain$InvokeChainQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/apiinvoke/invoke/InvokeChain$InvokeChainQueue;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/transsion/apiinvoke/invoke/InvokeChain$InvokeChainQueue;-><init>(I)V

    sput-object v0, Lcom/transsion/apiinvoke/invoke/InvokeChain$InvokeChainQueueHolder;->holder:Lcom/transsion/apiinvoke/invoke/InvokeChain$InvokeChainQueue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/transsion/apiinvoke/invoke/InvokeChain$InvokeChainQueue;
    .locals 1

    sget-object v0, Lcom/transsion/apiinvoke/invoke/InvokeChain$InvokeChainQueueHolder;->holder:Lcom/transsion/apiinvoke/invoke/InvokeChain$InvokeChainQueue;

    return-object v0
.end method
