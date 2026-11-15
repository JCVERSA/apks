.class public final synthetic Lx7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/vishaads/datasource/AdSourceDownloader;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

.field public final synthetic e:Lcom/transsion/vishaads/datasource/AdSourceDownloader$DownloadCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/vishaads/datasource/AdSourceDownloader;Ljava/lang/String;Lcom/transsion/dbdata/beans/adsbean/AdItemBean;Lcom/transsion/vishaads/datasource/AdSourceDownloader$DownloadCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx7;->b:Lcom/transsion/vishaads/datasource/AdSourceDownloader;

    iput-object p2, p0, Lx7;->c:Ljava/lang/String;

    iput-object p3, p0, Lx7;->d:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    iput-object p4, p0, Lx7;->e:Lcom/transsion/vishaads/datasource/AdSourceDownloader$DownloadCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lx7;->b:Lcom/transsion/vishaads/datasource/AdSourceDownloader;

    iget-object v1, p0, Lx7;->c:Ljava/lang/String;

    iget-object v2, p0, Lx7;->d:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    iget-object p0, p0, Lx7;->e:Lcom/transsion/vishaads/datasource/AdSourceDownloader$DownloadCallback;

    invoke-static {v0, v1, v2, p0}, Lcom/transsion/vishaads/datasource/AdSourceDownloader;->a(Lcom/transsion/vishaads/datasource/AdSourceDownloader;Ljava/lang/String;Lcom/transsion/dbdata/beans/adsbean/AdItemBean;Lcom/transsion/vishaads/datasource/AdSourceDownloader$DownloadCallback;)V

    return-void
.end method
