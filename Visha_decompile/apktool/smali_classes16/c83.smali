.class public final synthetic Lc83;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;


# instance fields
.field public final synthetic b:Lj83;


# direct methods
.method public synthetic constructor <init>(Lj83;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc83;->b:Lj83;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    iget-object p0, p0, Lc83;->b:Lj83;

    invoke-static {p0, p1, p2, p3}, Lj83;->b(Lj83;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method
