.class public final Lcom/transsion/dbdata/database/PlayListMediaItem$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/dbdata/database/PlayListMediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Parcel;)Lcom/transsion/dbdata/database/PlayListMediaItem;
    .locals 9

    const-string p0, "parcel"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/transsion/dbdata/database/PlayListMediaItem;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/transsion/dbdata/database/PlayListMediaItem;-><init>(JJIJLjava/lang/String;)V

    return-object p0
.end method

.method public final b(I)[Lcom/transsion/dbdata/database/PlayListMediaItem;
    .locals 0

    new-array p0, p1, [Lcom/transsion/dbdata/database/PlayListMediaItem;

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/database/PlayListMediaItem$a;->a(Landroid/os/Parcel;)Lcom/transsion/dbdata/database/PlayListMediaItem;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/database/PlayListMediaItem$a;->b(I)[Lcom/transsion/dbdata/database/PlayListMediaItem;

    move-result-object p0

    return-object p0
.end method
