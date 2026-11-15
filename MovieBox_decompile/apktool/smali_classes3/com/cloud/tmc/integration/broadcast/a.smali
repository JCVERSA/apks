.class public final synthetic Lcom/cloud/tmc/integration/broadcast/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Z

.field public final synthetic d:Lcom/cloud/tmc/integration/broadcast/ShortCutBroadcast;

.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLcom/cloud/tmc/integration/broadcast/ShortCutBroadcast;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/integration/broadcast/a;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/tmc/integration/broadcast/a;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/cloud/tmc/integration/broadcast/a;->c:Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/cloud/tmc/integration/broadcast/a;->d:Lcom/cloud/tmc/integration/broadcast/ShortCutBroadcast;

    .line 11
    .line 12
    iput p5, p0, Lcom/cloud/tmc/integration/broadcast/a;->e:I

    .line 13
    .line 14
    iput-object p6, p0, Lcom/cloud/tmc/integration/broadcast/a;->f:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/broadcast/a;->a:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/integration/broadcast/a;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/cloud/tmc/integration/broadcast/a;->c:Z

    .line 6
    .line 7
    iget-object v3, p0, Lcom/cloud/tmc/integration/broadcast/a;->d:Lcom/cloud/tmc/integration/broadcast/ShortCutBroadcast;

    .line 8
    .line 9
    iget v4, p0, Lcom/cloud/tmc/integration/broadcast/a;->e:I

    .line 10
    .line 11
    iget-object v5, p0, Lcom/cloud/tmc/integration/broadcast/a;->f:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/broadcast/ShortCutBroadcast;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/cloud/tmc/integration/broadcast/ShortCutBroadcast;ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
