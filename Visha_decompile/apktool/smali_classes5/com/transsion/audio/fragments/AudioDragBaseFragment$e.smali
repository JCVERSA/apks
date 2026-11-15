.class public Lcom/transsion/audio/fragments/AudioDragBaseFragment$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laec;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/fragments/AudioDragBaseFragment;->U1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/audio/fragments/AudioDragBaseFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/fragments/AudioDragBaseFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$e;->a:Lcom/transsion/audio/fragments/AudioDragBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateDrawShadow(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$e;->a:Lcom/transsion/audio/fragments/AudioDragBaseFragment;

    iget-object v0, v0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->Z:Lcec;

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    const-string v1, "draw_shadow"

    if-ne p2, v0, :cond_0

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/eventbus/LiveEventBus;->c(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/eventbus/LiveEventBus;->c(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$e;->a:Lcom/transsion/audio/fragments/AudioDragBaseFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->z1(Z)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$e;->a:Lcom/transsion/audio/fragments/AudioDragBaseFragment;

    iget-object v0, v0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->Z:Lcec;

    invoke-interface {v0}, Lcec;->release()V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$e;->a:Lcom/transsion/audio/fragments/AudioDragBaseFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->Z:Lcec;

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$e;->a:Lcom/transsion/audio/fragments/AudioDragBaseFragment;

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->d0:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-static {p0, v0, p1, p2}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->L1(Lcom/transsion/audio/fragments/AudioDragBaseFragment;Landroid/view/View;Ljava/lang/String;I)V

    :cond_2
    return-void
.end method
