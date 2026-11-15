.class public final synthetic Lt97;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lu97;

.field public final synthetic d:Landroid/view/ViewGroup;

.field public final synthetic e:F


# direct methods
.method public synthetic constructor <init>(ZLu97;Landroid/view/ViewGroup;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lt97;->b:Z

    iput-object p2, p0, Lt97;->c:Lu97;

    iput-object p3, p0, Lt97;->d:Landroid/view/ViewGroup;

    iput p4, p0, Lt97;->e:F

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    iget-boolean v0, p0, Lt97;->b:Z

    iget-object v1, p0, Lt97;->c:Lu97;

    iget-object v2, p0, Lt97;->d:Landroid/view/ViewGroup;

    iget v3, p0, Lt97;->e:F

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lu97;->b(ZLu97;Landroid/view/ViewGroup;FLandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
