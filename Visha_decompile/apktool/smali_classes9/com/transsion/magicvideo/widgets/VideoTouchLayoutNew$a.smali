.class public Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$a;->a:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$a;->a:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->z0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$a;->a:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->z0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$a;->a(Ljava/lang/Boolean;)V

    return-void
.end method
