.class public final Lcom/avery/subtitle/DefaultSubtitleEngine$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/avery/subtitle/SubtitleLoader$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avery/subtitle/DefaultSubtitleEngine;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLk5/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/avery/subtitle/DefaultSubtitleEngine;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Z

.field final synthetic f:Lk5/b;


# direct methods
.method constructor <init>(Lcom/avery/subtitle/DefaultSubtitleEngine;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLk5/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/avery/subtitle/DefaultSubtitleEngine$b;->a:Lcom/avery/subtitle/DefaultSubtitleEngine;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/avery/subtitle/DefaultSubtitleEngine$b;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/avery/subtitle/DefaultSubtitleEngine$b;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/avery/subtitle/DefaultSubtitleEngine$b;->d:Ljava/lang/String;

    .line 8
    .line 9
    iput-boolean p5, p0, Lcom/avery/subtitle/DefaultSubtitleEngine$b;->e:Z

    .line 10
    .line 11
    iput-object p6, p0, Lcom/avery/subtitle/DefaultSubtitleEngine$b;->f:Lk5/b;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public a(Lm5/d;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/avery/subtitle/DefaultSubtitleEngine$b;->a:Lcom/avery/subtitle/DefaultSubtitleEngine;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/avery/subtitle/DefaultSubtitleEngine;->b(Lcom/avery/subtitle/DefaultSubtitleEngine;)Ln5/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/avery/subtitle/DefaultSubtitleEngine$b;->b:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, p1}, Ln5/a;->k(Ljava/lang/String;Lm5/d;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/avery/subtitle/DefaultSubtitleEngine$b;->a:Lcom/avery/subtitle/DefaultSubtitleEngine;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/avery/subtitle/DefaultSubtitleEngine;->b(Lcom/avery/subtitle/DefaultSubtitleEngine;)Ln5/a;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/avery/subtitle/DefaultSubtitleEngine$b;->b:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ln5/a;->i(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/avery/subtitle/DefaultSubtitleEngine$b;->a:Lcom/avery/subtitle/DefaultSubtitleEngine;

    .line 27
    .line 28
    iget-object v3, p0, Lcom/avery/subtitle/DefaultSubtitleEngine$b;->c:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v4, p0, Lcom/avery/subtitle/DefaultSubtitleEngine$b;->d:Ljava/lang/String;

    .line 31
    .line 32
    iget-boolean v5, p0, Lcom/avery/subtitle/DefaultSubtitleEngine$b;->e:Z

    .line 33
    .line 34
    iget-object v6, p0, Lcom/avery/subtitle/DefaultSubtitleEngine$b;->f:Lk5/b;

    .line 35
    .line 36
    move-object v7, p1

    .line 37
    invoke-static/range {v2 .. v7}, Lcom/avery/subtitle/DefaultSubtitleEngine;->d(Lcom/avery/subtitle/DefaultSubtitleEngine;Ljava/lang/String;Ljava/lang/String;ZLk5/b;Lm5/d;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public b(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/avery/subtitle/DefaultSubtitleEngine$b;->a:Lcom/avery/subtitle/DefaultSubtitleEngine;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/avery/subtitle/DefaultSubtitleEngine;->b(Lcom/avery/subtitle/DefaultSubtitleEngine;)Ln5/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/avery/subtitle/DefaultSubtitleEngine$b;->b:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Ln5/a;->k(Ljava/lang/String;Lm5/d;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/avery/subtitle/DefaultSubtitleEngine;->c()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v2, "onError: "

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/avery/subtitle/DefaultSubtitleEngine$b;->f:Lk5/b;

    .line 45
    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    invoke-interface {p1, v0}, Lk5/b;->a(Z)V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void
.end method
