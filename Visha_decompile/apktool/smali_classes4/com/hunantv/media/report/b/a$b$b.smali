.class public Lcom/hunantv/media/report/b/a$b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/report/b/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:[B


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/hunantv/media/report/b/a$b$b;->a:I

    iput-object p2, p0, Lcom/hunantv/media/report/b/a$b$b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/hunantv/media/report/b/a$b$b;->c:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/hunantv/media/report/b/a$b$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/hunantv/media/report/b/a$b$b;->a:I

    return p0
.end method

.method public static synthetic a(Lcom/hunantv/media/report/b/a$b$b;[B)[B
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/hunantv/media/report/b/a$b$b;->d:[B

    return-object p1
.end method

.method public static synthetic b(Lcom/hunantv/media/report/b/a$b$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/report/b/a$b$b;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Lcom/hunantv/media/report/b/a$b$b;)[B
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/report/b/a$b$b;->d:[B

    return-object p0
.end method
