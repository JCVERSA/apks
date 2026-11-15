.class public final synthetic Lx57;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic b:Le74;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Le74;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx57;->b:Le74;

    iput-object p2, p0, Lx57;->c:Ljava/util/List;

    iput-object p3, p0, Lx57;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lx57;->b:Le74;

    iget-object v1, p0, Lx57;->c:Ljava/util/List;

    iget-object p0, p0, Lx57;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout$a;->b(Le74;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/animation/ValueAnimator;)V

    return-void
.end method
