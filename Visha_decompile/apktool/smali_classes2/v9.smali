.class public final synthetic Lv9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lc74;


# direct methods
.method public synthetic constructor <init>(Lc74;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv9;->b:Lc74;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lv9;->b:Lc74;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->n(Lc74;)V

    return-void
.end method
