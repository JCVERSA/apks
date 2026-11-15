.class public abstract Lgu/e;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final a(Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;)Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;
    .locals 9

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getCollectionId()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getCollectionName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getVideoNum()Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getDescImage()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDescImage;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    const/16 v7, 0x8

    .line 25
    .line 26
    const/4 v8, 0x0

    .line 27
    const/4 v5, 0x0

    .line 28
    move-object v1, v0

    .line 29
    invoke-direct/range {v1 .. v8}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDescImage;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method
