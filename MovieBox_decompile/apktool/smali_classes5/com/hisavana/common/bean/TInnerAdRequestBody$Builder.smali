.class public Lcom/hisavana/common/bean/TInnerAdRequestBody$Builder;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisavana/common/bean/TInnerAdRequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private innerAdListener:Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/hisavana/common/bean/TInnerAdRequestBody$Builder;->innerAdListener:Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;

    .line 6
    .line 7
    return-void
.end method

.method static synthetic access$000(Lcom/hisavana/common/bean/TInnerAdRequestBody$Builder;)Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/common/bean/TInnerAdRequestBody$Builder;->innerAdListener:Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public build()Lcom/hisavana/common/bean/TInnerAdRequestBody;
    .locals 2

    .line 1
    new-instance v0, Lcom/hisavana/common/bean/TInnerAdRequestBody;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/hisavana/common/bean/TInnerAdRequestBody;-><init>(Lcom/hisavana/common/bean/TInnerAdRequestBody$Builder;Lcom/hisavana/common/bean/TInnerAdRequestBody$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public setAdListener(Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;)Lcom/hisavana/common/bean/TInnerAdRequestBody$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hisavana/common/bean/TInnerAdRequestBody$Builder;->innerAdListener:Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;

    .line 2
    .line 3
    return-object p0
.end method
