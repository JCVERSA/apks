.class Lfreemarker/core/BuiltInsForSequences$sortBI$BooleanKVPComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForSequences$sortBI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BooleanKVPComparator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lzl0;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lfreemarker/core/BuiltInsForSequences$sortBI$BooleanKVPComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lfreemarker/core/BuiltInsForSequences$sortBI$a;

    invoke-static {p1}, Lfreemarker/core/BuiltInsForSequences$sortBI$a;->a(Lfreemarker/core/BuiltInsForSequences$sortBI$a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    check-cast p2, Lfreemarker/core/BuiltInsForSequences$sortBI$a;

    invoke-static {p2}, Lfreemarker/core/BuiltInsForSequences$sortBI$a;->a(Lfreemarker/core/BuiltInsForSequences$sortBI$a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p0, :cond_0

    xor-int/lit8 p0, p1, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
