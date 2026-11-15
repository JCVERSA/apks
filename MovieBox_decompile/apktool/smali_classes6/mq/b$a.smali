.class public final Lmq/b$a;
.super Ldg/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmq/b;->h(Lcom/transsion/share/bean/ShareType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lmq/b;

.field final synthetic e:Lcom/transsion/share/bean/ShareType;


# direct methods
.method constructor <init>(Lmq/b;Lcom/transsion/share/bean/ShareType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmq/b$a;->d:Lmq/b;

    .line 2
    .line 3
    iput-object p2, p0, Lmq/b$a;->e:Lcom/transsion/share/bean/ShareType;

    .line 4
    .line 5
    invoke-direct {p0}, Ldg/a;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lmq/b$a;->d:Lmq/b;

    .line 2
    .line 3
    invoke-static {p1}, Lmq/b;->d(Lmq/b;)Landroidx/lifecycle/b0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 p2, 0x0

    .line 8
    invoke-virtual {p1, p2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/share/bean/ShareBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lmq/b$a;->e(Lcom/transsion/share/bean/ShareBean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(Lcom/transsion/share/bean/ShareBean;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lmq/b$a;->e:Lcom/transsion/share/bean/ShareType;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/transsion/share/bean/ShareBean;->setShareType(Lcom/transsion/share/bean/ShareType;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lmq/b$a;->d:Lmq/b;

    .line 9
    .line 10
    invoke-static {v0}, Lmq/b;->d(Lmq/b;)Landroidx/lifecycle/b0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
