.class public Lcom/transsion/hubsdk/api/os/TranLooper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected mAospService:Lcom/transsion/hubsdk/aosp/os/TranAospLooper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/transsion/hubsdk/interfaces/os/ITranLooperAdapter;
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/api/os/TranLooper;->mAospService:Lcom/transsion/hubsdk/aosp/os/TranAospLooper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/aosp/os/TranAospLooper;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/os/TranAospLooper;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/os/TranLooper;->mAospService:Lcom/transsion/hubsdk/aosp/os/TranAospLooper;

    :cond_0
    return-object v0
.end method

.method public setTraceTag(Landroid/os/Looper;J)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/api/os/TranLooper;->getService()Lcom/transsion/hubsdk/interfaces/os/ITranLooperAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/os/ITranLooperAdapter;->setTraceTag(Landroid/os/Looper;J)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Looper cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
