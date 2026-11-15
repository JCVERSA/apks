.class Lcom/cloud/hisavana/sdk/t$h;
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
    name = "h"
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/t;


# direct methods
.method private constructor <init>(Lcom/cloud/hisavana/sdk/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/t$h;->a:Lcom/cloud/hisavana/sdk/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cloud/hisavana/sdk/t;Lcom/cloud/hisavana/sdk/t$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/t$h;-><init>(Lcom/cloud/hisavana/sdk/t;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t$h;->a:Lcom/cloud/hisavana/sdk/t;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/t;->h(Lcom/cloud/hisavana/sdk/t;Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
