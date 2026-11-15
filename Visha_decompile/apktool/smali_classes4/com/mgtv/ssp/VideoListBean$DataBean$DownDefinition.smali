.class public Lcom/mgtv/ssp/VideoListBean$DataBean$DownDefinition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/ssp/VideoListBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownDefinition"
.end annotation


# instance fields
.field public definition:I

.field public pay:I

.field public size:J


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mgtv/ssp/VideoListBean$DataBean$DownDefinition;->definition:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mgtv/ssp/VideoListBean$DataBean$DownDefinition;->size:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/mgtv/ssp/VideoListBean$DataBean$DownDefinition;->pay:I

    return-void
.end method
