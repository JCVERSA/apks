.class public final Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView$OooO0OO;
.super Lkotlin/jvm/internal/Lambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView;->OooO00o(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/graphics/drawable/Drawable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView$OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView$OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView;->OooO00o(Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView;)Landroid/widget/ImageView;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    invoke-static {v0, v1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisibleOrInvisible(Landroid/view/View;Z)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView$OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView;->OooO00o(Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView;)Landroid/widget/ImageView;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 28
    .line 29
    .line 30
    :cond_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 31
    .line 32
    return-object p1
.end method
