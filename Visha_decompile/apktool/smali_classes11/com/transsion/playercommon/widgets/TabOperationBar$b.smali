.class public Lcom/transsion/playercommon/widgets/TabOperationBar$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/widgets/TabOperationBar;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/widgets/TabOperationBar;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/widgets/TabOperationBar;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar$b;->b:Lcom/transsion/playercommon/widgets/TabOperationBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar$b;->b:Lcom/transsion/playercommon/widgets/TabOperationBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar$b;->b:Lcom/transsion/playercommon/widgets/TabOperationBar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->o(Lcom/transsion/playercommon/widgets/TabOperationBar;Z)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar$b;->b:Lcom/transsion/playercommon/widgets/TabOperationBar;

    invoke-static {p1}, Lcom/transsion/playercommon/widgets/TabOperationBar;->g(Lcom/transsion/playercommon/widgets/TabOperationBar;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar$b;->b:Lcom/transsion/playercommon/widgets/TabOperationBar;

    invoke-static {p1}, Lcom/transsion/playercommon/widgets/TabOperationBar;->g(Lcom/transsion/playercommon/widgets/TabOperationBar;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar$b;->b:Lcom/transsion/playercommon/widgets/TabOperationBar;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar$b;->b:Lcom/transsion/playercommon/widgets/TabOperationBar;

    invoke-static {p0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->h(Lcom/transsion/playercommon/widgets/TabOperationBar;)Lcom/transsion/playercommon/widgets/TabOperationBar$n;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method
