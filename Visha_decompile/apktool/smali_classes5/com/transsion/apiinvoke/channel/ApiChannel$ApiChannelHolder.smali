.class Lcom/transsion/apiinvoke/channel/ApiChannel$ApiChannelHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/apiinvoke/channel/ApiChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApiChannelHolder"
.end annotation


# static fields
.field private static final sHolder:Lcom/transsion/apiinvoke/channel/ApiChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/apiinvoke/channel/ApiChannel;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/apiinvoke/channel/ApiChannel;-><init>(Lcom/transsion/apiinvoke/channel/ApiChannel$1;)V

    sput-object v0, Lcom/transsion/apiinvoke/channel/ApiChannel$ApiChannelHolder;->sHolder:Lcom/transsion/apiinvoke/channel/ApiChannel;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/transsion/apiinvoke/channel/ApiChannel;
    .locals 1

    sget-object v0, Lcom/transsion/apiinvoke/channel/ApiChannel$ApiChannelHolder;->sHolder:Lcom/transsion/apiinvoke/channel/ApiChannel;

    return-object v0
.end method
