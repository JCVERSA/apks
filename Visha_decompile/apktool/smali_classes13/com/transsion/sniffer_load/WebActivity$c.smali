.class public Lcom/transsion/sniffer_load/WebActivity$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/WebActivity;->L0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lcom/transsion/sniffer_load/WebActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/WebActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/WebActivity$c;->c:Lcom/transsion/sniffer_load/WebActivity;

    iput-boolean p2, p0, Lcom/transsion/sniffer_load/WebActivity$c;->b:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebActivity$c;->c:Lcom/transsion/sniffer_load/WebActivity;

    invoke-static {p1}, Lcom/transsion/sniffer_load/WebActivity;->G0(Lcom/transsion/sniffer_load/WebActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-boolean p0, p0, Lcom/transsion/sniffer_load/WebActivity$c;->b:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebActivity$c;->c:Lcom/transsion/sniffer_load/WebActivity;

    invoke-static {p0}, Lcom/transsion/sniffer_load/WebActivity;->G0(Lcom/transsion/sniffer_load/WebActivity;)Landroid/widget/TextView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
