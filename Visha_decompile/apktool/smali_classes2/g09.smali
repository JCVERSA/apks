.class public final synthetic Lg09;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lied;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lied;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg09;->b:Lied;

    iput-object p2, p0, Lg09;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lg09;->b:Lied;

    iget-object p0, p0, Lg09;->c:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->c(Lied;Ljava/util/List;)V

    return-void
.end method
