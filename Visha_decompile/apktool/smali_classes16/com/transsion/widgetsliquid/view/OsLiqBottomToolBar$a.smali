.class public Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$a;
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
.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:I

.field public final synthetic d:Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;Ljava/util/ArrayList;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$a;->d:Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;

    iput-object p2, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$a;->b:Ljava/util/ArrayList;

    iput p3, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$a;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)Lzfb;
    .locals 2

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$a;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$a;->a(Ljava/lang/Boolean;)Lzfb;

    move-result-object p0

    return-object p0
.end method
