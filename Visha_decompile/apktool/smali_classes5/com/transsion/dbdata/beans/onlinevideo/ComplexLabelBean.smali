.class public Lcom/transsion/dbdata/beans/onlinevideo/ComplexLabelBean;
.super Lcom/transsion/dbdata/beans/onlinevideo/LabelBean;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/dbdata/beans/onlinevideo/ComplexLabelBean;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG_TYPE_SPACIAL_HOT:I = 0x2

.field public static final TAG_TYPE_SPACIAL_NEW:I = 0x1


# instance fields
.field private aggregation_tag:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/ComplexLabelBean;",
            ">;"
        }
    .end annotation
.end field

.field private aggregation_tag_ids:Ljava/lang/String;

.field private pay_type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/beans/onlinevideo/ComplexLabelBean$1;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/onlinevideo/ComplexLabelBean$1;-><init>()V

    sput-object v0, Lcom/transsion/dbdata/beans/onlinevideo/ComplexLabelBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/onlinevideo/LabelBean;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/onlinevideo/LabelBean;->setTag_type(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/dbdata/beans/onlinevideo/LabelBean;->setTag_id(J)V

    sget-object v0, Lcom/transsion/dbdata/beans/onlinevideo/ComplexLabelBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/onlinevideo/ComplexLabelBean;->setAggregation_tag(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAggregation_tag()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/ComplexLabelBean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/ComplexLabelBean;->aggregation_tag:Ljava/util/List;

    return-object p0
.end method

.method public getAggregation_tag_ids()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/ComplexLabelBean;->aggregation_tag_ids:Ljava/lang/String;

    return-object p0
.end method

.method public getPay_type()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/ComplexLabelBean;->pay_type:I

    return p0
.end method

.method public isHot()Z
    .locals 1

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/ComplexLabelBean;->pay_type:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNew()Z
    .locals 1

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/ComplexLabelBean;->pay_type:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAggregation_tag(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/ComplexLabelBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/ComplexLabelBean;->aggregation_tag:Ljava/util/List;

    return-void
.end method

.method public setAggregation_tag_ids(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/ComplexLabelBean;->aggregation_tag_ids:Ljava/lang/String;

    return-void
.end method

.method public setPay_type(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/ComplexLabelBean;->pay_type:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/LabelBean;->getTag_type()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/LabelBean;->getTag_id()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/ComplexLabelBean;->aggregation_tag:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
