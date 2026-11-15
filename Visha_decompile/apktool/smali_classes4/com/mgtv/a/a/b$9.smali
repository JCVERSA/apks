.class Lcom/mgtv/a/a/b$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/a/b;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgmi/model/VASTFloatAd;

.field final synthetic b:Lcom/mgtv/a/a/b;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/a/b;Lcom/mgmi/model/VASTFloatAd;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/a/b$9;->b:Lcom/mgtv/a/a/b;

    iput-object p2, p0, Lcom/mgtv/a/a/b$9;->a:Lcom/mgmi/model/VASTFloatAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/a/a/b$9;->a:Lcom/mgmi/model/VASTFloatAd;

    iget-object p0, p0, Lcom/mgtv/a/a/b$9;->b:Lcom/mgtv/a/a/b;

    invoke-virtual {p0, v1}, Lcom/mgtv/a/a/b;->a(Lcom/mgmi/model/VASTAd;)Lcom/mgmi/e/g;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/mgmi/e/a/d;->i(Lcom/mgmi/model/VASTAd;Lcom/mgmi/e/g;)V

    return-void
.end method
