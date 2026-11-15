.class public final Lugb$a;
.super Lcom/transsion/http/impl/StringCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lugb;->j(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lugb;Lww4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lugb;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lww4;


# direct methods
.method public constructor <init>(Lugb;Ljava/lang/String;Lww4;)V
    .locals 0

    iput-object p1, p0, Lugb$a;->e:Lugb;

    iput-object p2, p0, Lugb$a;->f:Ljava/lang/String;

    iput-object p3, p0, Lugb$a;->g:Lww4;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/transsion/http/impl/StringCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public D(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget-object v0, Lvk;->a:Lvk;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2}, Lvk;->J(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lugb$a;->e:Lugb;

    iget-object p2, p0, Lugb$a;->f:Ljava/lang/String;

    iget-object p0, p0, Lugb$a;->g:Lww4;

    invoke-static {p1, p2, p0}, Lugb;->g(Lugb;Ljava/lang/String;Lww4;)V

    sget-object p0, Lcom/cloud/tupdate/net/utils/LogUtil;->a:Lcom/cloud/tupdate/net/utils/LogUtil;

    invoke-virtual {p0, p3}, Lcom/cloud/tupdate/net/utils/LogUtil;->d(Ljava/lang/Throwable;)V

    return-void
.end method

.method public E(ILjava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object p1, p0, Lugb$a;->e:Lugb;

    iget-object v0, p0, Lugb$a;->f:Ljava/lang/String;

    iget-object p0, p0, Lugb$a;->g:Lww4;

    invoke-static {p1, v0, p2, p0}, Lugb;->h(Lugb;Ljava/lang/String;Ljava/lang/String;Lww4;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lvk;->a:Lvk;

    const-string p2, "0"

    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2, v0}, Lvk;->J(ILjava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tupdate/net/utils/LogUtil;->a:Lcom/cloud/tupdate/net/utils/LogUtil;

    invoke-virtual {p1, p0}, Lcom/cloud/tupdate/net/utils/LogUtil;->d(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
