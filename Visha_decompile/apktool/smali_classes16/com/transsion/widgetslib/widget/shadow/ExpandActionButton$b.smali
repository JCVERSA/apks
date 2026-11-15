.class public Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$b;->b:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$b;->b:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->e(Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;Z)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$b;->b:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->f(Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;Z)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$b;->b:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->a(Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$b;->b:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->collapseItemButtons()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$b;->b:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->h(Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;I)V

    return-void
.end method
