.class public final synthetic Lm43;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/cloud/hisavana/sdk/b;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field public final synthetic e:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/b;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm43;->b:Lcom/cloud/hisavana/sdk/b;

    iput-object p2, p0, Lm43;->c:Ljava/lang/String;

    iput-object p3, p0, Lm43;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-object p4, p0, Lm43;->e:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lm43;->b:Lcom/cloud/hisavana/sdk/b;

    iget-object v1, p0, Lm43;->c:Ljava/lang/String;

    iget-object v2, p0, Lm43;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object p0, p0, Lm43;->e:Landroid/view/ViewGroup;

    invoke-static {v0, v1, v2, p0}, Lcom/cloud/hisavana/sdk/b;->a(Lcom/cloud/hisavana/sdk/b;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/view/ViewGroup;)V

    return-void
.end method
