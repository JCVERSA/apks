.class public final Lda0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lda0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public final synthetic c:Lda0;


# direct methods
.method public constructor <init>(Lda0;)V
    .locals 0

    iput-object p1, p0, Lda0$b;->c:Lda0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lda0$b;->b:I

    return p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lda0$b;->a:I

    return p0
.end method

.method public final c(II)V
    .locals 0

    iput p1, p0, Lda0$b;->a:I

    iput p2, p0, Lda0$b;->b:I

    return-void
.end method
