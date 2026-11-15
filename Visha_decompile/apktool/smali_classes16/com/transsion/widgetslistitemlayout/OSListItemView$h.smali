.class public Lcom/transsion/widgetslistitemlayout/OSListItemView$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslistitemlayout/OSListItemView;->v()V
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

    iput-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$h;->b:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$h;->b:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {v0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->u(Lcom/transsion/widgetslistitemlayout/OSListItemView;)V

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$h;->b:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-virtual {v0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->B()Lcom/transsion/widgetslistitemlayout/OSListItemView$j;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$h;->b:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-virtual {v1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->adjustViewDescribeTitleWidth()V

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$h;->b:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->B()Lcom/transsion/widgetslistitemlayout/OSListItemView$j;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->T(Lcom/transsion/widgetslistitemlayout/OSListItemView$j;Lcom/transsion/widgetslistitemlayout/OSListItemView$j;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
