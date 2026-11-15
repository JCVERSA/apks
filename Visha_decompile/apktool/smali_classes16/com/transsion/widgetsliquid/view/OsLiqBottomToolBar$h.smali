.class public Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf43$r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->H(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$h;->b:Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;

    iput-object p2, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$h;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lf43;FF)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$h;->a:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$h;->a:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setScaleX(F)V

    return-void
.end method
