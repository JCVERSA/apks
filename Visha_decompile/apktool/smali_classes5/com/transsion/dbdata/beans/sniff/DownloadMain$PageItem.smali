.class public Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/dbdata/beans/sniff/DownloadMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PageItem"
.end annotation


# static fields
.field public static final DOWNLOAD_TYPE_ID:I = 0x5

.field public static final HOT_OLD_TYPE_ID:I = 0x7

.field public static final HOT_TYPE_ID:I = 0x14

.field public static final ITEM_TYPE_BOOKMARK:I = 0x1

.field public static final ITEM_TYPE_CLOUD_SEARCH_HEADER:I = 0x3eb

.field public static final ITEM_TYPE_ENTER:I = 0x0

.field public static final ITEM_TYPE_RECOMMEND:I = 0x2

.field public static final MOVIES_TYPE_ID:I = 0x3

.field public static final OTHERS_TYPE_ID:I = 0x4

.field public static final POPULAR_MUSIC_TYPE_ID:I = 0x6

.field public static final SOCIAL_MEDIA_TYPE_ID:I = 0x1


# instance fields
.field private category_id:I

.field private category_name:Ljava/lang/String;

.field private category_sort:I

.field private data_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;",
            ">;"
        }
    .end annotation
.end field

.field private data_remark_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/sniff/Bookmark;",
            ">;"
        }
    .end annotation
.end field

.field private website_type:I

.field private website_type_switch_status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategory_id()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;->category_id:I

    return p0
.end method

.method public getCategory_name()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;->category_name:Ljava/lang/String;

    return-object p0
.end method

.method public getCategory_sort()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;->category_sort:I

    return p0
.end method

.method public getData_list()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;->data_list:Ljava/util/List;

    return-object p0
.end method

.method public getData_remark_list()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/sniff/Bookmark;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;->data_remark_list:Ljava/util/List;

    return-object p0
.end method

.method public getWebsite_type()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;->website_type:I

    return p0
.end method

.method public getWebsite_type_switch_status()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;->website_type_switch_status:I

    return p0
.end method

.method public setCategory_id(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;->category_id:I

    return-void
.end method

.method public setCategory_name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;->category_name:Ljava/lang/String;

    return-void
.end method

.method public setCategory_sort(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;->category_sort:I

    return-void
.end method

.method public setData_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;->data_list:Ljava/util/List;

    return-void
.end method

.method public setData_remark_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/sniff/Bookmark;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;->data_remark_list:Ljava/util/List;

    return-void
.end method

.method public setWebsite_type(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;->website_type:I

    return-void
.end method

.method public setWebsite_type_switch_status(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;->website_type_switch_status:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PageItem{category_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;->category_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", category_name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;->category_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", category_sort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;->category_sort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", website_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;->website_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", website_type_switch_status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;->website_type_switch_status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", data_list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;->data_list:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
