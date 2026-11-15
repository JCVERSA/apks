.class public final synthetic Lua7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lua7;->b:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    iput p2, p0, Lua7;->c:I

    iput p3, p0, Lua7;->d:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lua7;->b:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    iget v1, p0, Lua7;->c:I

    iget p0, p0, Lua7;->d:I

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->e(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;IILandroid/animation/ValueAnimator;)V

    return-void
.end method
