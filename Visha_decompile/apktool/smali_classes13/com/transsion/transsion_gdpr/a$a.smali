.class public Lcom/transsion/transsion_gdpr/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/transsion_gdpr/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Z

.field public c:Z

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/Integer;

.field public f:Landroid/view/View;

.field public g:Ljava/lang/Integer;

.field public h:Ljava/lang/Integer;

.field public i:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/transsion/widgetsgdpr/R$style;->OS_Dialog_Alert_Base:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/transsion_gdpr/a$a;->g:Ljava/lang/Integer;

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/transsion_gdpr/a$a;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transsion_gdpr/a$a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public b()Landroid/app/Dialog;
    .locals 3

    new-instance v0, Lcom/transsion/transsion_gdpr/a$b;

    iget-object v1, p0, Lcom/transsion/transsion_gdpr/a$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/transsion_gdpr/a$a;->g:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/transsion/transsion_gdpr/a$b;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/transsion/transsion_gdpr/a$a;->h:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/transsion_gdpr/a$a;->h:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    :cond_0
    iget-object v1, p0, Lcom/transsion/transsion_gdpr/a$a;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/transsion/transsion_gdpr/a$a;->f:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/transsion/transsion_gdpr/a$a;->i:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :cond_3
    iget-object v1, p0, Lcom/transsion/transsion_gdpr/a$a;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/transsion_gdpr/a$a;->e(Landroid/app/Dialog;I)V

    :cond_4
    iget-boolean p0, p0, Lcom/transsion/transsion_gdpr/a$a;->b:Z

    if-eqz p0, :cond_5

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v1, 0x7f6

    invoke-virtual {p0, v1}, Landroid/view/Window;->setType(I)V

    :cond_5
    return-object v0
.end method

.method public c(Ljava/lang/Boolean;)Lcom/transsion/transsion_gdpr/a$a;
    .locals 0

    iput-object p1, p0, Lcom/transsion/transsion_gdpr/a$a;->i:Ljava/lang/Boolean;

    return-object p0
.end method

.method public d(Landroid/view/View;)Lcom/transsion/transsion_gdpr/a$a;
    .locals 0

    iput-object p1, p0, Lcom/transsion/transsion_gdpr/a$a;->f:Landroid/view/View;

    return-object p0
.end method

.method public final e(Landroid/app/Dialog;I)V
    .locals 0

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method public f()Lcom/transsion/transsion_gdpr/a$a;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/transsion_gdpr/a$a;->c:Z

    return-object p0
.end method

.method public g(Ljava/lang/Integer;)Lcom/transsion/transsion_gdpr/a$a;
    .locals 0

    iput-object p1, p0, Lcom/transsion/transsion_gdpr/a$a;->g:Ljava/lang/Integer;

    return-object p0
.end method
