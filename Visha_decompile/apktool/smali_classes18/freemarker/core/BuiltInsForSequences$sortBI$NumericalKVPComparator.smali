.class Lfreemarker/core/BuiltInsForSequences$sortBI$NumericalKVPComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForSequences$sortBI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NumericalKVPComparator"
.end annotation


# instance fields
.field private ae:Lfreemarker/core/c;


# direct methods
.method private constructor <init>(Lfreemarker/core/c;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lfreemarker/core/BuiltInsForSequences$sortBI$NumericalKVPComparator;->ae:Lfreemarker/core/c;

    return-void
.end method

.method public synthetic constructor <init>(Lfreemarker/core/c;Lzl0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfreemarker/core/BuiltInsForSequences$sortBI$NumericalKVPComparator;-><init>(Lfreemarker/core/c;)V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    :try_start_0
    iget-object p0, p0, Lfreemarker/core/BuiltInsForSequences$sortBI$NumericalKVPComparator;->ae:Lfreemarker/core/c;

    check-cast p1, Lfreemarker/core/BuiltInsForSequences$sortBI$a;

    invoke-static {p1}, Lfreemarker/core/BuiltInsForSequences$sortBI$a;->a(Lfreemarker/core/BuiltInsForSequences$sortBI$a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    check-cast p2, Lfreemarker/core/BuiltInsForSequences$sortBI$a;

    invoke-static {p2}, Lfreemarker/core/BuiltInsForSequences$sortBI$a;->a(Lfreemarker/core/BuiltInsForSequences$sortBI$a;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lfreemarker/core/c;->e(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result p0
    :try_end_0
    .catch Lfreemarker/template/TemplateException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/ClassCastException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Failed to compare numbers: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
