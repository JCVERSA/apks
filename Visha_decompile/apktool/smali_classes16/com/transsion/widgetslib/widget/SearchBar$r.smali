.class public Lcom/transsion/widgetslib/widget/SearchBar$r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/SearchBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "r"
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public final synthetic b:Lcom/transsion/widgetslib/widget/SearchBar;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/SearchBar;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar$r;->b:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/SearchBar$r;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getWidth()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar$r;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return p0
.end method

.method public setWidth(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$r;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar$r;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
