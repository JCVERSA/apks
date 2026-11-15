.class public Lfreemarker/core/BuiltInsForSequences$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForSequences$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final b:Lnga;


# direct methods
.method public constructor <init>(Lnga;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfreemarker/core/BuiltInsForSequences$e$a;->b:Lnga;

    return-void
.end method

.method public static synthetic b(Lfreemarker/core/BuiltInsForSequences$e$a;)Lnga;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/BuiltInsForSequences$e$a;->b:Lnga;

    return-object p0
.end method


# virtual methods
.method public get(I)Lzfa;
    .locals 1

    iget-object p0, p0, Lfreemarker/core/BuiltInsForSequences$e$a;->b:Lnga;

    invoke-interface {p0}, Lnga;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    invoke-interface {p0, v0}, Lnga;->get(I)Lzfa;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lfreemarker/core/BuiltInsForSequences$e$a;->b:Lnga;

    invoke-interface {p0}, Lnga;->size()I

    move-result p0

    return p0
.end method
