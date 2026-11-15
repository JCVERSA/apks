.class Lcom/mgtv/a/d/a/a/a$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/d/a/a/a;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/a/d/a/a/a;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/d/a/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/d/a/a/a$9;->a:Lcom/mgtv/a/d/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibility(Z)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/mgtv/a/d/a/a/a$9;->a:Lcom/mgtv/a/d/a/a/a;

    invoke-virtual {p0}, Lcom/mgtv/a/d/a/a/a;->c()V

    :cond_0
    return-void
.end method
