.class public final Liw7$k;
.super Liw7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liw7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "k"
.end annotation


# instance fields
.field public final a:Ljava/lang/reflect/Method;

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Lsi1;

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;ILjava/lang/String;Lsi1;Z)V
    .locals 0

    invoke-direct {p0}, Liw7;-><init>()V

    iput-object p1, p0, Liw7$k;->a:Ljava/lang/reflect/Method;

    iput p2, p0, Liw7$k;->b:I

    const-string p1, "name == null"

    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p3, p0, Liw7$k;->c:Ljava/lang/String;

    iput-object p4, p0, Liw7$k;->d:Lsi1;

    iput-boolean p5, p0, Liw7$k;->e:Z

    return-void
.end method


# virtual methods
.method public a(Lat8;Ljava/lang/Object;)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Liw7$k;->c:Ljava/lang/String;

    iget-object v1, p0, Liw7$k;->d:Lsi1;

    invoke-interface {v1, p2}, Lsi1;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-boolean p0, p0, Liw7$k;->e:Z

    invoke-virtual {p1, v0, p2, p0}, Lat8;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_0
    iget-object p1, p0, Liw7$k;->a:Ljava/lang/reflect/Method;

    iget p2, p0, Liw7$k;->b:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Path parameter \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Liw7$k;->c:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" value must not be null."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, p0, v0}, Lulb;->p(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
