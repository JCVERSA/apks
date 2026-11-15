.class public Lfreemarker/core/BuiltInsForSequences$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForSequences$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public b:Lbfa;

.field public c:Lfreemarker/core/Environment;

.field public final synthetic d:Lfreemarker/core/BuiltInsForSequences$f;


# direct methods
.method public constructor <init>(Lfreemarker/core/BuiltInsForSequences$f;Lbfa;Lfreemarker/core/Environment;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lfreemarker/core/BuiltInsForSequences$f$a;->d:Lfreemarker/core/BuiltInsForSequences$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lfreemarker/core/BuiltInsForSequences$f$a;->b:Lbfa;

    .line 4
    iput-object p3, p0, Lfreemarker/core/BuiltInsForSequences$f$a;->c:Lfreemarker/core/Environment;

    return-void
.end method

.method public synthetic constructor <init>(Lfreemarker/core/BuiltInsForSequences$f;Lbfa;Lfreemarker/core/Environment;Lzl0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lfreemarker/core/BuiltInsForSequences$f$a;-><init>(Lfreemarker/core/BuiltInsForSequences$f;Lbfa;Lfreemarker/core/Environment;)V

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lfreemarker/core/BuiltInsForSequences$f$a;->d:Lfreemarker/core/BuiltInsForSequences$f;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lfreemarker/core/j;->Z(Ljava/util/List;I)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzfa;

    iget-object v1, p0, Lfreemarker/core/BuiltInsForSequences$f$a;->b:Lbfa;

    invoke-interface {v1}, Lbfa;->iterator()Lbga;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Lbga;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lbga;->next()Lzfa;

    move-result-object v2

    iget-object v3, p0, Lfreemarker/core/BuiltInsForSequences$f$a;->c:Lfreemarker/core/Environment;

    invoke-static {v0, v2, p1, v3}, Lfreemarker/core/BuiltInsForSequences;->a(ILzfa;Lzfa;Lfreemarker/core/Environment;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object p0, Lfreemarker/template/a;->z6:Lfreemarker/template/a;

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lfreemarker/template/a;->y6:Lfreemarker/template/a;

    return-object p0
.end method
