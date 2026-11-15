.class public Lcom/transsion/dbdata/beans/sniff/BookmarkRequest$EntryKeysBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/dbdata/beans/sniff/BookmarkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EntryKeysBean"
.end annotation


# instance fields
.field private dataList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data_list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/sniff/Bookmark;",
            ">;"
        }
    .end annotation
.end field

.field private sort:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sort"
    .end annotation
.end field

.field private updateTimeStamp:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "update_time_stamp"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDataList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/sniff/Bookmark;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/BookmarkRequest$EntryKeysBean;->dataList:Ljava/util/List;

    return-object p0
.end method

.method public getSort()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/sniff/BookmarkRequest$EntryKeysBean;->sort:I

    return p0
.end method

.method public getUpdateTimeStamp()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/BookmarkRequest$EntryKeysBean;->updateTimeStamp:Ljava/lang/Object;

    return-object p0
.end method

.method public setDataList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/sniff/Bookmark;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/BookmarkRequest$EntryKeysBean;->dataList:Ljava/util/List;

    return-void
.end method

.method public setSort(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/sniff/BookmarkRequest$EntryKeysBean;->sort:I

    return-void
.end method

.method public setUpdateTimeStamp(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/BookmarkRequest$EntryKeysBean;->updateTimeStamp:Ljava/lang/Object;

    return-void
.end method
