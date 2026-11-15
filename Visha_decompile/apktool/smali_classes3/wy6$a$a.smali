.class public Lwy6$a$a;
.super Lv7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwy6$a;->registerViewForInteraction(Landroid/view/View;Lcom/hisavana/common/interfacz/AdShowListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/hisavana/common/interfacz/AdShowListener;

.field public final synthetic c:Lwy6$a;


# direct methods
.method public constructor <init>(Lwy6$a;Lcom/hisavana/common/interfacz/AdShowListener;)V
    .locals 0

    iput-object p1, p0, Lwy6$a$a;->c:Lwy6$a;

    iput-object p2, p0, Lwy6$a$a;->b:Lcom/hisavana/common/interfacz/AdShowListener;

    invoke-direct {p0}, Lv7;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 1

    iget-object p1, p0, Lwy6$a$a;->c:Lwy6$a;

    iget-object v0, p1, Lwy6$a;->a:Lcom/hisavana/common/base/BaseNative;

    iget-object p1, p1, Lwy6$a;->b:Lcom/hisavana/common/bean/AdNativeInfo;

    invoke-virtual {v0, p1}, Lcom/hisavana/common/base/BaseAd;->adImpression(Lcom/hisavana/common/bean/AdNativeInfo;)V

    iget-object p1, p0, Lwy6$a$a;->b:Lcom/hisavana/common/interfacz/AdShowListener;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lwy6$a$a;->c:Lwy6$a;

    iget-object p0, p0, Lwy6$a;->b:Lcom/hisavana/common/bean/AdNativeInfo;

    invoke-virtual {p1, p0}, Lcom/hisavana/common/interfacz/AdShowListener;->onAdShow(Lcom/hisavana/common/bean/TAdNativeInfo;)V

    :cond_0
    return-void
.end method
