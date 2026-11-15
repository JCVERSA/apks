.class Lcom/cloud/hisavana/sdk/s5$c$c;
.super Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/s5$c;->o()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/cloud/hisavana/sdk/s5$c;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/s5$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/s5$c$c;->b:Lcom/cloud/hisavana/sdk/s5$c;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/s5$c$c;->b:Lcom/cloud/hisavana/sdk/s5$c;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/s5$c;->q(Lcom/cloud/hisavana/sdk/s5$c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 2

    .line 1
    const/16 v0, 0xfa

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/s5$c$c;->b:Lcom/cloud/hisavana/sdk/s5$c;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/s5$c;->l(Lcom/cloud/hisavana/sdk/s5$c;)Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$c;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/s5$c$c;->b:Lcom/cloud/hisavana/sdk/s5$c;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/s5$c;->l(Lcom/cloud/hisavana/sdk/s5$c;)Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$c;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-interface {p1, v0}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$c;->a(Z)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/s5$c$c;->b:Lcom/cloud/hisavana/sdk/s5$c;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/s5$c;->l(Lcom/cloud/hisavana/sdk/s5$c;)Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$c;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/s5$c$c;->b:Lcom/cloud/hisavana/sdk/s5$c;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/s5$c;->l(Lcom/cloud/hisavana/sdk/s5$c;)Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$c;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-interface {p1, v1}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$c;->a(Z)V

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/s5$c$c;->b:Lcom/cloud/hisavana/sdk/s5$c;

    .line 43
    .line 44
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/s5$c;->n(Lcom/cloud/hisavana/sdk/s5$c;)Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getIconImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1, v1}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->setCached(Z)V

    .line 53
    .line 54
    .line 55
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/l;->a()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    if-eqz p2, :cond_2

    .line 62
    .line 63
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    goto :goto_1

    .line 68
    :cond_2
    const/4 p2, 0x0

    .line 69
    :goto_1
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_3
    if-eqz p2, :cond_4

    .line 74
    .line 75
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getFilePath()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    goto :goto_2

    .line 80
    :cond_4
    const-string p2, ""

    .line 81
    .line 82
    :goto_2
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->setFilePath(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :goto_3
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/s5$c$c;->b:Lcom/cloud/hisavana/sdk/s5$c;

    .line 86
    .line 87
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/s5$c;->q(Lcom/cloud/hisavana/sdk/s5$c;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method
