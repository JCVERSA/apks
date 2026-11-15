.class public final synthetic Llg5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy$Callback;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 0

    invoke-static {}, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->b()V

    return-void
.end method
