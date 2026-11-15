.class public Lk7d$a;
.super La9d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk7d;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Lcom/mgmi/db/dao3/c;

.field public final synthetic i:Lk7d;


# direct methods
.method public constructor <init>(Lk7d;Ljava/lang/String;Lcom/mgmi/db/dao3/c;)V
    .locals 0

    iput-object p1, p0, Lk7d$a;->i:Lk7d;

    iput-object p2, p0, Lk7d$a;->g:Ljava/lang/String;

    iput-object p3, p0, Lk7d$a;->h:Lcom/mgmi/db/dao3/c;

    invoke-direct {p0}, La9d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 4
    invoke-static {}, Lcom/mgmi/e/b;->a()Lcom/mgmi/e/b;

    move-result-object v0

    invoke-static {}, Lk7d;->a()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lk7d$a;->h:Lcom/mgmi/db/dao3/c;

    iget-object v2, p0, Lcom/mgmi/db/dao3/c;->i:Ljava/lang/String;

    sget-object v3, Lcom/mgmi/e/c;->CONVERTION_TYPE_DOWNLOAD_START:Lcom/mgmi/e/c;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mgmi/db/dao3/c;->c:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/mgmi/e/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mgmi/e/c;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lv5d;

    invoke-virtual {p0, p1}, Lk7d$a;->b(Lv5d;)V

    return-void
.end method

.method public varargs a([Ljava/lang/Integer;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lk7d$a;->i:Lk7d;

    invoke-static {v0}, Lk7d;->b(Lk7d;)Lk7d$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lk7d$a;->i:Lk7d;

    invoke-static {v0}, Lk7d;->b(Lk7d;)Lk7d$b;

    move-result-object v0

    iget-object v1, p0, Lk7d$a;->i:Lk7d;

    invoke-static {v1}, Lk7d;->b(Lk7d;)Lk7d$b;

    move-result-object v1

    new-instance v2, Lv5d;

    invoke-direct {v2}, Lv5d;-><init>()V

    const/4 v3, 0x0

    aget-object p1, p1, v3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v2, p1}, Lv5d;->b(I)Lv5d;

    move-result-object p1

    iget-object p0, p0, Lk7d$a;->g:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lv5d;->c(Ljava/lang/String;)Lv5d;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {v1, p1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public b(Lv5d;)V
    .locals 3

    iget-object v0, p0, Lk7d$a;->i:Lk7d;

    invoke-static {v0}, Lk7d;->b(Lk7d;)Lk7d$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk7d$a;->i:Lk7d;

    invoke-static {v0}, Lk7d;->b(Lk7d;)Lk7d$b;

    move-result-object v0

    iget-object v1, p0, Lk7d$a;->i:Lk7d;

    invoke-static {v1}, Lk7d;->b(Lk7d;)Lk7d$b;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    invoke-virtual {p1}, Lcgd;->e()Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcgd;->d()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lk7d$a;->i:Lk7d;

    iget-object p1, p1, Lv5d;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lk7d;->k(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
