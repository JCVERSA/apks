.class public Lcom/avery/subtitle/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/avery/subtitle/SubtitleLoader$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avery/subtitle/a;->setSubtitlePath(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/avery/subtitle/a;


# direct methods
.method public constructor <init>(Lcom/avery/subtitle/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/avery/subtitle/a$a;->b:Lcom/avery/subtitle/a;

    iput-object p2, p0, Lcom/avery/subtitle/a$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DefaultSubtitleEngine"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iget-object p0, p0, Lcom/avery/subtitle/a$a;->a:Ljava/lang/String;

    invoke-static {p1, p0}, Lf16;->d(ILjava/lang/String;)V

    return-void
.end method

.method public b(Lzna;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSuccess "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultSubtitleEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/avery/subtitle/a$a;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Lf16;->d(ILjava/lang/String;)V

    const-string p0, "onSuccess: timedTextObject is null."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p1, Lzna;->i:Ljava/util/TreeMap;

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/avery/subtitle/a$a;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Lf16;->d(ILjava/lang/String;)V

    const-string p0, "onSuccess: captions is null."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/avery/subtitle/a$a;->b:Lcom/avery/subtitle/a;

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/avery/subtitle/a;->b(Lcom/avery/subtitle/a;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/avery/subtitle/a$a;->b:Lcom/avery/subtitle/a;

    invoke-static {v0}, Lcom/avery/subtitle/a;->c(Lcom/avery/subtitle/a;)V

    iget-object v0, p0, Lcom/avery/subtitle/a$a;->b:Lcom/avery/subtitle/a;

    invoke-static {v0}, Lcom/avery/subtitle/a;->d(Lcom/avery/subtitle/a;)Ln2a;

    move-result-object v0

    iget-object v1, p0, Lcom/avery/subtitle/a$a;->a:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Ln2a;->c(Ljava/lang/String;Ljava/util/List;)V

    const/4 p1, 0x1

    iget-object p0, p0, Lcom/avery/subtitle/a$a;->a:Ljava/lang/String;

    invoke-static {p1, p0}, Lf16;->d(ILjava/lang/String;)V

    return-void
.end method
