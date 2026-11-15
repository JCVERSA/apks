.class public Lcom/cloud/hisavana/sdk/b$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field public final synthetic b:Lcom/cloud/hisavana/sdk/b;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/b$g;->b:Lcom/cloud/hisavana/sdk/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/b;Lcom/cloud/hisavana/sdk/b$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/b$g;-><init>(Lcom/cloud/hisavana/sdk/b;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b$g;->b:Lcom/cloud/hisavana/sdk/b;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/b;->I(Lcom/cloud/hisavana/sdk/b;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/b$g;->b:Lcom/cloud/hisavana/sdk/b;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/b;->I(Lcom/cloud/hisavana/sdk/b;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/cloud/hisavana/sdk/U0;->k(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :cond_0
    return-void
.end method
