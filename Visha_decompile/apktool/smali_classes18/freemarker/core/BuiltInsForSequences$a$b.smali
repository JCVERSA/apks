.class public Lfreemarker/core/BuiltInsForSequences$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForSequences$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final b:Lnga;

.field public final c:I

.field public final d:Lzfa;

.field public final e:I


# direct methods
.method public constructor <init>(Lnga;ILzfa;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    .line 3
    iput-object p1, p0, Lfreemarker/core/BuiltInsForSequences$a$b;->b:Lnga;

    .line 4
    iput p2, p0, Lfreemarker/core/BuiltInsForSequences$a$b;->c:I

    .line 5
    iput-object p3, p0, Lfreemarker/core/BuiltInsForSequences$a$b;->d:Lzfa;

    .line 6
    invoke-interface {p1}, Lnga;->size()I

    move-result p1

    add-int/2addr p1, p2

    sub-int/2addr p1, v0

    div-int/2addr p1, p2

    iput p1, p0, Lfreemarker/core/BuiltInsForSequences$a$b;->e:I

    return-void

    .line 7
    :cond_0
    new-instance p0, Lfreemarker/core/_TemplateModelException;

    const-string p1, "The 1st argument to ?\', key, \' (...) must be at least 1."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/core/_TemplateModelException;-><init>([Ljava/lang/Object;)V

    throw p0
.end method

.method public synthetic constructor <init>(Lnga;ILzfa;Lzl0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lfreemarker/core/BuiltInsForSequences$a$b;-><init>(Lnga;ILzfa;)V

    return-void
.end method

.method public static synthetic b(Lfreemarker/core/BuiltInsForSequences$a$b;)I
    .locals 0

    iget p0, p0, Lfreemarker/core/BuiltInsForSequences$a$b;->c:I

    return p0
.end method

.method public static synthetic c(Lfreemarker/core/BuiltInsForSequences$a$b;)Lnga;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/BuiltInsForSequences$a$b;->b:Lnga;

    return-object p0
.end method

.method public static synthetic e(Lfreemarker/core/BuiltInsForSequences$a$b;)I
    .locals 0

    iget p0, p0, Lfreemarker/core/BuiltInsForSequences$a$b;->e:I

    return p0
.end method

.method public static synthetic l(Lfreemarker/core/BuiltInsForSequences$a$b;)Lzfa;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/BuiltInsForSequences$a$b;->d:Lzfa;

    return-object p0
.end method


# virtual methods
.method public get(I)Lzfa;
    .locals 1

    iget v0, p0, Lfreemarker/core/BuiltInsForSequences$a$b;->e:I

    if-lt p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lfreemarker/core/c0;

    invoke-direct {v0, p0, p1}, Lfreemarker/core/c0;-><init>(Lfreemarker/core/BuiltInsForSequences$a$b;I)V

    return-object v0
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lfreemarker/core/BuiltInsForSequences$a$b;->e:I

    return p0
.end method
