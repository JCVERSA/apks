.class public Lcom/transsion/playercommon/widgets/SearchFileView$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/widgets/SearchFileView;->initSearchView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/widgets/SearchFileView;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/widgets/SearchFileView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/SearchFileView$d;->b:Lcom/transsion/playercommon/widgets/SearchFileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView$d;->b:Lcom/transsion/playercommon/widgets/SearchFileView;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/SearchFileView;->m(Lcom/transsion/playercommon/widgets/SearchFileView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView$d;->b:Lcom/transsion/playercommon/widgets/SearchFileView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView$d;->b:Lcom/transsion/playercommon/widgets/SearchFileView;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lcom/transsion/playercommon/R$color;->transparent:I

    goto :goto_1

    :cond_1
    sget v2, Lcom/transsion/playercommon/R$color;->search_view_cover_color:I

    :goto_1
    iget-object v3, p0, Lcom/transsion/playercommon/widgets/SearchFileView$d;->b:Lcom/transsion/playercommon/widgets/SearchFileView;

    invoke-static {v3}, Lcom/transsion/playercommon/widgets/SearchFileView;->j(Lcom/transsion/playercommon/widgets/SearchFileView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/SearchFileView$d;->b:Lcom/transsion/playercommon/widgets/SearchFileView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/SearchFileView;->loadSearchData(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
