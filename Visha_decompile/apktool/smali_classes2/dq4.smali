.class public final synthetic Ldq4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;

.field public final synthetic c:J

.field public final synthetic d:J

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;JJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldq4;->b:Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;

    iput-wide p2, p0, Ldq4;->c:J

    iput-wide p4, p0, Ldq4;->d:J

    iput p6, p0, Ldq4;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Ldq4;->b:Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;

    iget-wide v1, p0, Ldq4;->c:J

    iget-wide v3, p0, Ldq4;->d:J

    iget v5, p0, Ldq4;->e:I

    invoke-static/range {v0 .. v5}, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->p(Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;JJI)V

    return-void
.end method
