.class public final synthetic Lcom/transsion/postdetail/ui/view/k0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

.field public final synthetic b:Lcom/transsion/postdetail/ui/view/PostBaseItemView;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/postdetail/ui/view/PostBaseItemView;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/k0;->a:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/postdetail/ui/view/k0;->b:Lcom/transsion/postdetail/ui/view/PostBaseItemView;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/transsion/postdetail/ui/view/k0;->c:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/k0;->a:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/k0;->b:Lcom/transsion/postdetail/ui/view/PostBaseItemView;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/transsion/postdetail/ui/view/k0;->c:Z

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->o(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/postdetail/ui/view/PostBaseItemView;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
