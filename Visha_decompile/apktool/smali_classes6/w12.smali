.class public final Lw12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/moshi/e$e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Type;Ljava/util/Set;Lcom/squareup/moshi/j;)Lcom/squareup/moshi/e;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moshi"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, p0, p1, p2}, Lcom/squareup/moshi/j;->h(Lcom/squareup/moshi/e$e;Ljava/lang/reflect/Type;Ljava/util/Set;)Lcom/squareup/moshi/e;

    move-result-object p0

    new-instance p1, Lw12$a;

    invoke-direct {p1, p0}, Lw12$a;-><init>(Lcom/squareup/moshi/e;)V

    return-object p1
.end method
