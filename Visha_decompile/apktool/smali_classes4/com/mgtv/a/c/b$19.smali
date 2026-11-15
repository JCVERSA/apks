.class Lcom/mgtv/a/c/b$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/c/b;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/a/c/b;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/c/b$19;->a:Lcom/mgtv/a/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lz9d;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/mgtv/a/c/b$19;->a:Lcom/mgtv/a/c/b;

    const-string p1, "-999"

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/a/c/b;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/mgmi/model/creative/ClickPosition;

    invoke-virtual {p2, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mgmi/model/creative/ClickPosition;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/mgtv/a/c/b$19;->a:Lcom/mgtv/a/c/b;

    iget-object p1, p1, Lcom/mgmi/model/creative/ClickPosition;->type:Ljava/lang/String;

    iget-object p2, p0, Lcom/mgtv/a/c/b;->C:Lcom/mgtv/a/c/d;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/mgtv/a/c/d;->i()I

    move-result v0

    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/mgtv/a/c/b;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method
