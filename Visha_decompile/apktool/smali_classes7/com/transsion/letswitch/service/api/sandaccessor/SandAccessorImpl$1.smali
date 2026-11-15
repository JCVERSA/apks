.class Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessorImpl$1;
.super Landroid/os/Binder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessorImpl;->runCommand(Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/letswitch/service/api/sandaccessor/SandAccessor$ICommandCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessorImpl;

.field final synthetic val$callback:Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor$ICommandCallback;


# direct methods
.method public constructor <init>(Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessorImpl;Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor$ICommandCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessorImpl$1;->this$0:Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessorImpl;

    iput-object p2, p0, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessorImpl$1;->val$callback:Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor$ICommandCallback;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p2    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessorImpl;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTransact "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SandAccessorImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessorImpl$1;->val$callback:Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor$ICommandCallback;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor$ICommandCallback;->onCommandFinished(ILjava/lang/String;)V

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0
.end method
