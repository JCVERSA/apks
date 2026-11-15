.class public Lcom/hunantv/media/report/b/a$b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/report/b/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/hunantv/media/report/b/a$b$a;->a:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/hunantv/media/report/b/a$b$a;->a:I

    iput-object p2, p0, Lcom/hunantv/media/report/b/a$b$a;->b:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/hunantv/media/report/b/a$b$a;)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/hunantv/media/report/b/a$b$a;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/hunantv/media/report/b/a$b$a;->a:I

    return p0
.end method
