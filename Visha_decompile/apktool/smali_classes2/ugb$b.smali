.class public final Lugb$b;
.super Lcom/transsion/http/impl/StringCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lugb;->n(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lrv4;Lww4;ZLugb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lrv4;

.field public final synthetic f:Lww4;

.field public final synthetic g:Z

.field public final synthetic h:Lugb;


# direct methods
.method public constructor <init>(Lrv4;Lww4;ZLugb;)V
    .locals 0

    iput-object p1, p0, Lugb$b;->e:Lrv4;

    iput-object p2, p0, Lugb$b;->f:Lww4;

    iput-boolean p3, p0, Lugb$b;->g:Z

    iput-object p4, p0, Lugb$b;->h:Lugb;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/transsion/http/impl/StringCallback;-><init>(Z)V

    return-void
.end method

.method public static synthetic F(Ljava/lang/String;Lww4;Lrv4;ZLugb;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lugb$b;->G(Ljava/lang/String;Lww4;Lrv4;ZLugb;)V

    return-void
.end method

.method public static final G(Ljava/lang/String;Lww4;Lrv4;ZLugb;)V
    .locals 4

    const-string v0, "$updateManager"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_0

    goto :goto_5

    :cond_0
    invoke-static {p0}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-ne v0, v1, :cond_b

    invoke-interface {p1, p0}, Lww4;->a(Ljava/lang/String;)Lcom/cloud/tupdate/bean/UpdateEntity;

    move-result-object p0

    if-nez p2, :cond_1

    goto :goto_4

    :cond_1
    const/4 v0, 0x0

    if-nez p0, :cond_2

    :goto_0
    move v1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/cloud/tupdate/bean/UpdateEntity;->getUpdateContent()Lcom/cloud/tupdate/bean/UpdateContent;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/cloud/tupdate/bean/UpdateContent;->getShowDialog()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_1
    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/cloud/tupdate/bean/UpdateEntity;->getUpdateContent()Lcom/cloud/tupdate/bean/UpdateContent;

    move-result-object v2

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Lcom/cloud/tupdate/bean/UpdateContent;->getForce()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_2
    const-string v2, ""

    if-nez p0, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Lcom/cloud/tupdate/bean/UpdateEntity;->getUpdateContent()Lcom/cloud/tupdate/bean/UpdateContent;

    move-result-object v3

    if-nez v3, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {v3}, Lcom/cloud/tupdate/bean/UpdateContent;->getUpdateVersion()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_a

    goto :goto_3

    :cond_a
    move-object v2, v3

    :goto_3
    invoke-interface {p2, v1, v0, v2}, Lrv4;->b(ZZLjava/lang/String;)V

    :goto_4
    if-eqz p3, :cond_b

    invoke-static {p4, p0, p1, p3}, Lugb;->i(Lugb;Lcom/cloud/tupdate/bean/UpdateEntity;Lww4;Z)V

    :cond_b
    :goto_5
    return-void
.end method


# virtual methods
.method public D(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    sget-object v0, Lvk;->a:Lvk;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lvk;->J(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lugb$b;->e:Lrv4;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    const-string p2, "check fail"

    :cond_1
    invoke-interface {p0, p1, p2}, Lrv4;->a(ILjava/lang/String;)V

    :goto_0
    sget-object p0, Lcom/cloud/tupdate/net/utils/LogUtil;->a:Lcom/cloud/tupdate/net/utils/LogUtil;

    invoke-virtual {p0, p3}, Lcom/cloud/tupdate/net/utils/LogUtil;->d(Ljava/lang/Throwable;)V

    return-void
.end method

.method public E(ILjava/lang/String;)V
    .locals 8

    :try_start_0
    invoke-static {}, Lcom/cloud/tupdate/utils/ExecutorUtils;->i()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v3, p0, Lugb$b;->f:Lww4;

    iget-object v4, p0, Lugb$b;->e:Lrv4;

    iget-boolean v5, p0, Lugb$b;->g:Z

    iget-object v6, p0, Lugb$b;->h:Lugb;

    new-instance v7, Lvgb;

    move-object v1, v7

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Lvgb;-><init>(Ljava/lang/String;Lww4;Lrv4;ZLugb;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    sget-object v0, Lvk;->a:Lvk;

    const-string v1, "0"

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lvk;->J(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lugb$b;->e:Lrv4;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "parse fail"

    invoke-interface {p0, p1, v0}, Lrv4;->a(ILjava/lang/String;)V

    :goto_0
    sget-object p0, Lcom/cloud/tupdate/net/utils/LogUtil;->a:Lcom/cloud/tupdate/net/utils/LogUtil;

    invoke-virtual {p0, p2}, Lcom/cloud/tupdate/net/utils/LogUtil;->d(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
