.class public final synthetic Lg7/g;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field public final synthetic b:Lg7/i;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lg7/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lg7/g;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 5
    .line 6
    iput-object p2, p0, Lg7/g;->b:Lg7/i;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lg7/g;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    iget-object v1, p0, Lg7/g;->b:Lg7/i;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lg7/i;->c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lg7/i;Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
