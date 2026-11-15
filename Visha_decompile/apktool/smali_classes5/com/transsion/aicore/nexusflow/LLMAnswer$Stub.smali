.class public abstract Lcom/transsion/aicore/nexusflow/LLMAnswer$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/aicore/nexusflow/LLMAnswer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/aicore/nexusflow/LLMAnswer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/aicore/nexusflow/LLMAnswer$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_removeCallback:I = 0x4

.field static final TRANSACTION_sendCommand:I = 0x2

.field static final TRANSACTION_setCallback:I = 0x1

.field static final TRANSACTION_stopSmartAnswer:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.transsion.aicore.nexusflow.LLMAnswer"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/transsion/aicore/nexusflow/LLMAnswer;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.transsion.aicore.nexusflow.LLMAnswer"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/transsion/aicore/nexusflow/LLMAnswer;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/transsion/aicore/nexusflow/LLMAnswer;

    return-object v0

    :cond_1
    new-instance v0, Lcom/transsion/aicore/nexusflow/LLMAnswer$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/transsion/aicore/nexusflow/LLMAnswer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const-string v0, "com.transsion.aicore.nexusflow.LLMAnswer"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_6

    if-eq p1, v1, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/aicore/nexusflow/LLMAnswer$Stub;->removeCallback()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :cond_2
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/transsion/aicore/nexusflow/LLMAnswer$Stub;->stopSmartAnswer(Landroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/aicore/nexusflow/LLMAnswer$Stub;->sendCommand(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/aicore/nexusflow/LLMAnswerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/aicore/nexusflow/LLMAnswerCallback;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/aicore/nexusflow/LLMAnswer$Stub;->setCallback(Lcom/transsion/aicore/nexusflow/LLMAnswerCallback;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_1
    return v1

    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1
.end method

.method public abstract synthetic removeCallback()V
.end method

.method public abstract synthetic sendCommand(Ljava/lang/String;)V
.end method

.method public abstract synthetic setCallback(Lcom/transsion/aicore/nexusflow/LLMAnswerCallback;I)V
.end method

.method public abstract synthetic stopSmartAnswer(Landroid/os/Bundle;)V
.end method
