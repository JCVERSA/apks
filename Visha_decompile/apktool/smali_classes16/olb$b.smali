.class public Lolb$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lolb;->C0(Landroid/content/Context;Landroid/app/Dialog;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(ZZLandroid/app/Dialog;)V
    .locals 0

    iput-boolean p1, p0, Lolb$b;->b:Z

    iput-boolean p2, p0, Lolb$b;->c:Z

    iput-object p3, p0, Lolb$b;->d:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-boolean p1, p0, Lolb$b;->b:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lolb$b;->c:Z

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lolb$b;->d:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lolb$b;->d:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    :cond_0
    return p2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
