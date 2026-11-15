.class abstract Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$IPCOnConnectChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection$OnConnectChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "IPCOnConnectChangeListener"
.end annotation


# instance fields
.field private final refCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/apiinvoke/invoke/api/ApiCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$IPCOnConnectChangeListener;->refCallback:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public getCallback()Lcom/transsion/apiinvoke/invoke/api/ApiCallback;
    .locals 0

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$IPCOnConnectChangeListener;->refCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/apiinvoke/invoke/api/ApiCallback;

    return-object p0
.end method
