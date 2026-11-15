.class Lfreemarker/core/BuiltInsForSequences$sortBI$LexicalKVPComparator;
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
    name = "LexicalKVPComparator"
.end annotation


# instance fields
.field private collator:Ljava/text/Collator;


# direct methods
.method public constructor <init>(Ljava/text/Collator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfreemarker/core/BuiltInsForSequences$sortBI$LexicalKVPComparator;->collator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lfreemarker/core/BuiltInsForSequences$sortBI$LexicalKVPComparator;->collator:Ljava/text/Collator;

    check-cast p1, Lfreemarker/core/BuiltInsForSequences$sortBI$a;

    invoke-static {p1}, Lfreemarker/core/BuiltInsForSequences$sortBI$a;->a(Lfreemarker/core/BuiltInsForSequences$sortBI$a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p2, Lfreemarker/core/BuiltInsForSequences$sortBI$a;

    invoke-static {p2}, Lfreemarker/core/BuiltInsForSequences$sortBI$a;->a(Lfreemarker/core/BuiltInsForSequences$sortBI$a;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
