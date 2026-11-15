.class public final synthetic Lcom/transsion/postdetail/ui/adapter/favorite/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/postdetail/ui/adapter/favorite/b$b;

.field public final synthetic b:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

.field public final synthetic c:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/postdetail/ui/adapter/favorite/b$b;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/postdetail/ui/adapter/favorite/c;->a:Lcom/transsion/postdetail/ui/adapter/favorite/b$b;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/postdetail/ui/adapter/favorite/c;->b:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/postdetail/ui/adapter/favorite/c;->c:Lkotlin/jvm/internal/Ref$IntRef;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/adapter/favorite/c;->a:Lcom/transsion/postdetail/ui/adapter/favorite/b$b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/postdetail/ui/adapter/favorite/c;->b:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/postdetail/ui/adapter/favorite/c;->c:Lkotlin/jvm/internal/Ref$IntRef;

    .line 6
    .line 7
    invoke-static {v0, v1, v2, p1}, Lcom/transsion/postdetail/ui/adapter/favorite/b$b;->y(Lcom/transsion/postdetail/ui/adapter/favorite/b$b;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lkotlin/jvm/internal/Ref$IntRef;Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
