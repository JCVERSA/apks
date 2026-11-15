.class public final synthetic Lw57;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic b:Le74;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Le74;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw57;->b:Le74;

    iput-object p2, p0, Lw57;->c:Ljava/util/List;

    iput-object p3, p0, Lw57;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lw57;->b:Le74;

    iget-object v1, p0, Lw57;->c:Ljava/util/List;

    iget-object p0, p0, Lw57;->d:Ljava/util/List;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout$a;->a(Le74;Ljava/util/List;Ljava/util/List;Landroid/animation/ValueAnimator;)V

    return-void
.end method
