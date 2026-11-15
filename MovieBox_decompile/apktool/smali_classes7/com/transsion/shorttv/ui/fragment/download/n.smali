.class public final synthetic Lcom/transsion/shorttv/ui/fragment/download/n;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

.field public final synthetic b:Landroidx/fragment/app/FragmentActivity;

.field public final synthetic c:Lcom/transsion/shorttv/bean/Subject;

.field public final synthetic d:I

.field public final synthetic e:Landroidx/appcompat/widget/LinearLayoutCompat;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/shorttv/bean/Subject;ILandroidx/appcompat/widget/LinearLayoutCompat;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/shorttv/ui/fragment/download/n;->a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/shorttv/ui/fragment/download/n;->b:Landroidx/fragment/app/FragmentActivity;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/shorttv/ui/fragment/download/n;->c:Lcom/transsion/shorttv/bean/Subject;

    .line 9
    .line 10
    iput p4, p0, Lcom/transsion/shorttv/ui/fragment/download/n;->d:I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/transsion/shorttv/ui/fragment/download/n;->e:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/fragment/download/n;->a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv/ui/fragment/download/n;->b:Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/shorttv/ui/fragment/download/n;->c:Lcom/transsion/shorttv/bean/Subject;

    .line 6
    .line 7
    iget v3, p0, Lcom/transsion/shorttv/ui/fragment/download/n;->d:I

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/shorttv/ui/fragment/download/n;->e:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 10
    .line 11
    check-cast p1, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    move-object v6, p2

    .line 18
    check-cast v6, Ljava/lang/String;

    .line 19
    .line 20
    move-object v7, p3

    .line 21
    check-cast v7, Ljava/lang/String;

    .line 22
    .line 23
    invoke-static/range {v0 .. v7}, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;->q0(Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/shorttv/bean/Subject;ILandroidx/appcompat/widget/LinearLayoutCompat;ZLjava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method
