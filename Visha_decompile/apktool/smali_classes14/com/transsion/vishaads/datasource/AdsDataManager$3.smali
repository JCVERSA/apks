.class Lcom/transsion/vishaads/datasource/AdsDataManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/vishaads/datasource/AdSourceDownloader$DownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/vishaads/datasource/AdsDataManager;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/vishaads/datasource/AdsDataManager;


# direct methods
.method public constructor <init>(Lcom/transsion/vishaads/datasource/AdsDataManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaads/datasource/AdsDataManager$3;->this$0:Lcom/transsion/vishaads/datasource/AdsDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onDownloadSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
