.class public abstract Lorg/jsoup/select/b;
.super Lorg/jsoup/select/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/select/b$b;,
        Lorg/jsoup/select/b$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/jsoup/select/c;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/jsoup/select/b;->b:I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jsoup/select/b;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lorg/jsoup/select/b;-><init>()V

    .line 5
    iget-object v0, p0, Lorg/jsoup/select/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6
    invoke-virtual {p0}, Lorg/jsoup/select/b;->d()V

    return-void
.end method


# virtual methods
.method public b(Lorg/jsoup/select/c;)V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/select/b;->a:Ljava/util/ArrayList;

    iget p0, p0, Lorg/jsoup/select/b;->b:I

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c()Lorg/jsoup/select/c;
    .locals 1

    iget v0, p0, Lorg/jsoup/select/b;->b:I

    if-lez v0, :cond_0

    iget-object p0, p0, Lorg/jsoup/select/b;->a:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jsoup/select/c;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/select/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lorg/jsoup/select/b;->b:I

    return-void
.end method
