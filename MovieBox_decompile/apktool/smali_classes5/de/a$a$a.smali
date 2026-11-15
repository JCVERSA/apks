.class Lde/a$a$a;
.super Lcom/cloud/hisavana/sdk/api/listener/e;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/a$a;->registerViewForInteraction(Landroid/view/View;Lcom/hisavana/common/interfacz/AdShowListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/hisavana/common/interfacz/AdShowListener;

.field public final synthetic c:Lde/a$a;


# direct methods
.method public constructor <init>(Lde/a$a;Lcom/hisavana/common/interfacz/AdShowListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lde/a$a$a;->c:Lde/a$a;

    .line 2
    .line 3
    iput-object p2, p0, Lde/a$a$a;->b:Lcom/hisavana/common/interfacz/AdShowListener;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/api/listener/e;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lde/a$a$a;->c:Lde/a$a;

    .line 2
    .line 3
    iget-object v0, p1, Lde/a$a;->a:Lcom/hisavana/common/base/BaseNative;

    .line 4
    .line 5
    iget-object p1, p1, Lde/a$a;->b:Lcom/hisavana/common/bean/AdNativeInfo;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/hisavana/common/base/BaseAd;->adImpression(Lcom/hisavana/common/bean/AdNativeInfo;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lde/a$a$a;->b:Lcom/hisavana/common/interfacz/AdShowListener;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lde/a$a$a;->c:Lde/a$a;

    .line 15
    .line 16
    iget-object v0, v0, Lde/a$a;->b:Lcom/hisavana/common/bean/AdNativeInfo;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/hisavana/common/interfacz/AdShowListener;->onAdShow(Lcom/hisavana/common/bean/TAdNativeInfo;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
