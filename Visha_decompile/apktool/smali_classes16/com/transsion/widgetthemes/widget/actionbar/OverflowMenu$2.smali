.class Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;->createPopuMenu(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu$2;->this$0:Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu$2;->this$0:Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;

    invoke-static {v0}, Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;->b(Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu$2;->this$0:Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;

    invoke-static {v0}, Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;->b(Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu$2;->this$0:Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;

    invoke-static {v0}, Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;->c(Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu$2;->this$0:Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;

    invoke-static {p0}, Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;->c(Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;)Landroid/app/Fragment;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
