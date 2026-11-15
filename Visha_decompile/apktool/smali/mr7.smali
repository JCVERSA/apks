.class public Lmr7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmr7$a;
    }
.end annotation


# instance fields
.field public a:Landroid/app/Activity;

.field public b:Lcom/transsion/xuanniao/account/model/data/AccountRes;

.field public c:Lmr7$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/transsion/xuanniao/account/model/data/AccountRes;Lmr7$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmr7;->a:Landroid/app/Activity;

    iput-object p2, p0, Lmr7;->b:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    iput-object p3, p0, Lmr7;->c:Lmr7$a;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    iget-object v0, p0, Lmr7;->b:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/transsion/xuanniao/account/model/data/AccountRes;->email:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lmr7;->b:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/model/data/AccountRes;->phone:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method
