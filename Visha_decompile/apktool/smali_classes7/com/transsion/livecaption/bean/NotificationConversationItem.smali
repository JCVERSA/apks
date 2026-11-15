.class public Lcom/transsion/livecaption/bean/NotificationConversationItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/livecaption/bean/NotificationConversationItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private groupKey:Ljava/lang/String;

.field private mSummary:Ljava/lang/String;

.field private message1:Ljava/lang/String;

.field private message2:Ljava/lang/String;

.field private message3:Ljava/lang/String;

.field private message4:Ljava/lang/String;

.field private message5:Ljava/lang/String;

.field private notiKey:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private status:I

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/livecaption/bean/NotificationConversationItem$1;

    invoke-direct {v0}, Lcom/transsion/livecaption/bean/NotificationConversationItem$1;-><init>()V

    sput-object v0, Lcom/transsion/livecaption/bean/NotificationConversationItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/livecaption/bean/NotificationConversationItem;->notiKey:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/livecaption/bean/NotificationConversationItem;->groupKey:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/livecaption/bean/NotificationConversationItem;->title:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/livecaption/bean/NotificationConversationItem;->message1:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/livecaption/bean/NotificationConversationItem;->message2:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/livecaption/bean/NotificationConversationItem;->message3:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/livecaption/bean/NotificationConversationItem;->message4:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/livecaption/bean/NotificationConversationItem;->message5:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/livecaption/bean/NotificationConversationItem;->mSummary:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/livecaption/bean/NotificationConversationItem;->status:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/livecaption/bean/NotificationConversationItem;->packageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getGroupKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/livecaption/bean/NotificationConversationItem;->groupKey:Ljava/lang/String;

    return-object p0
.end method

.method public getMessage1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/livecaption/bean/NotificationConversationItem;->message1:Ljava/lang/String;

    return-object p0
.end method

.method public getMessage2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/livecaption/bean/NotificationConversationItem;->message2:Ljava/lang/String;

    return-object p0
.end method

.method public getMessage3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/livecaption/bean/NotificationConversationItem;->message3:Ljava/lang/String;

    return-object p0
.end method

.method public getMessage4()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/livecaption/bean/NotificationConversationItem;->message4:Ljava/lang/String;

    return-object p0
.end method

.method public getMessage5()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/livecaption/bean/NotificationConversationItem;->message5:Ljava/lang/String;

    return-object p0
.end method

.method public getNotiKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/livecaption/bean/NotificationConversationItem;->notiKey:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/livecaption/bean/NotificationConversationItem;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public getStatus()I
    .locals 0

    iget p0, p0, Lcom/transsion/livecaption/bean/NotificationConversationItem;->status:I

    return p0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/livecaption/bean/NotificationConversationItem;->mSummary:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/livecaption/bean/NotificationConversationItem;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setGroupKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/livecaption/bean/NotificationConversationItem;->groupKey:Ljava/lang/String;

    return-void
.end method

.method public setMessage1(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/livecaption/bean/NotificationConversationItem;->message1:Ljava/lang/String;

    return-void
.end method

.method public setMessage2(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/livecaption/bean/NotificationConversationItem;->message2:Ljava/lang/String;

    return-void
.end method

.method public setMessage3(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/livecaption/bean/NotificationConversationItem;->message3:Ljava/lang/String;

    return-void
.end method

.method public setMessage4(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/livecaption/bean/NotificationConversationItem;->message4:Ljava/lang/String;

    return-void
.end method

.method public setMessage5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/livecaption/bean/NotificationConversationItem;->message5:Ljava/lang/String;

    return-void
.end method

.method public setNotiKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/livecaption/bean/NotificationConversationItem;->notiKey:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/livecaption/bean/NotificationConversationItem;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/livecaption/bean/NotificationConversationItem;->status:I

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/livecaption/bean/NotificationConversationItem;->mSummary:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/livecaption/bean/NotificationConversationItem;->title:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationConversation{notiKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/livecaption/bean/NotificationConversationItem;->notiKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/livecaption/bean/NotificationConversationItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", message1=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/livecaption/bean/NotificationConversationItem;->message1:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", message2=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/livecaption/bean/NotificationConversationItem;->message2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", message3=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/livecaption/bean/NotificationConversationItem;->message3:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", message4=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/livecaption/bean/NotificationConversationItem;->message4:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", message5=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/livecaption/bean/NotificationConversationItem;->message5:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", summary=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/livecaption/bean/NotificationConversationItem;->mSummary:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/livecaption/bean/NotificationConversationItem;->status:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", packageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/livecaption/bean/NotificationConversationItem;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/transsion/livecaption/bean/NotificationConversationItem;->notiKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/livecaption/bean/NotificationConversationItem;->groupKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/livecaption/bean/NotificationConversationItem;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/livecaption/bean/NotificationConversationItem;->message1:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/livecaption/bean/NotificationConversationItem;->message2:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/livecaption/bean/NotificationConversationItem;->message3:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/livecaption/bean/NotificationConversationItem;->message4:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/livecaption/bean/NotificationConversationItem;->message5:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/livecaption/bean/NotificationConversationItem;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/transsion/livecaption/bean/NotificationConversationItem;->status:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/transsion/livecaption/bean/NotificationConversationItem;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
