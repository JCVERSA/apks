.class public Lcom/mgtv/downloader/statistics/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lcom/mgtv/downloader/statistics/b;

.field protected b:Lcom/mgtv/data/aphone/core/c/d;

.field protected c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/mgtv/downloader/statistics/a;->a()V

    iput-object p1, p0, Lcom/mgtv/downloader/statistics/a;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-static {}, Lcom/mgtv/downloader/statistics/b;->a()Lcom/mgtv/downloader/statistics/b;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/downloader/statistics/a;->a:Lcom/mgtv/downloader/statistics/b;

    new-instance v0, Lcom/mgtv/data/aphone/core/c/d;

    invoke-direct {v0}, Lcom/mgtv/data/aphone/core/c/d;-><init>()V

    iput-object v0, p0, Lcom/mgtv/downloader/statistics/a;->b:Lcom/mgtv/data/aphone/core/c/d;

    return-void
.end method
