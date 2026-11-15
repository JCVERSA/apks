.class Lcom/mgmi/g/a/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsed;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgmi/g/a/a;->b(Lcom/mgmi/model/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgmi/model/p;

.field final synthetic b:Lcom/mgmi/g/a/a;


# direct methods
.method public constructor <init>(Lcom/mgmi/g/a/a;Lcom/mgmi/model/p;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/g/a/a$3;->b:Lcom/mgmi/g/a/a;

    iput-object p2, p0, Lcom/mgmi/g/a/a$3;->a:Lcom/mgmi/model/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Ljava/io/File;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/mgmi/b/c;->a()Lcom/mgmi/b/c;

    move-result-object v0

    iget-object p0, p0, Lcom/mgmi/g/a/a$3;->a:Lcom/mgmi/model/p;

    invoke-virtual {p0}, Lcom/mgmi/model/p;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/mgmi/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
