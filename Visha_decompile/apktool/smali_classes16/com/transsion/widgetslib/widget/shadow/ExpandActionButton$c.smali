.class public Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->m()V
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

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$c;->b:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$c;->b:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->h(Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;I)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$c;->b:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->e(Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;Z)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$c;->b:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;

    invoke-static {p1, v0}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->f(Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;Z)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$c;->b:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->a(Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$c;->b:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->g(Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;)V

    :cond_0
    return-void
.end method
