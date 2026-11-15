.class public Lcom/transsion/xuanniao/account/api/PalmInitialize$a$a;
.super LOppOOp0/OppO0O0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/xuanniao/account/api/PalmInitialize$a;->b(Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic k:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/api/PalmInitialize$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 0

    iput-object p5, p0, Lcom/transsion/xuanniao/account/api/PalmInitialize$a$a;->k:Landroid/content/Context;

    invoke-direct {p0, p2, p3, p4}, LOppOOp0/OppO0O0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 0

    check-cast p2, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;

    sget-object p1, Lao7$a;->a:Lao7;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/api/PalmInitialize$a$a;->k:Landroid/content/Context;

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Lao7;->e(Landroid/content/Context;Z)V

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method
