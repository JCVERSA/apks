.class public final Lcom/transsion/widgetslib/widget/OSSegmentedTab$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/OSSegmentedTab;->h(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/widget/OSSegmentedTab;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/OSSegmentedTab;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab$c;->b:Lcom/transsion/widgetslib/widget/OSSegmentedTab;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab$c;->b:Lcom/transsion/widgetslib/widget/OSSegmentedTab;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->access$resetAnimationState(Lcom/transsion/widgetslib/widget/OSSegmentedTab;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab$c;->b:Lcom/transsion/widgetslib/widget/OSSegmentedTab;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->access$resetAnimationState(Lcom/transsion/widgetslib/widget/OSSegmentedTab;)V

    return-void
.end method
