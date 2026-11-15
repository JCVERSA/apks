.class public final Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView$OooO00o;
.super Lkotlin/jvm/internal/Lambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooO00o:Landroid/view/View$OnClickListener;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-static {v0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooO00o(Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;)Lcom/cloud/tmc/miniapp/widget/CapsuleView;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object v0
.end method
