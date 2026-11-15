.class public final Lcom/transsion/usercenter/setting/labelsfeedback/model/FBContact$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/usercenter/setting/labelsfeedback/model/FBContact;
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
.method public final a(Landroid/os/Parcel;)Lcom/transsion/usercenter/setting/labelsfeedback/model/FBContact;
    .locals 2

    .line 1
    const-string v0, "parcel"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FBContact;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lcom/transsnet/loginapi/bean/Country;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {v0, v1, p1}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FBContact;-><init>(Lcom/transsnet/loginapi/bean/Country;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public final b(I)[Lcom/transsion/usercenter/setting/labelsfeedback/model/FBContact;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/transsion/usercenter/setting/labelsfeedback/model/FBContact;

    .line 2
    .line 3
    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FBContact$a;->a(Landroid/os/Parcel;)Lcom/transsion/usercenter/setting/labelsfeedback/model/FBContact;

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
    invoke-virtual {p0, p1}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FBContact$a;->b(I)[Lcom/transsion/usercenter/setting/labelsfeedback/model/FBContact;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
