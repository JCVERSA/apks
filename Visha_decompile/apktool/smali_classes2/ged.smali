.class public final synthetic Lged;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/cloud/hisavana/sdk/common/tranmeasure/f$b;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/common/tranmeasure/f$b;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lged;->b:Lcom/cloud/hisavana/sdk/common/tranmeasure/f$b;

    iput-object p2, p0, Lged;->c:Ljava/lang/String;

    iput-object p3, p0, Lged;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lged;->b:Lcom/cloud/hisavana/sdk/common/tranmeasure/f$b;

    iget-object v1, p0, Lged;->c:Ljava/lang/String;

    iget-object p0, p0, Lged;->d:Landroid/content/Context;

    invoke-static {v0, v1, p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/f$b;->a(Lcom/cloud/hisavana/sdk/common/tranmeasure/f$b;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
