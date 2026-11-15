.class public abstract Lfreemarker/core/j;
.super Lfreemarker/core/t0;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final j:Ljava/util/HashMap;


# instance fields
.field public h:Lfreemarker/core/t0;

.field public i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x17b

    const v2, 0x3f2b851f    # 0.67f

    invoke-direct {v0, v1, v2}, Ljava/util/HashMap;-><init>(IF)V

    sput-object v0, Lfreemarker/core/j;->j:Ljava/util/HashMap;

    new-instance v1, Lfreemarker/core/b0$b;

    invoke-direct {v1}, Lfreemarker/core/b0$b;-><init>()V

    const-string v2, "abs"

    invoke-static {v2, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/a0;

    invoke-direct {v1}, Lfreemarker/core/a0;-><init>()V

    const-string v2, "ancestors"

    invoke-static {v2, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/z$b;

    invoke-direct {v1}, Lfreemarker/core/z$b;-><init>()V

    const-string v2, "api"

    invoke-static {v2, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lkn0;

    invoke-direct {v1}, Lkn0;-><init>()V

    const-string v2, "boolean"

    invoke-static {v2, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/b0$c;

    invoke-direct {v1}, Lfreemarker/core/b0$c;-><init>()V

    const-string v2, "byte"

    invoke-static {v2, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/z$c;

    invoke-direct {v1}, Lfreemarker/core/z$c;-><init>()V

    const-string v2, "c"

    invoke-static {v2, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lbm0;

    invoke-direct {v1}, Lbm0;-><init>()V

    const-string v2, "cap_first"

    const-string v3, "capFirst"

    invoke-static {v2, v3, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lcm0;

    invoke-direct {v1}, Lcm0;-><init>()V

    const-string v2, "capitalize"

    invoke-static {v2, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/b0$d;

    invoke-direct {v1}, Lfreemarker/core/b0$d;-><init>()V

    const-string v2, "ceiling"

    invoke-static {v2, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lsl0;

    invoke-direct {v1}, Lsl0;-><init>()V

    const-string v2, "children"

    invoke-static {v2, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Ldm0;

    invoke-direct {v1}, Ldm0;-><init>()V

    const-string v2, "chop_linebreak"

    const-string v3, "chopLinebreak"

    invoke-static {v2, v3, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lem0;

    invoke-direct {v1}, Lem0;-><init>()V

    const-string v2, "contains"

    invoke-static {v2, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/z$d;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lfreemarker/core/z$d;-><init>(I)V

    const-string v3, "date"

    invoke-static {v3, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/n$b;

    invoke-direct {v1, v2}, Lfreemarker/core/n$b;-><init>(I)V

    const-string v3, "date_if_unknown"

    const-string v4, "dateIfUnknown"

    invoke-static {v3, v4, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/z$d;

    const/4 v3, 0x3

    invoke-direct {v1, v3}, Lfreemarker/core/z$d;-><init>(I)V

    const-string v4, "datetime"

    invoke-static {v4, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/n$b;

    invoke-direct {v1, v3}, Lfreemarker/core/n$b;-><init>(I)V

    const-string v4, "datetime_if_unknown"

    const-string v5, "datetimeIfUnknown"

    invoke-static {v4, v5, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/r0;

    invoke-direct {v1}, Lfreemarker/core/r0;-><init>()V

    const-string v4, "default"

    invoke-static {v4, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/b0$e;

    invoke-direct {v1}, Lfreemarker/core/b0$e;-><init>()V

    const-string v4, "double"

    invoke-static {v4, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfm0;

    invoke-direct {v1}, Lfm0;-><init>()V

    const-string v4, "ends_with"

    const-string v5, "endsWith"

    invoke-static {v4, v5, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lgm0;

    invoke-direct {v1}, Lgm0;-><init>()V

    const-string v4, "ensure_ends_with"

    const-string v5, "ensureEndsWith"

    invoke-static {v4, v5, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lhm0;

    invoke-direct {v1}, Lhm0;-><init>()V

    const-string v4, "ensure_starts_with"

    const-string v5, "ensureStartsWith"

    invoke-static {v4, v5, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lln0;

    invoke-direct {v1}, Lln0;-><init>()V

    const-string v4, "eval"

    invoke-static {v4, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lrf3;

    invoke-direct {v1}, Lrf3;-><init>()V

    const-string v4, "exists"

    invoke-static {v4, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/BuiltInsForSequences$b;

    invoke-direct {v1}, Lfreemarker/core/BuiltInsForSequences$b;-><init>()V

    const-string v4, "first"

    invoke-static {v4, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/b0$f;

    invoke-direct {v1}, Lfreemarker/core/b0$f;-><init>()V

    const-string v4, "float"

    invoke-static {v4, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/b0$g;

    invoke-direct {v1}, Lfreemarker/core/b0$g;-><init>()V

    const-string v4, "floor"

    invoke-static {v4, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/BuiltInsForSequences$a;

    invoke-direct {v1}, Lfreemarker/core/BuiltInsForSequences$a;-><init>()V

    const-string v4, "chunk"

    invoke-static {v4, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/p;

    invoke-direct {v1}, Lfreemarker/core/p;-><init>()V

    const-string v4, "counter"

    invoke-static {v4, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/w;

    invoke-direct {v1}, Lfreemarker/core/w;-><init>()V

    const-string v4, "item_cycle"

    const-string v5, "itemCycle"

    invoke-static {v4, v5, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/z$e;

    invoke-direct {v1}, Lfreemarker/core/z$e;-><init>()V

    const-string v4, "has_api"

    const-string v5, "hasApi"

    invoke-static {v4, v5, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lsf3;

    invoke-direct {v1}, Lsf3;-><init>()V

    const-string v4, "has_content"

    const-string v5, "hasContent"

    invoke-static {v4, v5, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/q;

    invoke-direct {v1}, Lfreemarker/core/q;-><init>()V

    const-string v4, "has_next"

    const-string v5, "hasNext"

    invoke-static {v4, v5, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lbn0;

    invoke-direct {v1}, Lbn0;-><init>()V

    const-string v4, "html"

    invoke-static {v4, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Ltf3;

    invoke-direct {v1}, Ltf3;-><init>()V

    const-string v5, "if_exists"

    const-string v6, "ifExists"

    invoke-static {v5, v6, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/r;

    invoke-direct {v1}, Lfreemarker/core/r;-><init>()V

    const-string v5, "index"

    invoke-static {v5, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lim0;

    const/4 v5, 0x0

    invoke-direct {v1, v5}, Lim0;-><init>(Z)V

    const-string v6, "index_of"

    const-string v7, "indexOf"

    invoke-static {v6, v7, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/b0$h;

    invoke-direct {v1}, Lfreemarker/core/b0$h;-><init>()V

    const-string v6, "int"

    invoke-static {v6, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lp45;

    invoke-direct {v1}, Lp45;-><init>()V

    const-string v6, "interpret"

    invoke-static {v6, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/z$f;

    invoke-direct {v1}, Lfreemarker/core/z$f;-><init>()V

    const-string v6, "is_boolean"

    const-string v7, "isBoolean"

    invoke-static {v6, v7, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/z$g;

    invoke-direct {v1}, Lfreemarker/core/z$g;-><init>()V

    const-string v6, "is_collection"

    const-string v7, "isCollection"

    invoke-static {v6, v7, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/z$h;

    invoke-direct {v1}, Lfreemarker/core/z$h;-><init>()V

    const-string v6, "is_collection_ex"

    const-string v7, "isCollectionEx"

    invoke-static {v6, v7, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/z$i;

    invoke-direct {v1}, Lfreemarker/core/z$i;-><init>()V

    const-string v6, "is_date"

    const-string v7, "isDate"

    invoke-static {v6, v7, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    const-string v6, "is_date_like"

    const-string v7, "isDateLike"

    invoke-static {v6, v7, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/z$j;

    invoke-direct {v1, v2}, Lfreemarker/core/z$j;-><init>(I)V

    const-string v6, "is_date_only"

    const-string v7, "isDateOnly"

    invoke-static {v6, v7, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/s;

    invoke-direct {v1}, Lfreemarker/core/s;-><init>()V

    const-string v6, "is_even_item"

    const-string v7, "isEvenItem"

    invoke-static {v6, v7, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/t;

    invoke-direct {v1}, Lfreemarker/core/t;-><init>()V

    const-string v6, "is_first"

    const-string v7, "isFirst"

    invoke-static {v6, v7, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/u;

    invoke-direct {v1}, Lfreemarker/core/u;-><init>()V

    const-string v6, "is_last"

    const-string v7, "isLast"

    invoke-static {v6, v7, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/z$j;

    invoke-direct {v1, v5}, Lfreemarker/core/z$j;-><init>(I)V

    const-string v6, "is_unknown_date_like"

    const-string v7, "isUnknownDateLike"

    invoke-static {v6, v7, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/z$j;

    invoke-direct {v1, v3}, Lfreemarker/core/z$j;-><init>(I)V

    const-string v6, "is_datetime"

    const-string v7, "isDatetime"

    invoke-static {v6, v7, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/z$k;

    invoke-direct {v1}, Lfreemarker/core/z$k;-><init>()V

    const-string v6, "is_directive"

    const-string v7, "isDirective"

    invoke-static {v6, v7, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/z$l;

    invoke-direct {v1}, Lfreemarker/core/z$l;-><init>()V

    const-string v6, "is_enumerable"

    const-string v7, "isEnumerable"

    invoke-static {v6, v7, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/z$n;

    invoke-direct {v1}, Lfreemarker/core/z$n;-><init>()V

    const-string v6, "is_hash_ex"

    const-string v7, "isHashEx"

    invoke-static {v6, v7, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/z$m;

    invoke-direct {v1}, Lfreemarker/core/z$m;-><init>()V

    const-string v6, "is_hash"

    const-string v7, "isHash"

    invoke-static {v6, v7, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/b0$i;

    invoke-direct {v1}, Lfreemarker/core/b0$i;-><init>()V

    const-string v6, "is_infinite"

    const-string v7, "isInfinite"

    invoke-static {v6, v7, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/z$o;

    invoke-direct {v1}, Lfreemarker/core/z$o;-><init>()V

    const-string v6, "is_indexable"

    const-string v7, "isIndexable"

    invoke-static {v6, v7, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/z$p;

    invoke-direct {v1}, Lfreemarker/core/z$p;-><init>()V

    const-string v6, "is_macro"

    const-string v7, "isMacro"

    invoke-static {v6, v7, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/z$q;

    invoke-direct {v1}, Lfreemarker/core/z$q;-><init>()V

    const-string v6, "is_method"

    const-string v7, "isMethod"

    invoke-static {v6, v7, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/b0$j;

    invoke-direct {v1}, Lfreemarker/core/b0$j;-><init>()V

    const-string v6, "is_nan"

    const-string v7, "isNan"

    invoke-static {v6, v7, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/z$r;

    invoke-direct {v1}, Lfreemarker/core/z$r;-><init>()V

    const-string v6, "is_node"

    const-string v7, "isNode"

    invoke-static {v6, v7, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/z$s;

    invoke-direct {v1}, Lfreemarker/core/z$s;-><init>()V

    const-string v6, "is_number"

    const-string v7, "isNumber"

    invoke-static {v6, v7, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/v;

    invoke-direct {v1}, Lfreemarker/core/v;-><init>()V

    const-string v6, "is_odd_item"

    const-string v7, "isOddItem"

    invoke-static {v6, v7, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/z$t;

    invoke-direct {v1}, Lfreemarker/core/z$t;-><init>()V

    const-string v6, "is_sequence"

    const-string v7, "isSequence"

    invoke-static {v6, v7, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/z$u;

    invoke-direct {v1}, Lfreemarker/core/z$u;-><init>()V

    const-string v6, "is_string"

    const-string v7, "isString"

    invoke-static {v6, v7, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/z$j;

    const/4 v6, 0x1

    invoke-direct {v1, v6}, Lfreemarker/core/z$j;-><init>(I)V

    const-string v7, "is_time"

    const-string v8, "isTime"

    invoke-static {v7, v8, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/z$v;

    invoke-direct {v1}, Lfreemarker/core/z$v;-><init>()V

    const-string v7, "is_transform"

    const-string v8, "isTransform"

    invoke-static {v7, v8, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/n$d;

    const/4 v7, 0x0

    const/4 v8, 0x6

    invoke-direct {v1, v7, v8, v6}, Lfreemarker/core/n$d;-><init>(Ljava/lang/Boolean;IZ)V

    const-string v9, "iso_utc"

    const-string v10, "isoUtc"

    invoke-static {v9, v10, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/n$d;

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v1, v9, v8, v6}, Lfreemarker/core/n$d;-><init>(Ljava/lang/Boolean;IZ)V

    const-string v9, "iso_utc_fz"

    const-string v10, "isoUtcFZ"

    invoke-static {v9, v10, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/n$d;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v9, v8, v6}, Lfreemarker/core/n$d;-><init>(Ljava/lang/Boolean;IZ)V

    const-string v10, "iso_utc_nz"

    const-string v11, "isoUtcNZ"

    invoke-static {v10, v11, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/n$d;

    const/4 v10, 0x7

    invoke-direct {v1, v7, v10, v6}, Lfreemarker/core/n$d;-><init>(Ljava/lang/Boolean;IZ)V

    const-string v11, "iso_utc_ms"

    const-string v12, "isoUtcMs"

    invoke-static {v11, v12, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/n$d;

    invoke-direct {v1, v9, v10, v6}, Lfreemarker/core/n$d;-><init>(Ljava/lang/Boolean;IZ)V

    const-string v11, "iso_utc_ms_nz"

    const-string v12, "isoUtcMsNZ"

    invoke-static {v11, v12, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/n$d;

    const/4 v11, 0x5

    invoke-direct {v1, v7, v11, v6}, Lfreemarker/core/n$d;-><init>(Ljava/lang/Boolean;IZ)V

    const-string v12, "iso_utc_m"

    const-string v13, "isoUtcM"

    invoke-static {v12, v13, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/n$d;

    invoke-direct {v1, v9, v11, v6}, Lfreemarker/core/n$d;-><init>(Ljava/lang/Boolean;IZ)V

    const-string v12, "iso_utc_m_nz"

    const-string v13, "isoUtcMNZ"

    invoke-static {v12, v13, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/n$d;

    const/4 v12, 0x4

    invoke-direct {v1, v7, v12, v6}, Lfreemarker/core/n$d;-><init>(Ljava/lang/Boolean;IZ)V

    const-string v13, "iso_utc_h"

    const-string v14, "isoUtcH"

    invoke-static {v13, v14, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/n$d;

    invoke-direct {v1, v9, v12, v6}, Lfreemarker/core/n$d;-><init>(Ljava/lang/Boolean;IZ)V

    const-string v13, "iso_utc_h_nz"

    const-string v14, "isoUtcHNZ"

    invoke-static {v13, v14, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/n$d;

    invoke-direct {v1, v7, v8, v5}, Lfreemarker/core/n$d;-><init>(Ljava/lang/Boolean;IZ)V

    const-string v13, "iso_local"

    const-string v14, "isoLocal"

    invoke-static {v13, v14, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/n$d;

    invoke-direct {v1, v9, v8, v5}, Lfreemarker/core/n$d;-><init>(Ljava/lang/Boolean;IZ)V

    const-string v13, "iso_local_nz"

    const-string v14, "isoLocalNZ"

    invoke-static {v13, v14, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/n$d;

    invoke-direct {v1, v7, v10, v5}, Lfreemarker/core/n$d;-><init>(Ljava/lang/Boolean;IZ)V

    const-string v13, "iso_local_ms"

    const-string v14, "isoLocalMs"

    invoke-static {v13, v14, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/n$d;

    invoke-direct {v1, v9, v10, v5}, Lfreemarker/core/n$d;-><init>(Ljava/lang/Boolean;IZ)V

    const-string v13, "iso_local_ms_nz"

    const-string v14, "isoLocalMsNZ"

    invoke-static {v13, v14, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/n$d;

    invoke-direct {v1, v7, v11, v5}, Lfreemarker/core/n$d;-><init>(Ljava/lang/Boolean;IZ)V

    const-string v13, "iso_local_m"

    const-string v14, "isoLocalM"

    invoke-static {v13, v14, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/n$d;

    invoke-direct {v1, v9, v11, v5}, Lfreemarker/core/n$d;-><init>(Ljava/lang/Boolean;IZ)V

    const-string v13, "iso_local_m_nz"

    const-string v14, "isoLocalMNZ"

    invoke-static {v13, v14, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/n$d;

    invoke-direct {v1, v7, v12, v5}, Lfreemarker/core/n$d;-><init>(Ljava/lang/Boolean;IZ)V

    const-string v13, "iso_local_h"

    const-string v14, "isoLocalH"

    invoke-static {v13, v14, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/n$d;

    invoke-direct {v1, v9, v12, v5}, Lfreemarker/core/n$d;-><init>(Ljava/lang/Boolean;IZ)V

    const-string v13, "iso_local_h_nz"

    const-string v14, "isoLocalHNZ"

    invoke-static {v13, v14, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/n$c;

    invoke-direct {v1, v7, v8}, Lfreemarker/core/n$c;-><init>(Ljava/lang/Boolean;I)V

    const-string v13, "iso"

    invoke-static {v13, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/n$c;

    invoke-direct {v1, v9, v8}, Lfreemarker/core/n$c;-><init>(Ljava/lang/Boolean;I)V

    const-string v8, "iso_nz"

    const-string v13, "isoNZ"

    invoke-static {v8, v13, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/n$c;

    invoke-direct {v1, v7, v10}, Lfreemarker/core/n$c;-><init>(Ljava/lang/Boolean;I)V

    const-string v8, "iso_ms"

    const-string v13, "isoMs"

    invoke-static {v8, v13, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/n$c;

    invoke-direct {v1, v9, v10}, Lfreemarker/core/n$c;-><init>(Ljava/lang/Boolean;I)V

    const-string v8, "iso_ms_nz"

    const-string v10, "isoMsNZ"

    invoke-static {v8, v10, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/n$c;

    invoke-direct {v1, v7, v11}, Lfreemarker/core/n$c;-><init>(Ljava/lang/Boolean;I)V

    const-string v8, "iso_m"

    const-string v10, "isoM"

    invoke-static {v8, v10, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/n$c;

    invoke-direct {v1, v9, v11}, Lfreemarker/core/n$c;-><init>(Ljava/lang/Boolean;I)V

    const-string v8, "iso_m_nz"

    const-string v10, "isoMNZ"

    invoke-static {v8, v10, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/n$c;

    invoke-direct {v1, v7, v12}, Lfreemarker/core/n$c;-><init>(Ljava/lang/Boolean;I)V

    const-string v7, "iso_h"

    const-string v8, "isoH"

    invoke-static {v7, v8, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/n$c;

    invoke-direct {v1, v9, v12}, Lfreemarker/core/n$c;-><init>(Ljava/lang/Boolean;I)V

    const-string v7, "iso_h_nz"

    const-string v8, "isoHNZ"

    invoke-static {v7, v8, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lcn0;

    invoke-direct {v1}, Lcn0;-><init>()V

    const-string v7, "j_string"

    const-string v8, "jString"

    invoke-static {v7, v8, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/BuiltInsForSequences$c;

    invoke-direct {v1}, Lfreemarker/core/BuiltInsForSequences$c;-><init>()V

    const-string v7, "join"

    invoke-static {v7, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Ldn0;

    invoke-direct {v1}, Ldn0;-><init>()V

    const-string v7, "js_string"

    const-string v8, "jsString"

    invoke-static {v7, v8, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Len0;

    invoke-direct {v1}, Len0;-><init>()V

    const-string v7, "json_string"

    const-string v8, "jsonString"

    invoke-static {v7, v8, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Ljm0;

    invoke-direct {v1}, Ljm0;-><init>()V

    const-string v7, "keep_after"

    const-string v8, "keepAfter"

    invoke-static {v7, v8, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Llm0;

    invoke-direct {v1}, Llm0;-><init>()V

    const-string v7, "keep_before"

    const-string v8, "keepBefore"

    invoke-static {v7, v8, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lkm0;

    invoke-direct {v1}, Lkm0;-><init>()V

    const-string v7, "keep_after_last"

    const-string v8, "keepAfterLast"

    invoke-static {v7, v8, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lmm0;

    invoke-direct {v1}, Lmm0;-><init>()V

    const-string v7, "keep_before_last"

    const-string v8, "keepBeforeLast"

    invoke-static {v7, v8, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lpl0;

    invoke-direct {v1}, Lpl0;-><init>()V

    const-string v7, "keys"

    invoke-static {v7, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lim0;

    invoke-direct {v1, v6}, Lim0;-><init>(Z)V

    const-string v7, "last_index_of"

    const-string v8, "lastIndexOf"

    invoke-static {v7, v8, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/BuiltInsForSequences$d;

    invoke-direct {v1}, Lfreemarker/core/BuiltInsForSequences$d;-><init>()V

    const-string v7, "last"

    invoke-static {v7, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lpm0;

    invoke-direct {v1, v6}, Lpm0;-><init>(Z)V

    const-string v7, "left_pad"

    const-string v8, "leftPad"

    invoke-static {v7, v8, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lnm0;

    invoke-direct {v1}, Lnm0;-><init>()V

    const-string v7, "length"

    invoke-static {v7, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/b0$k;

    invoke-direct {v1}, Lfreemarker/core/b0$k;-><init>()V

    const-string v7, "long"

    invoke-static {v7, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/b0$l;

    invoke-direct {v1}, Lfreemarker/core/b0$l;-><init>()V

    const-string v7, "lower_abc"

    const-string v8, "lowerAbc"

    invoke-static {v7, v8, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lom0;

    invoke-direct {v1}, Lom0;-><init>()V

    const-string v7, "lower_case"

    const-string v8, "lowerCase"

    invoke-static {v7, v8, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/z$w;

    invoke-direct {v1}, Lfreemarker/core/z$w;-><init>()V

    const-string v7, "namespace"

    invoke-static {v7, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/i1;

    invoke-direct {v1}, Lfreemarker/core/i1;-><init>()V

    const-string v7, "new"

    invoke-static {v7, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Ltl0;

    invoke-direct {v1}, Ltl0;-><init>()V

    const-string v7, "node_name"

    const-string v8, "nodeName"

    invoke-static {v7, v8, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lul0;

    invoke-direct {v1}, Lul0;-><init>()V

    const-string v7, "node_namespace"

    const-string v8, "nodeNamespace"

    invoke-static {v7, v8, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lvl0;

    invoke-direct {v1}, Lvl0;-><init>()V

    const-string v7, "node_type"

    const-string v8, "nodeType"

    invoke-static {v7, v8, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lmn0;

    invoke-direct {v1}, Lmn0;-><init>()V

    const-string v7, "number"

    invoke-static {v7, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/b0$m;

    invoke-direct {v1, v2}, Lfreemarker/core/b0$m;-><init>(I)V

    const-string v2, "number_to_date"

    const-string v7, "numberToDate"

    invoke-static {v2, v7, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/b0$m;

    invoke-direct {v1, v6}, Lfreemarker/core/b0$m;-><init>(I)V

    const-string v2, "number_to_time"

    const-string v7, "numberToTime"

    invoke-static {v2, v7, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/b0$m;

    invoke-direct {v1, v3}, Lfreemarker/core/b0$m;-><init>(I)V

    const-string v2, "number_to_datetime"

    const-string v3, "numberToDatetime"

    invoke-static {v2, v3, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lwl0;

    invoke-direct {v1}, Lwl0;-><init>()V

    const-string v2, "parent"

    invoke-static {v2, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/x;

    invoke-direct {v1}, Lfreemarker/core/x;-><init>()V

    const-string v2, "item_parity"

    const-string v3, "itemParity"

    invoke-static {v2, v3, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/y;

    invoke-direct {v1}, Lfreemarker/core/y;-><init>()V

    const-string v2, "item_parity_cap"

    const-string v3, "itemParityCap"

    invoke-static {v2, v3, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/BuiltInsForSequences$e;

    invoke-direct {v1}, Lfreemarker/core/BuiltInsForSequences$e;-><init>()V

    const-string v2, "reverse"

    invoke-static {v2, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lpm0;

    invoke-direct {v1, v5}, Lpm0;-><init>(Z)V

    const-string v2, "right_pad"

    const-string v3, "rightPad"

    invoke-static {v2, v3, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lxl0;

    invoke-direct {v1}, Lxl0;-><init>()V

    const-string v2, "root"

    invoke-static {v2, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/b0$n;

    invoke-direct {v1}, Lfreemarker/core/b0$n;-><init>()V

    const-string v2, "round"

    invoke-static {v2, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lrm0;

    invoke-direct {v1}, Lrm0;-><init>()V

    const-string v2, "remove_ending"

    const-string v3, "removeEnding"

    invoke-static {v2, v3, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lqm0;

    invoke-direct {v1}, Lqm0;-><init>()V

    const-string v2, "remove_beginning"

    const-string v3, "removeBeginning"

    invoke-static {v2, v3, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfn0;

    invoke-direct {v1}, Lfn0;-><init>()V

    const-string v2, "rtf"

    invoke-static {v2, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/BuiltInsForSequences$f;

    invoke-direct {v1}, Lfreemarker/core/BuiltInsForSequences$f;-><init>()V

    const-string v2, "seq_contains"

    const-string v3, "seqContains"

    invoke-static {v2, v3, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/BuiltInsForSequences$g;

    invoke-direct {v1, v6}, Lfreemarker/core/BuiltInsForSequences$g;-><init>(I)V

    const-string v2, "seq_index_of"

    const-string v3, "seqIndexOf"

    invoke-static {v2, v3, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/BuiltInsForSequences$g;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lfreemarker/core/BuiltInsForSequences$g;-><init>(I)V

    const-string v2, "seq_last_index_of"

    const-string v3, "seqLastIndexOf"

    invoke-static {v2, v3, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/b0$o;

    invoke-direct {v1}, Lfreemarker/core/b0$o;-><init>()V

    const-string v2, "short"

    invoke-static {v2, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/z$x;

    invoke-direct {v1}, Lfreemarker/core/z$x;-><init>()V

    const-string v2, "size"

    invoke-static {v2, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/BuiltInsForSequences$h;

    invoke-direct {v1}, Lfreemarker/core/BuiltInsForSequences$h;-><init>()V

    const-string v2, "sort_by"

    const-string v3, "sortBy"

    invoke-static {v2, v3, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/BuiltInsForSequences$sortBI;

    invoke-direct {v1}, Lfreemarker/core/BuiltInsForSequences$sortBI;-><init>()V

    const-string v2, "sort"

    invoke-static {v2, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lsm0;

    invoke-direct {v1}, Lsm0;-><init>()V

    const-string v2, "split"

    invoke-static {v2, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/h0;

    invoke-direct {v1}, Lfreemarker/core/h0;-><init>()V

    const-string v2, "switch"

    invoke-static {v2, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Ltm0;

    invoke-direct {v1}, Ltm0;-><init>()V

    const-string v2, "starts_with"

    const-string v3, "startsWith"

    invoke-static {v2, v3, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/z$y;

    invoke-direct {v1}, Lfreemarker/core/z$y;-><init>()V

    const-string v2, "string"

    invoke-static {v2, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lvm0;

    invoke-direct {v1}, Lvm0;-><init>()V

    const-string v2, "substring"

    invoke-static {v2, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/i0;

    invoke-direct {v1}, Lfreemarker/core/i0;-><init>()V

    const-string v2, "then"

    invoke-static {v2, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/z$d;

    invoke-direct {v1, v6}, Lfreemarker/core/z$d;-><init>(I)V

    const-string v2, "time"

    invoke-static {v2, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/n$b;

    invoke-direct {v1, v6}, Lfreemarker/core/n$b;-><init>(I)V

    const-string v2, "time_if_unknown"

    const-string v3, "timeIfUnknown"

    invoke-static {v2, v3, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lwm0;

    invoke-direct {v1}, Lwm0;-><init>()V

    const-string v2, "trim"

    invoke-static {v2, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lxm0;

    invoke-direct {v1}, Lxm0;-><init>()V

    const-string v2, "uncap_first"

    const-string v3, "uncapFirst"

    invoke-static {v2, v3, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/b0$p;

    invoke-direct {v1}, Lfreemarker/core/b0$p;-><init>()V

    const-string v2, "upper_abc"

    const-string v3, "upperAbc"

    invoke-static {v2, v3, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lym0;

    invoke-direct {v1}, Lym0;-><init>()V

    const-string v2, "upper_case"

    const-string v3, "upperCase"

    invoke-static {v2, v3, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lgn0;

    invoke-direct {v1}, Lgn0;-><init>()V

    const-string v2, "url"

    invoke-static {v2, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lhn0;

    invoke-direct {v1}, Lhn0;-><init>()V

    const-string v2, "url_path"

    const-string v3, "urlPath"

    invoke-static {v2, v3, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lql0;

    invoke-direct {v1}, Lql0;-><init>()V

    const-string v2, "values"

    invoke-static {v2, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfreemarker/core/j;

    const-string v2, "web_safe"

    const-string v3, "webSafe"

    invoke-static {v2, v3, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lzm0;

    invoke-direct {v1}, Lzm0;-><init>()V

    const-string v2, "word_list"

    const-string v3, "wordList"

    invoke-static {v2, v3, v1}, Lfreemarker/core/j;->g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lin0;

    invoke-direct {v1}, Lin0;-><init>()V

    const-string v2, "xhtml"

    invoke-static {v2, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Ljn0;

    invoke-direct {v1}, Ljn0;-><init>()V

    const-string v2, "xml"

    invoke-static {v2, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/g0$c;

    invoke-direct {v1}, Lfreemarker/core/g0$c;-><init>()V

    const-string v2, "matches"

    invoke-static {v2, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/g0$b;

    invoke-direct {v1}, Lfreemarker/core/g0$b;-><init>()V

    const-string v2, "groups"

    invoke-static {v2, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    new-instance v1, Lfreemarker/core/g0$d;

    invoke-direct {v1}, Lfreemarker/core/g0$d;-><init>()V

    const-string v2, "replace"

    invoke-static {v2, v1}, Lfreemarker/core/j;->f0(Ljava/lang/String;Lfreemarker/core/j;)V

    const/16 v1, 0xfc

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Update NUMBER_OF_BIS! Should be: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lfreemarker/core/t0;-><init>()V

    return-void
.end method

.method public static e0(ILfreemarker/core/t0;Lfreemarker/core/Token;Lfreemarker/core/u0;)Lfreemarker/core/j;
    .locals 8

    iget-object v0, p2, Lfreemarker/core/Token;->image:Ljava/lang/String;

    sget-object v1, Lfreemarker/core/j;->j:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfreemarker/core/j;

    if-nez v2, :cond_6

    new-instance p0, Ljava/lang/StringBuffer;

    const-string p1, "Unknown built-in: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ln0a;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ". "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "Help (latest version): http://freemarker.org/docs/ref_builtins.html; you\'re using FreeMarker "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lxe1;->S0()Lfreemarker/template/Version;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p1, ".\nThe alphabetical list of built-ins:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget p3, p3, Lfreemarker/core/u0;->o:I

    const/16 v0, 0xb

    const/16 v1, 0xa

    if-eq p3, v1, :cond_0

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v2

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ld0d;->b(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0xc

    if-ne p3, v7, :cond_2

    if-eq v6, v0, :cond_1

    goto :goto_2

    :cond_2
    if-eq v6, v7, :cond_1

    :goto_2
    if-eqz v3, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    const-string v6, ", "

    invoke-virtual {p0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v4, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v4, v6

    :cond_4
    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_5
    new-instance p1, Lfreemarker/core/ParseException;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3, p2}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw p1

    :cond_6
    :goto_4
    instance-of p2, v2, Leu4;

    if-eqz p2, :cond_7

    move-object p2, v2

    check-cast p2, Leu4;

    invoke-interface {p2}, Leu4;->c()I

    move-result p3

    if-ge p0, p3, :cond_7

    invoke-interface {p2}, Leu4;->e()Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lfreemarker/core/j;

    goto :goto_4

    :cond_7
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfreemarker/core/j;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object v0, p0, Lfreemarker/core/j;->i:Ljava/lang/String;

    iput-object p1, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/InternalError;

    invoke-direct {p0}, Ljava/lang/InternalError;-><init>()V

    throw p0
.end method

.method public static f0(Ljava/lang/String;Lfreemarker/core/j;)V
    .locals 1

    sget-object v0, Lfreemarker/core/j;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static g0(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/j;)V
    .locals 1

    sget-object v0, Lfreemarker/core/j;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public J(Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0$a;)Lfreemarker/core/t0;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/core/j;

    iget-object p0, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    invoke-virtual {p0, p1, p2, p3}, Lfreemarker/core/t0;->I(Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0$a;)Lfreemarker/core/t0;

    move-result-object p0

    iput-object p0, v0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "Internal error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public T()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final X(II)V
    .locals 2

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lfreemarker/core/j;->i:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lfreemarker/core/f1;->j(Ljava/lang/String;II)Lfreemarker/template/TemplateModelException;

    move-result-object p0

    throw p0
.end method

.method public final Y(III)V
    .locals 2

    if-lt p1, p2, :cond_0

    if-gt p1, p3, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lfreemarker/core/j;->i:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lfreemarker/core/f1;->k(Ljava/lang/String;III)Lfreemarker/template/TemplateModelException;

    move-result-object p0

    throw p0
.end method

.method public final Z(Ljava/util/List;I)V
    .locals 0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lfreemarker/core/j;->X(II)V

    return-void
.end method

.method public final a0(Ljava/util/List;II)V
    .locals 0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lfreemarker/core/j;->Y(III)V

    return-void
.end method

.method public final b0(Ljava/util/List;I)Ljava/lang/Number;
    .locals 2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzfa;

    instance-of v0, p1, Lhga;

    if-eqz v0, :cond_0

    check-cast p1, Lhga;

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lfreemarker/core/q0;->g(Lhga;Lfreemarker/core/t0;)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lfreemarker/core/j;->i:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2, p1}, Lfreemarker/core/f1;->p(Ljava/lang/String;ILzfa;)Lfreemarker/template/TemplateModelException;

    move-result-object p0

    throw p0
.end method

.method public final c0(Ljava/util/List;I)Ljava/lang/String;
    .locals 1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    invoke-virtual {p0, p1, p2}, Lfreemarker/core/j;->d0(Ljava/util/List;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final d0(Ljava/util/List;I)Ljava/lang/String;
    .locals 2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzfa;

    instance-of v0, p1, Lmga;

    if-eqz v0, :cond_0

    check-cast p1, Lmga;

    const/4 p0, 0x0

    invoke-static {p1, p0, p0}, Lfreemarker/core/q0;->h(Lmga;Lfreemarker/core/t0;Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lfreemarker/core/j;->i:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2, p1}, Lfreemarker/core/f1;->q(Ljava/lang/String;ILzfa;)Lfreemarker/template/TemplateModelException;

    move-result-object p0

    throw p0
.end method

.method public o()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    invoke-virtual {v1}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lfreemarker/core/j;->i:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public r()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lfreemarker/core/j;->i:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public s()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public t(I)Ljw7;
    .locals 0

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    sget-object p0, Ljw7;->d:Ljw7;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Ljw7;->c:Ljw7;

    return-object p0
.end method

.method public u(I)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lfreemarker/core/j;->i:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_1
    iget-object p0, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    return-object p0
.end method
