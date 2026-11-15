.class public Lcom/transsion/dbdata/beans/sniff/DownloadMain;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/dbdata/beans/sniff/DownloadMain$BtConfInfo;,
        Lcom/transsion/dbdata/beans/sniff/DownloadMain$DownloadContent;,
        Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;,
        Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;
    }
.end annotation


# instance fields
.field private bt_conf_info:Lcom/transsion/dbdata/beans/sniff/DownloadMain$BtConfInfo;

.field private website_category_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBt_conf_info()Lcom/transsion/dbdata/beans/sniff/DownloadMain$BtConfInfo;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain;->bt_conf_info:Lcom/transsion/dbdata/beans/sniff/DownloadMain$BtConfInfo;

    return-object p0
.end method

.method public getWebsite_category_list()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain;->website_category_list:Ljava/util/List;

    return-object p0
.end method

.method public setBt_conf_info(Lcom/transsion/dbdata/beans/sniff/DownloadMain$BtConfInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain;->bt_conf_info:Lcom/transsion/dbdata/beans/sniff/DownloadMain$BtConfInfo;

    return-void
.end method

.method public setWebsite_category_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain;->website_category_list:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadMain{bt_conf_info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain;->bt_conf_info:Lcom/transsion/dbdata/beans/sniff/DownloadMain$BtConfInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", website_category_list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain;->website_category_list:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
