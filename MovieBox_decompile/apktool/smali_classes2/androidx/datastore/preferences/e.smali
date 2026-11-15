.class public final Landroidx/datastore/preferences/e;
.super Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;
.source "source.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/o0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/e$a;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroidx/datastore/preferences/e;

.field private static volatile PARSER:Landroidx/datastore/preferences/protobuf/v0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/v0;"
        }
    .end annotation
.end field

.field public static final STRINGS_FIELD_NUMBER:I = 0x1


# instance fields
.field private strings_:Landroidx/datastore/preferences/protobuf/w$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/w$d;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/datastore/preferences/e;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/datastore/preferences/e;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/datastore/preferences/e;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/e;

    .line 7
    .line 8
    const-class v1, Landroidx/datastore/preferences/e;

    .line 9
    .line 10
    invoke-static {v1, v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->I(Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->s()Landroidx/datastore/preferences/protobuf/w$d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Landroidx/datastore/preferences/e;->strings_:Landroidx/datastore/preferences/protobuf/w$d;

    .line 9
    .line 10
    return-void
.end method

.method static synthetic K()Landroidx/datastore/preferences/e;
    .locals 1

    .line 1
    sget-object v0, Landroidx/datastore/preferences/e;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/e;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic L(Landroidx/datastore/preferences/e;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/e;->M(Ljava/lang/Iterable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private M(Ljava/lang/Iterable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/datastore/preferences/e;->N()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/datastore/preferences/e;->strings_:Landroidx/datastore/preferences/protobuf/w$d;

    .line 5
    .line 6
    invoke-static {p1, v0}, Landroidx/datastore/preferences/protobuf/a;->b(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private N()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/e;->strings_:Landroidx/datastore/preferences/protobuf/w$d;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/w$d;->isModifiable()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->C(Landroidx/datastore/preferences/protobuf/w$d;)Landroidx/datastore/preferences/protobuf/w$d;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Landroidx/datastore/preferences/e;->strings_:Landroidx/datastore/preferences/protobuf/w$d;

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public static O()Landroidx/datastore/preferences/e;
    .locals 1

    .line 1
    sget-object v0, Landroidx/datastore/preferences/e;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public static Q()Landroidx/datastore/preferences/e$a;
    .locals 1

    .line 1
    sget-object v0, Landroidx/datastore/preferences/e;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->o()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/datastore/preferences/e$a;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public P()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/e;->strings_:Landroidx/datastore/preferences/protobuf/w$d;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final r(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p2, 0x1

    .line 2
    sget-object p3, Landroidx/datastore/preferences/c;->a:[I

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    aget p1, p3, p1

    .line 9
    .line 10
    const/4 p3, 0x0

    .line 11
    packed-switch p1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 17
    .line 18
    .line 19
    throw p1

    .line 20
    :pswitch_0
    return-object p3

    .line 21
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1

    .line 26
    :pswitch_2
    sget-object p1, Landroidx/datastore/preferences/e;->PARSER:Landroidx/datastore/preferences/protobuf/v0;

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    const-class p2, Landroidx/datastore/preferences/e;

    .line 31
    .line 32
    monitor-enter p2

    .line 33
    :try_start_0
    sget-object p1, Landroidx/datastore/preferences/e;->PARSER:Landroidx/datastore/preferences/protobuf/v0;

    .line 34
    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    new-instance p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$b;

    .line 38
    .line 39
    sget-object p3, Landroidx/datastore/preferences/e;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/e;

    .line 40
    .line 41
    invoke-direct {p1, p3}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$b;-><init>(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    .line 42
    .line 43
    .line 44
    sput-object p1, Landroidx/datastore/preferences/e;->PARSER:Landroidx/datastore/preferences/protobuf/v0;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    :goto_0
    monitor-exit p2

    .line 50
    goto :goto_2

    .line 51
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p1

    .line 53
    :cond_1
    :goto_2
    return-object p1

    .line 54
    :pswitch_3
    sget-object p1, Landroidx/datastore/preferences/e;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/e;

    .line 55
    .line 56
    return-object p1

    .line 57
    :pswitch_4
    new-array p1, p2, [Ljava/lang/Object;

    .line 58
    .line 59
    const-string p2, "strings_"

    .line 60
    .line 61
    const/4 p3, 0x0

    .line 62
    aput-object p2, p1, p3

    .line 63
    .line 64
    const-string p2, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a"

    .line 65
    .line 66
    sget-object p3, Landroidx/datastore/preferences/e;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/e;

    .line 67
    .line 68
    invoke-static {p3, p2, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->E(Landroidx/datastore/preferences/protobuf/n0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    return-object p1

    .line 73
    :pswitch_5
    new-instance p1, Landroidx/datastore/preferences/e$a;

    .line 74
    .line 75
    invoke-direct {p1, p3}, Landroidx/datastore/preferences/e$a;-><init>(Landroidx/datastore/preferences/c;)V

    .line 76
    .line 77
    .line 78
    return-object p1

    .line 79
    :pswitch_6
    new-instance p1, Landroidx/datastore/preferences/e;

    .line 80
    .line 81
    invoke-direct {p1}, Landroidx/datastore/preferences/e;-><init>()V

    .line 82
    .line 83
    .line 84
    return-object p1

    .line 85
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
