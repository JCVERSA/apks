.class public Lcom/mgadplus/brower/CustomWebActivity$d;
.super Lcom/mgmi/ViewGroup/a/a$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgadplus/brower/CustomWebActivity;->k(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lcom/mgadplus/brower/CustomWebActivity;


# direct methods
.method public constructor <init>(Lcom/mgadplus/brower/CustomWebActivity;Lcom/mgmi/ViewGroup/a/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/brower/CustomWebActivity$d;->g:Lcom/mgadplus/brower/CustomWebActivity;

    iput-object p3, p0, Lcom/mgadplus/brower/CustomWebActivity$d;->f:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/mgmi/ViewGroup/a/a$b;-><init>(Lcom/mgmi/ViewGroup/a/a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-super {p0}, Lcom/mgmi/ViewGroup/a/a$b;->a()V

    invoke-static {}, Lcom/mgmi/platform/e;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mgadplus/brower/CustomWebActivity$d;->g:Lcom/mgadplus/brower/CustomWebActivity;

    :cond_0
    invoke-static {v0}, Lk7d;->c(Landroid/content/Context;)Lk7d;

    move-result-object v0

    invoke-static {}, Lg4d;->a()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/mgadplus/brower/CustomWebActivity$d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lk7d;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public b()V
    .locals 6

    invoke-super {p0}, Lcom/mgmi/ViewGroup/a/a$b;->b()V

    invoke-static {}, Lcom/mgmi/e/b;->a()Lcom/mgmi/e/b;

    move-result-object v0

    invoke-static {}, Lcom/mgmi/platform/e;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lg4d;->a()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/mgmi/e/c;->CONVERTION_TYPE_USER_CANCEL_DOWNLOAD:Lcom/mgmi/e/c;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/mgmi/e/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mgmi/e/c;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
