.class public Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->startBgModeTransition(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/util/ArrayList;

.field public final synthetic e:Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;IILjava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$j;->e:Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;

    iput p2, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$j;->b:I

    iput p3, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$j;->c:I

    iput-object p4, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$j;->d:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)Lzfb;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$j;->b:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$j;->c:I

    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$j;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$j;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$j;->a(Ljava/lang/Boolean;)Lzfb;

    move-result-object p0

    return-object p0
.end method
