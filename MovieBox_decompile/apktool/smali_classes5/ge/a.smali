.class public final synthetic Lge/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/sdk/commonutil/util/Preconditions$a;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:D

.field public final synthetic h:Ljava/util/List;

.field public final synthetic i:Lcom/hisavana/mediation/bridge/MediationJsBridge;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;IIIDLjava/util/List;Lcom/hisavana/mediation/bridge/MediationJsBridge;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lge/a;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lge/a;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lge/a;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput p4, p0, Lge/a;->d:I

    .line 11
    .line 12
    iput p5, p0, Lge/a;->e:I

    .line 13
    .line 14
    iput p6, p0, Lge/a;->f:I

    .line 15
    .line 16
    iput-wide p7, p0, Lge/a;->g:D

    .line 17
    .line 18
    iput-object p9, p0, Lge/a;->h:Ljava/util/List;

    .line 19
    .line 20
    iput-object p10, p0, Lge/a;->i:Lcom/hisavana/mediation/bridge/MediationJsBridge;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final onRun()V
    .locals 10

    .line 1
    iget-object v0, p0, Lge/a;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Lge/a;->b:I

    .line 4
    .line 5
    iget-object v2, p0, Lge/a;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget v3, p0, Lge/a;->d:I

    .line 8
    .line 9
    iget v4, p0, Lge/a;->e:I

    .line 10
    .line 11
    iget v5, p0, Lge/a;->f:I

    .line 12
    .line 13
    iget-wide v6, p0, Lge/a;->g:D

    .line 14
    .line 15
    iget-object v8, p0, Lge/a;->h:Ljava/util/List;

    .line 16
    .line 17
    iget-object v9, p0, Lge/a;->i:Lcom/hisavana/mediation/bridge/MediationJsBridge;

    .line 18
    .line 19
    invoke-static/range {v0 .. v9}, Lcom/hisavana/mediation/bridge/MediationJsBridge;->a(Ljava/lang/String;ILjava/lang/String;IIIDLjava/util/List;Lcom/hisavana/mediation/bridge/MediationJsBridge;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
