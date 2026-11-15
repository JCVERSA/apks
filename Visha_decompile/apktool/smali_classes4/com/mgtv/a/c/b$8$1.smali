.class Lcom/mgtv/a/c/b$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/c/b$8;->a(Ljava/lang/String;Lz9d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgmi/model/ADEventBean;

.field final synthetic b:Lcom/mgtv/a/c/b$8;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/c/b$8;Lcom/mgmi/model/ADEventBean;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/c/b$8$1;->b:Lcom/mgtv/a/c/b$8;

    iput-object p2, p0, Lcom/mgtv/a/c/b$8$1;->a:Lcom/mgmi/model/ADEventBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/mgmi/e/d;->a()Lcom/mgmi/e/d;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/a/c/b$8$1;->a:Lcom/mgmi/model/ADEventBean;

    iget-object p0, p0, Lcom/mgtv/a/c/b$8$1;->b:Lcom/mgtv/a/c/b$8;

    iget-object p0, p0, Lcom/mgtv/a/c/b$8;->a:Lcom/mgtv/a/c/b;

    iget-object p0, p0, Lcom/mgtv/a/c/a;->o:Lcom/mgmi/model/m;

    invoke-virtual {v0, v1, p0}, Lcom/mgmi/e/d;->a(Lcom/mgmi/model/ADEventBean;Lcom/mgmi/model/m;)V

    return-void
.end method
