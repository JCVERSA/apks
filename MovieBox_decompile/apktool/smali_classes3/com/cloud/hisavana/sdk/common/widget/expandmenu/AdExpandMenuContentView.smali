.class public Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;
.super Landroid/widget/RelativeLayout;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$d;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView;

.field private c:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView;

.field private d:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView;

.field private e:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/cloud/hisavana/sdk/R$layout;->ad_expand_menu_content_layout:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 5
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->advertiser_info:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/TextView;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;->a:Landroid/widget/TextView;

    .line 10
    .line 11
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->personalise:I

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;->b:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView;

    .line 20
    .line 21
    sget-object v1, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;->PERSONALISE_CLOSE:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView;->setData(Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;)V

    .line 24
    .line 25
    .line 26
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->about:I

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;->c:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView;

    .line 35
    .line 36
    sget-object v1, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;->ADVERTISER_INFO:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView;->setData(Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;)V

    .line 39
    .line 40
    .line 41
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->copy_link:I

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;->d:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView;

    .line 50
    .line 51
    sget-object v1, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;->COPY_LINK:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView;->setData(Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method protected setAdvertiserName(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;->a:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setListener(Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$d;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;->e:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$d;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;->b:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView;

    .line 4
    .line 5
    new-instance v1, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$a;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$a;-><init>(Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$d;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;->c:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView;

    .line 14
    .line 15
    new-instance v1, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$b;

    .line 16
    .line 17
    invoke-direct {v1, p0, p1}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$b;-><init>(Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$d;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;->d:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView;

    .line 24
    .line 25
    new-instance v1, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$c;

    .line 26
    .line 27
    invoke-direct {v1, p0, p1}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$c;-><init>(Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$d;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
