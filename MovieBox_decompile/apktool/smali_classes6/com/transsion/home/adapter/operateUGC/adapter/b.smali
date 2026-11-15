.class public final synthetic Lcom/transsion/home/adapter/operateUGC/adapter/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

.field public final synthetic b:Lcom/transsion/home/adapter/operateUGC/adapter/MovieRankUGCAdapter;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/home/adapter/operateUGC/adapter/MovieRankUGCAdapter;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/home/adapter/operateUGC/adapter/b;->a:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/home/adapter/operateUGC/adapter/b;->b:Lcom/transsion/home/adapter/operateUGC/adapter/MovieRankUGCAdapter;

    .line 7
    .line 8
    iput p3, p0, Lcom/transsion/home/adapter/operateUGC/adapter/b;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/home/adapter/operateUGC/adapter/b;->a:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/home/adapter/operateUGC/adapter/b;->b:Lcom/transsion/home/adapter/operateUGC/adapter/MovieRankUGCAdapter;

    .line 4
    .line 5
    iget v2, p0, Lcom/transsion/home/adapter/operateUGC/adapter/b;->c:I

    .line 6
    .line 7
    invoke-static {v0, v1, v2, p1}, Lcom/transsion/home/adapter/operateUGC/adapter/MovieRankUGCAdapter;->B1(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/home/adapter/operateUGC/adapter/MovieRankUGCAdapter;ILandroid/view/View;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
