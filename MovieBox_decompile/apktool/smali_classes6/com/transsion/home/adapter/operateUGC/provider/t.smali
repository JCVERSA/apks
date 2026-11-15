.class public final synthetic Lcom/transsion/home/adapter/operateUGC/provider/t;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

.field public final synthetic b:Lcom/transsion/home/adapter/operateUGC/provider/s$b;

.field public final synthetic c:Lcom/transsion/home/adapter/operateUGC/provider/s$a;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ugcvideodetail/api/bean/UGCContent;Lcom/transsion/home/adapter/operateUGC/provider/s$b;Lcom/transsion/home/adapter/operateUGC/provider/s$a;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/home/adapter/operateUGC/provider/t;->a:Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/home/adapter/operateUGC/provider/t;->b:Lcom/transsion/home/adapter/operateUGC/provider/s$b;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/home/adapter/operateUGC/provider/t;->c:Lcom/transsion/home/adapter/operateUGC/provider/s$a;

    .line 9
    .line 10
    iput p4, p0, Lcom/transsion/home/adapter/operateUGC/provider/t;->d:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/home/adapter/operateUGC/provider/t;->a:Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/home/adapter/operateUGC/provider/t;->b:Lcom/transsion/home/adapter/operateUGC/provider/s$b;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/home/adapter/operateUGC/provider/t;->c:Lcom/transsion/home/adapter/operateUGC/provider/s$a;

    .line 6
    .line 7
    iget v3, p0, Lcom/transsion/home/adapter/operateUGC/provider/t;->d:I

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3, p1}, Lcom/transsion/home/adapter/operateUGC/provider/s$b;->B1(Lcom/transsion/ugcvideodetail/api/bean/UGCContent;Lcom/transsion/home/adapter/operateUGC/provider/s$b;Lcom/transsion/home/adapter/operateUGC/provider/s$a;ILandroid/view/View;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
