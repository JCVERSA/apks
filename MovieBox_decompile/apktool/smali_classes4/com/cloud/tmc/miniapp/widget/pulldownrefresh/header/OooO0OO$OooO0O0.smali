.class public final Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO$OooO0O0;
.super Lkotlin/jvm/internal/Lambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO;->OooO00o(I)V
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
.field public final synthetic OooO00o:Landroid/widget/ImageView;

.field public final synthetic OooO0O0:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO$OooO0O0;->OooO00o:Landroid/widget/ImageView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO$OooO0O0;->OooO0O0:Landroid/graphics/drawable/Drawable;

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
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO$OooO0O0;->OooO00o:Landroid/widget/ImageView;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO$OooO0O0;->OooO0O0:Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    .line 9
    .line 10
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p1
.end method
