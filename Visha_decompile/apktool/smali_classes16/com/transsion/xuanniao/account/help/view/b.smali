.class public Lcom/transsion/xuanniao/account/help/view/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/xuanniao/account/help/view/b$a;
    }
.end annotation


# instance fields
.field public a:Lcom/transsion/widgetslib/dialog/d;

.field public b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

.field public c:Lcom/transsion/xuanniao/account/help/view/b$a;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;Lcom/transsion/xuanniao/account/help/view/b$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/xuanniao/account/help/view/b;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    iput-object p2, p0, Lcom/transsion/xuanniao/account/help/view/b;->c:Lcom/transsion/xuanniao/account/help/view/b$a;

    return-void
.end method
