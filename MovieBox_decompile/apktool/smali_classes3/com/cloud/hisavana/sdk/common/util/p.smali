.class public final synthetic Lcom/cloud/hisavana/sdk/common/util/p;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/common/util/r;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/common/util/r;Landroid/view/View;Landroid/graphics/drawable/GradientDrawable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/p;->a:Lcom/cloud/hisavana/sdk/common/util/r;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/util/p;->b:Landroid/view/View;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/cloud/hisavana/sdk/common/util/p;->c:Landroid/graphics/drawable/GradientDrawable;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/util/p;->a:Lcom/cloud/hisavana/sdk/common/util/r;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/util/p;->b:Landroid/view/View;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/util/p;->c:Landroid/graphics/drawable/GradientDrawable;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/util/r;->b(Lcom/cloud/hisavana/sdk/common/util/r;Landroid/view/View;Landroid/graphics/drawable/GradientDrawable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
