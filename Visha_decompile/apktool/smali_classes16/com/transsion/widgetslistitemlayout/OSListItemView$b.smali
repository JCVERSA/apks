.class public Lcom/transsion/widgetslistitemlayout/OSListItemView$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslistitemlayout/OSListItemView;->updateGroupTitle()V
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

    iput-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$b;->b:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$b;->b:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-static {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->b(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->o(Lcom/transsion/widgetslistitemlayout/OSListItemView;Z)V

    return-void
.end method
