.class public Lcom/transsion/magicvideo/widgets/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll9$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/widgets/a;->j(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/transsion/magicvideo/widgets/a;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/a;ZLandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/a$a;->c:Lcom/transsion/magicvideo/widgets/a;

    iput-boolean p2, p0, Lcom/transsion/magicvideo/widgets/a$a;->a:Z

    iput-object p3, p0, Lcom/transsion/magicvideo/widgets/a$a;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/dbdata/beans/NewFeatureAdvertise;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/a$a;->c:Lcom/transsion/magicvideo/widgets/a;

    invoke-static {v0, p1}, Lcom/transsion/magicvideo/widgets/a;->e(Lcom/transsion/magicvideo/widgets/a;Lcom/transsion/dbdata/beans/NewFeatureAdvertise;)V

    iget-boolean p1, p0, Lcom/transsion/magicvideo/widgets/a$a;->a:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/a$a;->c:Lcom/transsion/magicvideo/widgets/a;

    invoke-virtual {p1}, Lcom/transsion/magicvideo/widgets/a;->i()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/a$a;->c:Lcom/transsion/magicvideo/widgets/a;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/a$a;->b:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/transsion/magicvideo/widgets/a;->m(Landroid/content/Context;)V

    :cond_1
    return-void
.end method
