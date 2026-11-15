.class public final synthetic Llu/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic a:Llu/e;

.field public final synthetic b:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;


# direct methods
.method public synthetic constructor <init>(Llu/e;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Llu/d;->a:Llu/e;

    .line 5
    .line 6
    iput-object p2, p0, Llu/d;->b:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Llu/d;->a:Llu/e;

    .line 2
    .line 3
    iget-object v1, p0, Llu/d;->b:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 4
    .line 5
    check-cast p1, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    move-object v3, p2

    .line 12
    check-cast v3, Ljava/lang/String;

    .line 13
    .line 14
    move-object v4, p3

    .line 15
    check-cast v4, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 16
    .line 17
    check-cast p4, Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    invoke-static/range {v0 .. v5}, Llu/e;->a(Llu/e;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;ILjava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;Z)Lkotlin/Unit;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method
