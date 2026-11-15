.class public Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->f(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu$c;->a:Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu$c;->a:Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->e(Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;Z)V

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu$c;->a:Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->setSelected(Z)V

    return-void
.end method
