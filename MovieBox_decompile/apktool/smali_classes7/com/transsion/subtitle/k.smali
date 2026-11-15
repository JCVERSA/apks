.class public final synthetic Lcom/transsion/subtitle/k;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/subtitle/VideoSubtitleManagerImp;

.field public final synthetic b:Lkotlin/jvm/functions/Function1;

.field public final synthetic c:Lcom/transsion/baselib/db/download/DownloadBean;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/subtitle/VideoSubtitleManagerImp;Lkotlin/jvm/functions/Function1;Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/subtitle/k;->a:Lcom/transsion/subtitle/VideoSubtitleManagerImp;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/subtitle/k;->b:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/subtitle/k;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/k;->a:Lcom/transsion/subtitle/VideoSubtitleManagerImp;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/subtitle/k;->b:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/subtitle/k;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 6
    .line 7
    check-cast p1, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-static {v0, v1, v2, p1}, Lcom/transsion/subtitle/VideoSubtitleManagerImp;->m(Lcom/transsion/subtitle/VideoSubtitleManagerImp;Lkotlin/jvm/functions/Function1;Lcom/transsion/baselib/db/download/DownloadBean;Z)Lkotlin/Unit;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
