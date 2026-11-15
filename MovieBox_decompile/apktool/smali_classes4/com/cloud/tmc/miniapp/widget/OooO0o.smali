.class public final Lcom/cloud/tmc/miniapp/widget/OooO0o;
.super Lkotlin/jvm/internal/Lambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
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
.field public final synthetic OooO00o:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic OooO0O0:Lcom/cloud/tmc/miniapp/widget/OooO0OO;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/cloud/tmc/miniapp/widget/OooO0OO;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/cloud/tmc/miniapp/widget/OooO0OO;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/OooO0o;->OooO00o:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/OooO0o;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/OooO0OO;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/OooO0o;->OooO00o:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/OooO0o;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/OooO0OO;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO00o(Lcom/cloud/tmc/miniapp/widget/OooO0OO;)Landroidx/appcompat/widget/AppCompatImageView;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/OooO0o;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/OooO0OO;

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->setUnreadIconVisible(Z)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/OooO0o;->OooO00o:Lkotlin/jvm/functions/Function1;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 35
    .line 36
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 40
    .line 41
    return-object p1
.end method
