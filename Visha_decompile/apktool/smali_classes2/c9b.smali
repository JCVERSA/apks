.class public final Lc9b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb9b;


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:La9b;

.field public final c:Lf9b;


# direct methods
.method public constructor <init>(Ljava/util/Set;La9b;Lf9b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc9b;->a:Ljava/util/Set;

    iput-object p2, p0, Lc9b;->b:La9b;

    iput-object p3, p0, Lc9b;->c:Lf9b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Class;Lka3;Lh7b;)Lx8b;
    .locals 6

    iget-object p2, p0, Lc9b;->a:Ljava/util/Set;

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Le9b;

    iget-object v1, p0, Lc9b;->b:La9b;

    iget-object v5, p0, Lc9b;->c:Lf9b;

    move-object v0, p2

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Le9b;-><init>(La9b;Ljava/lang/String;Lka3;Lh7b;Lf9b;)V

    return-object p2

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object p0, p0, Lc9b;->a:Ljava/util/Set;

    filled-new-array {p3, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "%s is not supported byt this factory. Supported encodings are: %s."

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
