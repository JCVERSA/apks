.class public final Let8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Let8$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;

.field public final b:Ljava/lang/reflect/Method;

.field public final c:Lokhttp3/HttpUrl;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Lokhttp3/Headers;

.field public final g:Lokhttp3/MediaType;

.field public final h:Z

.field public final i:Z

.field public final j:Z

.field public final k:[Liw7;

.field public final l:Z


# direct methods
.method public constructor <init>(Let8$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Let8$a;->b:Ljava/lang/Class;

    iput-object v0, p0, Let8;->a:Ljava/lang/Class;

    iget-object v0, p1, Let8$a;->c:Ljava/lang/reflect/Method;

    iput-object v0, p0, Let8;->b:Ljava/lang/reflect/Method;

    iget-object v0, p1, Let8$a;->a:Lru8;

    iget-object v0, v0, Lru8;->c:Lokhttp3/HttpUrl;

    iput-object v0, p0, Let8;->c:Lokhttp3/HttpUrl;

    iget-object v0, p1, Let8$a;->o:Ljava/lang/String;

    iput-object v0, p0, Let8;->d:Ljava/lang/String;

    iget-object v0, p1, Let8$a;->s:Ljava/lang/String;

    iput-object v0, p0, Let8;->e:Ljava/lang/String;

    iget-object v0, p1, Let8$a;->t:Lokhttp3/Headers;

    iput-object v0, p0, Let8;->f:Lokhttp3/Headers;

    iget-object v0, p1, Let8$a;->u:Lokhttp3/MediaType;

    iput-object v0, p0, Let8;->g:Lokhttp3/MediaType;

    iget-boolean v0, p1, Let8$a;->p:Z

    iput-boolean v0, p0, Let8;->h:Z

    iget-boolean v0, p1, Let8$a;->q:Z

    iput-boolean v0, p0, Let8;->i:Z

    iget-boolean v0, p1, Let8$a;->r:Z

    iput-boolean v0, p0, Let8;->j:Z

    iget-object v0, p1, Let8$a;->w:[Liw7;

    iput-object v0, p0, Let8;->k:[Liw7;

    iget-boolean p1, p1, Let8$a;->x:Z

    iput-boolean p1, p0, Let8;->l:Z

    return-void
.end method

.method public static b(Lru8;Ljava/lang/Class;Ljava/lang/reflect/Method;)Let8;
    .locals 1

    new-instance v0, Let8$a;

    invoke-direct {v0, p0, p1, p2}, Let8$a;-><init>(Lru8;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    invoke-virtual {v0}, Let8$a;->b()Let8;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/Object;[Ljava/lang/Object;)Lokhttp3/Request;
    .locals 12

    iget-object v0, p0, Let8;->k:[Liw7;

    array-length v1, p2

    array-length v2, v0

    if-ne v1, v2, :cond_2

    new-instance v2, Lat8;

    iget-object v4, p0, Let8;->d:Ljava/lang/String;

    iget-object v5, p0, Let8;->c:Lokhttp3/HttpUrl;

    iget-object v6, p0, Let8;->e:Ljava/lang/String;

    iget-object v7, p0, Let8;->f:Lokhttp3/Headers;

    iget-object v8, p0, Let8;->g:Lokhttp3/MediaType;

    iget-boolean v9, p0, Let8;->h:Z

    iget-boolean v10, p0, Let8;->i:Z

    iget-boolean v11, p0, Let8;->j:Z

    move-object v3, v2

    invoke-direct/range {v3 .. v11}, Lat8;-><init>(Ljava/lang/String;Lokhttp3/HttpUrl;Ljava/lang/String;Lokhttp3/Headers;Lokhttp3/MediaType;ZZZ)V

    iget-boolean v3, p0, Let8;->l:Z

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, -0x1

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, p2, v4

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v5, v0, v4

    aget-object v6, p2, v4

    invoke-virtual {v5, v2, v6}, Liw7;->a(Lat8;Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lat8;->k()Lokhttp3/Request$Builder;

    move-result-object p2

    new-instance v0, Li55;

    iget-object v1, p0, Let8;->a:Ljava/lang/Class;

    iget-object p0, p0, Let8;->b:Ljava/lang/reflect/Method;

    invoke-direct {v0, v1, p1, p0, v3}, Li55;-><init>(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/util/List;)V

    const-class p0, Li55;

    invoke-virtual {p2, p0, v0}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Class;Ljava/lang/Object;)Lokhttp3/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Argument count ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") doesn\'t match expected count ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
