.class public Lfd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final b:Ljava/lang/Class;

.field public final c:Ljava/util/Map;

.field public final d:Lyi5;

.field public final e:Lyi5;

.field public final f:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/util/Map;Lyi5;Lyi5;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfd;->b:Ljava/lang/Class;

    iput-object p2, p0, Lfd;->c:Ljava/util/Map;

    iput-object p3, p0, Lfd;->d:Lyi5;

    iput-object p4, p0, Lfd;->e:Lyi5;

    iput-object p5, p0, Lfd;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lfd;->b:Ljava/lang/Class;

    iget-object v1, p0, Lfd;->c:Ljava/util/Map;

    iget-object v2, p0, Lfd;->d:Lyi5;

    iget-object v3, p0, Lfd;->e:Lyi5;

    iget-object v4, p0, Lfd;->f:Ljava/util/List;

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCallerKt;->c(Ljava/lang/Class;Ljava/util/Map;Lyi5;Lyi5;Ljava/util/List;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
