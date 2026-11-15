.class Luy/a$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luy/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Luy/a;


# direct methods
.method constructor <init>(Luy/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Luy/a$a;->a:Luy/a;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Luy/a$a;->a:Luy/a;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Luy/a;->a(Luy/a;I)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Luy/a$a;->a:Luy/a;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {p1, v0}, Luy/a;->b(Luy/a;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 11
    .line 12
    .line 13
    return-void
.end method
