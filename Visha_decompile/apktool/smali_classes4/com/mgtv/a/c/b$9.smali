.class Lcom/mgtv/a/c/b$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/c/b;->b(Lcom/mgmi/model/m;)V
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

    iput-object p1, p0, Lcom/mgtv/a/c/b$9;->a:Lcom/mgtv/a/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lz9d;)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/mgtv/a/c/b$9;->a:Lcom/mgtv/a/c/b;

    invoke-static {p0}, Lcom/mgtv/a/c/b;->d(Lcom/mgtv/a/c/b;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lz9d;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
