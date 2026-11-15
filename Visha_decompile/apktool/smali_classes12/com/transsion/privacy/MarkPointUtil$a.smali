.class public Lcom/transsion/privacy/MarkPointUtil$a;
.super Lo12;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/privacy/MarkPointUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lo12;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lw06;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/privacy/MarkPointUtil$a;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/app/Activity;)V
    .locals 0

    invoke-static {}, Lu06;->c()Lu06;

    move-result-object p0

    invoke-virtual {p0}, Lu06;->b()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/privacy/MarkPointUtil;->n(Landroid/content/Context;)V

    invoke-static {}, Lu06;->c()Lu06;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lu06;->h(Z)V

    invoke-static {}, Lcom/transsion/privacy/MarkPointUtil;->a()V

    return-void
.end method

.method public e(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
