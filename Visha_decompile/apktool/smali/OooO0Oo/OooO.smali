.class public LOooO0Oo/OooO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic OooO00o:Ljava/util/Map;

.field public final synthetic OooO0O0:Ljava/util/Map;

.field public final synthetic OooO0OO:Lrj7;

.field public final synthetic OooO0Oo:LOooO0Oo/OooO0o;


# direct methods
.method public constructor <init>(LOooO0Oo/OooO0o;Ljava/util/Map;Ljava/util/Map;Lrj7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LOooO0Oo/OooO;->OooO0Oo:LOooO0Oo/OooO0o;

    iput-object p2, p0, LOooO0Oo/OooO;->OooO00o:Ljava/util/Map;

    iput-object p3, p0, LOooO0Oo/OooO;->OooO0O0:Ljava/util/Map;

    iput-object p4, p0, LOooO0Oo/OooO;->OooO0OO:Lrj7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, LOooO0Oo/OooO;->OooO0Oo:LOooO0Oo/OooO0o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, LOooO0Oo/OooO;->OooO0Oo:LOooO0Oo/OooO0o;

    invoke-virtual {v2}, LOooO0Oo/OooO0o;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/oauth/authorize"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LOooO0Oo/OooO;->OooO00o:Ljava/util/Map;

    iget-object v3, p0, LOooO0Oo/OooO;->OooO0O0:Ljava/util/Map;

    invoke-static {v0, v1, v2, v3}, LOooO0Oo/OooO0o;->b(LOooO0Oo/OooO0o;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LOooO0Oo/OooO;->OooO0OO:Lrj7;

    invoke-interface {v1, v0}, Lrj7;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    instance-of v1, v0, Lcom/transsion/palmsdk/exception/PalmServerException;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/palmsdk/exception/PalmServerException;

    iget-object p0, p0, LOooO0Oo/OooO;->OooO0OO:Lrj7;

    iget v1, v0, Lcom/transsion/palmsdk/exception/PalmServerException;->errorCode:I

    iget-object v0, v0, Lcom/transsion/palmsdk/exception/PalmServerException;->errorMessage:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lrj7;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, LOooO0Oo/OooO;->OooO0OO:Lrj7;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const v1, 0x9ca7

    invoke-interface {p0, v1, v0}, Lrj7;->a(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
