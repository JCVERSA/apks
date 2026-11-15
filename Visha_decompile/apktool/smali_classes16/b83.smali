.class public final synthetic Lb83;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# instance fields
.field public final synthetic a:Lj83;


# direct methods
.method public synthetic constructor <init>(Lj83;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb83;->a:Lj83;

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    iget-object p0, p0, Lb83;->a:Lj83;

    invoke-static {p0, p1, p2, p3, p4}, Lj83;->h(Lj83;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method
