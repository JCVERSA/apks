.class public final synthetic Lwq/f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv/_channel/ui/widget/a$b;

.field public final synthetic b:Lcom/transsion/shorttv/_channel/model/ShortTvItem;

.field public final synthetic c:Lcom/transsion/shorttv/_channel/model/ShortTvFilterVal;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv/_channel/ui/widget/a$b;Lcom/transsion/shorttv/_channel/model/ShortTvItem;Lcom/transsion/shorttv/_channel/model/ShortTvFilterVal;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lwq/f;->a:Lcom/transsion/shorttv/_channel/ui/widget/a$b;

    .line 5
    .line 6
    iput-object p2, p0, Lwq/f;->b:Lcom/transsion/shorttv/_channel/model/ShortTvItem;

    .line 7
    .line 8
    iput-object p3, p0, Lwq/f;->c:Lcom/transsion/shorttv/_channel/model/ShortTvFilterVal;

    .line 9
    .line 10
    iput p4, p0, Lwq/f;->d:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lwq/f;->a:Lcom/transsion/shorttv/_channel/ui/widget/a$b;

    .line 2
    .line 3
    iget-object v1, p0, Lwq/f;->b:Lcom/transsion/shorttv/_channel/model/ShortTvItem;

    .line 4
    .line 5
    iget-object v2, p0, Lwq/f;->c:Lcom/transsion/shorttv/_channel/model/ShortTvFilterVal;

    .line 6
    .line 7
    iget v3, p0, Lwq/f;->d:I

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3, p1}, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->g(Lcom/transsion/shorttv/_channel/ui/widget/a$b;Lcom/transsion/shorttv/_channel/model/ShortTvItem;Lcom/transsion/shorttv/_channel/model/ShortTvFilterVal;ILandroid/view/View;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
