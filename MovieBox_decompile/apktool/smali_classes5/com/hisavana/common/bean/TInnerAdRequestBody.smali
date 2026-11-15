.class public Lcom/hisavana/common/bean/TInnerAdRequestBody;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisavana/common/bean/TInnerAdRequestBody$Builder;
    }
.end annotation


# instance fields
.field private final innerAdListener:Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;


# direct methods
.method private constructor <init>(Lcom/hisavana/common/bean/TInnerAdRequestBody$Builder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/hisavana/common/bean/TInnerAdRequestBody$Builder;->access$000(Lcom/hisavana/common/bean/TInnerAdRequestBody$Builder;)Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;

    move-result-object p1

    iput-object p1, p0, Lcom/hisavana/common/bean/TInnerAdRequestBody;->innerAdListener:Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/hisavana/common/bean/TInnerAdRequestBody$Builder;Lcom/hisavana/common/bean/TInnerAdRequestBody$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hisavana/common/bean/TInnerAdRequestBody;-><init>(Lcom/hisavana/common/bean/TInnerAdRequestBody$Builder;)V

    return-void
.end method


# virtual methods
.method public getAdListener()Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/common/bean/TInnerAdRequestBody;->innerAdListener:Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;

    .line 2
    .line 3
    return-object v0
.end method
