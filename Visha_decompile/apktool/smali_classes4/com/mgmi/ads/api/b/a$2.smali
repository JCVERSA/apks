.class Lcom/mgmi/ads/api/b/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgmi/ads/api/b/a;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgmi/ads/api/b/a;


# direct methods
.method public constructor <init>(Lcom/mgmi/ads/api/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ads/api/b/a$2;->a:Lcom/mgmi/ads/api/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/mgmi/ads/api/b/a$2;->a:Lcom/mgmi/ads/api/b/a;

    invoke-static {p0}, Lcom/mgmi/ads/api/b/a;->d(Lcom/mgmi/ads/api/b/a;)Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    invoke-static {p0, v0}, Ll4d;->f(Landroid/view/View;I)Z

    return-void
.end method
