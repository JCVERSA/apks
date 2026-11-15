.class public final Lhn/c;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lhn/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lhn/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lhn/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lhn/c;->a:Lhn/c;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .line 1
    if-eqz p2, :cond_3

    .line 2
    .line 3
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    sget-object v0, Lqi/h;->a:Lqi/h;

    .line 11
    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lqi/h;->h()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :cond_1
    new-instance v1, Lkotlin/Pair;

    .line 19
    .line 20
    const-string v2, "module_name"

    .line 21
    .line 22
    const-string v3, "play_screen"

    .line 23
    .line 24
    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    new-instance v2, Lkotlin/Pair;

    .line 28
    .line 29
    const-string v3, "subject_id"

    .line 30
    .line 31
    invoke-direct {v2, v3, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    new-instance p2, Lkotlin/Pair;

    .line 35
    .line 36
    const-string v3, "ops"

    .line 37
    .line 38
    invoke-direct {p2, v3, p3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    new-instance p3, Lkotlin/Pair;

    .line 42
    .line 43
    if-eqz p4, :cond_2

    .line 44
    .line 45
    const-string p4, "1"

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const-string p4, "0"

    .line 49
    .line 50
    :goto_0
    const-string v3, "type"

    .line 51
    .line 52
    invoke-direct {p3, v3, p4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    const/4 p4, 0x4

    .line 56
    new-array p4, p4, [Lkotlin/Pair;

    .line 57
    .line 58
    const/4 v3, 0x0

    .line 59
    aput-object v1, p4, v3

    .line 60
    .line 61
    const/4 v1, 0x1

    .line 62
    aput-object v2, p4, v1

    .line 63
    .line 64
    const/4 v1, 0x2

    .line 65
    aput-object p2, p4, v1

    .line 66
    .line 67
    const/4 p2, 0x3

    .line 68
    aput-object p3, p4, p2

    .line 69
    .line 70
    invoke-static {p4}, Lkotlin/collections/MapsKt;->l([Lkotlin/Pair;)Ljava/util/Map;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-virtual {v0, p1, p2}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 75
    .line 76
    .line 77
    :cond_3
    :goto_1
    return-void
.end method
