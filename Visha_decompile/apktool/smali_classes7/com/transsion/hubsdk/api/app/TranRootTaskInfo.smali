.class public Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mBounds:Landroid/graphics/Rect;

.field public mChildTaskBounds:[Landroid/graphics/Rect;

.field public mChildTaskIds:[I

.field public mChildTaskNames:[Ljava/lang/String;

.field public mChildTaskUserIds:[I

.field public mPosition:I

.field public mTaskId:I

.field public mTopActivity:Landroid/content/ComponentName;

.field public mTopActivityString:Ljava/lang/String;

.field public mVisible:Z

.field public mWindowingMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo$1;

    invoke-direct {v0}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo$1;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mBounds:Landroid/graphics/Rect;

    .line 8
    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mBounds:Landroid/graphics/Rect;

    .line 5
    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mTopActivityString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getChildTaskBounds()[Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mChildTaskBounds:[Landroid/graphics/Rect;

    return-object p0
.end method

.method public getChildTaskIds()[I
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mChildTaskIds:[I

    return-object p0
.end method

.method public getChildTaskNames()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mChildTaskNames:[Ljava/lang/String;

    return-object p0
.end method

.method public getChildTaskUserIds()[I
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mChildTaskUserIds:[I

    return-object p0
.end method

.method public getPosition()I
    .locals 0

    iget p0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mPosition:I

    return p0
.end method

.method public getTaskId()I
    .locals 0

    iget p0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mTaskId:I

    return p0
.end method

.method public getTopActivity()Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mTopActivity:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getTopActivityString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mTopActivityString:Ljava/lang/String;

    return-object p0
.end method

.method public getWindowingMode()I
    .locals 0

    iget p0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mWindowingMode:I

    return p0
.end method

.method public isVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mVisible:Z

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mTopActivityString:Ljava/lang/String;

    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mTopActivity:Landroid/content/ComponentName;

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mChildTaskIds:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mChildTaskNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mChildTaskBounds:[Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mChildTaskUserIds:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mVisible:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mPosition:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mWindowingMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mTaskId:I

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public setChildTaskBounds([Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mChildTaskBounds:[Landroid/graphics/Rect;

    return-void
.end method

.method public setChildTaskIds([I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mChildTaskIds:[I

    return-void
.end method

.method public setChildTaskNames([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mChildTaskNames:[Ljava/lang/String;

    return-void
.end method

.method public setChildTaskUserIds([I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mChildTaskUserIds:[I

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mPosition:I

    return-void
.end method

.method public setTaskId(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mTaskId:I

    return-void
.end method

.method public setTopActivity(Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mTopActivity:Landroid/content/ComponentName;

    return-void
.end method

.method public setTopActivityString(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mTopActivityString:Ljava/lang/String;

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mVisible:Z

    return-void
.end method

.method public setWindowingMode(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mWindowingMode:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mTopActivity:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    iget-object v0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mTopActivityString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mChildTaskIds:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mChildTaskNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mChildTaskBounds:[Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mChildTaskUserIds:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-boolean p2, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mVisible:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mPosition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mWindowingMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mTaskId:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
