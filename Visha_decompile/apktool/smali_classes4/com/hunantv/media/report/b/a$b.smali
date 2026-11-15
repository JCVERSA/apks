.class public Lcom/hunantv/media/report/b/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/report/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/report/b/a$b$a;,
        Lcom/hunantv/media/report/b/a$b$b;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/hunantv/media/report/b/a$b$b;

.field private c:Lcom/hunantv/media/report/b/a$b$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/report/b/a$b;->a:Z

    return-void
.end method

.method public static synthetic a(Lcom/hunantv/media/report/b/a$b;Lcom/hunantv/media/report/b/a$b$a;)Lcom/hunantv/media/report/b/a$b$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hunantv/media/report/b/a$b;->c:Lcom/hunantv/media/report/b/a$b$a;

    return-object p1
.end method

.method public static synthetic a(Lcom/hunantv/media/report/b/a$b;Lcom/hunantv/media/report/b/a$b$b;)Lcom/hunantv/media/report/b/a$b$b;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/hunantv/media/report/b/a$b;->b:Lcom/hunantv/media/report/b/a$b$b;

    return-object p1
.end method

.method public static synthetic a(Lcom/hunantv/media/report/b/a$b;)Z
    .locals 0

    .line 4
    iget-boolean p0, p0, Lcom/hunantv/media/report/b/a$b;->a:Z

    return p0
.end method

.method public static synthetic a(Lcom/hunantv/media/report/b/a$b;Z)Z
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/hunantv/media/report/b/a$b;->a:Z

    return p1
.end method

.method public static synthetic b(Lcom/hunantv/media/report/b/a$b;)Lcom/hunantv/media/report/b/a$b$b;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/hunantv/media/report/b/a$b;->b:Lcom/hunantv/media/report/b/a$b$b;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/hunantv/media/report/b/a$b$b;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/hunantv/media/report/b/a$b;->b:Lcom/hunantv/media/report/b/a$b$b;

    return-object p0
.end method

.method public b()Lcom/hunantv/media/report/b/a$b$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hunantv/media/report/b/a$b;->c:Lcom/hunantv/media/report/b/a$b$a;

    return-object p0
.end method
