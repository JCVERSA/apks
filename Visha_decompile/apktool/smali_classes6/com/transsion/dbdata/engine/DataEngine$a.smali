.class public final Lcom/transsion/dbdata/engine/DataEngine$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnu4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/dbdata/engine/DataEngine;->q(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;Lnu4;ILw74;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/dbdata/engine/base/scope/DataScope;

.field public final synthetic b:Lns1;

.field public final synthetic c:Lnu4;

.field public final synthetic d:I

.field public final synthetic e:Lw74;


# direct methods
.method public constructor <init>(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;Lnu4;ILw74;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/engine/DataEngine$a;->a:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    iput-object p2, p0, Lcom/transsion/dbdata/engine/DataEngine$a;->b:Lns1;

    iput-object p3, p0, Lcom/transsion/dbdata/engine/DataEngine$a;->c:Lnu4;

    iput p4, p0, Lcom/transsion/dbdata/engine/DataEngine$a;->d:I

    iput-object p5, p0, Lcom/transsion/dbdata/engine/DataEngine$a;->e:Lw74;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Lnu4;Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/dbdata/engine/DataEngine$a;->c(Lnu4;Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static final c(Lnu4;Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-interface {p0, p1, p2, p3}, Lnu4;->a(Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 8

    const-string v0, "result"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;->SUCCESS:Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/transsion/dbdata/engine/DataEngine;->k()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/dbdata/engine/DataEngine$a;->c:Lnu4;

    new-instance v1, Lis1;

    invoke-direct {v1, p0, p1, p2, p3}, Lis1;-><init>(Lnu4;Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/transsion/dbdata/engine/DataEngine;->a:Lcom/transsion/dbdata/engine/DataEngine;

    iget-object v3, p0, Lcom/transsion/dbdata/engine/DataEngine$a;->a:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    iget-object v4, p0, Lcom/transsion/dbdata/engine/DataEngine$a;->b:Lns1;

    iget-object v5, p0, Lcom/transsion/dbdata/engine/DataEngine$a;->c:Lnu4;

    iget p1, p0, Lcom/transsion/dbdata/engine/DataEngine$a;->d:I

    add-int/lit8 v6, p1, 0x1

    iget-object v7, p0, Lcom/transsion/dbdata/engine/DataEngine$a;->e:Lw74;

    invoke-static/range {v2 .. v7}, Lcom/transsion/dbdata/engine/DataEngine;->j(Lcom/transsion/dbdata/engine/DataEngine;Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;Lnu4;ILw74;)V

    :goto_0
    return-void
.end method
