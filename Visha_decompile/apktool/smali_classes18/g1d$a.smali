.class public Lg1d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg1d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public b:Ljava/util/Iterator;

.field public c:Ljava/util/Iterator;

.field public d:Z

.field public final synthetic e:Lg1d;


# direct methods
.method public constructor <init>(Lg1d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg1d$a;->e:Lg1d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lg1d;Lf1d;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lg1d$a;-><init>(Lg1d;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget-boolean v0, p0, Lg1d$a;->d:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lg1d$a;->b:Ljava/util/Iterator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lg1d$a;->e:Lg1d;

    invoke-static {v0}, Lg1d;->b(Lg1d;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lg1d$a;->b:Ljava/util/Iterator;

    :cond_0
    iget-object v0, p0, Lg1d$a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lg1d$a;->e:Lg1d;

    invoke-static {v0}, Lg1d;->c(Lg1d;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lg1d$a;->c:Ljava/util/Iterator;

    const/4 v0, 0x0

    iput-object v0, p0, Lg1d$a;->b:Ljava/util/Iterator;

    iput-boolean v1, p0, Lg1d$a;->d:Z

    :cond_2
    iget-object p0, p0, Lg1d$a;->c:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lg1d$a;->d:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lg1d$a;->b:Ljava/util/Iterator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lg1d$a;->e:Lg1d;

    invoke-static {v0}, Lg1d;->b(Lg1d;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lg1d$a;->b:Ljava/util/Iterator;

    :cond_0
    iget-object v0, p0, Lg1d$a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lg1d$a;->b:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lg1d$a;->e:Lg1d;

    invoke-static {v0}, Lg1d;->c(Lg1d;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lg1d$a;->c:Ljava/util/Iterator;

    const/4 v0, 0x0

    iput-object v0, p0, Lg1d$a;->b:Ljava/util/Iterator;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg1d$a;->d:Z

    :cond_2
    iget-object p0, p0, Lg1d$a;->c:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
