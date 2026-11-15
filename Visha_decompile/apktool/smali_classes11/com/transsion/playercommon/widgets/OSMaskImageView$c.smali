.class public Lcom/transsion/playercommon/widgets/OSMaskImageView$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/widgets/OSMaskImageView;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/widgets/OSMaskImageView;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/widgets/OSMaskImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView$c;->b:Lcom/transsion/playercommon/widgets/OSMaskImageView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView$c;->b:Lcom/transsion/playercommon/widgets/OSMaskImageView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/playercommon/widgets/OSMaskImageView;->h(Lcom/transsion/playercommon/widgets/OSMaskImageView;Z)V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView$c;->b:Lcom/transsion/playercommon/widgets/OSMaskImageView;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/OSMaskImageView;->setSelected(Z)V

    return-void
.end method
