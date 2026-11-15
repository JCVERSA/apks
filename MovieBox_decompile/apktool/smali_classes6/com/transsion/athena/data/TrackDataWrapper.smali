.class public Lcom/transsion/athena/data/TrackDataWrapper;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/athena/data/TrackDataWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/transsion/athena/data/TrackData;

.field private c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/athena/data/TrackDataWrapper$athena;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/athena/data/TrackDataWrapper$athena;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/athena/data/TrackDataWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/athena/data/TrackDataWrapper;->a:Ljava/lang/String;

    .line 7
    const-class v0, Lcom/transsion/athena/data/TrackData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/transsion/athena/data/TrackData;

    iput-object v0, p0, Lcom/transsion/athena/data/TrackDataWrapper;->b:Lcom/transsion/athena/data/TrackData;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/athena/data/TrackDataWrapper;->c:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/athena/data/TrackDataWrapper;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/transsion/athena/data/TrackDataWrapper;->b:Lcom/transsion/athena/data/TrackData;

    .line 4
    iput-wide p3, p0, Lcom/transsion/athena/data/TrackDataWrapper;->c:J

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/athena/data/TrackDataWrapper;->a:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    :cond_0
    return-object v0
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/athena/data/TrackDataWrapper;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public c()Lcom/transsion/athena/data/TrackData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/athena/data/TrackDataWrapper;->b:Lcom/transsion/athena/data/TrackData;

    .line 2
    .line 3
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/athena/data/TrackDataWrapper;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/athena/data/TrackDataWrapper;->b:Lcom/transsion/athena/data/TrackData;

    .line 7
    .line 8
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 9
    .line 10
    .line 11
    iget-wide v0, p0, Lcom/transsion/athena/data/TrackDataWrapper;->c:J

    .line 12
    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
