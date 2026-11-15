.class public Lcom/transsion/magicvideo/widgets/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/widgets/a;->m(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/a;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/a$d;->b:Lcom/transsion/magicvideo/widgets/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/a$d;->b:Lcom/transsion/magicvideo/widgets/a;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/a;->c(Lcom/transsion/magicvideo/widgets/a;)Lcom/transsion/magicvideo/widgets/a$f;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/a$d;->b:Lcom/transsion/magicvideo/widgets/a;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/a;->d(Lcom/transsion/magicvideo/widgets/a;)Lcom/transsion/dbdata/beans/NewFeatureAdvertise;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/magicvideo/widgets/a$f;->a(Lcom/transsion/dbdata/beans/NewFeatureAdvertise;)V

    return-void
.end method
