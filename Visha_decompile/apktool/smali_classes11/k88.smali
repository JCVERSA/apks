.class public final synthetic Lk88;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/dbdata/beans/DownloadVideoRecommend;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/dbdata/beans/DownloadVideoRecommend;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk88;->b:Lcom/transsion/dbdata/beans/DownloadVideoRecommend;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lk88;->b:Lcom/transsion/dbdata/beans/DownloadVideoRecommend;

    check-cast p1, Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/PlayerConfigHelper;->a(Lcom/transsion/dbdata/beans/DownloadVideoRecommend;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
