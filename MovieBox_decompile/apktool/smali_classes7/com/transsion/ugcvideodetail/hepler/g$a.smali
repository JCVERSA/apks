.class public final Lcom/transsion/ugcvideodetail/hepler/g$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lbj/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ugcvideodetail/hepler/g;->a(Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lbj/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/functions/Function1;

.field final synthetic b:Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/g$a;->a:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/ugcvideodetail/hepler/g$a;->b:Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/ugcvideodetail/hepler/g$a;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/ugcvideodetail/hepler/g$a;->d:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/transsion/ugcvideodetail/hepler/g$a;->e:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/transsion/ugcvideodetail/hepler/g$a;->f:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/transsion/ugcvideodetail/hepler/g$a;->g:Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public a(IJLandroid/view/View;)V
    .locals 11

    .line 1
    iget-object p4, p0, Lcom/transsion/ugcvideodetail/hepler/g$a;->a:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/g$a;->b:Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/ugcvideodetail/hepler/g$a;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v7, p0, Lcom/transsion/ugcvideodetail/hepler/g$a;->d:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v8, p0, Lcom/transsion/ugcvideodetail/hepler/g$a;->e:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v9, p0, Lcom/transsion/ugcvideodetail/hepler/g$a;->f:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v10, p0, Lcom/transsion/ugcvideodetail/hepler/g$a;->g:Ljava/lang/Boolean;

    .line 14
    .line 15
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {p4, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p4

    .line 25
    move-object v3, p4

    .line 26
    check-cast v3, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 27
    .line 28
    if-nez v3, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p4

    .line 35
    if-nez p4, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {v0, p4}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->a0(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {v0, p4}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->e0(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    if-eqz v2, :cond_3

    .line 49
    .line 50
    sget-object v1, Lcom/transsion/ugcvideodetail/hepler/h;->a:Lcom/transsion/ugcvideodetail/hepler/h;

    .line 51
    .line 52
    move v4, p1

    .line 53
    move-wide v5, p2

    .line 54
    invoke-virtual/range {v1 .. v10}, Lcom/transsion/ugcvideodetail/hepler/h;->g(Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    goto :goto_1

    .line 60
    :cond_3
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 61
    .line 62
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :goto_1
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 67
    .line 68
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    :goto_2
    return-void
.end method
