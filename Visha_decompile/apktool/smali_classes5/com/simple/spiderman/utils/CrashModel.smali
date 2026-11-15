.class public Lcom/simple/spiderman/utils/CrashModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/simple/spiderman/utils/CrashModel$Device;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/simple/spiderman/utils/CrashModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private className:Ljava/lang/String;

.field private device:Lcom/simple/spiderman/utils/CrashModel$Device;

.field private ex:Ljava/lang/Throwable;

.field private exceptionMsg:Ljava/lang/String;

.field private exceptionType:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private fullException:Ljava/lang/String;

.field private lineNumber:I

.field private methodName:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private time:J

.field private versionCode:Ljava/lang/String;

.field private versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/simple/spiderman/utils/CrashModel$1;

    invoke-direct {v0}, Lcom/simple/spiderman/utils/CrashModel$1;-><init>()V

    sput-object v0, Lcom/simple/spiderman/utils/CrashModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/simple/spiderman/utils/CrashModel$Device;

    invoke-direct {v0}, Lcom/simple/spiderman/utils/CrashModel$Device;-><init>()V

    iput-object v0, p0, Lcom/simple/spiderman/utils/CrashModel;->device:Lcom/simple/spiderman/utils/CrashModel$Device;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/simple/spiderman/utils/CrashModel$Device;

    invoke-direct {v0}, Lcom/simple/spiderman/utils/CrashModel$Device;-><init>()V

    iput-object v0, p0, Lcom/simple/spiderman/utils/CrashModel;->device:Lcom/simple/spiderman/utils/CrashModel$Device;

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    iput-object v0, p0, Lcom/simple/spiderman/utils/CrashModel;->ex:Ljava/lang/Throwable;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/simple/spiderman/utils/CrashModel;->exceptionMsg:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/simple/spiderman/utils/CrashModel;->className:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/simple/spiderman/utils/CrashModel;->fileName:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/simple/spiderman/utils/CrashModel;->methodName:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/simple/spiderman/utils/CrashModel;->lineNumber:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/simple/spiderman/utils/CrashModel;->exceptionType:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/simple/spiderman/utils/CrashModel;->fullException:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/simple/spiderman/utils/CrashModel;->time:J

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/simple/spiderman/utils/CrashModel;->versionCode:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/simple/spiderman/utils/CrashModel;->versionName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/simple/spiderman/utils/CrashModel;->className:Ljava/lang/String;

    return-object p0
.end method

.method public getDevice()Lcom/simple/spiderman/utils/CrashModel$Device;
    .locals 0

    iget-object p0, p0, Lcom/simple/spiderman/utils/CrashModel;->device:Lcom/simple/spiderman/utils/CrashModel$Device;

    return-object p0
.end method

.method public getEx()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lcom/simple/spiderman/utils/CrashModel;->ex:Ljava/lang/Throwable;

    return-object p0
.end method

.method public getExceptionMsg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/simple/spiderman/utils/CrashModel;->exceptionMsg:Ljava/lang/String;

    return-object p0
.end method

.method public getExceptionType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/simple/spiderman/utils/CrashModel;->exceptionType:Ljava/lang/String;

    return-object p0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/simple/spiderman/utils/CrashModel;->fileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/simple/spiderman/utils/CrashModel;->className:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/simple/spiderman/utils/CrashModel;->fileName:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public getFullException()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/simple/spiderman/utils/CrashModel;->fullException:Ljava/lang/String;

    return-object p0
.end method

.method public getLineNumber()I
    .locals 0

    iget p0, p0, Lcom/simple/spiderman/utils/CrashModel;->lineNumber:I

    return p0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/simple/spiderman/utils/CrashModel;->methodName:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/simple/spiderman/utils/CrashModel;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/simple/spiderman/utils/CrashModel;->getFileName()Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/simple/spiderman/utils/CrashModel;->time:J

    return-wide v0
.end method

.method public getVersionCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/simple/spiderman/utils/CrashModel;->versionCode:Ljava/lang/String;

    return-object p0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/simple/spiderman/utils/CrashModel;->versionName:Ljava/lang/String;

    return-object p0
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/simple/spiderman/utils/CrashModel;->className:Ljava/lang/String;

    return-void
.end method

.method public setEx(Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcom/simple/spiderman/utils/CrashModel;->ex:Ljava/lang/Throwable;

    return-void
.end method

.method public setExceptionMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/simple/spiderman/utils/CrashModel;->exceptionMsg:Ljava/lang/String;

    return-void
.end method

.method public setExceptionType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/simple/spiderman/utils/CrashModel;->exceptionType:Ljava/lang/String;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/simple/spiderman/utils/CrashModel;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setFullException(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/simple/spiderman/utils/CrashModel;->fullException:Ljava/lang/String;

    return-void
.end method

.method public setLineNumber(I)V
    .locals 0

    iput p1, p0, Lcom/simple/spiderman/utils/CrashModel;->lineNumber:I

    return-void
.end method

.method public setMethodName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/simple/spiderman/utils/CrashModel;->methodName:Ljava/lang/String;

    return-void
.end method

.method public setTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/simple/spiderman/utils/CrashModel;->time:J

    return-void
.end method

.method public setVersionCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/simple/spiderman/utils/CrashModel;->versionCode:Ljava/lang/String;

    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/simple/spiderman/utils/CrashModel;->versionName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CrashModel{ex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/simple/spiderman/utils/CrashModel;->ex:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/simple/spiderman/utils/CrashModel;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", exceptionMsg=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/simple/spiderman/utils/CrashModel;->exceptionMsg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", className=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/simple/spiderman/utils/CrashModel;->className:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", fileName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/simple/spiderman/utils/CrashModel;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", methodName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/simple/spiderman/utils/CrashModel;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", lineNumber="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/simple/spiderman/utils/CrashModel;->lineNumber:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", exceptionType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/simple/spiderman/utils/CrashModel;->exceptionType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", fullException=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/simple/spiderman/utils/CrashModel;->fullException:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", time="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/simple/spiderman/utils/CrashModel;->time:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", device="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/simple/spiderman/utils/CrashModel;->device:Lcom/simple/spiderman/utils/CrashModel$Device;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", versionCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/simple/spiderman/utils/CrashModel;->versionCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", versionName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/simple/spiderman/utils/CrashModel;->versionName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/simple/spiderman/utils/CrashModel;->ex:Ljava/lang/Throwable;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object p2, p0, Lcom/simple/spiderman/utils/CrashModel;->exceptionMsg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/simple/spiderman/utils/CrashModel;->className:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/simple/spiderman/utils/CrashModel;->fileName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/simple/spiderman/utils/CrashModel;->methodName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/simple/spiderman/utils/CrashModel;->lineNumber:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/simple/spiderman/utils/CrashModel;->exceptionType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/simple/spiderman/utils/CrashModel;->fullException:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/simple/spiderman/utils/CrashModel;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/simple/spiderman/utils/CrashModel;->versionCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/simple/spiderman/utils/CrashModel;->versionName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
