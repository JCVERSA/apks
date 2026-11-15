.class public Lcom/transsion/hubsdk/core/app/TranThubActivityThread;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/app/ITranActivityThreadAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentApplication()Landroid/app/Application;
    .locals 0

    invoke-static {}, Lcom/transsion/hubsdk/app/TranActivityThreadBridge;->currentApplication()Landroid/app/Application;

    move-result-object p0

    return-object p0
.end method

.method public getApplication()Landroid/app/Application;
    .locals 0

    invoke-static {}, Lcom/transsion/hubsdk/app/TranActivityThreadBridge;->getApplication()Landroid/app/Application;

    move-result-object p0

    return-object p0
.end method
