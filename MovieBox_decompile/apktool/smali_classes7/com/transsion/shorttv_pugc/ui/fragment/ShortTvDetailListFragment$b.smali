.class public final Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lfs/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment$b;->a:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(IJLandroid/view/View;)V
    .locals 8

    .line 1
    iget-object p4, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment$b;->a:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

    .line 2
    .line 3
    invoke-static {p4}, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;->p0(Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;)Lcom/transsion/shorttv_pugc/ui/adapter/e;

    .line 4
    .line 5
    .line 6
    move-result-object p4

    .line 7
    if-eqz p4, :cond_2

    .line 8
    .line 9
    invoke-virtual {p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p4

    .line 13
    if-eqz p4, :cond_2

    .line 14
    .line 15
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment$b;->a:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

    .line 16
    .line 17
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-ge v1, p1, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    sget-object v2, Lxs/a;->a:Lxs/a;

    .line 25
    .line 26
    invoke-static {p4, p1}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    move-object v5, p1

    .line 31
    check-cast v5, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;->r0(Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-nez p1, :cond_1

    .line 38
    .line 39
    const-string p1, ""

    .line 40
    .line 41
    :cond_1
    move-object v7, p1

    .line 42
    const-string v6, ""

    .line 43
    .line 44
    move-wide v3, p2

    .line 45
    invoke-virtual/range {v2 .. v7}, Lxs/a;->d(JLcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    return-void
.end method
