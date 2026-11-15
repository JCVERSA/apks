.class Lcom/cloud/hisavana/sdk/t$f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/t;


# direct methods
.method private constructor <init>(Lcom/cloud/hisavana/sdk/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/t$f;->a:Lcom/cloud/hisavana/sdk/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cloud/hisavana/sdk/t;Lcom/cloud/hisavana/sdk/t$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/t$f;-><init>(Lcom/cloud/hisavana/sdk/t;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t$f;->a:Lcom/cloud/hisavana/sdk/t;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/t;->x(Lcom/cloud/hisavana/sdk/t;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t$f;->a:Lcom/cloud/hisavana/sdk/t;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/t;->x(Lcom/cloud/hisavana/sdk/t;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/J0;->k(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
