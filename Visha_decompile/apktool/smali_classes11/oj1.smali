.class public final synthetic Loj1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/convert/ConvertingTaskManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/convert/ConvertingTaskManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loj1;->b:Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    iget-object p0, p0, Loj1;->b:Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    invoke-static {p0, p1}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->c(Lcom/transsion/playercommon/convert/ConvertingTaskManager;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
