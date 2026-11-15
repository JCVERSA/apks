.class public Lfreemarker/template/DefaultListAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/template/DefaultListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final b:Ljava/util/Iterator;

.field public final c:Lgc7;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Lgc7;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lfreemarker/template/DefaultListAdapter$a;->b:Ljava/util/Iterator;

    .line 4
    iput-object p2, p0, Lfreemarker/template/DefaultListAdapter$a;->c:Lgc7;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Iterator;Lgc7;Lf22;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lfreemarker/template/DefaultListAdapter$a;-><init>(Ljava/util/Iterator;Lgc7;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lfreemarker/template/DefaultListAdapter$a;->b:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public next()Lzfa;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lfreemarker/template/DefaultListAdapter$a;->c:Lgc7;

    iget-object p0, p0, Lfreemarker/template/DefaultListAdapter$a;->b:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lgc7;->c(Ljava/lang/Object;)Lzfa;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lfreemarker/template/TemplateModelException;

    const-string v1, "The collection has no more items."

    invoke-direct {v0, v1, p0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method
