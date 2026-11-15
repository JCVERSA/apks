.class public Lcom/cloud/hisavana/sdk/u$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/u;->e(Landroid/content/Context;Lcom/cloud/hisavana/sdk/api/view/AdCloseView;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field public final synthetic e:Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

.field public final synthetic f:Z

.field public final synthetic g:Lcom/cloud/hisavana/sdk/u;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/u;Landroid/content/Context;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/api/view/AdCloseView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/u$a;->g:Lcom/cloud/hisavana/sdk/u;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/u$a;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/u$a;->c:Ljava/lang/Object;

    iput-object p4, p0, Lcom/cloud/hisavana/sdk/u$a;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-object p5, p0, Lcom/cloud/hisavana/sdk/u$a;->e:Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

    iput-boolean p6, p0, Lcom/cloud/hisavana/sdk/u$a;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/u$a;->g:Lcom/cloud/hisavana/sdk/u;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/u$a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/u$a;->c:Ljava/lang/Object;

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/u$a;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v4, p0, Lcom/cloud/hisavana/sdk/u$a;->e:Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

    iget-boolean v5, p0, Lcom/cloud/hisavana/sdk/u$a;->f:Z

    invoke-virtual/range {v0 .. v5}, Lcom/cloud/hisavana/sdk/u;->h(Landroid/content/Context;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/api/view/AdCloseView;Z)V

    return-void
.end method
