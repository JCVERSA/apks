.class public final synthetic Lmid;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Loid;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field public final synthetic e:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Loid;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmid;->b:Loid;

    iput-object p2, p0, Lmid;->c:Ljava/lang/String;

    iput-object p3, p0, Lmid;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-object p4, p0, Lmid;->e:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lmid;->b:Loid;

    iget-object v1, p0, Lmid;->c:Ljava/lang/String;

    iget-object v2, p0, Lmid;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object p0, p0, Lmid;->e:Landroid/content/Context;

    invoke-static {v0, v1, v2, p0}, Loid;->a(Loid;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/content/Context;)V

    return-void
.end method
