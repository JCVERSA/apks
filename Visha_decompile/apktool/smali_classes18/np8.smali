.class public final Lnp8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyt9;


# instance fields
.field public final b:Ljava/lang/annotation/Annotation;


# direct methods
.method public constructor <init>(Ljava/lang/annotation/Annotation;)V
    .locals 1

    const-string v0, "annotation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnp8;->b:Ljava/lang/annotation/Annotation;

    return-void
.end method


# virtual methods
.method public b()Lzt9;
    .locals 1

    sget-object p0, Lzt9;->a:Lzt9;

    const-string v0, "NO_SOURCE_FILE"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final d()Ljava/lang/annotation/Annotation;
    .locals 0

    iget-object p0, p0, Lnp8;->b:Ljava/lang/annotation/Annotation;

    return-object p0
.end method
