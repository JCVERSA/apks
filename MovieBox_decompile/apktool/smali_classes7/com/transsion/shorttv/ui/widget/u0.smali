.class public final synthetic Lcom/transsion/shorttv/ui/widget/u0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

.field public final synthetic b:Landroidx/fragment/app/FragmentActivity;

.field public final synthetic c:Lcom/transsion/shorttv/bean/Subject;

.field public final synthetic d:I

.field public final synthetic e:Landroidx/appcompat/widget/AppCompatTextView;

.field public final synthetic f:Lnr/e;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/shorttv/bean/Subject;ILandroidx/appcompat/widget/AppCompatTextView;Lnr/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/u0;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/shorttv/ui/widget/u0;->b:Landroidx/fragment/app/FragmentActivity;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/shorttv/ui/widget/u0;->c:Lcom/transsion/shorttv/bean/Subject;

    .line 9
    .line 10
    iput p4, p0, Lcom/transsion/shorttv/ui/widget/u0;->d:I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/transsion/shorttv/ui/widget/u0;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/transsion/shorttv/ui/widget/u0;->f:Lnr/e;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/u0;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/u0;->b:Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/u0;->c:Lcom/transsion/shorttv/bean/Subject;

    .line 6
    .line 7
    iget v3, p0, Lcom/transsion/shorttv/ui/widget/u0;->d:I

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/shorttv/ui/widget/u0;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/transsion/shorttv/ui/widget/u0;->f:Lnr/e;

    .line 12
    .line 13
    check-cast p1, Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    move-object v7, p2

    .line 20
    check-cast v7, Ljava/lang/String;

    .line 21
    .line 22
    move-object v8, p3

    .line 23
    check-cast v8, Ljava/lang/String;

    .line 24
    .line 25
    invoke-static/range {v0 .. v8}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->v(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/shorttv/bean/Subject;ILandroidx/appcompat/widget/AppCompatTextView;Lnr/e;ZLjava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1
.end method
