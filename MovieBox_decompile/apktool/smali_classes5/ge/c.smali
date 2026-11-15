.class public final synthetic Lge/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/sdk/commonutil/util/Preconditions$a;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic d:Lcom/hisavana/mediation/bridge/MediationJsBridge;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/hisavana/mediation/bridge/MediationJsBridge;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lge/c;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lge/c;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lge/c;->c:I

    .line 9
    .line 10
    iput-object p4, p0, Lge/c;->d:Lcom/hisavana/mediation/bridge/MediationJsBridge;

    .line 11
    .line 12
    iput-object p5, p0, Lge/c;->e:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onRun()V
    .locals 5

    .line 1
    iget-object v0, p0, Lge/c;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lge/c;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lge/c;->c:I

    .line 6
    .line 7
    iget-object v3, p0, Lge/c;->d:Lcom/hisavana/mediation/bridge/MediationJsBridge;

    .line 8
    .line 9
    iget-object v4, p0, Lge/c;->e:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lcom/hisavana/mediation/bridge/MediationJsBridge;->a(Ljava/lang/String;Ljava/lang/String;ILcom/hisavana/mediation/bridge/MediationJsBridge;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
