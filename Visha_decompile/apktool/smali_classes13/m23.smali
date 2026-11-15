.class public abstract Lm23;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm23$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/view/View;II)V
    .locals 1

    new-instance v0, Lm23$a;

    invoke-direct {v0, p1, p2}, Lm23$a;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
