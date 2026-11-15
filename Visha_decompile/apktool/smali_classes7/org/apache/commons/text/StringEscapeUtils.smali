.class public Lorg/apache/commons/text/StringEscapeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/text/StringEscapeUtils$XsiUnescaper;,
        Lorg/apache/commons/text/StringEscapeUtils$Builder;
    }
.end annotation


# static fields
.field public static final ESCAPE_CSV:Lorg/apache/commons/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_ECMASCRIPT:Lorg/apache/commons/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_HTML3:Lorg/apache/commons/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_HTML4:Lorg/apache/commons/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_JAVA:Lorg/apache/commons/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_JSON:Lorg/apache/commons/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_XML10:Lorg/apache/commons/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_XML11:Lorg/apache/commons/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_XSI:Lorg/apache/commons/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_CSV:Lorg/apache/commons/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_ECMASCRIPT:Lorg/apache/commons/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_HTML3:Lorg/apache/commons/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_HTML4:Lorg/apache/commons/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_JAVA:Lorg/apache/commons/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_JSON:Lorg/apache/commons/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_XML:Lorg/apache/commons/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_XSI:Lorg/apache/commons/text/translate/CharSequenceTranslator;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "\""

    const-string v2, "\\\""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "\\"

    const-string v4, "\\\\"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lorg/apache/commons/text/translate/AggregateTranslator;

    new-instance v6, Lorg/apache/commons/text/translate/LookupTranslator;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    new-instance v0, Lorg/apache/commons/text/translate/LookupTranslator;

    sget-object v7, Lorg/apache/commons/text/translate/EntityArrays;->JAVA_CTRL_CHARS_ESCAPE:Ljava/util/Map;

    invoke-direct {v0, v7}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    const/16 v8, 0x20

    const/16 v9, 0x7f

    invoke-static {v8, v9}, Lorg/apache/commons/text/translate/JavaUnicodeEscaper;->outsideOf(II)Lorg/apache/commons/text/translate/JavaUnicodeEscaper;

    move-result-object v10

    const/4 v11, 0x3

    new-array v12, v11, [Lorg/apache/commons/text/translate/CharSequenceTranslator;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    const/4 v6, 0x1

    aput-object v0, v12, v6

    const/4 v0, 0x2

    aput-object v10, v12, v0

    invoke-direct {v5, v12}, Lorg/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/text/translate/CharSequenceTranslator;)V

    sput-object v5, Lorg/apache/commons/text/StringEscapeUtils;->ESCAPE_JAVA:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v10, "\'"

    const-string v12, "\\\'"

    invoke-interface {v5, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v14, "/"

    const-string v15, "\\/"

    invoke-interface {v5, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/commons/text/translate/AggregateTranslator;

    new-instance v6, Lorg/apache/commons/text/translate/LookupTranslator;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    invoke-direct {v6, v5}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    new-instance v5, Lorg/apache/commons/text/translate/LookupTranslator;

    invoke-direct {v5, v7}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    invoke-static {v8, v9}, Lorg/apache/commons/text/translate/JavaUnicodeEscaper;->outsideOf(II)Lorg/apache/commons/text/translate/JavaUnicodeEscaper;

    move-result-object v17

    new-array v9, v11, [Lorg/apache/commons/text/translate/CharSequenceTranslator;

    aput-object v6, v9, v13

    const/4 v6, 0x1

    aput-object v5, v9, v6

    const/4 v5, 0x2

    aput-object v17, v9, v5

    invoke-direct {v0, v9}, Lorg/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/apache/commons/text/StringEscapeUtils;->ESCAPE_ECMASCRIPT:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lorg/apache/commons/text/translate/AggregateTranslator;

    new-instance v6, Lorg/apache/commons/text/translate/LookupTranslator;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    new-instance v0, Lorg/apache/commons/text/translate/LookupTranslator;

    invoke-direct {v0, v7}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    const/16 v7, 0x7e

    invoke-static {v8, v7}, Lorg/apache/commons/text/translate/JavaUnicodeEscaper;->outsideOf(II)Lorg/apache/commons/text/translate/JavaUnicodeEscaper;

    move-result-object v7

    new-array v8, v11, [Lorg/apache/commons/text/translate/CharSequenceTranslator;

    aput-object v6, v8, v13

    const/4 v6, 0x1

    aput-object v0, v8, v6

    const/4 v0, 0x2

    aput-object v7, v8, v0

    invoke-direct {v5, v8}, Lorg/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/text/translate/CharSequenceTranslator;)V

    sput-object v5, Lorg/apache/commons/text/StringEscapeUtils;->ESCAPE_JSON:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v5, "\u0000"

    const-string v6, ""

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "\u0001"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "\u0002"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "\u0003"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "\u0004"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "\u0005"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "\u0006"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "\u0007"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "\u0008"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "\u000b"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "\u000c"

    invoke-interface {v0, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "\u000e"

    invoke-interface {v0, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "\u000f"

    invoke-interface {v0, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "\u0010"

    invoke-interface {v0, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "\u0011"

    invoke-interface {v0, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "\u0012"

    invoke-interface {v0, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "\u0013"

    invoke-interface {v0, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "\u0014"

    invoke-interface {v0, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "\u0015"

    invoke-interface {v0, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "\u0016"

    invoke-interface {v0, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "\u0017"

    invoke-interface {v0, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "\u0018"

    invoke-interface {v0, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "\u0019"

    invoke-interface {v0, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "\u001a"

    invoke-interface {v0, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "\u001b"

    invoke-interface {v0, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "\u001c"

    invoke-interface {v0, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "\u001d"

    invoke-interface {v0, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "\u001e"

    invoke-interface {v0, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "\u001f"

    invoke-interface {v0, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "\ufffe"

    invoke-interface {v0, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v14, "\uffff"

    invoke-interface {v0, v14, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Lorg/apache/commons/text/translate/AggregateTranslator;

    new-instance v11, Lorg/apache/commons/text/translate/LookupTranslator;

    sget-object v13, Lorg/apache/commons/text/translate/EntityArrays;->BASIC_ESCAPE:Ljava/util/Map;

    invoke-direct {v11, v13}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    move-object/from16 v19, v10

    new-instance v10, Lorg/apache/commons/text/translate/LookupTranslator;

    move-object/from16 v20, v12

    sget-object v12, Lorg/apache/commons/text/translate/EntityArrays;->APOS_ESCAPE:Ljava/util/Map;

    invoke-direct {v10, v12}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    move-object/from16 v21, v1

    new-instance v1, Lorg/apache/commons/text/translate/LookupTranslator;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    const/16 v0, 0x84

    move-object/from16 v22, v2

    const/16 v2, 0x7f

    invoke-static {v2, v0}, Lorg/apache/commons/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/text/translate/NumericEntityEscaper;

    move-result-object v23

    const/16 v2, 0x86

    const/16 v0, 0x9f

    invoke-static {v2, v0}, Lorg/apache/commons/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/text/translate/NumericEntityEscaper;

    move-result-object v24

    new-instance v25, Lorg/apache/commons/text/translate/UnicodeUnpairedSurrogateRemover;

    invoke-direct/range {v25 .. v25}, Lorg/apache/commons/text/translate/UnicodeUnpairedSurrogateRemover;-><init>()V

    const/4 v0, 0x6

    new-array v2, v0, [Lorg/apache/commons/text/translate/CharSequenceTranslator;

    const/16 v18, 0x0

    aput-object v11, v2, v18

    const/4 v11, 0x1

    aput-object v10, v2, v11

    const/4 v10, 0x2

    aput-object v1, v2, v10

    const/4 v1, 0x3

    aput-object v23, v2, v1

    const/4 v1, 0x4

    aput-object v24, v2, v1

    const/4 v10, 0x5

    aput-object v25, v2, v10

    invoke-direct {v15, v2}, Lorg/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/text/translate/CharSequenceTranslator;)V

    sput-object v15, Lorg/apache/commons/text/StringEscapeUtils;->ESCAPE_XML10:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "&#11;"

    invoke-interface {v2, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "&#12;"

    invoke-interface {v2, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v14, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lorg/apache/commons/text/translate/AggregateTranslator;

    new-instance v7, Lorg/apache/commons/text/translate/LookupTranslator;

    invoke-direct {v7, v13}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    new-instance v8, Lorg/apache/commons/text/translate/LookupTranslator;

    invoke-direct {v8, v12}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    new-instance v9, Lorg/apache/commons/text/translate/LookupTranslator;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v9, v2}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    const/16 v2, 0x8

    const/4 v11, 0x1

    invoke-static {v11, v2}, Lorg/apache/commons/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/text/translate/NumericEntityEscaper;

    move-result-object v12

    const/16 v14, 0xe

    const/16 v15, 0x1f

    invoke-static {v14, v15}, Lorg/apache/commons/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/text/translate/NumericEntityEscaper;

    move-result-object v14

    const/16 v0, 0x84

    const/16 v15, 0x7f

    invoke-static {v15, v0}, Lorg/apache/commons/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/text/translate/NumericEntityEscaper;

    move-result-object v0

    const/16 v10, 0x9f

    const/16 v15, 0x86

    invoke-static {v15, v10}, Lorg/apache/commons/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/text/translate/NumericEntityEscaper;

    move-result-object v10

    new-instance v15, Lorg/apache/commons/text/translate/UnicodeUnpairedSurrogateRemover;

    invoke-direct {v15}, Lorg/apache/commons/text/translate/UnicodeUnpairedSurrogateRemover;-><init>()V

    new-array v2, v2, [Lorg/apache/commons/text/translate/CharSequenceTranslator;

    const/16 v16, 0x0

    aput-object v7, v2, v16

    aput-object v8, v2, v11

    const/4 v7, 0x2

    aput-object v9, v2, v7

    const/4 v7, 0x3

    aput-object v12, v2, v7

    aput-object v14, v2, v1

    const/4 v7, 0x5

    aput-object v0, v2, v7

    const/4 v0, 0x6

    aput-object v10, v2, v0

    const/4 v0, 0x7

    aput-object v15, v2, v0

    invoke-direct {v5, v2}, Lorg/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/text/translate/CharSequenceTranslator;)V

    sput-object v5, Lorg/apache/commons/text/StringEscapeUtils;->ESCAPE_XML11:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    new-instance v0, Lorg/apache/commons/text/translate/AggregateTranslator;

    new-instance v2, Lorg/apache/commons/text/translate/LookupTranslator;

    invoke-direct {v2, v13}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    new-instance v5, Lorg/apache/commons/text/translate/LookupTranslator;

    sget-object v7, Lorg/apache/commons/text/translate/EntityArrays;->ISO8859_1_ESCAPE:Ljava/util/Map;

    invoke-direct {v5, v7}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    const/4 v8, 0x2

    new-array v9, v8, [Lorg/apache/commons/text/translate/CharSequenceTranslator;

    const/4 v8, 0x0

    aput-object v2, v9, v8

    const/4 v2, 0x1

    aput-object v5, v9, v2

    invoke-direct {v0, v9}, Lorg/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/apache/commons/text/StringEscapeUtils;->ESCAPE_HTML3:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    new-instance v0, Lorg/apache/commons/text/translate/AggregateTranslator;

    new-instance v2, Lorg/apache/commons/text/translate/LookupTranslator;

    invoke-direct {v2, v13}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    new-instance v5, Lorg/apache/commons/text/translate/LookupTranslator;

    invoke-direct {v5, v7}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    new-instance v7, Lorg/apache/commons/text/translate/LookupTranslator;

    sget-object v8, Lorg/apache/commons/text/translate/EntityArrays;->HTML40_EXTENDED_ESCAPE:Ljava/util/Map;

    invoke-direct {v7, v8}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    const/4 v8, 0x3

    new-array v9, v8, [Lorg/apache/commons/text/translate/CharSequenceTranslator;

    const/4 v8, 0x0

    aput-object v2, v9, v8

    const/4 v2, 0x1

    aput-object v5, v9, v2

    const/4 v2, 0x2

    aput-object v7, v9, v2

    invoke-direct {v0, v9}, Lorg/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/apache/commons/text/StringEscapeUtils;->ESCAPE_HTML4:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    new-instance v0, Lorg/apache/commons/text/translate/CsvTranslators$CsvEscaper;

    invoke-direct {v0}, Lorg/apache/commons/text/translate/CsvTranslators$CsvEscaper;-><init>()V

    sput-object v0, Lorg/apache/commons/text/StringEscapeUtils;->ESCAPE_CSV:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "|"

    const-string v5, "\\|"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "&"

    const-string v5, "\\&"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, ";"

    const-string v5, "\\;"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "<"

    const-string v5, "\\<"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, ">"

    const-string v5, "\\>"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "("

    const-string v5, "\\("

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, ")"

    const-string v5, "\\)"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "$"

    const-string v5, "\\$"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "`"

    const-string v5, "\\`"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, v21

    move-object/from16 v5, v22

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, " "

    const-string v10, "\\ "

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "\t"

    const-string v10, "\\\t"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "\r\n"

    invoke-interface {v0, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "\n"

    invoke-interface {v0, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "*"

    const-string v10, "\\*"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "?"

    const-string v10, "\\?"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "["

    const-string v10, "\\["

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "#"

    const-string v10, "\\#"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "~"

    const-string v10, "\\~"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "="

    const-string v10, "\\="

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "%"

    const-string v10, "\\%"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Lorg/apache/commons/text/translate/LookupTranslator;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {v9, v0}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    sput-object v9, Lorg/apache/commons/text/StringEscapeUtils;->ESCAPE_XSI:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/commons/text/translate/AggregateTranslator;

    new-instance v3, Lorg/apache/commons/text/translate/OctalUnescaper;

    invoke-direct {v3}, Lorg/apache/commons/text/translate/OctalUnescaper;-><init>()V

    new-instance v4, Lorg/apache/commons/text/translate/UnicodeUnescaper;

    invoke-direct {v4}, Lorg/apache/commons/text/translate/UnicodeUnescaper;-><init>()V

    new-instance v5, Lorg/apache/commons/text/translate/LookupTranslator;

    sget-object v6, Lorg/apache/commons/text/translate/EntityArrays;->JAVA_CTRL_CHARS_UNESCAPE:Ljava/util/Map;

    invoke-direct {v5, v6}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    new-instance v6, Lorg/apache/commons/text/translate/LookupTranslator;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    new-array v0, v1, [Lorg/apache/commons/text/translate/CharSequenceTranslator;

    const/4 v7, 0x0

    aput-object v3, v0, v7

    const/4 v3, 0x1

    aput-object v4, v0, v3

    const/4 v3, 0x2

    aput-object v5, v0, v3

    const/4 v3, 0x3

    aput-object v6, v0, v3

    invoke-direct {v2, v0}, Lorg/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/text/translate/CharSequenceTranslator;)V

    sput-object v2, Lorg/apache/commons/text/StringEscapeUtils;->UNESCAPE_JAVA:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    sput-object v2, Lorg/apache/commons/text/StringEscapeUtils;->UNESCAPE_ECMASCRIPT:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    sput-object v2, Lorg/apache/commons/text/StringEscapeUtils;->UNESCAPE_JSON:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    new-instance v0, Lorg/apache/commons/text/translate/AggregateTranslator;

    new-instance v2, Lorg/apache/commons/text/translate/LookupTranslator;

    sget-object v3, Lorg/apache/commons/text/translate/EntityArrays;->BASIC_UNESCAPE:Ljava/util/Map;

    invoke-direct {v2, v3}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    new-instance v4, Lorg/apache/commons/text/translate/LookupTranslator;

    sget-object v5, Lorg/apache/commons/text/translate/EntityArrays;->ISO8859_1_UNESCAPE:Ljava/util/Map;

    invoke-direct {v4, v5}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    new-instance v6, Lorg/apache/commons/text/translate/NumericEntityUnescaper;

    const/4 v7, 0x0

    new-array v8, v7, [Lorg/apache/commons/text/translate/NumericEntityUnescaper$OPTION;

    invoke-direct {v6, v8}, Lorg/apache/commons/text/translate/NumericEntityUnescaper;-><init>([Lorg/apache/commons/text/translate/NumericEntityUnescaper$OPTION;)V

    const/4 v8, 0x3

    new-array v9, v8, [Lorg/apache/commons/text/translate/CharSequenceTranslator;

    aput-object v2, v9, v7

    const/4 v2, 0x1

    aput-object v4, v9, v2

    const/4 v2, 0x2

    aput-object v6, v9, v2

    invoke-direct {v0, v9}, Lorg/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/apache/commons/text/StringEscapeUtils;->UNESCAPE_HTML3:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    new-instance v0, Lorg/apache/commons/text/translate/AggregateTranslator;

    new-instance v2, Lorg/apache/commons/text/translate/LookupTranslator;

    invoke-direct {v2, v3}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    new-instance v4, Lorg/apache/commons/text/translate/LookupTranslator;

    invoke-direct {v4, v5}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    new-instance v5, Lorg/apache/commons/text/translate/LookupTranslator;

    sget-object v6, Lorg/apache/commons/text/translate/EntityArrays;->HTML40_EXTENDED_UNESCAPE:Ljava/util/Map;

    invoke-direct {v5, v6}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    new-instance v6, Lorg/apache/commons/text/translate/NumericEntityUnescaper;

    const/4 v7, 0x0

    new-array v8, v7, [Lorg/apache/commons/text/translate/NumericEntityUnescaper$OPTION;

    invoke-direct {v6, v8}, Lorg/apache/commons/text/translate/NumericEntityUnescaper;-><init>([Lorg/apache/commons/text/translate/NumericEntityUnescaper$OPTION;)V

    new-array v1, v1, [Lorg/apache/commons/text/translate/CharSequenceTranslator;

    aput-object v2, v1, v7

    const/4 v2, 0x1

    aput-object v4, v1, v2

    const/4 v2, 0x2

    aput-object v5, v1, v2

    const/4 v2, 0x3

    aput-object v6, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/apache/commons/text/StringEscapeUtils;->UNESCAPE_HTML4:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    new-instance v0, Lorg/apache/commons/text/translate/AggregateTranslator;

    new-instance v1, Lorg/apache/commons/text/translate/LookupTranslator;

    invoke-direct {v1, v3}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    new-instance v2, Lorg/apache/commons/text/translate/LookupTranslator;

    sget-object v3, Lorg/apache/commons/text/translate/EntityArrays;->APOS_UNESCAPE:Ljava/util/Map;

    invoke-direct {v2, v3}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    new-instance v3, Lorg/apache/commons/text/translate/NumericEntityUnescaper;

    const/4 v4, 0x0

    new-array v5, v4, [Lorg/apache/commons/text/translate/NumericEntityUnescaper$OPTION;

    invoke-direct {v3, v5}, Lorg/apache/commons/text/translate/NumericEntityUnescaper;-><init>([Lorg/apache/commons/text/translate/NumericEntityUnescaper$OPTION;)V

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/apache/commons/text/translate/CharSequenceTranslator;

    aput-object v1, v5, v4

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v1, 0x2

    aput-object v3, v5, v1

    invoke-direct {v0, v5}, Lorg/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/apache/commons/text/StringEscapeUtils;->UNESCAPE_XML:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    new-instance v0, Lorg/apache/commons/text/translate/CsvTranslators$CsvUnescaper;

    invoke-direct {v0}, Lorg/apache/commons/text/translate/CsvTranslators$CsvUnescaper;-><init>()V

    sput-object v0, Lorg/apache/commons/text/StringEscapeUtils;->UNESCAPE_CSV:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    new-instance v0, Lorg/apache/commons/text/StringEscapeUtils$XsiUnescaper;

    invoke-direct {v0}, Lorg/apache/commons/text/StringEscapeUtils$XsiUnescaper;-><init>()V

    sput-object v0, Lorg/apache/commons/text/StringEscapeUtils;->UNESCAPE_XSI:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder(Lorg/apache/commons/text/translate/CharSequenceTranslator;)Lorg/apache/commons/text/StringEscapeUtils$Builder;
    .locals 2

    new-instance v0, Lorg/apache/commons/text/StringEscapeUtils$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/text/StringEscapeUtils$Builder;-><init>(Lorg/apache/commons/text/translate/CharSequenceTranslator;Lorg/apache/commons/text/StringEscapeUtils$1;)V

    return-object v0
.end method

.method public static final escapeCsv(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/commons/text/StringEscapeUtils;->ESCAPE_CSV:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final escapeEcmaScript(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/commons/text/StringEscapeUtils;->ESCAPE_ECMASCRIPT:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final escapeHtml3(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/commons/text/StringEscapeUtils;->ESCAPE_HTML3:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final escapeHtml4(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/commons/text/StringEscapeUtils;->ESCAPE_HTML4:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final escapeJava(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/commons/text/StringEscapeUtils;->ESCAPE_JAVA:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final escapeJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/commons/text/StringEscapeUtils;->ESCAPE_JSON:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final escapeXSI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/commons/text/StringEscapeUtils;->ESCAPE_XSI:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static escapeXml10(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/commons/text/StringEscapeUtils;->ESCAPE_XML10:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static escapeXml11(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/commons/text/StringEscapeUtils;->ESCAPE_XML11:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final unescapeCsv(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/commons/text/StringEscapeUtils;->UNESCAPE_CSV:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final unescapeEcmaScript(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/commons/text/StringEscapeUtils;->UNESCAPE_ECMASCRIPT:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final unescapeHtml3(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/commons/text/StringEscapeUtils;->UNESCAPE_HTML3:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final unescapeHtml4(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/commons/text/StringEscapeUtils;->UNESCAPE_HTML4:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final unescapeJava(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/commons/text/StringEscapeUtils;->UNESCAPE_JAVA:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final unescapeJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/commons/text/StringEscapeUtils;->UNESCAPE_JSON:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final unescapeXSI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/commons/text/StringEscapeUtils;->UNESCAPE_XSI:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final unescapeXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/commons/text/StringEscapeUtils;->UNESCAPE_XML:Lorg/apache/commons/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
