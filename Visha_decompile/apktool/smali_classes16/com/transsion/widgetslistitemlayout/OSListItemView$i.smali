.class public Lcom/transsion/widgetslistitemlayout/OSListItemView$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslistitemlayout/OSListItemView;->S()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslistitemlayout/OSListItemView;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslistitemlayout/OSListItemView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$i;->b:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$i;->b:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {p1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->a(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Lcom/transsion/widgetslib/view/OSCheckBox;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$i;->b:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {p1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->a(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Lcom/transsion/widgetslib/view/OSCheckBox;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$i;->b:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->a(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Lcom/transsion/widgetslib/view/OSCheckBox;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Lcom/transsion/widgetslib/view/OSCheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method
