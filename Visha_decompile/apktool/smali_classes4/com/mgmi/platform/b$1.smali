.class Lcom/mgmi/platform/b$1;
.super Lcom/mgadplus/netlib/base/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgmi/platform/b;->b(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mgadplus/netlib/base/b<",
        "Lcom/mgmi/net/bean/SdkConfigData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/mgmi/platform/b;


# direct methods
.method public constructor <init>(Lcom/mgmi/platform/b;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/platform/b$1;->b:Lcom/mgmi/platform/b;

    iput-object p2, p0, Lcom/mgmi/platform/b$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/mgadplus/netlib/base/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public a(Lcom/mgmi/net/bean/SdkConfigData;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/mgmi/platform/b$1;->b:Lcom/mgmi/platform/b;

    iget-object v1, p0, Lcom/mgmi/platform/b$1;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/mgmi/platform/b;->a(Lcom/mgmi/platform/b;Lcom/mgmi/net/bean/SdkConfigData;Landroid/content/Context;Lcom/mgmi/platform/b/a;)V

    .line 3
    sget-object p1, Lcom/mgmi/platform/b;->a:Lcom/mgmi/net/bean/SdkConfigData;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/mgmi/net/bean/SdkConfigData;->lm_pkg_wl:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/mgmi/platform/b$1;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 5
    sget-object v1, Lcom/mgmi/platform/b;->a:Lcom/mgmi/net/bean/SdkConfigData;

    iget-object v1, v1, Lcom/mgmi/net/bean/SdkConfigData;->lm_pkg_wl:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/mgmi/platform/b;->a:Lcom/mgmi/net/bean/SdkConfigData;

    iget-object v1, v1, Lcom/mgmi/net/bean/SdkConfigData;->lm_pkg_wl:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/mgmi/platform/b$1;->b:Lcom/mgmi/platform/b;

    iget-object v1, p0, Lcom/mgmi/platform/b$1;->a:Landroid/content/Context;

    invoke-static {p1, v1, v0}, Lcom/mgmi/platform/b;->a(Lcom/mgmi/platform/b;Landroid/content/Context;I)V

    .line 7
    :cond_0
    sget-object p1, Lcom/mgmi/platform/b;->a:Lcom/mgmi/net/bean/SdkConfigData;

    iget p1, p1, Lcom/mgmi/net/bean/SdkConfigData;->ins_switch:I

    if-ne p1, v0, :cond_1

    .line 8
    invoke-static {}, Li4d;->a()Li4d;

    move-result-object p1

    new-instance v0, Lcom/mgmi/platform/b$1$1;

    invoke-direct {v0, p0}, Lcom/mgmi/platform/b$1$1;-><init>(Lcom/mgmi/platform/b$1;)V

    invoke-virtual {p1, v0}, Li4d;->b(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/mgmi/net/bean/SdkConfigData;

    invoke-virtual {p0, p1}, Lcom/mgmi/platform/b$1;->a(Lcom/mgmi/net/bean/SdkConfigData;)V

    return-void
.end method
