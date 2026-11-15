.class public final Lha5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfa3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lha5$b;
    }
.end annotation


# static fields
.field public static final e:Lyb7;

.field public static final f:Llnb;

.field public static final g:Llnb;

.field public static final h:Lha5$b;


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:Ljava/util/Map;

.field public c:Lyb7;

.field public d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lea5;

    invoke-direct {v0}, Lea5;-><init>()V

    sput-object v0, Lha5;->e:Lyb7;

    new-instance v0, Lfa5;

    invoke-direct {v0}, Lfa5;-><init>()V

    sput-object v0, Lha5;->f:Llnb;

    new-instance v0, Lga5;

    invoke-direct {v0}, Lga5;-><init>()V

    sput-object v0, Lha5;->g:Llnb;

    new-instance v0, Lha5$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lha5$b;-><init>(Lha5$a;)V

    sput-object v0, Lha5;->h:Lha5$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lha5;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lha5;->b:Ljava/util/Map;

    sget-object v0, Lha5;->e:Lyb7;

    iput-object v0, p0, Lha5;->c:Lyb7;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lha5;->d:Z

    const-class v0, Ljava/lang/String;

    sget-object v1, Lha5;->f:Llnb;

    invoke-virtual {p0, v0, v1}, Lha5;->p(Ljava/lang/Class;Llnb;)Lha5;

    const-class v0, Ljava/lang/Boolean;

    sget-object v1, Lha5;->g:Llnb;

    invoke-virtual {p0, v0, v1}, Lha5;->p(Ljava/lang/Class;Llnb;)Lha5;

    const-class v0, Ljava/util/Date;

    sget-object v1, Lha5;->h:Lha5$b;

    invoke-virtual {p0, v0, v1}, Lha5;->p(Ljava/lang/Class;Llnb;)Lha5;

    return-void
.end method

.method public static synthetic b(Ljava/lang/Boolean;Lmnb;)V
    .locals 0

    invoke-static {p0, p1}, Lha5;->n(Ljava/lang/Boolean;Lmnb;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/Object;Lzb7;)V
    .locals 0

    invoke-static {p0, p1}, Lha5;->l(Ljava/lang/Object;Lzb7;)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/String;Lmnb;)V
    .locals 0

    invoke-static {p0, p1}, Lha5;->m(Ljava/lang/String;Lmnb;)V

    return-void
.end method

.method public static synthetic e(Lha5;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lha5;->a:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic f(Lha5;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lha5;->b:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic g(Lha5;)Lyb7;
    .locals 0

    iget-object p0, p0, Lha5;->c:Lyb7;

    return-object p0
.end method

.method public static synthetic h(Lha5;)Z
    .locals 0

    iget-boolean p0, p0, Lha5;->d:Z

    return p0
.end method

.method public static synthetic l(Ljava/lang/Object;Lzb7;)V
    .locals 2

    new-instance p1, Lcom/google/firebase/encoders/EncodingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t find encoder for type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/firebase/encoders/EncodingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic m(Ljava/lang/String;Lmnb;)V
    .locals 0

    invoke-interface {p1, p0}, Lmnb;->a(Ljava/lang/String;)Lmnb;

    return-void
.end method

.method public static synthetic n(Ljava/lang/Boolean;Lmnb;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-interface {p1, p0}, Lmnb;->b(Z)Lmnb;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Class;Lyb7;)Lfa3;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lha5;->o(Ljava/lang/Class;Lyb7;)Lha5;

    move-result-object p0

    return-object p0
.end method

.method public i()Lbs1;
    .locals 1

    new-instance v0, Lha5$a;

    invoke-direct {v0, p0}, Lha5$a;-><init>(Lha5;)V

    return-object v0
.end method

.method public j(Lze1;)Lha5;
    .locals 0

    invoke-interface {p1, p0}, Lze1;->a(Lfa3;)V

    return-object p0
.end method

.method public k(Z)Lha5;
    .locals 0

    iput-boolean p1, p0, Lha5;->d:Z

    return-object p0
.end method

.method public o(Ljava/lang/Class;Lyb7;)Lha5;
    .locals 1

    iget-object v0, p0, Lha5;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lha5;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public p(Ljava/lang/Class;Llnb;)Lha5;
    .locals 1

    iget-object v0, p0, Lha5;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lha5;->a:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
