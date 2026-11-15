.class Lcom/mgtv/a/d/f/a$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/d/f/a;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/a/d/f/a;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/d/f/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/d/f/a$9;->a:Lcom/mgtv/a/d/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/mgtv/a/d/f/a$9;->a:Lcom/mgtv/a/d/f/a;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/mgtv/a/d/f/a;->a(Lcom/mgtv/a/d/f/a;Z)Z

    iget-object p0, p0, Lcom/mgtv/a/d/f/a$9;->a:Lcom/mgtv/a/d/f/a;

    invoke-static {p0}, Lcom/mgtv/a/d/f/a;->a(Lcom/mgtv/a/d/f/a;)V

    return-void
.end method
