.class public Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->g(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView$b;->c:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView$b;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView$b;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView$b;->c:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView$b;->b:Landroid/view/View;

    invoke-static {p1, p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->f(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;Landroid/view/View;)V

    :cond_0
    return-void
.end method
