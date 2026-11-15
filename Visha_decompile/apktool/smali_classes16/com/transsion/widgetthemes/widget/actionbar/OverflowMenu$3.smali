.class Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


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

    iput-object p1, p0, Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu$3;->this$0:Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu$3;->this$0:Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;->e(Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;Z)V

    iget-object p0, p0, Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu$3;->this$0:Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;->setSelected(Z)V

    return-void
.end method
