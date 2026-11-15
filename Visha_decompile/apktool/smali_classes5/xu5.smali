.class public final synthetic Lxu5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/widgets/LrcViewNew;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/widgets/LrcViewNew;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxu5;->b:Lcom/transsion/audio/widgets/LrcViewNew;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lxu5;->b:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/LrcViewNew;->b(Lcom/transsion/audio/widgets/LrcViewNew;Landroid/animation/ValueAnimator;)V

    return-void
.end method
