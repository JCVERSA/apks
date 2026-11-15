.class public Lk2a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwq5;


# instance fields
.field public a:Lorg/slf4j/event/Level;

.field public b:Ljava/lang/String;

.field public c:Li2a;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:[Ljava/lang/Object;

.field public g:J

.field public h:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Li2a;
    .locals 0

    iget-object p0, p0, Lk2a;->c:Li2a;

    return-object p0
.end method

.method public b([Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lk2a;->f:[Ljava/lang/Object;

    return-void
.end method

.method public c(Lorg/slf4j/event/Level;)V
    .locals 0

    iput-object p1, p0, Lk2a;->a:Lorg/slf4j/event/Level;

    return-void
.end method

.method public d(Li2a;)V
    .locals 0

    iput-object p1, p0, Lk2a;->c:Li2a;

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lk2a;->b:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lk2a;->e:Ljava/lang/String;

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lk2a;->d:Ljava/lang/String;

    return-void
.end method

.method public h(Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lk2a;->h:Ljava/lang/Throwable;

    return-void
.end method

.method public i(J)V
    .locals 0

    iput-wide p1, p0, Lk2a;->g:J

    return-void
.end method
