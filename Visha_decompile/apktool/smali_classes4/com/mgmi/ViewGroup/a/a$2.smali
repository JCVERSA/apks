.class Lcom/mgmi/ViewGroup/a/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgmi/ViewGroup/a/a;->d()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgmi/ViewGroup/a/a;


# direct methods
.method public constructor <init>(Lcom/mgmi/ViewGroup/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ViewGroup/a/a$2;->a:Lcom/mgmi/ViewGroup/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/mgmi/ViewGroup/a/a$2;->a:Lcom/mgmi/ViewGroup/a/a;

    invoke-static {p1}, Lcom/mgmi/ViewGroup/a/a;->a(Lcom/mgmi/ViewGroup/a/a;)Lcom/mgmi/ViewGroup/a/a$a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/mgmi/ViewGroup/a/a$2;->a:Lcom/mgmi/ViewGroup/a/a;

    invoke-static {p0}, Lcom/mgmi/ViewGroup/a/a;->a(Lcom/mgmi/ViewGroup/a/a;)Lcom/mgmi/ViewGroup/a/a$a;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgmi/ViewGroup/a/a$a;->b()V

    :cond_0
    return-void
.end method
