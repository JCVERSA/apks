.class Lcom/mgmi/ads/api/e/a/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgmi/ads/api/a/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgmi/ads/api/e/a/a;->h(Lcom/mgmi/platform/view/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgmi/platform/view/a;

.field final synthetic b:Lcom/mgmi/ads/api/e/a/a;


# direct methods
.method public constructor <init>(Lcom/mgmi/ads/api/e/a/a;Lcom/mgmi/platform/view/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ads/api/e/a/a$4;->b:Lcom/mgmi/ads/api/e/a/a;

    iput-object p2, p0, Lcom/mgmi/ads/api/e/a/a$4;->a:Lcom/mgmi/platform/view/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a$4;->b:Lcom/mgmi/ads/api/e/a/a;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-string v2, "ADS_TYPE_VIDEO_WIDGET_MID"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/mgmi/ads/api/e/a/a;->a(Lcom/mgmi/ads/api/e/a/a;ZLjava/lang/String;FII)V

    return-void
.end method

.method public a(Lcom/mgmi/model/r;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mgmi/ads/api/e/a/a$4;->b:Lcom/mgmi/ads/api/e/a/a;

    iget-object p0, p0, Lcom/mgmi/ads/api/e/a/a$4;->a:Lcom/mgmi/platform/view/a;

    invoke-static {v0, p0, p1}, Lcom/mgmi/ads/api/e/a/a;->a(Lcom/mgmi/ads/api/e/a/a;Lcom/mgmi/platform/view/a;Lcom/mgmi/model/r;)V

    return-void
.end method
