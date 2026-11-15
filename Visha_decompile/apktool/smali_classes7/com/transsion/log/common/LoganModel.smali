.class public Lcom/transsion/log/common/LoganModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/log/common/LoganModel$Action;
    }
.end annotation


# instance fields
.field public a:Lcom/transsion/log/common/LoganModel$Action;

.field public b:Lopc;

.field public c:Lyb9;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    iget-object v0, p0, Lcom/transsion/log/common/LoganModel;->a:Lcom/transsion/log/common/LoganModel$Action;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/transsion/log/common/LoganModel$Action;->SEND:Lcom/transsion/log/common/LoganModel$Action;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/log/common/LoganModel;->c:Lyb9;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lyb9;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/log/common/LoganModel;->a:Lcom/transsion/log/common/LoganModel$Action;

    sget-object v1, Lcom/transsion/log/common/LoganModel$Action;->WRITE:Lcom/transsion/log/common/LoganModel$Action;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/transsion/log/common/LoganModel;->b:Lopc;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lopc;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/log/common/LoganModel;->a:Lcom/transsion/log/common/LoganModel$Action;

    sget-object v0, Lcom/transsion/log/common/LoganModel$Action;->FLUSH:Lcom/transsion/log/common/LoganModel$Action;

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2
.end method
