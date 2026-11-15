.class public Ldnd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ldnd;

.field public final b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldnd;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    return-void
.end method


# virtual methods
.method public a()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;
    .locals 0

    iget-object p0, p0, Ldnd;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    return-object p0
.end method

.method public b(Ldnd;)V
    .locals 0

    iput-object p1, p0, Ldnd;->a:Ldnd;

    return-void
.end method

.method public c()Ldnd;
    .locals 0

    iget-object p0, p0, Ldnd;->a:Ldnd;

    return-object p0
.end method
