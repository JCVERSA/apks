.class public Lcom/transsion/dbdata/beans/sniff/SniffBlackWhiteBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/dbdata/beans/sniff/SniffBlackWhiteBean$SniffList;
    }
.end annotation


# instance fields
.field private sniff_list:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sniff_black_white_list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/sniff/SniffBlackWhiteBean$SniffList;",
            ">;"
        }
    .end annotation
.end field

.field private sniff_switch_status:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sniff_switch_status"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSniffList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/sniff/SniffBlackWhiteBean$SniffList;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/SniffBlackWhiteBean;->sniff_list:Ljava/util/List;

    return-object p0
.end method

.method public isSniffSwitchOpen()Z
    .locals 1

    iget p0, p0, Lcom/transsion/dbdata/beans/sniff/SniffBlackWhiteBean;->sniff_switch_status:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setSniffList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/sniff/SniffBlackWhiteBean$SniffList;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/SniffBlackWhiteBean;->sniff_list:Ljava/util/List;

    return-void
.end method

.method public setSniffSwitchStatus(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/sniff/SniffBlackWhiteBean;->sniff_switch_status:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SniffBlackWhiteBean{sniff_switch_status=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/dbdata/beans/sniff/SniffBlackWhiteBean;->sniff_switch_status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sniff_list=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/SniffBlackWhiteBean;->sniff_list:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
