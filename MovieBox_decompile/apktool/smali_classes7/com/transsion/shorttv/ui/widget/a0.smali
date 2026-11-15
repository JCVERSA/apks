.class public final synthetic Lcom/transsion/shorttv/ui/widget/a0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/AppCompatImageView;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/widget/AppCompatImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/a0;->a:Landroidx/appcompat/widget/AppCompatImageView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/a0;->a:Landroidx/appcompat/widget/AppCompatImageView;

    .line 2
    .line 3
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->x(Landroidx/appcompat/widget/AppCompatImageView;Landroid/graphics/drawable/BitmapDrawable;)Lkotlin/Unit;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
