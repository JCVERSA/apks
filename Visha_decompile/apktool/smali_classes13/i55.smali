.class public final Li55;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Class;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/reflect/Method;

.field public final d:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li55;->a:Ljava/lang/Class;

    iput-object p2, p0, Li55;->b:Ljava/lang/Object;

    iput-object p3, p0, Li55;->c:Ljava/lang/reflect/Method;

    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Li55;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/reflect/Method;
    .locals 0

    iget-object p0, p0, Li55;->c:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method public b()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Li55;->a:Ljava/lang/Class;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Li55;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Li55;->c:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Li55;->d:Ljava/util/List;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s.%s() %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
