.class public final Lkg2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkg2;->e(Ljava/lang/String;Landroid/view/View;Lcom/yandex/div2/DivActionAnimatorStart;Loj3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lkg2;

.field public final synthetic c:Lkotlin/Pair;


# direct methods
.method public constructor <init>(Lkg2;Lkotlin/Pair;)V
    .locals 0

    iput-object p1, p0, Lkg2$a;->b:Lkg2;

    iput-object p2, p0, Lkg2$a;->c:Lkotlin/Pair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lkg2$a;->b:Lkg2;

    invoke-static {p1}, Lkg2;->a(Lkg2;)Ljava/util/Map;

    move-result-object p1

    iget-object p0, p0, Lkg2$a;->c:Lkotlin/Pair;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
