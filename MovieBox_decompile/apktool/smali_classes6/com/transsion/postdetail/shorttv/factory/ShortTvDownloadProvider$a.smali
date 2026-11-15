.class public final Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$a;
.super Lui/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$a;->a:Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;

    .line 2
    .line 3
    invoke-direct {p0}, Lui/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public e(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string p2, "bean"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$a;->a:Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;

    .line 7
    .line 8
    invoke-static {p2}, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->o(Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;)Lur/m;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-interface {p2, v0, p1}, Lur/m;->a(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method
