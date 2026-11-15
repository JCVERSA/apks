.class public abstract Loqj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final b:I

.field public final c:Ln5f;

.field public final d:I

.field public final e:Lerj;


# direct methods
.method public constructor <init>(ILn5f;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Loqj;->b:I

    iput-object p2, p0, Loqj;->c:Ln5f;

    iput p3, p0, Loqj;->d:I

    invoke-virtual {p2, p3}, Ln5f;->b(I)Lerj;

    move-result-object p1

    iput-object p1, p0, Loqj;->e:Lerj;

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b(Loqj;)Z
.end method
