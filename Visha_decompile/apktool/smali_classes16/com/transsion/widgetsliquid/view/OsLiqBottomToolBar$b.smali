.class public Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->setMoreViewListener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$b;->b:Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$b;->b:Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;

    invoke-static {p1}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->b(Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$b;->b:Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;

    invoke-static {p1}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->c(Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$b;->b:Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;

    invoke-static {p0}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->h(Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {p1, v0, p0, v2, v1}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->l(Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;Landroid/content/Context;Landroid/view/View;I[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$b;->b:Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;

    invoke-static {p0}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->e(Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;)Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$l;

    :goto_0
    return-void
.end method
