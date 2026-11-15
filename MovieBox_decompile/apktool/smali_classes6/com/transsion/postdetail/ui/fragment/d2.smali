.class public final synthetic Lcom/transsion/postdetail/ui/fragment/d2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;


# direct methods
.method public synthetic constructor <init>(ZLcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/transsion/postdetail/ui/fragment/d2;->a:Z

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/postdetail/ui/fragment/d2;->b:Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/transsion/postdetail/ui/fragment/d2;->a:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/d2;->b:Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;

    .line 4
    .line 5
    check-cast p1, Landroid/view/View;

    .line 6
    .line 7
    check-cast p2, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, v1, p1, p2}, Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;->u0(ZLcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;Landroid/view/View;Ljava/lang/String;)Lkotlin/Unit;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
