.class public final synthetic Ls97;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lu97;

.field public final synthetic d:F


# direct methods
.method public synthetic constructor <init>(ZLu97;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ls97;->b:Z

    iput-object p2, p0, Ls97;->c:Lu97;

    iput p3, p0, Ls97;->d:F

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Ls97;->b:Z

    iget-object v1, p0, Ls97;->c:Lu97;

    iget p0, p0, Ls97;->d:F

    invoke-static {v0, v1, p0, p1, p2}, Lu97;->a(ZLu97;FLandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
