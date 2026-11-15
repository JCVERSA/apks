.class public Lcom/transsion/tools/adapter/DefaultSkinsAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/transsion/dbdata/beans/SkinsMenu;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final o:[I

.field public static final p:[I

.field public static final q:[I

.field public static final r:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lcom/transsion/tools/R$color;->default_skin_text_color_1:I

    sget v1, Lcom/transsion/tools/R$color;->default_skin_text_color_2:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/tools/adapter/DefaultSkinsAdapter;->o:[I

    sget v0, Lcom/transsion/tools/R$color;->default_skin_background_color_1:I

    sget v1, Lcom/transsion/tools/R$color;->default_skin_background_color_2:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/tools/adapter/DefaultSkinsAdapter;->p:[I

    sget v0, Lcom/transsion/tools/R$drawable;->ic_skin_diy:I

    sget v1, Lcom/transsion/tools/R$drawable;->ic_skin:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/tools/adapter/DefaultSkinsAdapter;->q:[I

    sget v0, Lcom/transsion/tools/R$string;->visha_custom_theme:I

    sget v1, Lcom/transsion/tools/R$string;->visha_default_theme:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/tools/adapter/DefaultSkinsAdapter;->r:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget v0, Lcom/transsion/tools/R$layout;->default_skins_menu_item:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/SkinsMenu;)V
    .locals 4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    sget v0, Lcom/transsion/tools/R$id;->tv_skin_menu_name:I

    sget-object v1, Lcom/transsion/tools/adapter/DefaultSkinsAdapter;->r:[I

    aget v1, v1, p2

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/transsion/tools/adapter/DefaultSkinsAdapter;->o:[I

    array-length v3, v2

    rem-int v3, p2, v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v0, Lcom/transsion/tools/R$id;->fl_skin_menu:I

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/transsion/tools/adapter/DefaultSkinsAdapter;->p:[I

    array-length v2, v1

    rem-int v2, p2, v2

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setBackgroundColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget p0, Lcom/transsion/tools/R$id;->iv_skin_menu:I

    sget-object v1, Lcom/transsion/tools/adapter/DefaultSkinsAdapter;->q:[I

    array-length v2, v1

    rem-int/2addr p2, v2

    aget p2, v1, p2

    invoke-virtual {p1, p0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x19

    const/high16 p2, 0x420c0000    # 35.0f

    const/high16 v0, 0x41700000    # 15.0f

    invoke-static {p0, v0, p1, p2}, Lpcc;->a(Landroid/view/View;FIF)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/beans/SkinsMenu;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/tools/adapter/DefaultSkinsAdapter;->b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/SkinsMenu;)V

    return-void
.end method
