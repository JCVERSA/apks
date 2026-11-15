.class public Lcom/transsion/audio/fragments/AudioDragBaseFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/fragments/AudioDragBaseFragment;->T1(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/audio/fragments/AudioDragBaseFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/fragments/AudioDragBaseFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$a;->b:Lcom/transsion/audio/fragments/AudioDragBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$a;->b:Lcom/transsion/audio/fragments/AudioDragBaseFragment;

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->d0:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->cancelDragAndDrop()V

    :cond_0
    return-void
.end method
