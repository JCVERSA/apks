.class Lcom/mgtv/a/c/h$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/widget/IVideoView$OnStartListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/c/h;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/a/c/h;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/c/h;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/c/h$6;->a:Lcom/mgtv/a/c/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/c/h$6;->a:Lcom/mgtv/a/c/h;

    iget-object p0, p0, Lcom/mgtv/a/c/a;->q:Lcom/mgtv/a/c/e;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/a/c/e;->c()V

    :cond_0
    return-void
.end method
