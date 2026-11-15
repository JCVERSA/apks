.class public final Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/lifecycle/c0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field final synthetic b:Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$b;->b:Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$b;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$b;->b:Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;

    .line 10
    .line 11
    invoke-static {v0, p1}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->access$favoriteResultToast(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$b;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$b;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
