.class public Lcom/hisavana/mediation/config/CloudControlConfigSync$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/sdk/commonutil/util/Preconditions$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/mediation/config/CloudControlConfigSync;->m(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/hisavana/mediation/config/CloudControlConfigSync$b;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/hisavana/mediation/config/CloudControlConfigSync$b;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onRun()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getCloudCompleteListener()Lcom/hisavana/mediation/config/TAdManager$OnCloudCompleteListener;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v1, p0, Lcom/hisavana/mediation/config/CloudControlConfigSync$b;->a:I

    .line 8
    .line 9
    iget-object v2, p0, Lcom/hisavana/mediation/config/CloudControlConfigSync$b;->b:Ljava/lang/String;

    .line 10
    .line 11
    invoke-interface {v0, v1, v2}, Lcom/hisavana/mediation/config/TAdManager$OnCloudCompleteListener;->onCloudComplete(ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->releaseCloudListener()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
