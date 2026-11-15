.class public final Liz6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# instance fields
.field public final synthetic b:Lcs4;


# direct methods
.method public constructor <init>(Lcs4;)V
    .locals 0

    iput-object p1, p0, Liz6;->b:Lcs4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2

    const-string v0, "call"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Liz6;->b:Lcs4;

    if-eqz p0, :cond_0

    new-instance p1, Lcom/transsion/log/upload/data/base/HttpUbtError;

    new-instance v0, Lcom/transsion/log/upload/data/base/HttpUbtException;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0x3e8

    invoke-direct {v0, v1, p2}, Lcom/transsion/log/upload/data/base/HttpUbtException;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, v1, v0}, Lcom/transsion/log/upload/data/base/HttpUbtError;-><init>(ILcom/transsion/log/upload/data/base/HttpUbtException;)V

    invoke-interface {p0, p1}, Lcs4;->a(Lcom/transsion/log/upload/data/base/HttpUbtError;)V

    :cond_0
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 2

    const-string v0, "call"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p1

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Liz6;->b:Lcs4;

    if-eqz p0, :cond_0

    new-instance p1, Lcom/transsion/log/upload/data/base/HttpUbtResponse;

    const-string p2, "\u4e0a\u4f20\u6210\u529f"

    const/4 v0, 0x0

    const/16 v1, 0x7d0

    invoke-direct {p1, v1, p2, v0}, Lcom/transsion/log/upload/data/base/HttpUbtResponse;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Lcs4;->b(Lcom/transsion/log/upload/data/base/HttpUbtResponse;)V

    :cond_0
    return-void
.end method
