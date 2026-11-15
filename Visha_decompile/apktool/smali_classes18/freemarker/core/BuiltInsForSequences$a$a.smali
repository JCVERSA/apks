.class public Lfreemarker/core/BuiltInsForSequences$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForSequences$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final b:Lnga;

.field public final synthetic c:Lfreemarker/core/BuiltInsForSequences$a;


# direct methods
.method public constructor <init>(Lfreemarker/core/BuiltInsForSequences$a;Lnga;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lfreemarker/core/BuiltInsForSequences$a$a;->c:Lfreemarker/core/BuiltInsForSequences$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lfreemarker/core/BuiltInsForSequences$a$a;->b:Lnga;

    return-void
.end method

.method public synthetic constructor <init>(Lfreemarker/core/BuiltInsForSequences$a;Lnga;Lzl0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lfreemarker/core/BuiltInsForSequences$a$a;-><init>(Lfreemarker/core/BuiltInsForSequences$a;Lnga;)V

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lfreemarker/core/BuiltInsForSequences$a$a;->c:Lfreemarker/core/BuiltInsForSequences$a;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lfreemarker/core/j;->a0(Ljava/util/List;II)V

    iget-object v0, p0, Lfreemarker/core/BuiltInsForSequences$a$a;->c:Lfreemarker/core/BuiltInsForSequences$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lfreemarker/core/j;->b0(Ljava/util/List;I)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    new-instance v1, Lfreemarker/core/BuiltInsForSequences$a$b;

    iget-object p0, p0, Lfreemarker/core/BuiltInsForSequences$a$a;->b:Lnga;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-le v3, v2, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzfa;

    goto :goto_0

    :cond_0
    move-object p1, v4

    :goto_0
    invoke-direct {v1, p0, v0, p1, v4}, Lfreemarker/core/BuiltInsForSequences$a$b;-><init>(Lnga;ILzfa;Lzl0;)V

    return-object v1
.end method
