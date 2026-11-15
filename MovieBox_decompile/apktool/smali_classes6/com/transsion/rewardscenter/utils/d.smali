.class public final synthetic Lcom/transsion/rewardscenter/utils/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/app/AlertDialog;

.field public final synthetic b:Lzo/a;

.field public final synthetic c:Lcom/transsion/rewardscenterapi/TopUpType;

.field public final synthetic d:Lcom/transsion/rewardscenterapi/SkuPoint;


# direct methods
.method public synthetic constructor <init>(Landroid/app/AlertDialog;Lzo/a;Lcom/transsion/rewardscenterapi/TopUpType;Lcom/transsion/rewardscenterapi/SkuPoint;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/rewardscenter/utils/d;->a:Landroid/app/AlertDialog;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/rewardscenter/utils/d;->b:Lzo/a;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/rewardscenter/utils/d;->c:Lcom/transsion/rewardscenterapi/TopUpType;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/transsion/rewardscenter/utils/d;->d:Lcom/transsion/rewardscenterapi/SkuPoint;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/rewardscenter/utils/d;->a:Landroid/app/AlertDialog;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/rewardscenter/utils/d;->b:Lzo/a;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/rewardscenter/utils/d;->c:Lcom/transsion/rewardscenterapi/TopUpType;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/rewardscenter/utils/d;->d:Lcom/transsion/rewardscenterapi/SkuPoint;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3, p1}, Lcom/transsion/rewardscenter/utils/f;->b(Landroid/app/AlertDialog;Lzo/a;Lcom/transsion/rewardscenterapi/TopUpType;Lcom/transsion/rewardscenterapi/SkuPoint;Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
