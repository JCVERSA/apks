.class public final Lcom/transsion/fission/activity/bean/PalmPayTaskResult$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/fission/activity/bean/PalmPayTaskResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Parcel;)Lcom/transsion/fission/activity/bean/PalmPayTaskResult;
    .locals 3

    .line 1
    const-string v0, "parcel"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/transsion/fission/activity/bean/PalmPayTaskResult;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object v1, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 17
    .line 18
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :goto_0
    check-cast v1, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;

    .line 23
    .line 24
    const-class v2, Lcom/transsion/fission/activity/bean/PalmPayTaskResult;

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lcom/transsion/bean/HomePopupInfo;

    .line 35
    .line 36
    invoke-direct {v0, v1, p1}, Lcom/transsion/fission/activity/bean/PalmPayTaskResult;-><init>(Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;Lcom/transsion/bean/HomePopupInfo;)V

    .line 37
    .line 38
    .line 39
    return-object v0
.end method

.method public final b(I)[Lcom/transsion/fission/activity/bean/PalmPayTaskResult;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/transsion/fission/activity/bean/PalmPayTaskResult;

    .line 2
    .line 3
    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/fission/activity/bean/PalmPayTaskResult$a;->a(Landroid/os/Parcel;)Lcom/transsion/fission/activity/bean/PalmPayTaskResult;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/fission/activity/bean/PalmPayTaskResult$a;->b(I)[Lcom/transsion/fission/activity/bean/PalmPayTaskResult;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
