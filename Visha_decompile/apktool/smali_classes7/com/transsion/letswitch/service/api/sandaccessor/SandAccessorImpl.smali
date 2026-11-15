.class public Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor$ISandAccessor;


# static fields
.field private static final COMMAND_CALLBACK_TRANSACTION:I = 0x3e8

.field private static final COMMAND_TRANSACTION:I = 0x3ed

.field private static final COPY_FILE_TRANSACTION:I = 0x3ea

.field private static DEBUG:Z = false

.field private static final DELETE_FILE_TRANSACTION:I = 0x3ec

.field private static final LIST_FILE_TRANSACTION:I = 0x3eb

.field private static final TAG:Ljava/lang/String; = "SandAccessorImpl"


# instance fields
.field private mMessage:Ljava/lang/String;

.field private final mRemote:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "SandAccessorImpl"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessorImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessorImpl;->mRemote:Landroid/os/IBinder;

    return-void
.end method

.method public static bridge synthetic a()Z
    .locals 1

    sget-boolean v0, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessorImpl;->DEBUG:Z

    return v0
.end method

.method private handShake(ILandroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessorImpl;->handShake(ILandroid/os/Parcel;Landroid/os/Parcel;I)V

    return-void
.end method

.method private handShake(ILandroid/os/Parcel;Landroid/os/Parcel;I)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessorImpl;->mRemote:Landroid/os/IBinder;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to transact "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessorImpl;->mMessage:Ljava/lang/String;

    .line 4
    const-string p0, "SandAccessorImpl"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public copyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0x3ea

    :try_start_0
    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessorImpl;->handShake(ILandroid/os/Parcel;Landroid/os/Parcel;)V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessorImpl;->mMessage:Ljava/lang/String;

    if-eqz p1, :cond_0

    sget-boolean p2, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessorImpl;->DEBUG:Z

    if-eqz p2, :cond_0

    const-string p2, "SandAccessorImpl"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to invoke copyFile: err code = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessorImpl;->mMessage:Ljava/lang/String;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return p1

    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public deleteFile(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 p1, 0x3ec

    :try_start_0
    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessorImpl;->handShake(ILandroid/os/Parcel;Landroid/os/Parcel;)V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessorImpl;->mMessage:Ljava/lang/String;

    if-eqz p1, :cond_0

    sget-boolean p2, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessorImpl;->DEBUG:Z

    if-eqz p2, :cond_0

    const-string p2, "SandAccessorImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to invoke copyFile: err code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessorImpl;->mMessage:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return p1

    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessorImpl;->mMessage:Ljava/lang/String;

    return-object p0
.end method

.method public listFile(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const-string p1, "null"

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessorImpl;->mMessage:Ljava/lang/String;

    const/16 p2, 0x3eb

    :try_start_0
    invoke-direct {p0, p2, v0, v1}, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessorImpl;->handShake(ILandroid/os/Parcel;Landroid/os/Parcel;)V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessorImpl;->mMessage:Ljava/lang/String;

    if-eqz p2, :cond_0

    sget-boolean p3, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessorImpl;->DEBUG:Z

    if-eqz p3, :cond_1

    const-string p3, "SandAccessorImpl"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to invoke listFile: err code = "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessorImpl;->mMessage:Ljava/lang/String;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public runCommand(Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/letswitch/service/api/sandaccessor/SandAccessor$ICommandCallback;)V
    .locals 1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 p1, 0x0

    if-nez p4, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance p2, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessorImpl$1;

    invoke-direct {p2, p0, p4}, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessorImpl$1;-><init>(Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessorImpl;Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor$ICommandCallback;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    :goto_0
    const/16 p2, 0x3ed

    const/4 p3, 0x1

    invoke-direct {p0, p2, v0, p1, p3}, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessorImpl;->handShake(ILandroid/os/Parcel;Landroid/os/Parcel;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
