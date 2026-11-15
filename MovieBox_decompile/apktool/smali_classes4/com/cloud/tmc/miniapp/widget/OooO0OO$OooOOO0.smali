.class public final Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooOOO0;
.super Lkotlin/jvm/internal/Lambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO00o(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;Lcom/cloud/tmc/integration/structure/Page;)V
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
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/widget/OooO0OO;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/widget/OooO0OO;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooOOO0;->OooO00o:Lcom/cloud/tmc/miniapp/widget/OooO0OO;

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
    .locals 1

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooOOO0;->OooO00o:Lcom/cloud/tmc/miniapp/widget/OooO0OO;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO0O0(Lcom/cloud/tmc/miniapp/widget/OooO0OO;)Landroidx/appcompat/widget/AppCompatImageView;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    .line 11
    .line 12
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p1
.end method
