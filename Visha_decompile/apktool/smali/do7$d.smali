.class public Ldo7$d;
.super LOppOOp0/OppO0O0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldo7;->j(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic k:Ldo7;


# direct methods
.method public constructor <init>(Ldo7;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Ldo7$d;->k:Ldo7;

    invoke-direct {p0, p2, p3, p4}, LOppOOp0/OppO0O0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 1

    check-cast p2, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;

    iget-object p1, p0, Ldo7$d;->k:Ldo7;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lao7$a;->a:Lao7;

    iget-object p2, p0, Ldo7$d;->k:Ldo7;

    invoke-virtual {p2}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lao7;->e(Landroid/content/Context;Z)V

    const-string p1, "login"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Ldo7$d;->k:Ldo7;

    invoke-virtual {p0}, Ldo7;->t()V

    :cond_1
    :goto_0
    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method
