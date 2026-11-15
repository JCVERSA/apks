.class Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;->setListener(Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$d;

.field final synthetic b:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$c;->b:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$c;->a:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$d;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$c;->a:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$d;

    .line 2
    .line 3
    sget-object v0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;->COPY_LINK:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;

    .line 4
    .line 5
    invoke-interface {p1, v0}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$d;->a(Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
