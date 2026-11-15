.class public final Lyu/c$a$b;
.super Ldg/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyu/c$a;->e(Lcom/transsion/usercenter/edit/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/usercenter/edit/a;


# direct methods
.method constructor <init>(Lcom/transsion/usercenter/edit/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lyu/c$a$b;->d:Lcom/transsion/usercenter/edit/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ldg/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lyu/c;->a:Lyu/c$a;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lyu/c$a;->a(Lyu/c$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lyu/c$a$b;->d:Lcom/transsion/usercenter/edit/a;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p1, p2}, Lcom/transsion/usercenter/edit/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsnet/loginapi/bean/UserInfo;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lyu/c$a$b;->e(Lcom/transsnet/loginapi/bean/UserInfo;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lyu/c$a$b;->d:Lcom/transsion/usercenter/edit/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, ""

    .line 5
    .line 6
    invoke-interface {v0, p1, v1, v2}, Lcom/transsion/usercenter/edit/a;->b(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
