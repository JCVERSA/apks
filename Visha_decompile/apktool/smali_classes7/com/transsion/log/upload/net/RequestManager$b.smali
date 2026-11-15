.class public final Lcom/transsion/log/upload/net/RequestManager$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcs4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/log/upload/net/RequestManager;->b(Lcs4;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcs4;


# direct methods
.method public constructor <init>(Lcs4;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/log/upload/net/RequestManager$b;->a:Lcs4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/log/upload/data/base/HttpUbtError;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/log/upload/net/RequestManager$b;->a:Lcs4;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcs4;->a(Lcom/transsion/log/upload/data/base/HttpUbtError;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/transsion/log/upload/data/base/HttpUbtResponse;)V
    .locals 3

    const-string v0, "response"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/log/upload/data/base/HttpUbtResponse;->getCode()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/log/upload/data/base/HttpUbtResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/log/upload/net/RequestManager$b;->a:Lcs4;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcs4;->b(Lcom/transsion/log/upload/data/base/HttpUbtResponse;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/log/upload/net/RequestManager$b;->a:Lcs4;

    if-eqz p0, :cond_1

    new-instance p1, Lcom/transsion/log/upload/data/base/HttpUbtError;

    new-instance v0, Lcom/transsion/log/upload/data/base/HttpUbtException;

    const-string v1, ""

    const/16 v2, 0x3ea

    invoke-direct {v0, v2, v1}, Lcom/transsion/log/upload/data/base/HttpUbtException;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, v2, v0}, Lcom/transsion/log/upload/data/base/HttpUbtError;-><init>(ILcom/transsion/log/upload/data/base/HttpUbtException;)V

    invoke-interface {p0, p1}, Lcs4;->a(Lcom/transsion/log/upload/data/base/HttpUbtError;)V

    :cond_1
    :goto_0
    return-void
.end method
