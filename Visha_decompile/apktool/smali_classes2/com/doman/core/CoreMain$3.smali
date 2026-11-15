.class final Lcom/doman/core/CoreMain$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doman/core/CoreMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/doman/core/CoreMain;


# direct methods
.method public constructor <init>(Lcom/doman/core/CoreMain;)V
    .locals 0

    iput-object p1, p0, Lcom/doman/core/CoreMain$3;->a:Lcom/doman/core/CoreMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/doman/core/manager/a;->a()Lcom/doman/core/manager/a;

    invoke-static {}, Lcom/doman/core/manager/a;->f()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {}, Lcom/doman/core/ig/manager/b;->a()Lcom/doman/core/ig/manager/b;

    move-result-object p0

    invoke-static {}, Lcom/doman/core/manager/a;->a()Lcom/doman/core/manager/a;

    invoke-static {}, Lcom/doman/core/manager/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/doman/core/manager/a;->a()Lcom/doman/core/manager/a;

    invoke-static {}, Lcom/doman/core/manager/a;->b()Lcom/doman/core/a/f;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    iget-wide v4, v1, Lcom/doman/core/a/f;->F:J

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    iput-object v0, p0, Lcom/doman/core/ig/manager/b;->b:Ljava/lang/String;

    iput-wide v4, p0, Lcom/doman/core/ig/manager/b;->a:J

    cmp-long v0, v4, v2

    if-gez v0, :cond_1

    iput-wide v2, p0, Lcom/doman/core/ig/manager/b;->a:J

    :cond_1
    new-instance v0, Lcom/doman/core/ig/manager/b$1;

    invoke-direct {v0, p0}, Lcom/doman/core/ig/manager/b$1;-><init>(Lcom/doman/core/ig/manager/b;)V

    iget-wide v1, p0, Lcom/doman/core/ig/manager/b;->a:J

    invoke-static {v0, v1, v2}, Lcom/doman/core/d/n;->a(Ljava/lang/Runnable;J)V

    :cond_2
    return-void
.end method
