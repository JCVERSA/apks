.class public Lcom/amazonaws/services/s3/model/RoutingRule;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field a:Lcom/amazonaws/services/s3/model/RoutingRuleCondition;

.field b:Lcom/amazonaws/services/s3/model/RedirectRule;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/s3/model/RoutingRuleCondition;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/RoutingRule;->a:Lcom/amazonaws/services/s3/model/RoutingRuleCondition;

    .line 2
    .line 3
    return-void
.end method

.method public b(Lcom/amazonaws/services/s3/model/RedirectRule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/RoutingRule;->b:Lcom/amazonaws/services/s3/model/RedirectRule;

    .line 2
    .line 3
    return-void
.end method
