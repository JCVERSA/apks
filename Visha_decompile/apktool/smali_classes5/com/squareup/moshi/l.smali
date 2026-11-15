.class public abstract Lcom/squareup/moshi/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/moshi/l$m;,
        Lcom/squareup/moshi/l$l;
    }
.end annotation


# static fields
.field public static final a:Lcom/squareup/moshi/e$e;

.field public static final b:Lcom/squareup/moshi/e;

.field public static final c:Lcom/squareup/moshi/e;

.field public static final d:Lcom/squareup/moshi/e;

.field public static final e:Lcom/squareup/moshi/e;

.field public static final f:Lcom/squareup/moshi/e;

.field public static final g:Lcom/squareup/moshi/e;

.field public static final h:Lcom/squareup/moshi/e;

.field public static final i:Lcom/squareup/moshi/e;

.field public static final j:Lcom/squareup/moshi/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/squareup/moshi/l$c;

    invoke-direct {v0}, Lcom/squareup/moshi/l$c;-><init>()V

    sput-object v0, Lcom/squareup/moshi/l;->a:Lcom/squareup/moshi/e$e;

    new-instance v0, Lcom/squareup/moshi/l$d;

    invoke-direct {v0}, Lcom/squareup/moshi/l$d;-><init>()V

    sput-object v0, Lcom/squareup/moshi/l;->b:Lcom/squareup/moshi/e;

    new-instance v0, Lcom/squareup/moshi/l$e;

    invoke-direct {v0}, Lcom/squareup/moshi/l$e;-><init>()V

    sput-object v0, Lcom/squareup/moshi/l;->c:Lcom/squareup/moshi/e;

    new-instance v0, Lcom/squareup/moshi/l$f;

    invoke-direct {v0}, Lcom/squareup/moshi/l$f;-><init>()V

    sput-object v0, Lcom/squareup/moshi/l;->d:Lcom/squareup/moshi/e;

    new-instance v0, Lcom/squareup/moshi/l$g;

    invoke-direct {v0}, Lcom/squareup/moshi/l$g;-><init>()V

    sput-object v0, Lcom/squareup/moshi/l;->e:Lcom/squareup/moshi/e;

    new-instance v0, Lcom/squareup/moshi/l$h;

    invoke-direct {v0}, Lcom/squareup/moshi/l$h;-><init>()V

    sput-object v0, Lcom/squareup/moshi/l;->f:Lcom/squareup/moshi/e;

    new-instance v0, Lcom/squareup/moshi/l$i;

    invoke-direct {v0}, Lcom/squareup/moshi/l$i;-><init>()V

    sput-object v0, Lcom/squareup/moshi/l;->g:Lcom/squareup/moshi/e;

    new-instance v0, Lcom/squareup/moshi/l$j;

    invoke-direct {v0}, Lcom/squareup/moshi/l$j;-><init>()V

    sput-object v0, Lcom/squareup/moshi/l;->h:Lcom/squareup/moshi/e;

    new-instance v0, Lcom/squareup/moshi/l$k;

    invoke-direct {v0}, Lcom/squareup/moshi/l$k;-><init>()V

    sput-object v0, Lcom/squareup/moshi/l;->i:Lcom/squareup/moshi/e;

    new-instance v0, Lcom/squareup/moshi/l$a;

    invoke-direct {v0}, Lcom/squareup/moshi/l$a;-><init>()V

    sput-object v0, Lcom/squareup/moshi/l;->j:Lcom/squareup/moshi/e;

    return-void
.end method

.method public static a(Lcom/squareup/moshi/JsonReader;Ljava/lang/String;II)I
    .locals 1

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonReader;->E()I

    move-result v0

    if-lt v0, p2, :cond_0

    if-gt v0, p3, :cond_0

    return v0

    :cond_0
    new-instance p2, Lcom/squareup/moshi/JsonDataException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, p3, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Expected %s but was %s at path %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
