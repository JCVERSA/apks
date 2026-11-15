.class public Lcom/alibaba/fastjson/util/TypeUtils;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/util/TypeUtils$MethodInheritanceComparator;
    }
.end annotation


# static fields
.field private static volatile A:Ljava/util/Map;

.field private static volatile B:Z

.field private static C:Ljava/util/concurrent/ConcurrentMap;

.field private static D:Ljava/lang/Class;

.field private static E:Z

.field private static F:Ljava/lang/Class;

.field private static G:Z

.field private static volatile H:Ljava/lang/Class;

.field private static volatile I:Ljava/lang/Class;

.field private static volatile J:Z

.field private static volatile K:Ljava/lang/reflect/Method;

.field private static volatile L:Ljava/lang/reflect/Field;

.field private static volatile M:Ljava/lang/Object;

.field private static N:Ljava/lang/Class;

.field private static O:Lcom/alibaba/fastjson/util/e;

.field private static P:Lcom/alibaba/fastjson/util/e;

.field private static Q:Lcom/alibaba/fastjson/util/e;

.field public static R:Lcom/alibaba/fastjson/util/e;

.field private static S:Lcom/alibaba/fastjson/util/c;

.field private static T:Lcom/alibaba/fastjson/util/e;

.field private static final U:Ljava/util/Map;

.field private static final V:Ljava/util/Set;

.field private static W:Ljava/lang/Object;

.field private static X:Z

.field private static final a:Ljava/util/regex/Pattern;

.field public static b:Z

.field public static c:Z

.field private static d:Z

.field private static e:Z

.field private static f:Ljava/lang/reflect/Method;

.field private static g:Z

.field private static h:Ljava/lang/reflect/Method;

.field private static i:Z

.field private static j:Ljava/lang/Class;

.field private static k:Z

.field private static l:Ljava/lang/Class;

.field private static m:Ljava/lang/Class;

.field private static n:Z

.field private static o:Ljava/lang/Class;

.field private static p:Z

.field private static q:Ljava/lang/reflect/Method;

.field private static r:Z

.field private static volatile s:Ljava/lang/Class;

.field private static volatile t:Z

.field private static volatile u:Z

.field private static volatile v:Ljava/lang/reflect/Constructor;

.field private static volatile w:Ljava/lang/reflect/Method;

.field private static volatile x:Ljava/lang/reflect/Method;

.field private static volatile y:Ljava/lang/reflect/Method;

.field private static volatile z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const-string v0, "true"

    .line 2
    .line 3
    const-string v1, "\\.0*$"

    .line 4
    .line 5
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sput-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->a:Ljava/util/regex/Pattern;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->b:Z

    .line 13
    .line 14
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->c:Z

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->d:Z

    .line 18
    .line 19
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->e:Z

    .line 20
    .line 21
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->g:Z

    .line 22
    .line 23
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->i:Z

    .line 24
    .line 25
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->k:Z

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    sput-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->m:Ljava/lang/Class;

    .line 29
    .line 30
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->n:Z

    .line 31
    .line 32
    sput-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->o:Ljava/lang/Class;

    .line 33
    .line 34
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->p:Z

    .line 35
    .line 36
    sput-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->q:Ljava/lang/reflect/Method;

    .line 37
    .line 38
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->r:Z

    .line 39
    .line 40
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    .line 41
    .line 42
    const/16 v5, 0x100

    .line 43
    .line 44
    const/high16 v6, 0x3f400000    # 0.75f

    .line 45
    .line 46
    invoke-direct {v4, v5, v6, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 47
    .line 48
    .line 49
    sput-object v4, Lcom/alibaba/fastjson/util/TypeUtils;->C:Ljava/util/concurrent/ConcurrentMap;

    .line 50
    .line 51
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->E:Z

    .line 52
    .line 53
    sput-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->F:Ljava/lang/Class;

    .line 54
    .line 55
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->G:Z

    .line 56
    .line 57
    sput-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->H:Ljava/lang/Class;

    .line 58
    .line 59
    sput-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->I:Ljava/lang/Class;

    .line 60
    .line 61
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->J:Z

    .line 62
    .line 63
    sput-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->K:Ljava/lang/reflect/Method;

    .line 64
    .line 65
    sput-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->L:Ljava/lang/reflect/Field;

    .line 66
    .line 67
    sput-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->M:Ljava/lang/Object;

    .line 68
    .line 69
    sput-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->N:Ljava/lang/Class;

    .line 70
    .line 71
    :try_start_0
    const-string v2, "fastjson.compatibleWithJavaBean"

    .line 72
    .line 73
    invoke-static {v2}, Lcom/alibaba/fastjson/util/f;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->b:Z

    .line 82
    .line 83
    const-string v2, "fastjson.compatibleWithFieldName"

    .line 84
    .line 85
    invoke-static {v2}, Lcom/alibaba/fastjson/util/f;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .line 95
    :catchall_0
    :try_start_1
    const-class v0, Ljava/util/Deque;

    .line 96
    .line 97
    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->N:Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 98
    .line 99
    :catchall_1
    new-instance v0, Lcom/alibaba/fastjson/util/TypeUtils$a;

    .line 100
    .line 101
    invoke-direct {v0}, Lcom/alibaba/fastjson/util/TypeUtils$a;-><init>()V

    .line 102
    .line 103
    .line 104
    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->O:Lcom/alibaba/fastjson/util/e;

    .line 105
    .line 106
    new-instance v0, Lcom/alibaba/fastjson/util/TypeUtils$b;

    .line 107
    .line 108
    invoke-direct {v0}, Lcom/alibaba/fastjson/util/TypeUtils$b;-><init>()V

    .line 109
    .line 110
    .line 111
    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->P:Lcom/alibaba/fastjson/util/e;

    .line 112
    .line 113
    new-instance v0, Lcom/alibaba/fastjson/util/TypeUtils$c;

    .line 114
    .line 115
    invoke-direct {v0}, Lcom/alibaba/fastjson/util/TypeUtils$c;-><init>()V

    .line 116
    .line 117
    .line 118
    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->Q:Lcom/alibaba/fastjson/util/e;

    .line 119
    .line 120
    new-instance v0, Lcom/alibaba/fastjson/util/TypeUtils$d;

    .line 121
    .line 122
    invoke-direct {v0}, Lcom/alibaba/fastjson/util/TypeUtils$d;-><init>()V

    .line 123
    .line 124
    .line 125
    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->R:Lcom/alibaba/fastjson/util/e;

    .line 126
    .line 127
    new-instance v0, Lcom/alibaba/fastjson/util/TypeUtils$e;

    .line 128
    .line 129
    invoke-direct {v0}, Lcom/alibaba/fastjson/util/TypeUtils$e;-><init>()V

    .line 130
    .line 131
    .line 132
    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->S:Lcom/alibaba/fastjson/util/c;

    .line 133
    .line 134
    new-instance v0, Lcom/alibaba/fastjson/util/TypeUtils$f;

    .line 135
    .line 136
    invoke-direct {v0}, Lcom/alibaba/fastjson/util/TypeUtils$f;-><init>()V

    .line 137
    .line 138
    .line 139
    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->T:Lcom/alibaba/fastjson/util/e;

    .line 140
    .line 141
    invoke-static {}, Lcom/alibaba/fastjson/util/TypeUtils;->a()V

    .line 142
    .line 143
    .line 144
    new-instance v0, Lcom/alibaba/fastjson/util/TypeUtils$7;

    .line 145
    .line 146
    const/16 v2, 0x8

    .line 147
    .line 148
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/util/TypeUtils$7;-><init>(I)V

    .line 149
    .line 150
    .line 151
    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->U:Ljava/util/Map;

    .line 152
    .line 153
    new-instance v0, Lcom/alibaba/fastjson/util/TypeUtils$8;

    .line 154
    .line 155
    const/4 v2, 0x6

    .line 156
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/util/TypeUtils$8;-><init>(I)V

    .line 157
    .line 158
    .line 159
    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->V:Ljava/util/Set;

    .line 160
    .line 161
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->X:Z

    .line 162
    .line 163
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static A(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static A0(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->B0(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static B(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->R:Lcom/alibaba/fastjson/util/e;

    .line 2
    .line 3
    invoke-static {v0, p0}, Lcom/alibaba/fastjson/util/i;->b(Lcom/alibaba/fastjson/util/e;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static B0(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->C0(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method private static C(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/Map;[Ljava/lang/reflect/Field;)V
    .locals 21

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    array-length v4, v3

    .line 10
    const/4 v6, 0x0

    .line 11
    :goto_0
    if-ge v6, v4, :cond_8

    .line 12
    .line 13
    aget-object v10, v3, v6

    .line 14
    .line 15
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 16
    .line 17
    .line 18
    move-result v7

    .line 19
    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 20
    .line 21
    .line 22
    move-result v7

    .line 23
    if-eqz v7, :cond_0

    .line 24
    .line 25
    goto/16 :goto_2

    .line 26
    .line 27
    :cond_0
    const-class v7, Lz4/b;

    .line 28
    .line 29
    invoke-static {v10, v7}, Lcom/alibaba/fastjson/util/TypeUtils;->O(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    move-object/from16 v17, v7

    .line 34
    .line 35
    check-cast v17, Lz4/b;

    .line 36
    .line 37
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    const/4 v8, 0x0

    .line 42
    if-eqz v17, :cond_4

    .line 43
    .line 44
    invoke-interface/range {v17 .. v17}, Lz4/b;->serialize()Z

    .line 45
    .line 46
    .line 47
    move-result v9

    .line 48
    if-nez v9, :cond_1

    .line 49
    .line 50
    goto/16 :goto_2

    .line 51
    .line 52
    :cond_1
    invoke-interface/range {v17 .. v17}, Lz4/b;->ordinal()I

    .line 53
    .line 54
    .line 55
    move-result v9

    .line 56
    invoke-interface/range {v17 .. v17}, Lz4/b;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 57
    .line 58
    .line 59
    move-result-object v11

    .line 60
    invoke-static {v11}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    .line 61
    .line 62
    .line 63
    move-result v11

    .line 64
    invoke-interface/range {v17 .. v17}, Lz4/b;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    .line 65
    .line 66
    .line 67
    move-result-object v12

    .line 68
    invoke-static {v12}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    .line 69
    .line 70
    .line 71
    move-result v12

    .line 72
    invoke-interface/range {v17 .. v17}, Lz4/b;->name()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v13

    .line 76
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 77
    .line 78
    .line 79
    move-result v13

    .line 80
    if-eqz v13, :cond_2

    .line 81
    .line 82
    invoke-interface/range {v17 .. v17}, Lz4/b;->name()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    :cond_2
    invoke-interface/range {v17 .. v17}, Lz4/b;->label()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v13

    .line 90
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 91
    .line 92
    .line 93
    move-result v13

    .line 94
    if-eqz v13, :cond_3

    .line 95
    .line 96
    invoke-interface/range {v17 .. v17}, Lz4/b;->label()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    :cond_3
    move-object/from16 v18, v8

    .line 101
    .line 102
    move v13, v9

    .line 103
    move v14, v11

    .line 104
    move v15, v12

    .line 105
    goto :goto_1

    .line 106
    :cond_4
    move-object/from16 v18, v8

    .line 107
    .line 108
    const/4 v13, 0x0

    .line 109
    const/4 v14, 0x0

    .line 110
    const/4 v15, 0x0

    .line 111
    :goto_1
    if-eqz v0, :cond_5

    .line 112
    .line 113
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    check-cast v7, Ljava/lang/String;

    .line 118
    .line 119
    if-nez v7, :cond_5

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_5
    if-eqz v1, :cond_6

    .line 123
    .line 124
    invoke-virtual {v1, v7}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    :cond_6
    move-object v12, v7

    .line 129
    invoke-interface {v2, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v7

    .line 133
    if-nez v7, :cond_7

    .line 134
    .line 135
    new-instance v11, Lcom/alibaba/fastjson/util/d;

    .line 136
    .line 137
    const/16 v16, 0x0

    .line 138
    .line 139
    const/16 v19, 0x0

    .line 140
    .line 141
    const/4 v9, 0x0

    .line 142
    move-object v7, v11

    .line 143
    move-object v8, v12

    .line 144
    move-object v5, v11

    .line 145
    move-object/from16 v11, p0

    .line 146
    .line 147
    move-object/from16 v20, v12

    .line 148
    .line 149
    move-object/from16 v12, v16

    .line 150
    .line 151
    move-object/from16 v16, v19

    .line 152
    .line 153
    invoke-direct/range {v7 .. v18}, Lcom/alibaba/fastjson/util/d;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILz4/b;Lz4/b;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    move-object/from16 v7, v20

    .line 157
    .line 158
    invoke-interface {v2, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    :cond_7
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 162
    .line 163
    goto/16 :goto_0

    .line 164
    .line 165
    :cond_8
    return-void
.end method

.method public static C0(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;
    .locals 5

    .line 1
    if-eqz p0, :cond_a

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/16 v1, 0xc6

    .line 16
    .line 17
    if-gt v0, v1, :cond_9

    .line 18
    .line 19
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->C:Ljava/util/concurrent/ConcurrentMap;

    .line 20
    .line 21
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/Class;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_1
    const/4 v1, 0x0

    .line 31
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const/16 v3, 0x5b

    .line 36
    .line 37
    const/4 v4, 0x1

    .line 38
    if-ne v2, v3, :cond_2

    .line 39
    .line 40
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/util/TypeUtils;->B0(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0

    .line 57
    :cond_2
    const-string v1, "L"

    .line 58
    .line 59
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_3

    .line 64
    .line 65
    const-string v1, ";"

    .line 66
    .line 67
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_3

    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    sub-int/2addr p2, v4

    .line 78
    invoke-virtual {p0, v4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/util/TypeUtils;->B0(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    return-object p0

    .line 87
    :cond_3
    if-eqz p1, :cond_5

    .line 88
    .line 89
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    if-eqz p2, :cond_4

    .line 94
    .line 95
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->C:Ljava/util/concurrent/ConcurrentMap;

    .line 96
    .line 97
    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :catchall_0
    move-exception v1

    .line 102
    goto :goto_1

    .line 103
    :cond_4
    :goto_0
    return-object v0

    .line 104
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 105
    .line 106
    .line 107
    :cond_5
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    if-eqz v1, :cond_7

    .line 116
    .line 117
    if-eq v1, p1, :cond_7

    .line 118
    .line 119
    invoke-virtual {v1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    if-eqz p2, :cond_6

    .line 124
    .line 125
    sget-object p1, Lcom/alibaba/fastjson/util/TypeUtils;->C:Ljava/util/concurrent/ConcurrentMap;

    .line 126
    .line 127
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 128
    .line 129
    .line 130
    :cond_6
    return-object v0

    .line 131
    :catchall_1
    :cond_7
    :try_start_2
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    if-eqz p2, :cond_8

    .line 136
    .line 137
    sget-object p1, Lcom/alibaba/fastjson/util/TypeUtils;->C:Ljava/util/concurrent/ConcurrentMap;

    .line 138
    .line 139
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 140
    .line 141
    .line 142
    :catchall_2
    :cond_8
    return-object v0

    .line 143
    :cond_9
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 144
    .line 145
    new-instance p2, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    const-string v0, "illegal className : "

    .line 151
    .line 152
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-direct {p1, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw p1

    .line 166
    :cond_a
    :goto_2
    const/4 p0, 0x0

    .line 167
    return-object p0
.end method

.method public static D(Ljava/lang/Class;Lz4/d;Ljava/util/Map;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;
    .locals 41

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p5

    .line 1
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->t0(Ljava/lang/Class;)Z

    move-result v16

    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v9

    .line 4
    :try_start_0
    new-instance v0, Lcom/alibaba/fastjson/util/TypeUtils$MethodInheritanceComparator;

    invoke-direct {v0}, Lcom/alibaba/fastjson/util/TypeUtils$MethodInheritanceComparator;-><init>()V

    invoke-static {v9, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :catchall_0
    array-length v8, v9

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v8, :cond_4a

    aget-object v5, v9, v6

    .line 6
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v18

    if-eqz v18, :cond_1

    :cond_0
    :goto_1
    move-object/from16 v19, v1

    :goto_2
    move/from16 v25, v6

    move/from16 v26, v8

    move-object/from16 v33, v9

    move-object v1, v10

    const/16 v18, 0x0

    const/16 v32, 0x1

    goto/16 :goto_29

    .line 8
    :cond_1
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v11

    .line 9
    sget-object v7, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v11, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    if-eqz v7, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    const-class v7, Ljava/lang/ClassLoader;

    if-eq v11, v7, :cond_0

    const-class v7, Ljava/io/InputStream;

    if-eq v11, v7, :cond_0

    const-class v7, Ljava/io/Reader;

    if-ne v11, v7, :cond_4

    goto :goto_1

    .line 12
    :cond_4
    const-string v7, "getMetaClass"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 13
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v19, v1

    const-string v1, "groovy.lang.MetaClass"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_3
    goto :goto_2

    :cond_5
    move-object/from16 v19, v1

    .line 14
    :cond_6
    const-string v1, "getSuppressed"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 15
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    const-class v7, Ljava/lang/Throwable;

    if-ne v1, v7, :cond_7

    :goto_4
    goto :goto_3

    :cond_7
    if-eqz v16, :cond_8

    .line 16
    invoke-static {v12, v4}, Lcom/alibaba/fastjson/util/TypeUtils;->u0(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_4

    .line 17
    :cond_8
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 18
    const-class v7, Lz4/b;

    invoke-static {v5, v7}, Lcom/alibaba/fastjson/util/TypeUtils;->P(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v20

    check-cast v20, Lz4/b;

    if-nez v20, :cond_9

    .line 19
    invoke-static {v12, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->j0(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lz4/b;

    move-result-object v20

    :cond_9
    move-object/from16 v21, v1

    .line 20
    const-string v1, "get"

    move-object/from16 v22, v11

    if-nez v20, :cond_16

    if-eqz v16, :cond_16

    if-nez v0, :cond_d

    .line 21
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->b0([Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v23

    if-eqz v23, :cond_c

    .line 23
    invoke-static/range {v23 .. v23}, Lcom/alibaba/fastjson/util/TypeUtils;->d0(Ljava/lang/reflect/Constructor;)[[Ljava/lang/annotation/Annotation;

    move-result-object v3

    .line 24
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->a0(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_b

    .line 25
    array-length v2, v11

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v24, v0

    .line 26
    array-length v0, v11

    move-object/from16 v19, v3

    const/4 v3, 0x0

    invoke-static {v11, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 28
    array-length v0, v11

    new-array v0, v0, [S

    move/from16 v25, v6

    .line 29
    :goto_5
    array-length v6, v11

    if-ge v3, v6, :cond_a

    .line 30
    aget-object v6, v11, v3

    invoke-static {v2, v6}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    .line 31
    aput-short v3, v0, v6

    const/4 v6, 0x1

    add-int/2addr v3, v6

    int-to-short v3, v3

    goto :goto_5

    :cond_a
    move-object v11, v2

    move-object/from16 v3, v19

    move-object v2, v0

    move-object/from16 v0, v24

    goto :goto_6

    :cond_b
    move-object/from16 v24, v0

    move-object/from16 v19, v3

    move/from16 v25, v6

    goto :goto_6

    :cond_c
    move-object/from16 v24, v0

    :cond_d
    move/from16 v25, v6

    move-object/from16 v11, v19

    :goto_6
    if-eqz v11, :cond_15

    if-eqz v2, :cond_15

    .line 32
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    const/4 v6, 0x3

    .line 33
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/alibaba/fastjson/util/TypeUtils;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 34
    invoke-static {v11, v6}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v19

    move-object/from16 v24, v0

    move/from16 v26, v8

    if-gez v19, :cond_f

    const/4 v0, 0x0

    .line 35
    :goto_7
    array-length v8, v11

    if-ge v0, v8, :cond_f

    .line 36
    aget-object v8, v11, v0

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    move/from16 v19, v0

    goto :goto_8

    :cond_e
    const/4 v8, 0x1

    add-int/2addr v0, v8

    goto :goto_7

    :cond_f
    :goto_8
    if-ltz v19, :cond_14

    .line 37
    aget-short v0, v2, v19

    .line 38
    aget-object v0, v3, v0

    if-eqz v0, :cond_12

    .line 39
    array-length v8, v0

    move-object/from16 v19, v2

    const/4 v2, 0x0

    :goto_9
    move-object/from16 v27, v3

    if-ge v2, v8, :cond_10

    aget-object v3, v0, v2

    move-object/from16 v28, v0

    .line 40
    instance-of v0, v3, Lz4/b;

    if-eqz v0, :cond_11

    .line 41
    move-object/from16 v20, v3

    check-cast v20, Lz4/b;

    :cond_10
    :goto_a
    const/16 v29, 0x1

    goto :goto_b

    :cond_11
    const/16 v29, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v27

    move-object/from16 v0, v28

    goto :goto_9

    :cond_12
    move-object/from16 v19, v2

    move-object/from16 v27, v3

    goto :goto_a

    :goto_b
    if-nez v20, :cond_13

    .line 42
    invoke-static {v6, v14}, La5/h;->s(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 43
    invoke-static {v0, v7}, Lcom/alibaba/fastjson/util/TypeUtils;->O(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lz4/b;

    move-object/from16 v28, v0

    :goto_c
    move-object/from16 v20, v19

    move-object/from16 v19, v11

    goto :goto_f

    :cond_13
    :goto_d
    move-object/from16 v28, v20

    goto :goto_c

    :cond_14
    move-object/from16 v19, v2

    move-object/from16 v27, v3

    :goto_e
    const/16 v29, 0x1

    goto :goto_d

    :cond_15
    move-object/from16 v24, v0

    move-object/from16 v19, v2

    move-object/from16 v27, v3

    move/from16 v26, v8

    goto :goto_e

    :cond_16
    move/from16 v25, v6

    move/from16 v26, v8

    const/16 v29, 0x1

    move-object/from16 v24, v0

    move-object/from16 v27, v3

    move-object/from16 v28, v20

    move-object/from16 v20, v2

    :goto_f
    const/4 v11, 0x0

    if-eqz v28, :cond_1a

    .line 44
    invoke-interface/range {v28 .. v28}, Lz4/b;->serialize()Z

    move-result v0

    if-nez v0, :cond_17

    :goto_10
    move-object/from16 v33, v9

    move-object v1, v10

    move/from16 v32, v29

    const/16 v18, 0x0

    goto/16 :goto_28

    .line 45
    :cond_17
    invoke-interface/range {v28 .. v28}, Lz4/b;->ordinal()I

    move-result v6

    .line 46
    invoke-interface/range {v28 .. v28}, Lz4/b;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v8

    .line 47
    invoke-interface/range {v28 .. v28}, Lz4/b;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v30

    .line 48
    invoke-interface/range {v28 .. v28}, Lz4/b;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_19

    .line 49
    invoke-interface/range {v28 .. v28}, Lz4/b;->name()Ljava/lang/String;

    move-result-object v0

    if-eqz v13, :cond_18

    .line 50
    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_18

    goto :goto_10

    :cond_18
    move-object v7, v0

    .line 51
    new-instance v4, Lcom/alibaba/fastjson/util/d;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/4 v3, 0x0

    move-object v0, v4

    move-object v1, v7

    move-object v2, v5

    const/16 v18, 0x0

    move-object v5, v4

    move-object/from16 v4, p0

    move-object/from16 v31, v5

    move-object/from16 v5, v21

    move-object/from16 v32, v7

    move v7, v8

    move/from16 v8, v30

    move-object/from16 v33, v9

    move-object/from16 v9, v28

    move-object/from16 v34, v10

    move-object/from16 v10, v22

    move/from16 v15, v29

    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson/util/d;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILz4/b;Lz4/b;Ljava/lang/String;)V

    move-object/from16 v1, v31

    move-object/from16 v0, v32

    move-object/from16 v10, v34

    .line 52
    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_11
    move-object v1, v10

    move/from16 v32, v15

    goto/16 :goto_28

    :cond_19
    move-object/from16 v33, v9

    move/from16 v15, v29

    const/16 v18, 0x0

    .line 53
    invoke-interface/range {v28 .. v28}, Lz4/b;->label()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1b

    .line 54
    invoke-interface/range {v28 .. v28}, Lz4/b;->label()Ljava/lang/String;

    move-result-object v11

    goto :goto_12

    :cond_1a
    move-object/from16 v33, v9

    move/from16 v15, v29

    const/16 v18, 0x0

    move/from16 v6, v18

    move v8, v6

    move/from16 v30, v8

    .line 55
    :cond_1b
    :goto_12
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v9, 0x66

    const/16 v3, 0x5f

    if-eqz v0, :cond_34

    .line 56
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1c

    :goto_13
    goto :goto_11

    .line 57
    :cond_1c
    const-string v0, "getClass"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_13

    .line 58
    :cond_1d
    const-string v0, "getDeclaringClass"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_13

    :cond_1e
    const/4 v0, 0x3

    .line 59
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 60
    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v23

    if-nez v23, :cond_25

    const/16 v15, 0x200

    if-le v2, v15, :cond_1f

    goto :goto_17

    :cond_1f
    if-ne v2, v3, :cond_22

    .line 61
    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-interface {v14, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    if-nez v0, :cond_27

    .line 63
    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {v0, v14}, La5/h;->s(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-nez v1, :cond_20

    goto :goto_14

    :cond_20
    move-object v2, v0

    :cond_21
    :goto_14
    move-object v0, v1

    goto :goto_19

    :cond_22
    if-ne v2, v9, :cond_23

    const/4 v0, 0x3

    .line 65
    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :goto_15
    move-object/from16 v0, v17

    goto :goto_19

    :cond_23
    const/4 v0, 0x3

    .line 66
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v15, 0x5

    if-lt v2, v15, :cond_24

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 67
    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_15

    .line 68
    :cond_24
    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-static {v2, v14}, La5/h;->s(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-nez v1, :cond_21

    :goto_16
    move-object v1, v10

    const/16 v32, 0x1

    goto/16 :goto_28

    .line 70
    :cond_25
    :goto_17
    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->b:Z

    if-eqz v1, :cond_26

    .line 71
    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_18

    .line 72
    :cond_26
    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    :goto_18
    invoke-static {v14, v4, v1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->g0(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_15

    .line 74
    :cond_27
    :goto_19
    invoke-static {v12, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->r0(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    goto :goto_16

    :cond_28
    if-nez v0, :cond_29

    .line 75
    invoke-static {v2, v14}, La5/h;->s(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v0

    :cond_29
    if-nez v0, :cond_2b

    .line 76
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v15, 0x1

    if-le v1, v15, :cond_2a

    .line 77
    invoke-virtual {v2, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x41

    if-lt v1, v3, :cond_2a

    const/16 v3, 0x5a

    if-gt v1, v3, :cond_2a

    const/4 v3, 0x3

    .line 78
    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v0, v14}, La5/h;->s(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v0

    :goto_1a
    move-object v1, v0

    goto :goto_1b

    :cond_2a
    const/4 v3, 0x3

    goto :goto_1a

    :cond_2b
    const/4 v3, 0x3

    const/4 v15, 0x1

    goto :goto_1a

    :goto_1b
    if-eqz v1, :cond_31

    .line 80
    invoke-static {v1, v7}, Lcom/alibaba/fastjson/util/TypeUtils;->O(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lz4/b;

    if-eqz v0, :cond_30

    .line 81
    invoke-interface {v0}, Lz4/b;->serialize()Z

    move-result v6

    if-nez v6, :cond_2c

    goto/16 :goto_13

    .line 82
    :cond_2c
    invoke-interface {v0}, Lz4/b;->ordinal()I

    move-result v6

    .line 83
    invoke-interface {v0}, Lz4/b;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v8

    invoke-static {v8}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v8

    .line 84
    invoke-interface {v0}, Lz4/b;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v30

    .line 85
    invoke-interface {v0}, Lz4/b;->name()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    if-eqz v23, :cond_2d

    .line 86
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 87
    invoke-interface {v0}, Lz4/b;->name()Ljava/lang/String;

    move-result-object v3

    if-eqz v13, :cond_2e

    .line 88
    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_2e

    goto/16 :goto_13

    :cond_2d
    move-object v3, v2

    move-object/from16 v2, v21

    .line 89
    :cond_2e
    invoke-interface {v0}, Lz4/b;->label()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    if-eqz v21, :cond_2f

    .line 90
    invoke-interface {v0}, Lz4/b;->label()Ljava/lang/String;

    move-result-object v11

    :cond_2f
    move/from16 v21, v6

    move/from16 v29, v8

    move/from16 v31, v30

    :goto_1c
    move-object/from16 v30, v11

    move-object v11, v0

    goto :goto_1d

    :cond_30
    move-object v3, v2

    move/from16 v29, v8

    move-object/from16 v2, v21

    move/from16 v31, v30

    move/from16 v21, v6

    goto :goto_1c

    :cond_31
    move-object v3, v2

    move/from16 v29, v8

    move-object/from16 v2, v21

    move/from16 v31, v30

    move/from16 v21, v6

    move-object/from16 v30, v11

    move-object/from16 v11, v17

    :goto_1d
    if-eqz v13, :cond_32

    .line 91
    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_32

    goto/16 :goto_13

    :cond_32
    move/from16 v32, v15

    move-object/from16 v15, p5

    if-eqz v15, :cond_33

    .line 92
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_33

    .line 93
    invoke-virtual {v15, v3}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_33
    move-object v8, v3

    .line 94
    new-instance v6, Lcom/alibaba/fastjson/util/d;

    const/16 v34, 0x0

    move-object v0, v6

    move-object v3, v1

    move-object v1, v8

    move-object v2, v5

    const/16 v23, 0x3

    move-object v15, v4

    move-object/from16 v4, p0

    move-object/from16 v35, v5

    move-object/from16 v5, v34

    move-object/from16 v36, v6

    move/from16 v6, v21

    move-object/from16 v37, v7

    move/from16 v7, v29

    move-object/from16 v38, v8

    move/from16 v8, v31

    move-object/from16 v9, v28

    move-object/from16 v39, v10

    move-object v10, v11

    move-object/from16 v13, v22

    move/from16 v12, v23

    move-object/from16 v11, v30

    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson/util/d;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILz4/b;Lz4/b;Ljava/lang/String;)V

    move-object/from16 v0, v36

    move-object/from16 v3, v38

    move-object/from16 v10, v39

    .line 95
    invoke-interface {v10, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v8, v29

    move/from16 v30, v31

    goto :goto_1e

    :cond_34
    move-object/from16 v35, v5

    move-object/from16 v37, v7

    move/from16 v32, v15

    move-object/from16 v13, v22

    const/4 v12, 0x3

    move-object v15, v4

    .line 96
    :goto_1e
    const-string v0, "is"

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 97
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v12, :cond_36

    :cond_35
    :goto_1f
    move-object/from16 v13, p2

    :goto_20
    move-object v1, v10

    goto/16 :goto_28

    .line 98
    :cond_36
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v13, v0, :cond_37

    const-class v0, Ljava/lang/Boolean;

    if-eq v13, v0, :cond_37

    goto :goto_1f

    :cond_37
    const/4 v0, 0x2

    .line 99
    invoke-virtual {v15, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 100
    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 101
    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->b:Z

    if-eqz v1, :cond_38

    .line 102
    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_21

    .line 103
    :cond_38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 104
    :goto_21
    invoke-static {v14, v15, v1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->g0(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_22
    move-object/from16 v12, p0

    move-object/from16 v2, v17

    goto :goto_23

    :cond_39
    const/16 v2, 0x5f

    if-ne v1, v2, :cond_3c

    .line 105
    invoke-virtual {v15, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-interface {v14, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    if-nez v2, :cond_3b

    .line 107
    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {v0, v14}, La5/h;->s(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v2

    if-nez v2, :cond_3a

    move-object v0, v1

    :cond_3a
    move-object/from16 v12, p0

    goto :goto_23

    :cond_3b
    move-object/from16 v12, p0

    move-object v0, v1

    goto :goto_23

    :cond_3c
    const/16 v2, 0x66

    if-ne v1, v2, :cond_3d

    .line 109
    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    .line 110
    :cond_3d
    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {v0, v14}, La5/h;->s(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v2

    if-nez v2, :cond_3a

    goto :goto_1f

    .line 112
    :goto_23
    invoke-static {v12, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->r0(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    goto/16 :goto_1f

    :cond_3e
    if-nez v2, :cond_3f

    .line 113
    invoke-static {v0, v14}, La5/h;->s(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v2

    :cond_3f
    if-nez v2, :cond_40

    .line 114
    invoke-static {v15, v14}, La5/h;->s(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v1

    move-object v3, v1

    goto :goto_24

    :cond_40
    move-object v3, v2

    :goto_24
    if-eqz v3, :cond_46

    move-object/from16 v1, v37

    .line 115
    invoke-static {v3, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->O(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lz4/b;

    if-eqz v1, :cond_45

    .line 116
    invoke-interface {v1}, Lz4/b;->serialize()Z

    move-result v2

    if-nez v2, :cond_41

    goto/16 :goto_1f

    .line 117
    :cond_41
    invoke-interface {v1}, Lz4/b;->ordinal()I

    move-result v2

    .line 118
    invoke-interface {v1}, Lz4/b;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v4

    .line 119
    invoke-interface {v1}, Lz4/b;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v5

    .line 120
    invoke-interface {v1}, Lz4/b;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_42

    .line 121
    invoke-interface {v1}, Lz4/b;->name()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v13, p2

    if-eqz v13, :cond_43

    .line 122
    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_43

    :goto_25
    goto/16 :goto_20

    :cond_42
    move-object/from16 v13, p2

    .line 123
    :cond_43
    invoke-interface {v1}, Lz4/b;->label()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_44

    .line 124
    invoke-interface {v1}, Lz4/b;->label()Ljava/lang/String;

    move-result-object v6

    move-object v11, v1

    move v7, v4

    move v8, v5

    move-object v15, v6

    move v6, v2

    goto :goto_27

    :cond_44
    move v6, v2

    move v7, v4

    move v8, v5

    move-object v15, v11

    :goto_26
    move-object v11, v1

    goto :goto_27

    :cond_45
    move-object/from16 v13, p2

    move v7, v8

    move-object v15, v11

    move/from16 v8, v30

    goto :goto_26

    :cond_46
    move-object/from16 v13, p2

    move v7, v8

    move-object v15, v11

    move-object/from16 v11, v17

    move/from16 v8, v30

    :goto_27
    if-eqz v13, :cond_47

    .line 125
    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_47

    goto :goto_25

    :cond_47
    move-object/from16 v9, p5

    if-eqz v9, :cond_48

    .line 126
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_48
    move-object v5, v0

    .line 127
    invoke-interface {v10, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    goto :goto_25

    .line 128
    :cond_49
    new-instance v4, Lcom/alibaba/fastjson/util/d;

    const/16 v21, 0x0

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v35

    move-object v14, v4

    move-object/from16 v4, p0

    move-object v12, v5

    move-object/from16 v5, v21

    move-object/from16 v9, v28

    move-object/from16 v40, v10

    move-object v10, v11

    move-object v11, v15

    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson/util/d;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILz4/b;Lz4/b;Ljava/lang/String;)V

    move-object/from16 v1, v40

    .line 129
    invoke-interface {v1, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_28
    move-object/from16 v2, v20

    move-object/from16 v0, v24

    move-object/from16 v3, v27

    :goto_29
    add-int/lit8 v6, v25, 0x1

    move-object/from16 v12, p0

    move-object/from16 v14, p3

    move-object/from16 v15, p5

    move-object v10, v1

    move-object/from16 v1, v19

    move/from16 v8, v26

    move-object/from16 v9, v33

    goto/16 :goto_0

    :cond_4a
    move-object v1, v10

    .line 130
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    move-object/from16 v2, p0

    move-object/from16 v3, p5

    .line 131
    invoke-static {v2, v13, v3, v1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->C(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/Map;[Ljava/lang/reflect/Field;)V

    move/from16 v0, p4

    .line 132
    invoke-static {v2, v0, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->Y(Ljava/lang/Class;ZLjava/util/Map;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static D0(Ljava/lang/Number;)J
    .locals 2

    .line 1
    instance-of v0, p0, Ljava/math/BigDecimal;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Ljava/math/BigDecimal;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValueExact()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0

    .line 12
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    return-wide v0
.end method

.method public static E(Ljava/lang/Class;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    move-object v1, p0

    .line 7
    :goto_0
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {v1, p1, p3, v0, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->C(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/Map;[Ljava/lang/reflect/Field;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-static {p0, p2, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->Y(Ljava/lang/Class;ZLjava/util/Map;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public static E0(Ljava/math/BigDecimal;)J
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    return-wide v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/16 v1, -0x64

    .line 11
    .line 12
    if-lt v0, v1, :cond_1

    .line 13
    .line 14
    const/16 v1, 0x64

    .line 15
    .line 16
    if-gt v0, v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValue()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    return-wide v0

    .line 23
    :cond_1
    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValueExact()J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    return-wide v0
.end method

.method private static F([Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Ljava/util/Map;
    .locals 5

    .line 1
    array-length v0, p0

    .line 2
    new-instance v1, Ljava/util/HashMap;

    .line 3
    .line 4
    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v0, :cond_0

    .line 9
    .line 10
    aget-object v3, p0, v2

    .line 11
    .line 12
    aget-object v4, p1, v2

    .line 13
    .line 14
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    add-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-object v1
.end method

.method private static F0(Ljava/lang/Class;[Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/ParameterizedType;
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    new-array v1, v0, [Ljava/lang/reflect/Type;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v0, :cond_0

    .line 6
    .line 7
    aget-object v3, p1, v2

    .line 8
    .line 9
    invoke-static {v3, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->M(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    aput-object v3, v1, v2

    .line 14
    .line 15
    add-int/lit8 v2, v2, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p1, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;

    .line 19
    .line 20
    const/4 p2, 0x0

    .line 21
    invoke-direct {p1, v1, p2, p0}, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 22
    .line 23
    .line 24
    return-object p1
.end method

.method public static G(Ljava/lang/reflect/Type;)Ljava/util/Collection;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->i0(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Ljava/util/AbstractCollection;

    .line 6
    .line 7
    if-eq v0, v1, :cond_9

    .line 8
    .line 9
    const-class v1, Ljava/util/Collection;

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    goto/16 :goto_2

    .line 14
    .line 15
    :cond_0
    const-class v1, Ljava/util/HashSet;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    new-instance p0, Ljava/util/HashSet;

    .line 24
    .line 25
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 26
    .line 27
    .line 28
    goto/16 :goto_3

    .line 29
    .line 30
    :cond_1
    const-class v1, Ljava/util/LinkedHashSet;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    new-instance p0, Ljava/util/LinkedHashSet;

    .line 39
    .line 40
    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 41
    .line 42
    .line 43
    goto/16 :goto_3

    .line 44
    .line 45
    :cond_2
    const-class v1, Ljava/util/TreeSet;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    new-instance p0, Ljava/util/TreeSet;

    .line 54
    .line 55
    invoke-direct {p0}, Ljava/util/TreeSet;-><init>()V

    .line 56
    .line 57
    .line 58
    goto/16 :goto_3

    .line 59
    .line 60
    :cond_3
    const-class v1, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_4

    .line 67
    .line 68
    new-instance p0, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_4
    const-class v1, Ljava/util/EnumSet;

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_6

    .line 81
    .line 82
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    .line 83
    .line 84
    if-eqz v0, :cond_5

    .line 85
    .line 86
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 87
    .line 88
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    const/4 v0, 0x0

    .line 93
    aget-object p0, p0, v0

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_5
    const-class p0, Ljava/lang/Object;

    .line 97
    .line 98
    :goto_0
    check-cast p0, Ljava/lang/Class;

    .line 99
    .line 100
    invoke-static {p0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    goto :goto_3

    .line 105
    :cond_6
    const-class p0, Ljava/util/Queue;

    .line 106
    .line 107
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    if-nez p0, :cond_8

    .line 112
    .line 113
    sget-object p0, Lcom/alibaba/fastjson/util/TypeUtils;->N:Ljava/lang/Class;

    .line 114
    .line 115
    if-eqz p0, :cond_7

    .line 116
    .line 117
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 118
    .line 119
    .line 120
    move-result p0

    .line 121
    if-eqz p0, :cond_7

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_7
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    check-cast p0, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :catch_0
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    .line 132
    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string v2, "create instance error, class "

    .line 139
    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw p0

    .line 158
    :cond_8
    :goto_1
    new-instance p0, Ljava/util/LinkedList;

    .line 159
    .line 160
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 161
    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_9
    :goto_2
    new-instance p0, Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .line 168
    .line 169
    :goto_3
    return-object p0
.end method

.method static G0(CC)I
    .locals 2

    .line 1
    const/16 v0, 0x30

    .line 2
    .line 3
    if-lt p0, v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x39

    .line 6
    .line 7
    if-gt p0, v1, :cond_0

    .line 8
    .line 9
    if-lt p1, v0, :cond_0

    .line 10
    .line 11
    if-gt p1, v1, :cond_0

    .line 12
    .line 13
    sub-int/2addr p0, v0

    .line 14
    mul-int/lit8 p0, p0, 0xa

    .line 15
    .line 16
    sub-int/2addr p1, v0

    .line 17
    add-int/2addr p0, p1

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p0, -0x1

    .line 20
    return p0
.end method

.method public static H(Ljava/lang/reflect/Type;)Ljava/util/Set;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->i0(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Ljava/util/AbstractCollection;

    .line 6
    .line 7
    if-eq v0, v1, :cond_6

    .line 8
    .line 9
    const-class v1, Ljava/util/Collection;

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    const-class v1, Ljava/util/HashSet;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    new-instance p0, Ljava/util/HashSet;

    .line 23
    .line 24
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 25
    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_1
    const-class v1, Ljava/util/LinkedHashSet;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    new-instance p0, Ljava/util/LinkedHashSet;

    .line 37
    .line 38
    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    const-class v1, Ljava/util/TreeSet;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    new-instance p0, Ljava/util/TreeSet;

    .line 51
    .line 52
    invoke-direct {p0}, Ljava/util/TreeSet;-><init>()V

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_3
    const-class v1, Ljava/util/EnumSet;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_5

    .line 63
    .line 64
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    .line 65
    .line 66
    if-eqz v0, :cond_4

    .line 67
    .line 68
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 69
    .line 70
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    const/4 v0, 0x0

    .line 75
    aget-object p0, p0, v0

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    const-class p0, Ljava/lang/Object;

    .line 79
    .line 80
    :goto_0
    check-cast p0, Ljava/lang/Class;

    .line 81
    .line 82
    invoke-static {p0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    goto :goto_2

    .line 87
    :cond_5
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    check-cast p0, Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :catch_0
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    .line 95
    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string v2, "create instance error, class "

    .line 102
    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p0

    .line 121
    :cond_6
    :goto_1
    new-instance p0, Ljava/util/HashSet;

    .line 122
    .line 123
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 124
    .line 125
    .line 126
    :goto_2
    return-object p0
.end method

.method static H0(CCCC)I
    .locals 2

    .line 1
    const/16 v0, 0x30

    .line 2
    .line 3
    if-lt p0, v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x39

    .line 6
    .line 7
    if-gt p0, v1, :cond_0

    .line 8
    .line 9
    if-lt p1, v0, :cond_0

    .line 10
    .line 11
    if-gt p1, v1, :cond_0

    .line 12
    .line 13
    if-lt p2, v0, :cond_0

    .line 14
    .line 15
    if-gt p2, v1, :cond_0

    .line 16
    .line 17
    if-lt p3, v0, :cond_0

    .line 18
    .line 19
    if-gt p3, v1, :cond_0

    .line 20
    .line 21
    sub-int/2addr p0, v0

    .line 22
    mul-int/lit16 p0, p0, 0x3e8

    .line 23
    .line 24
    sub-int/2addr p1, v0

    .line 25
    mul-int/lit8 p1, p1, 0x64

    .line 26
    .line 27
    add-int/2addr p0, p1

    .line 28
    sub-int/2addr p2, v0

    .line 29
    mul-int/lit8 p2, p2, 0xa

    .line 30
    .line 31
    add-int/2addr p0, p2

    .line 32
    sub-int/2addr p3, v0

    .line 33
    add-int/2addr p0, p3

    .line 34
    return p0

    .line 35
    :cond_0
    const/4 p0, -0x1

    .line 36
    return p0
.end method

.method public static I(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-le v0, v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    return-object p0

    .line 39
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    aget-char v0, p0, v2

    .line 44
    .line 45
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    aput-char v0, p0, v2

    .line 50
    .line 51
    new-instance v0, Ljava/lang/String;

    .line 52
    .line 53
    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    .line 54
    .line 55
    .line 56
    return-object v0

    .line 57
    :cond_2
    :goto_0
    return-object p0
.end method

.method static I0(CCCCCCCCC)I
    .locals 2

    .line 1
    const/16 v0, 0x30

    .line 2
    .line 3
    if-lt p0, v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x39

    .line 6
    .line 7
    if-gt p0, v1, :cond_0

    .line 8
    .line 9
    if-lt p1, v0, :cond_0

    .line 10
    .line 11
    if-gt p1, v1, :cond_0

    .line 12
    .line 13
    if-lt p2, v0, :cond_0

    .line 14
    .line 15
    if-gt p2, v1, :cond_0

    .line 16
    .line 17
    if-lt p3, v0, :cond_0

    .line 18
    .line 19
    if-gt p3, v1, :cond_0

    .line 20
    .line 21
    if-lt p4, v0, :cond_0

    .line 22
    .line 23
    if-gt p4, v1, :cond_0

    .line 24
    .line 25
    if-lt p5, v0, :cond_0

    .line 26
    .line 27
    if-gt p5, v1, :cond_0

    .line 28
    .line 29
    if-lt p6, v0, :cond_0

    .line 30
    .line 31
    if-gt p6, v1, :cond_0

    .line 32
    .line 33
    if-lt p7, v0, :cond_0

    .line 34
    .line 35
    if-gt p7, v1, :cond_0

    .line 36
    .line 37
    if-lt p8, v0, :cond_0

    .line 38
    .line 39
    if-gt p8, v1, :cond_0

    .line 40
    .line 41
    sub-int/2addr p0, v0

    .line 42
    const v1, 0x5f5e100

    .line 43
    .line 44
    .line 45
    mul-int/2addr p0, v1

    .line 46
    sub-int/2addr p1, v0

    .line 47
    const v1, 0x989680

    .line 48
    .line 49
    .line 50
    mul-int/2addr p1, v1

    .line 51
    add-int/2addr p0, p1

    .line 52
    sub-int/2addr p2, v0

    .line 53
    const p1, 0xf4240

    .line 54
    .line 55
    .line 56
    mul-int/2addr p2, p1

    .line 57
    add-int/2addr p0, p2

    .line 58
    sub-int/2addr p3, v0

    .line 59
    const p1, 0x186a0

    .line 60
    .line 61
    .line 62
    mul-int/2addr p3, p1

    .line 63
    add-int/2addr p0, p3

    .line 64
    sub-int/2addr p4, v0

    .line 65
    mul-int/lit16 p4, p4, 0x2710

    .line 66
    .line 67
    add-int/2addr p0, p4

    .line 68
    sub-int/2addr p5, v0

    .line 69
    mul-int/lit16 p5, p5, 0x3e8

    .line 70
    .line 71
    add-int/2addr p0, p5

    .line 72
    sub-int/2addr p6, v0

    .line 73
    mul-int/lit8 p6, p6, 0x64

    .line 74
    .line 75
    add-int/2addr p0, p6

    .line 76
    sub-int/2addr p7, v0

    .line 77
    mul-int/lit8 p7, p7, 0xa

    .line 78
    .line 79
    add-int/2addr p0, p7

    .line 80
    sub-int/2addr p8, v0

    .line 81
    add-int/2addr p0, p8

    .line 82
    return p0

    .line 83
    :cond_0
    const/4 p0, -0x1

    .line 84
    return p0
.end method

.method public static J(Ljava/lang/String;)J
    .locals 5

    .line 1
    const-wide v0, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-ge v2, v3, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    int-to-long v3, v3

    .line 18
    xor-long/2addr v0, v3

    .line 19
    const-wide v3, 0x100000001b3L

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    mul-long/2addr v0, v3

    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-wide v0
.end method

.method public static J0(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->X:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->Q(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-nez p0, :cond_1

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string v0, "java.util.Optional"

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->W:Ljava/lang/Object;

    .line 27
    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const-string v0, "empty"

    .line 35
    .line 36
    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    sput-object p0, Lcom/alibaba/fastjson/util/TypeUtils;->W:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    const/4 p0, 0x1

    .line 48
    sput-boolean p0, Lcom/alibaba/fastjson/util/TypeUtils;->X:Z

    .line 49
    .line 50
    :cond_2
    :goto_0
    sget-object p0, Lcom/alibaba/fastjson/util/TypeUtils;->W:Ljava/lang/Object;

    .line 51
    .line 52
    return-object p0

    .line 53
    :cond_3
    return-object v1
.end method

.method public static K(Ljava/lang/String;)J
    .locals 5

    .line 1
    const-wide v0, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-ge v2, v3, :cond_3

    .line 12
    .line 13
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/16 v4, 0x5f

    .line 18
    .line 19
    if-eq v3, v4, :cond_2

    .line 20
    .line 21
    const/16 v4, 0x2d

    .line 22
    .line 23
    if-ne v3, v4, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    const/16 v4, 0x41

    .line 27
    .line 28
    if-lt v3, v4, :cond_1

    .line 29
    .line 30
    const/16 v4, 0x5a

    .line 31
    .line 32
    if-gt v3, v4, :cond_1

    .line 33
    .line 34
    add-int/lit8 v3, v3, 0x20

    .line 35
    .line 36
    int-to-char v3, v3

    .line 37
    :cond_1
    int-to-long v3, v3

    .line 38
    xor-long/2addr v0, v3

    .line 39
    const-wide v3, 0x100000001b3L

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    mul-long/2addr v0, v3

    .line 45
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    return-wide v0
.end method

.method public static K0(Ljava/lang/String;)D
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xa

    .line 6
    .line 7
    if-le v0, v1, :cond_0

    .line 8
    .line 9
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    const-wide/16 v2, 0x0

    .line 16
    .line 17
    move-wide v4, v2

    .line 18
    move v2, v1

    .line 19
    move v3, v2

    .line 20
    :goto_0
    if-ge v1, v0, :cond_5

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    const/16 v7, 0x2d

    .line 27
    .line 28
    const/4 v8, 0x1

    .line 29
    if-ne v6, v7, :cond_1

    .line 30
    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    move v2, v8

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/16 v7, 0x2e

    .line 36
    .line 37
    if-ne v6, v7, :cond_3

    .line 38
    .line 39
    if-eqz v3, :cond_2

    .line 40
    .line 41
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    return-wide v0

    .line 46
    :cond_2
    sub-int v3, v0, v1

    .line 47
    .line 48
    sub-int/2addr v3, v8

    .line 49
    goto :goto_1

    .line 50
    :cond_3
    const/16 v7, 0x30

    .line 51
    .line 52
    if-lt v6, v7, :cond_4

    .line 53
    .line 54
    const/16 v7, 0x39

    .line 55
    .line 56
    if-gt v6, v7, :cond_4

    .line 57
    .line 58
    add-int/lit8 v6, v6, -0x30

    .line 59
    .line 60
    const-wide/16 v7, 0xa

    .line 61
    .line 62
    mul-long/2addr v4, v7

    .line 63
    int-to-long v6, v6

    .line 64
    add-long/2addr v4, v6

    .line 65
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 69
    .line 70
    .line 71
    move-result-wide v0

    .line 72
    return-wide v0

    .line 73
    :cond_5
    if-eqz v2, :cond_6

    .line 74
    .line 75
    neg-long v4, v4

    .line 76
    :cond_6
    packed-switch v3, :pswitch_data_0

    .line 77
    .line 78
    .line 79
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 80
    .line 81
    .line 82
    move-result-wide v0

    .line 83
    return-wide v0

    .line 84
    :pswitch_0
    long-to-double v0, v4

    .line 85
    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    :goto_2
    div-double/2addr v0, v2

    .line 91
    return-wide v0

    .line 92
    :pswitch_1
    long-to-double v0, v4

    .line 93
    const-wide v2, 0x4197d78400000000L    # 1.0E8

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :pswitch_2
    long-to-double v0, v4

    .line 100
    const-wide v2, 0x416312d000000000L    # 1.0E7

    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :pswitch_3
    long-to-double v0, v4

    .line 107
    const-wide v2, 0x412e848000000000L    # 1000000.0

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :pswitch_4
    long-to-double v0, v4

    .line 114
    const-wide v2, 0x40f86a0000000000L    # 100000.0

    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :pswitch_5
    long-to-double v0, v4

    .line 121
    const-wide v2, 0x40c3880000000000L    # 10000.0

    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :pswitch_6
    long-to-double v0, v4

    .line 128
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :pswitch_7
    long-to-double v0, v4

    .line 135
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :pswitch_8
    long-to-double v0, v4

    .line 139
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :pswitch_9
    long-to-double v0, v4

    .line 143
    return-wide v0

    .line 144
    nop

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static L(Ljava/lang/String;)J
    .locals 5

    .line 1
    const-wide v0, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-ge v2, v3, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/16 v4, 0x41

    .line 18
    .line 19
    if-lt v3, v4, :cond_0

    .line 20
    .line 21
    const/16 v4, 0x5a

    .line 22
    .line 23
    if-gt v3, v4, :cond_0

    .line 24
    .line 25
    add-int/lit8 v3, v3, 0x20

    .line 26
    .line 27
    int-to-char v3, v3

    .line 28
    :cond_0
    int-to-long v3, v3

    .line 29
    xor-long/2addr v0, v3

    .line 30
    const-wide v3, 0x100000001b3L

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    mul-long/2addr v0, v3

    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-wide v0
.end method

.method public static L0(Ljava/lang/String;)F
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xa

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    const-wide/16 v2, 0x0

    .line 16
    .line 17
    move-wide v4, v2

    .line 18
    move v2, v1

    .line 19
    move v3, v2

    .line 20
    :goto_0
    if-ge v1, v0, :cond_5

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    const/16 v7, 0x2d

    .line 27
    .line 28
    const/4 v8, 0x1

    .line 29
    if-ne v6, v7, :cond_1

    .line 30
    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    move v2, v8

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/16 v7, 0x2e

    .line 36
    .line 37
    if-ne v6, v7, :cond_3

    .line 38
    .line 39
    if-eqz v3, :cond_2

    .line 40
    .line 41
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    return p0

    .line 46
    :cond_2
    sub-int v3, v0, v1

    .line 47
    .line 48
    sub-int/2addr v3, v8

    .line 49
    goto :goto_1

    .line 50
    :cond_3
    const/16 v7, 0x30

    .line 51
    .line 52
    if-lt v6, v7, :cond_4

    .line 53
    .line 54
    const/16 v7, 0x39

    .line 55
    .line 56
    if-gt v6, v7, :cond_4

    .line 57
    .line 58
    add-int/lit8 v6, v6, -0x30

    .line 59
    .line 60
    const-wide/16 v7, 0xa

    .line 61
    .line 62
    mul-long/2addr v4, v7

    .line 63
    int-to-long v6, v6

    .line 64
    add-long/2addr v4, v6

    .line 65
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    return p0

    .line 73
    :cond_5
    if-eqz v2, :cond_6

    .line 74
    .line 75
    neg-long v4, v4

    .line 76
    :cond_6
    packed-switch v3, :pswitch_data_0

    .line 77
    .line 78
    .line 79
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    return p0

    .line 84
    :pswitch_0
    long-to-float p0, v4

    .line 85
    const v0, 0x4e6e6b28    # 1.0E9f

    .line 86
    .line 87
    .line 88
    :goto_2
    div-float/2addr p0, v0

    .line 89
    return p0

    .line 90
    :pswitch_1
    long-to-float p0, v4

    .line 91
    const v0, 0x4cbebc20    # 1.0E8f

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :pswitch_2
    long-to-float p0, v4

    .line 96
    const v0, 0x4b189680    # 1.0E7f

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :pswitch_3
    long-to-float p0, v4

    .line 101
    const v0, 0x49742400    # 1000000.0f

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :pswitch_4
    long-to-float p0, v4

    .line 106
    const v0, 0x47c35000    # 100000.0f

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :pswitch_5
    long-to-float p0, v4

    .line 111
    const v0, 0x461c4000    # 10000.0f

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :pswitch_6
    long-to-float p0, v4

    .line 116
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :pswitch_7
    long-to-float p0, v4

    .line 120
    const/high16 v0, 0x42c80000    # 100.0f

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :pswitch_8
    long-to-float p0, v4

    .line 124
    const/high16 v0, 0x41200000    # 10.0f

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :pswitch_9
    long-to-float p0, v4

    .line 128
    return p0

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static M(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljava/lang/reflect/Type;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->i0(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {v0, p0, p1}, Lcom/alibaba/fastjson/util/TypeUtils;->F0(Ljava/lang/Class;[Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/ParameterizedType;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    new-instance v0, Lcom/alibaba/fastjson/util/GenericArrayTypeImpl;

    .line 36
    .line 37
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .line 38
    .line 39
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/util/TypeUtils;->M(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/util/GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    .line 48
    .line 49
    .line 50
    return-object v0

    .line 51
    :cond_2
    return-object p0
.end method

.method static M0(Ljava/lang/reflect/AccessibleObject;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    const/4 v0, 0x1

    .line 14
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    const/4 p0, 0x0

    .line 19
    sput-boolean p0, Lcom/alibaba/fastjson/util/TypeUtils;->d:Z

    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method public static N(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0}, Lcom/alibaba/fastjson/a;->getMixInAnnotations(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    instance-of v2, v1, Ljava/lang/Class;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    check-cast v1, Ljava/lang/Class;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    :goto_0
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_3

    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v1}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-nez v3, :cond_2

    .line 29
    .line 30
    array-length v4, v1

    .line 31
    if-lez v4, :cond_2

    .line 32
    .line 33
    array-length v4, v1

    .line 34
    move v5, v2

    .line 35
    :goto_1
    if-ge v5, v4, :cond_2

    .line 36
    .line 37
    aget-object v3, v1, v5

    .line 38
    .line 39
    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v3, p1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    :goto_2
    if-eqz v3, :cond_3

    .line 54
    .line 55
    return-object v3

    .line 56
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    if-nez v0, :cond_5

    .line 61
    .line 62
    array-length v1, p0

    .line 63
    if-lez v1, :cond_5

    .line 64
    .line 65
    array-length v1, p0

    .line 66
    :goto_3
    if-ge v2, v1, :cond_5

    .line 67
    .line 68
    aget-object v0, p0, v2

    .line 69
    .line 70
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    goto :goto_4

    .line 81
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_5
    :goto_4
    return-object v0
.end method

.method public static N0(Ljava/math/BigDecimal;)S
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, -0x64

    .line 10
    .line 11
    if-lt v0, v1, :cond_1

    .line 12
    .line 13
    const/16 v1, 0x64

    .line 14
    .line 15
    if-gt v0, v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0

    .line 22
    :cond_1
    invoke-virtual {p0}, Ljava/math/BigDecimal;->shortValueExact()S

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0
.end method

.method public static O(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Lcom/alibaba/fastjson/a;->getMixInAnnotations(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    instance-of v2, v1, Ljava/lang/Class;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    check-cast v1, Ljava/lang/Class;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v1, v3

    .line 22
    :goto_0
    if-eqz v1, :cond_3

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    :goto_1
    if-eqz v1, :cond_1

    .line 29
    .line 30
    const-class v2, Ljava/lang/Object;

    .line 31
    .line 32
    if-eq v1, v2, :cond_1

    .line 33
    .line 34
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 35
    .line 36
    .line 37
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_2

    .line 39
    :catch_0
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    :goto_2
    if-nez v3, :cond_2

    .line 45
    .line 46
    return-object v0

    .line 47
    :cond_2
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    if-eqz p0, :cond_3

    .line 52
    .line 53
    return-object p0

    .line 54
    :cond_3
    return-object v0
.end method

.method public static O0(Ljava/lang/String;)Ljava/util/Locale;
    .locals 4

    .line 1
    const-string v0, "_"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    array-length v0, p0

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne v0, v2, :cond_0

    .line 11
    .line 12
    new-instance v0, Ljava/util/Locale;

    .line 13
    .line 14
    aget-object p0, p0, v1

    .line 15
    .line 16
    invoke-direct {v0, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    array-length v0, p0

    .line 21
    const/4 v3, 0x2

    .line 22
    if-ne v0, v3, :cond_1

    .line 23
    .line 24
    new-instance v0, Ljava/util/Locale;

    .line 25
    .line 26
    aget-object v1, p0, v1

    .line 27
    .line 28
    aget-object p0, p0, v2

    .line 29
    .line 30
    invoke-direct {v0, v1, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-object v0

    .line 34
    :cond_1
    new-instance v0, Ljava/util/Locale;

    .line 35
    .line 36
    aget-object v1, p0, v1

    .line 37
    .line 38
    aget-object v2, p0, v2

    .line 39
    .line 40
    aget-object p0, p0, v3

    .line 41
    .line 42
    invoke-direct {v0, v1, v2, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-object v0
.end method

.method public static P(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Lcom/alibaba/fastjson/a;->getMixInAnnotations(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    instance-of v2, v1, Ljava/lang/Class;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    check-cast v1, Ljava/lang/Class;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v1, v3

    .line 22
    :goto_0
    if-eqz v1, :cond_3

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    :goto_1
    if-eqz v1, :cond_1

    .line 33
    .line 34
    const-class v4, Ljava/lang/Object;

    .line 35
    .line 36
    if-eq v1, v4, :cond_1

    .line 37
    .line 38
    :try_start_0
    invoke-virtual {v1, v2, p0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 39
    .line 40
    .line 41
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_2

    .line 43
    :catch_0
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    :goto_2
    if-nez v3, :cond_2

    .line 49
    .line 50
    return-object v0

    .line 51
    :cond_2
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    if-eqz p0, :cond_3

    .line 56
    .line 57
    return-object p0

    .line 58
    :cond_3
    return-object v0
.end method

.method public static P0(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 3

    .line 1
    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->i:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    :try_start_0
    const-string v1, "java.util.Optional"

    .line 7
    .line 8
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    sput-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->j:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    :catch_0
    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->i:Z

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->i:Z

    .line 19
    .line 20
    throw p0

    .line 21
    :cond_0
    :goto_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    move-object v0, p0

    .line 26
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    sget-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->j:Ljava/lang/Class;

    .line 33
    .line 34
    if-ne v1, v2, :cond_1

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const/4 v0, 0x0

    .line 41
    aget-object p0, p0, v0

    .line 42
    .line 43
    :cond_1
    return-object p0
.end method

.method public static Q(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Ljava/lang/Class;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    check-cast p0, Ljava/lang/Class;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->Q(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    .line 33
    .line 34
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    aget-object p0, p0, v1

    .line 39
    .line 40
    instance-of v0, p0, Ljava/lang/Class;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    check-cast p0, Ljava/lang/Class;

    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_2
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->Q(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :cond_3
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    .line 53
    .line 54
    if-eqz v0, :cond_4

    .line 55
    .line 56
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .line 57
    .line 58
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    array-length v0, p0

    .line 63
    const/4 v2, 0x1

    .line 64
    if-ne v0, v2, :cond_4

    .line 65
    .line 66
    aget-object p0, p0, v1

    .line 67
    .line 68
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->Q(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0

    .line 73
    :cond_4
    const-class p0, Ljava/lang/Object;

    .line 74
    .line 75
    return-object p0
.end method

.method public static R(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->C:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Class;

    .line 8
    .line 9
    return-object p0
.end method

.method public static S(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 4

    .line 1
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 6
    .line 7
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 v0, 0x0

    .line 12
    aget-object p0, p0, v0

    .line 13
    .line 14
    instance-of v1, p0, Ljava/lang/reflect/WildcardType;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    move-object v1, p0

    .line 19
    check-cast v1, Ljava/lang/reflect/WildcardType;

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    array-length v2, v1

    .line 26
    const/4 v3, 0x1

    .line 27
    if-ne v2, v3, :cond_0

    .line 28
    .line 29
    aget-object p0, v1, v0

    .line 30
    .line 31
    :cond_0
    instance-of v0, p0, Ljava/lang/Class;

    .line 32
    .line 33
    const-string v1, "can not create ASMParser"

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    check-cast p0, Ljava/lang/Class;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    return-object p0

    .line 50
    :cond_1
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    .line 51
    .line 52
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p0

    .line 56
    :cond_2
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    .line 57
    .line 58
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p0

    .line 62
    :cond_3
    const-class p0, Ljava/lang/Object;

    .line 63
    .line 64
    return-object p0
.end method

.method private static T(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "java."

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-class p0, Ljava/lang/Object;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->W(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->V(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :goto_0
    return-object p0
.end method

.method private static U(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;
    .locals 3

    .line 1
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-class v1, Ljava/util/Collection;

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    aget-object p0, p0, v0

    .line 15
    .line 16
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->k0(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_0
    check-cast v0, Ljava/lang/Class;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1, p0}, Lcom/alibaba/fastjson/util/TypeUtils;->F([Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Ljava/util/Map;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->W(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->i0(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    array-length v2, v0

    .line 50
    if-lez v2, :cond_1

    .line 51
    .line 52
    invoke-static {v1, v0, p0}, Lcom/alibaba/fastjson/util/TypeUtils;->F0(Ljava/lang/Class;[Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/ParameterizedType;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->U(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->T(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    :goto_0
    return-object p0

    .line 66
    :cond_2
    check-cast v0, Ljava/lang/Class;

    .line 67
    .line 68
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->T(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0
.end method

.method public static V(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 6
    .line 7
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->U(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    instance-of v0, p0, Ljava/lang/Class;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    check-cast p0, Ljava/lang/Class;

    .line 17
    .line 18
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->T(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_1
    const-class p0, Ljava/lang/Object;

    .line 24
    .line 25
    return-object p0
.end method

.method private static W(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    :goto_0
    if-ge v3, v1, :cond_2

    .line 9
    .line 10
    aget-object v4, v0, v3

    .line 11
    .line 12
    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->i0(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    const-class v6, Ljava/util/Collection;

    .line 17
    .line 18
    if-ne v5, v6, :cond_0

    .line 19
    .line 20
    return-object v4

    .line 21
    :cond_0
    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-eqz v5, :cond_1

    .line 26
    .line 27
    move-object v2, v4

    .line 28
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    if-nez v2, :cond_3

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    :cond_3
    return-object v2
.end method

.method public static X(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;
    .locals 7

    .line 1
    array-length v0, p2

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_2

    .line 5
    .line 6
    aget-object v3, p2, v2

    .line 7
    .line 8
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    if-eqz v5, :cond_0

    .line 17
    .line 18
    return-object v3

    .line 19
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    const/4 v6, 0x2

    .line 24
    if-le v5, v6, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    const/16 v6, 0x61

    .line 31
    .line 32
    if-lt v5, v6, :cond_1

    .line 33
    .line 34
    const/16 v6, 0x7a

    .line 35
    .line 36
    if-gt v5, v6, :cond_1

    .line 37
    .line 38
    const/4 v5, 0x1

    .line 39
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    const/16 v6, 0x41

    .line 44
    .line 45
    if-lt v5, v6, :cond_1

    .line 46
    .line 47
    const/16 v6, 0x5a

    .line 48
    .line 49
    if-gt v5, v6, :cond_1

    .line 50
    .line 51
    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_1

    .line 56
    .line 57
    return-object v3

    .line 58
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    if-eqz p0, :cond_3

    .line 66
    .line 67
    const-class p2, Ljava/lang/Object;

    .line 68
    .line 69
    if-eq p0, p2, :cond_3

    .line 70
    .line 71
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->X(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    return-object p0

    .line 80
    :cond_3
    const/4 p0, 0x0

    .line 81
    return-object p0
.end method

.method private static Y(Ljava/lang/Class;ZLjava/util/Map;)Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Lz4/d;

    .line 7
    .line 8
    invoke-static {p0, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->N(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lz4/d;

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-interface {p0}, Lz4/d;->orders()[Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    if-eqz p0, :cond_4

    .line 23
    .line 24
    array-length v1, p0

    .line 25
    if-lez v1, :cond_4

    .line 26
    .line 27
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 28
    .line 29
    invoke-interface {p2}, Ljava/util/Map;->size()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-direct {p1, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 34
    .line 35
    .line 36
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Lcom/alibaba/fastjson/util/d;

    .line 55
    .line 56
    iget-object v2, v1, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p1, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    array-length p2, p0

    .line 63
    const/4 v1, 0x0

    .line 64
    :goto_2
    if-ge v1, p2, :cond_3

    .line 65
    .line 66
    aget-object v2, p0, v1

    .line 67
    .line 68
    invoke-virtual {p1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    check-cast v3, Lcom/alibaba/fastjson/util/d;

    .line 73
    .line 74
    if-eqz v3, :cond_2

    .line 75
    .line 76
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_3
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 90
    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_4
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 98
    .line 99
    .line 100
    if-eqz p1, :cond_5

    .line 101
    .line 102
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 103
    .line 104
    .line 105
    :cond_5
    :goto_3
    return-object v0
.end method

.method public static Z(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    instance-of v0, p0, Ljava/lang/Class;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    check-cast p0, Ljava/lang/Class;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->Z(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :cond_1
    return-object p0
.end method

.method private static a()V
    .locals 10

    .line 1
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->C:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    const-string v1, "byte"

    .line 4
    .line 5
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 6
    .line 7
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->C:Ljava/util/concurrent/ConcurrentMap;

    .line 11
    .line 12
    const-string v1, "short"

    .line 13
    .line 14
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 15
    .line 16
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->C:Ljava/util/concurrent/ConcurrentMap;

    .line 20
    .line 21
    const-string v1, "int"

    .line 22
    .line 23
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 24
    .line 25
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->C:Ljava/util/concurrent/ConcurrentMap;

    .line 29
    .line 30
    const-string v1, "long"

    .line 31
    .line 32
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 33
    .line 34
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->C:Ljava/util/concurrent/ConcurrentMap;

    .line 38
    .line 39
    const-string v1, "float"

    .line 40
    .line 41
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 42
    .line 43
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->C:Ljava/util/concurrent/ConcurrentMap;

    .line 47
    .line 48
    const-string v1, "double"

    .line 49
    .line 50
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 51
    .line 52
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->C:Ljava/util/concurrent/ConcurrentMap;

    .line 56
    .line 57
    const-string v1, "boolean"

    .line 58
    .line 59
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 60
    .line 61
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->C:Ljava/util/concurrent/ConcurrentMap;

    .line 65
    .line 66
    const-string v1, "char"

    .line 67
    .line 68
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 69
    .line 70
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->C:Ljava/util/concurrent/ConcurrentMap;

    .line 74
    .line 75
    const-string v1, "[byte"

    .line 76
    .line 77
    const-class v2, [B

    .line 78
    .line 79
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->C:Ljava/util/concurrent/ConcurrentMap;

    .line 83
    .line 84
    const-string v1, "[short"

    .line 85
    .line 86
    const-class v3, [S

    .line 87
    .line 88
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->C:Ljava/util/concurrent/ConcurrentMap;

    .line 92
    .line 93
    const-string v1, "[int"

    .line 94
    .line 95
    const-class v4, [I

    .line 96
    .line 97
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->C:Ljava/util/concurrent/ConcurrentMap;

    .line 101
    .line 102
    const-string v1, "[long"

    .line 103
    .line 104
    const-class v5, [J

    .line 105
    .line 106
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->C:Ljava/util/concurrent/ConcurrentMap;

    .line 110
    .line 111
    const-string v1, "[float"

    .line 112
    .line 113
    const-class v6, [F

    .line 114
    .line 115
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->C:Ljava/util/concurrent/ConcurrentMap;

    .line 119
    .line 120
    const-string v1, "[double"

    .line 121
    .line 122
    const-class v7, [D

    .line 123
    .line 124
    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->C:Ljava/util/concurrent/ConcurrentMap;

    .line 128
    .line 129
    const-string v1, "[boolean"

    .line 130
    .line 131
    const-class v8, [Z

    .line 132
    .line 133
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->C:Ljava/util/concurrent/ConcurrentMap;

    .line 137
    .line 138
    const-string v1, "[char"

    .line 139
    .line 140
    const-class v9, [C

    .line 141
    .line 142
    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->C:Ljava/util/concurrent/ConcurrentMap;

    .line 146
    .line 147
    const-string v1, "[B"

    .line 148
    .line 149
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->C:Ljava/util/concurrent/ConcurrentMap;

    .line 153
    .line 154
    const-string v1, "[S"

    .line 155
    .line 156
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->C:Ljava/util/concurrent/ConcurrentMap;

    .line 160
    .line 161
    const-string v1, "[I"

    .line 162
    .line 163
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->C:Ljava/util/concurrent/ConcurrentMap;

    .line 167
    .line 168
    const-string v1, "[J"

    .line 169
    .line 170
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->C:Ljava/util/concurrent/ConcurrentMap;

    .line 174
    .line 175
    const-string v1, "[F"

    .line 176
    .line 177
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->C:Ljava/util/concurrent/ConcurrentMap;

    .line 181
    .line 182
    const-string v1, "[D"

    .line 183
    .line 184
    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->C:Ljava/util/concurrent/ConcurrentMap;

    .line 188
    .line 189
    const-string v1, "[C"

    .line 190
    .line 191
    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->C:Ljava/util/concurrent/ConcurrentMap;

    .line 195
    .line 196
    const-string v1, "[Z"

    .line 197
    .line 198
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    const-string v0, "java.lang.AutoCloseable"

    .line 202
    .line 203
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->A0(Ljava/lang/String;)Ljava/lang/Class;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 208
    .line 209
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    const/16 v2, 0x45

    .line 214
    .line 215
    new-array v3, v2, [Ljava/lang/Class;

    .line 216
    .line 217
    const-class v4, Ljava/lang/Object;

    .line 218
    .line 219
    const/4 v5, 0x0

    .line 220
    aput-object v4, v3, v5

    .line 221
    .line 222
    const-class v4, Ljava/lang/Cloneable;

    .line 223
    .line 224
    const/4 v6, 0x1

    .line 225
    aput-object v4, v3, v6

    .line 226
    .line 227
    const/4 v4, 0x2

    .line 228
    aput-object v0, v3, v4

    .line 229
    .line 230
    const-class v0, Ljava/lang/Exception;

    .line 231
    .line 232
    const/4 v4, 0x3

    .line 233
    aput-object v0, v3, v4

    .line 234
    .line 235
    const-class v0, Ljava/lang/RuntimeException;

    .line 236
    .line 237
    const/4 v4, 0x4

    .line 238
    aput-object v0, v3, v4

    .line 239
    .line 240
    const-class v0, Ljava/lang/IllegalAccessError;

    .line 241
    .line 242
    const/4 v4, 0x5

    .line 243
    aput-object v0, v3, v4

    .line 244
    .line 245
    const-class v0, Ljava/lang/IllegalAccessException;

    .line 246
    .line 247
    const/4 v4, 0x6

    .line 248
    aput-object v0, v3, v4

    .line 249
    .line 250
    const-class v0, Ljava/lang/IllegalArgumentException;

    .line 251
    .line 252
    const/4 v4, 0x7

    .line 253
    aput-object v0, v3, v4

    .line 254
    .line 255
    const-class v0, Ljava/lang/IllegalMonitorStateException;

    .line 256
    .line 257
    const/16 v4, 0x8

    .line 258
    .line 259
    aput-object v0, v3, v4

    .line 260
    .line 261
    const-class v0, Ljava/lang/IllegalStateException;

    .line 262
    .line 263
    const/16 v4, 0x9

    .line 264
    .line 265
    aput-object v0, v3, v4

    .line 266
    .line 267
    const-class v0, Ljava/lang/IllegalThreadStateException;

    .line 268
    .line 269
    const/16 v4, 0xa

    .line 270
    .line 271
    aput-object v0, v3, v4

    .line 272
    .line 273
    const-class v0, Ljava/lang/IndexOutOfBoundsException;

    .line 274
    .line 275
    const/16 v4, 0xb

    .line 276
    .line 277
    aput-object v0, v3, v4

    .line 278
    .line 279
    const-class v0, Ljava/lang/InstantiationError;

    .line 280
    .line 281
    const/16 v4, 0xc

    .line 282
    .line 283
    aput-object v0, v3, v4

    .line 284
    .line 285
    const-class v0, Ljava/lang/InstantiationException;

    .line 286
    .line 287
    const/16 v4, 0xd

    .line 288
    .line 289
    aput-object v0, v3, v4

    .line 290
    .line 291
    const-class v0, Ljava/lang/InternalError;

    .line 292
    .line 293
    const/16 v4, 0xe

    .line 294
    .line 295
    aput-object v0, v3, v4

    .line 296
    .line 297
    const-class v0, Ljava/lang/InterruptedException;

    .line 298
    .line 299
    const/16 v4, 0xf

    .line 300
    .line 301
    aput-object v0, v3, v4

    .line 302
    .line 303
    const-class v0, Ljava/lang/LinkageError;

    .line 304
    .line 305
    const/16 v4, 0x10

    .line 306
    .line 307
    aput-object v0, v3, v4

    .line 308
    .line 309
    const-class v0, Ljava/lang/NegativeArraySizeException;

    .line 310
    .line 311
    const/16 v4, 0x11

    .line 312
    .line 313
    aput-object v0, v3, v4

    .line 314
    .line 315
    const-class v0, Ljava/lang/NoClassDefFoundError;

    .line 316
    .line 317
    const/16 v4, 0x12

    .line 318
    .line 319
    aput-object v0, v3, v4

    .line 320
    .line 321
    const-class v0, Ljava/lang/NoSuchFieldError;

    .line 322
    .line 323
    const/16 v4, 0x13

    .line 324
    .line 325
    aput-object v0, v3, v4

    .line 326
    .line 327
    const-class v0, Ljava/lang/NoSuchFieldException;

    .line 328
    .line 329
    const/16 v4, 0x14

    .line 330
    .line 331
    aput-object v0, v3, v4

    .line 332
    .line 333
    const-class v0, Ljava/lang/NoSuchMethodError;

    .line 334
    .line 335
    const/16 v4, 0x15

    .line 336
    .line 337
    aput-object v0, v3, v4

    .line 338
    .line 339
    const-class v0, Ljava/lang/NoSuchMethodException;

    .line 340
    .line 341
    const/16 v4, 0x16

    .line 342
    .line 343
    aput-object v0, v3, v4

    .line 344
    .line 345
    const-class v0, Ljava/lang/NullPointerException;

    .line 346
    .line 347
    const/16 v4, 0x17

    .line 348
    .line 349
    aput-object v0, v3, v4

    .line 350
    .line 351
    const-class v0, Ljava/lang/NumberFormatException;

    .line 352
    .line 353
    const/16 v4, 0x18

    .line 354
    .line 355
    aput-object v0, v3, v4

    .line 356
    .line 357
    const-class v0, Ljava/lang/OutOfMemoryError;

    .line 358
    .line 359
    const/16 v4, 0x19

    .line 360
    .line 361
    aput-object v0, v3, v4

    .line 362
    .line 363
    const-class v0, Ljava/lang/SecurityException;

    .line 364
    .line 365
    const/16 v4, 0x1a

    .line 366
    .line 367
    aput-object v0, v3, v4

    .line 368
    .line 369
    const-class v0, Ljava/lang/StackOverflowError;

    .line 370
    .line 371
    const/16 v4, 0x1b

    .line 372
    .line 373
    aput-object v0, v3, v4

    .line 374
    .line 375
    const-class v0, Ljava/lang/StringIndexOutOfBoundsException;

    .line 376
    .line 377
    const/16 v4, 0x1c

    .line 378
    .line 379
    aput-object v0, v3, v4

    .line 380
    .line 381
    const-class v0, Ljava/lang/TypeNotPresentException;

    .line 382
    .line 383
    const/16 v4, 0x1d

    .line 384
    .line 385
    aput-object v0, v3, v4

    .line 386
    .line 387
    const-class v0, Ljava/lang/VerifyError;

    .line 388
    .line 389
    const/16 v4, 0x1e

    .line 390
    .line 391
    aput-object v0, v3, v4

    .line 392
    .line 393
    const-class v0, Ljava/lang/StackTraceElement;

    .line 394
    .line 395
    const/16 v4, 0x1f

    .line 396
    .line 397
    aput-object v0, v3, v4

    .line 398
    .line 399
    const-class v0, Ljava/util/HashMap;

    .line 400
    .line 401
    const/16 v4, 0x20

    .line 402
    .line 403
    aput-object v0, v3, v4

    .line 404
    .line 405
    const-class v0, Ljava/util/LinkedHashMap;

    .line 406
    .line 407
    const/16 v4, 0x21

    .line 408
    .line 409
    aput-object v0, v3, v4

    .line 410
    .line 411
    const-class v4, Ljava/util/Hashtable;

    .line 412
    .line 413
    const/16 v7, 0x22

    .line 414
    .line 415
    aput-object v4, v3, v7

    .line 416
    .line 417
    const-class v4, Ljava/util/TreeMap;

    .line 418
    .line 419
    const/16 v7, 0x23

    .line 420
    .line 421
    aput-object v4, v3, v7

    .line 422
    .line 423
    const-class v4, Ljava/util/IdentityHashMap;

    .line 424
    .line 425
    const/16 v7, 0x24

    .line 426
    .line 427
    aput-object v4, v3, v7

    .line 428
    .line 429
    const-class v4, Ljava/util/WeakHashMap;

    .line 430
    .line 431
    const/16 v7, 0x25

    .line 432
    .line 433
    aput-object v4, v3, v7

    .line 434
    .line 435
    const/16 v4, 0x26

    .line 436
    .line 437
    aput-object v0, v3, v4

    .line 438
    .line 439
    const-class v0, Ljava/util/HashSet;

    .line 440
    .line 441
    const/16 v4, 0x27

    .line 442
    .line 443
    aput-object v0, v3, v4

    .line 444
    .line 445
    const-class v0, Ljava/util/LinkedHashSet;

    .line 446
    .line 447
    const/16 v4, 0x28

    .line 448
    .line 449
    aput-object v0, v3, v4

    .line 450
    .line 451
    const-class v0, Ljava/util/TreeSet;

    .line 452
    .line 453
    const/16 v4, 0x29

    .line 454
    .line 455
    aput-object v0, v3, v4

    .line 456
    .line 457
    const-class v0, Ljava/util/ArrayList;

    .line 458
    .line 459
    const/16 v4, 0x2a

    .line 460
    .line 461
    aput-object v0, v3, v4

    .line 462
    .line 463
    const-class v0, Ljava/util/concurrent/TimeUnit;

    .line 464
    .line 465
    const/16 v4, 0x2b

    .line 466
    .line 467
    aput-object v0, v3, v4

    .line 468
    .line 469
    const-class v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 470
    .line 471
    const/16 v4, 0x2c

    .line 472
    .line 473
    aput-object v0, v3, v4

    .line 474
    .line 475
    const-class v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 476
    .line 477
    const/16 v4, 0x2d

    .line 478
    .line 479
    aput-object v0, v3, v4

    .line 480
    .line 481
    const-class v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 482
    .line 483
    const/16 v4, 0x2e

    .line 484
    .line 485
    aput-object v0, v3, v4

    .line 486
    .line 487
    const/16 v0, 0x2f

    .line 488
    .line 489
    aput-object v1, v3, v0

    .line 490
    .line 491
    const-class v0, Ljava/lang/Boolean;

    .line 492
    .line 493
    const/16 v1, 0x30

    .line 494
    .line 495
    aput-object v0, v3, v1

    .line 496
    .line 497
    const-class v0, Ljava/lang/Character;

    .line 498
    .line 499
    const/16 v1, 0x31

    .line 500
    .line 501
    aput-object v0, v3, v1

    .line 502
    .line 503
    const-class v0, Ljava/lang/Byte;

    .line 504
    .line 505
    const/16 v1, 0x32

    .line 506
    .line 507
    aput-object v0, v3, v1

    .line 508
    .line 509
    const-class v0, Ljava/lang/Short;

    .line 510
    .line 511
    const/16 v1, 0x33

    .line 512
    .line 513
    aput-object v0, v3, v1

    .line 514
    .line 515
    const-class v0, Ljava/lang/Integer;

    .line 516
    .line 517
    const/16 v1, 0x34

    .line 518
    .line 519
    aput-object v0, v3, v1

    .line 520
    .line 521
    const-class v0, Ljava/lang/Long;

    .line 522
    .line 523
    const/16 v1, 0x35

    .line 524
    .line 525
    aput-object v0, v3, v1

    .line 526
    .line 527
    const-class v0, Ljava/lang/Float;

    .line 528
    .line 529
    const/16 v1, 0x36

    .line 530
    .line 531
    aput-object v0, v3, v1

    .line 532
    .line 533
    const-class v0, Ljava/lang/Double;

    .line 534
    .line 535
    const/16 v1, 0x37

    .line 536
    .line 537
    aput-object v0, v3, v1

    .line 538
    .line 539
    const-class v0, Ljava/lang/Number;

    .line 540
    .line 541
    const/16 v1, 0x38

    .line 542
    .line 543
    aput-object v0, v3, v1

    .line 544
    .line 545
    const-class v0, Ljava/lang/String;

    .line 546
    .line 547
    const/16 v1, 0x39

    .line 548
    .line 549
    aput-object v0, v3, v1

    .line 550
    .line 551
    const-class v0, Ljava/math/BigDecimal;

    .line 552
    .line 553
    const/16 v1, 0x3a

    .line 554
    .line 555
    aput-object v0, v3, v1

    .line 556
    .line 557
    const-class v0, Ljava/math/BigInteger;

    .line 558
    .line 559
    const/16 v1, 0x3b

    .line 560
    .line 561
    aput-object v0, v3, v1

    .line 562
    .line 563
    const-class v0, Ljava/util/BitSet;

    .line 564
    .line 565
    const/16 v1, 0x3c

    .line 566
    .line 567
    aput-object v0, v3, v1

    .line 568
    .line 569
    const-class v0, Ljava/util/Calendar;

    .line 570
    .line 571
    const/16 v1, 0x3d

    .line 572
    .line 573
    aput-object v0, v3, v1

    .line 574
    .line 575
    const-class v0, Ljava/util/Date;

    .line 576
    .line 577
    const/16 v1, 0x3e

    .line 578
    .line 579
    aput-object v0, v3, v1

    .line 580
    .line 581
    const-class v0, Ljava/util/Locale;

    .line 582
    .line 583
    const/16 v1, 0x3f

    .line 584
    .line 585
    aput-object v0, v3, v1

    .line 586
    .line 587
    const-class v0, Ljava/util/UUID;

    .line 588
    .line 589
    const/16 v1, 0x40

    .line 590
    .line 591
    aput-object v0, v3, v1

    .line 592
    .line 593
    const-class v0, Ljava/text/SimpleDateFormat;

    .line 594
    .line 595
    const/16 v1, 0x41

    .line 596
    .line 597
    aput-object v0, v3, v1

    .line 598
    .line 599
    const-class v0, Lcom/alibaba/fastjson/JSONObject;

    .line 600
    .line 601
    const/16 v1, 0x42

    .line 602
    .line 603
    aput-object v0, v3, v1

    .line 604
    .line 605
    const-class v0, Lcom/alibaba/fastjson/c;

    .line 606
    .line 607
    const/16 v1, 0x43

    .line 608
    .line 609
    aput-object v0, v3, v1

    .line 610
    .line 611
    const-class v0, Lcom/alibaba/fastjson/JSONArray;

    .line 612
    .line 613
    const/16 v1, 0x44

    .line 614
    .line 615
    aput-object v0, v3, v1

    .line 616
    .line 617
    :goto_0
    if-ge v5, v2, :cond_1

    .line 618
    .line 619
    aget-object v0, v3, v5

    .line 620
    .line 621
    if-nez v0, :cond_0

    .line 622
    .line 623
    goto :goto_1

    .line 624
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->C:Ljava/util/concurrent/ConcurrentMap;

    .line 625
    .line 626
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 627
    .line 628
    .line 629
    move-result-object v4

    .line 630
    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    .line 632
    .line 633
    :goto_1
    add-int/2addr v5, v6

    .line 634
    goto :goto_0

    .line 635
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->T:Lcom/alibaba/fastjson/util/e;

    .line 636
    .line 637
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->C:Ljava/util/concurrent/ConcurrentMap;

    .line 638
    .line 639
    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/i;->b(Lcom/alibaba/fastjson/util/e;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    .line 641
    .line 642
    return-void
.end method

.method public static a0(Ljava/lang/Class;)[Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->v:Ljava/lang/reflect/Constructor;

    .line 3
    .line 4
    const-string v2, "kotlin.reflect.jvm.internal.KClassImpl"

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->u:Z

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-array v4, v3, [Ljava/lang/Class;

    .line 18
    .line 19
    const-class v5, Ljava/lang/Class;

    .line 20
    .line 21
    aput-object v5, v4, v0

    .line 22
    .line 23
    invoke-virtual {v1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    sput-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->v:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    sput-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->u:Z

    .line 31
    .line 32
    :cond_0
    :goto_0
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->v:Ljava/lang/reflect/Constructor;

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    return-object v4

    .line 38
    :cond_1
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->w:Ljava/lang/reflect/Method;

    .line 39
    .line 40
    if-nez v1, :cond_2

    .line 41
    .line 42
    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->u:Z

    .line 43
    .line 44
    if-nez v1, :cond_2

    .line 45
    .line 46
    :try_start_1
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const-string v2, "getConstructors"

    .line 51
    .line 52
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    sput-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->w:Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :catchall_1
    sput-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->u:Z

    .line 60
    .line 61
    :cond_2
    :goto_1
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->x:Ljava/lang/reflect/Method;

    .line 62
    .line 63
    if-nez v1, :cond_3

    .line 64
    .line 65
    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->u:Z

    .line 66
    .line 67
    if-nez v1, :cond_3

    .line 68
    .line 69
    :try_start_2
    const-class v1, Lkotlin/reflect/KFunction;

    .line 70
    .line 71
    const-string v2, "getParameters"

    .line 72
    .line 73
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    sput-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->x:Ljava/lang/reflect/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :catchall_2
    sput-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->u:Z

    .line 81
    .line 82
    :cond_3
    :goto_2
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->y:Ljava/lang/reflect/Method;

    .line 83
    .line 84
    if-nez v1, :cond_4

    .line 85
    .line 86
    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->u:Z

    .line 87
    .line 88
    if-nez v1, :cond_4

    .line 89
    .line 90
    :try_start_3
    const-class v1, Lkotlin/reflect/KParameter;

    .line 91
    .line 92
    const-string v2, "getName"

    .line 93
    .line 94
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    sput-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->y:Ljava/lang/reflect/Method;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :catchall_3
    sput-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->u:Z

    .line 102
    .line 103
    :cond_4
    :goto_3
    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->z:Z

    .line 104
    .line 105
    if-eqz v1, :cond_5

    .line 106
    .line 107
    return-object v4

    .line 108
    :cond_5
    :try_start_4
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->v:Ljava/lang/reflect/Constructor;

    .line 109
    .line 110
    new-array v2, v3, [Ljava/lang/Object;

    .line 111
    .line 112
    aput-object p0, v2, v0

    .line 113
    .line 114
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->w:Ljava/lang/reflect/Method;

    .line 119
    .line 120
    invoke-virtual {v1, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    check-cast p0, Ljava/lang/Iterable;

    .line 125
    .line 126
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    move-object v1, v4

    .line 131
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-eqz v2, :cond_7

    .line 136
    .line 137
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    sget-object v5, Lcom/alibaba/fastjson/util/TypeUtils;->x:Ljava/lang/reflect/Method;

    .line 142
    .line 143
    invoke-virtual {v5, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    check-cast v5, Ljava/util/List;

    .line 148
    .line 149
    if-eqz v1, :cond_6

    .line 150
    .line 151
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    if-nez v5, :cond_6

    .line 156
    .line 157
    goto :goto_5

    .line 158
    :catchall_4
    move-exception p0

    .line 159
    goto :goto_7

    .line 160
    :cond_6
    move-object v1, v2

    .line 161
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 162
    .line 163
    .line 164
    goto :goto_4

    .line 165
    :cond_7
    if-nez v1, :cond_8

    .line 166
    .line 167
    return-object v4

    .line 168
    :cond_8
    sget-object p0, Lcom/alibaba/fastjson/util/TypeUtils;->x:Ljava/lang/reflect/Method;

    .line 169
    .line 170
    invoke-virtual {p0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    check-cast p0, Ljava/util/List;

    .line 175
    .line 176
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    new-array v1, v1, [Ljava/lang/String;

    .line 181
    .line 182
    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    if-ge v0, v2, :cond_9

    .line 187
    .line 188
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    sget-object v5, Lcom/alibaba/fastjson/util/TypeUtils;->y:Ljava/lang/reflect/Method;

    .line 193
    .line 194
    invoke-virtual {v5, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    check-cast v2, Ljava/lang/String;

    .line 199
    .line 200
    aput-object v2, v1, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 201
    .line 202
    add-int/2addr v0, v3

    .line 203
    goto :goto_6

    .line 204
    :cond_9
    return-object v1

    .line 205
    :goto_7
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 206
    .line 207
    .line 208
    sput-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->z:Z

    .line 209
    .line 210
    return-object v4
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->C:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static b0([Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->c0([Ljava/lang/reflect/Constructor;[Ljava/lang/String;)Ljava/lang/reflect/Constructor;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static c(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lc5/f1;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->d(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;Z)Lc5/f1;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static c0([Ljava/lang/reflect/Constructor;[Ljava/lang/String;)Ljava/lang/reflect/Constructor;
    .locals 7

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    if-ge v2, v0, :cond_3

    .line 5
    .line 6
    aget-object v3, p0, v2

    .line 7
    .line 8
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    array-length v5, v4

    .line 15
    array-length v6, p1

    .line 16
    if-eq v5, v6, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    array-length v5, v4

    .line 20
    if-lez v5, :cond_1

    .line 21
    .line 22
    array-length v5, v4

    .line 23
    add-int/lit8 v5, v5, -0x1

    .line 24
    .line 25
    aget-object v5, v4, v5

    .line 26
    .line 27
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    const-string v6, "kotlin.jvm.internal.DefaultConstructorMarker"

    .line 32
    .line 33
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    if-eqz v1, :cond_2

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    array-length v5, v5

    .line 47
    array-length v4, v4

    .line 48
    if-lt v5, v4, :cond_2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    move-object v1, v3

    .line 52
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    return-object v1
.end method

.method public static d(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;Z)Lc5/f1;
    .locals 16

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    const-class v0, Lz4/d;

    .line 6
    .line 7
    invoke-static {v6, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->N(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    move-object v8, v1

    .line 12
    check-cast v8, Lz4/d;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v8, :cond_8

    .line 17
    .line 18
    invoke-interface {v8}, Lz4/d;->orders()[Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-interface {v8}, Lz4/d;->typeName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-nez v5, :cond_0

    .line 31
    .line 32
    move-object v4, v2

    .line 33
    :cond_0
    invoke-interface {v8}, Lz4/d;->naming()Lcom/alibaba/fastjson/PropertyNamingStrategy;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    sget-object v9, Lcom/alibaba/fastjson/PropertyNamingStrategy;->NeverUseThisValueExceptDefaultValue:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    .line 38
    .line 39
    if-eq v5, v9, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move-object/from16 v5, p2

    .line 43
    .line 44
    :goto_0
    invoke-interface {v8}, Lz4/d;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 45
    .line 46
    .line 47
    move-result-object v9

    .line 48
    invoke-static {v9}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    .line 49
    .line 50
    .line 51
    move-result v9

    .line 52
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    move-result-object v10

    .line 56
    move-object v11, v2

    .line 57
    :goto_1
    if-eqz v10, :cond_4

    .line 58
    .line 59
    const-class v12, Ljava/lang/Object;

    .line 60
    .line 61
    if-eq v10, v12, :cond_4

    .line 62
    .line 63
    invoke-static {v10, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->N(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 64
    .line 65
    .line 66
    move-result-object v12

    .line 67
    check-cast v12, Lz4/d;

    .line 68
    .line 69
    if-nez v12, :cond_2

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_2
    invoke-interface {v12}, Lz4/d;->typeKey()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v11

    .line 76
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 77
    .line 78
    .line 79
    move-result v12

    .line 80
    if-eqz v12, :cond_3

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_3
    invoke-virtual {v10}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    move-result-object v10

    .line 87
    goto :goto_1

    .line 88
    :cond_4
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    move-result-object v10

    .line 92
    array-length v12, v10

    .line 93
    move v13, v1

    .line 94
    :goto_3
    if-ge v13, v12, :cond_6

    .line 95
    .line 96
    aget-object v14, v10, v13

    .line 97
    .line 98
    invoke-static {v14, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->N(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 99
    .line 100
    .line 101
    move-result-object v14

    .line 102
    check-cast v14, Lz4/d;

    .line 103
    .line 104
    if-eqz v14, :cond_5

    .line 105
    .line 106
    invoke-interface {v14}, Lz4/d;->typeKey()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v11

    .line 110
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 111
    .line 112
    .line 113
    move-result v14

    .line 114
    if-eqz v14, :cond_5

    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_5
    add-int/lit8 v13, v13, 0x1

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_6
    :goto_4
    if-eqz v11, :cond_7

    .line 121
    .line 122
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-nez v0, :cond_7

    .line 127
    .line 128
    goto :goto_5

    .line 129
    :cond_7
    move-object v2, v11

    .line 130
    :goto_5
    move-object v11, v2

    .line 131
    move-object v10, v4

    .line 132
    move-object v12, v5

    .line 133
    move v13, v9

    .line 134
    move-object v9, v3

    .line 135
    goto :goto_6

    .line 136
    :cond_8
    move-object/from16 v12, p2

    .line 137
    .line 138
    move v13, v1

    .line 139
    move-object v9, v2

    .line 140
    move-object v10, v9

    .line 141
    move-object v11, v10

    .line 142
    :goto_6
    new-instance v14, Ljava/util/HashMap;

    .line 143
    .line 144
    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-static {v6, v14}, La5/h;->y(Ljava/lang/Class;Ljava/util/Map;)V

    .line 148
    .line 149
    .line 150
    if-eqz p3, :cond_9

    .line 151
    .line 152
    invoke-static {v6, v7, v1, v12}, Lcom/alibaba/fastjson/util/TypeUtils;->E(Ljava/lang/Class;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    goto :goto_7

    .line 157
    :cond_9
    const/4 v4, 0x0

    .line 158
    move-object/from16 v0, p0

    .line 159
    .line 160
    move-object v1, v8

    .line 161
    move-object/from16 v2, p1

    .line 162
    .line 163
    move-object v3, v14

    .line 164
    move-object v5, v12

    .line 165
    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/util/TypeUtils;->D(Ljava/lang/Class;Lz4/d;Ljava/util/Map;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    new-array v15, v1, [Lcom/alibaba/fastjson/util/d;

    .line 174
    .line 175
    invoke-interface {v0, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    if-eqz v9, :cond_b

    .line 179
    .line 180
    array-length v1, v9

    .line 181
    if-eqz v1, :cond_b

    .line 182
    .line 183
    if-eqz p3, :cond_a

    .line 184
    .line 185
    const/4 v0, 0x1

    .line 186
    invoke-static {v6, v7, v0, v12}, Lcom/alibaba/fastjson/util/TypeUtils;->E(Ljava/lang/Class;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    goto :goto_8

    .line 191
    :cond_a
    const/4 v4, 0x1

    .line 192
    move-object/from16 v0, p0

    .line 193
    .line 194
    move-object v1, v8

    .line 195
    move-object/from16 v2, p1

    .line 196
    .line 197
    move-object v3, v14

    .line 198
    move-object v5, v12

    .line 199
    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/util/TypeUtils;->D(Ljava/lang/Class;Lz4/d;Ljava/util/Map;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    goto :goto_8

    .line 204
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    .line 205
    .line 206
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 207
    .line 208
    .line 209
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 210
    .line 211
    .line 212
    move-object v0, v1

    .line 213
    :goto_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    new-array v1, v1, [Lcom/alibaba/fastjson/util/d;

    .line 218
    .line 219
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    invoke-static {v1, v15}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    if-eqz v0, :cond_c

    .line 227
    .line 228
    move-object v7, v15

    .line 229
    goto :goto_9

    .line 230
    :cond_c
    move-object v7, v1

    .line 231
    :goto_9
    new-instance v9, Lc5/f1;

    .line 232
    .line 233
    move-object v0, v9

    .line 234
    move-object/from16 v1, p0

    .line 235
    .line 236
    move-object v2, v8

    .line 237
    move-object v3, v10

    .line 238
    move-object v4, v11

    .line 239
    move v5, v13

    .line 240
    move-object v6, v15

    .line 241
    invoke-direct/range {v0 .. v7}, Lc5/f1;-><init>(Ljava/lang/Class;Lz4/d;Ljava/lang/String;Ljava/lang/String;I[Lcom/alibaba/fastjson/util/d;[Lcom/alibaba/fastjson/util/d;)V

    .line 242
    .line 243
    .line 244
    return-object v9
.end method

.method public static d0(Ljava/lang/reflect/Constructor;)[[Ljava/lang/annotation/Annotation;
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Lcom/alibaba/fastjson/a;->getMixInAnnotations(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    instance-of v2, v1, Ljava/lang/Class;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    check-cast v1, Ljava/lang/Class;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v1, v3

    .line 22
    :goto_0
    if-eqz v1, :cond_6

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    new-instance v2, Ljava/util/ArrayList;

    .line 29
    .line 30
    const/4 v4, 0x2

    .line 31
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    :goto_1
    if-eqz v4, :cond_1

    .line 39
    .line 40
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    move-object v5, v1

    .line 53
    :goto_2
    if-eqz v5, :cond_4

    .line 54
    .line 55
    const-class v6, Ljava/lang/Object;

    .line 56
    .line 57
    if-eq v5, v6, :cond_4

    .line 58
    .line 59
    if-eqz v4, :cond_3

    .line 60
    .line 61
    :try_start_0
    array-length v6, p0

    .line 62
    add-int/2addr v6, v4

    .line 63
    new-array v6, v6, [Ljava/lang/Class;

    .line 64
    .line 65
    array-length v7, p0

    .line 66
    const/4 v8, 0x0

    .line 67
    invoke-static {p0, v8, v6, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    .line 69
    .line 70
    move v7, v4

    .line 71
    :goto_3
    if-lez v7, :cond_2

    .line 72
    .line 73
    add-int/lit8 v8, v7, -0x1

    .line 74
    .line 75
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v9

    .line 79
    check-cast v9, Ljava/lang/Class;

    .line 80
    .line 81
    aput-object v9, v6, v8

    .line 82
    .line 83
    add-int/lit8 v7, v7, -0x1

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_2
    invoke-virtual {v1, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    :goto_4
    move-object v3, p0

    .line 91
    goto :goto_5

    .line 92
    :cond_3
    invoke-virtual {v1, p0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 93
    .line 94
    .line 95
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    goto :goto_4

    .line 97
    :catch_0
    add-int/lit8 v4, v4, -0x1

    .line 98
    .line 99
    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    goto :goto_2

    .line 104
    :cond_4
    :goto_5
    if-nez v3, :cond_5

    .line 105
    .line 106
    return-object v0

    .line 107
    :cond_5
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    if-eqz p0, :cond_6

    .line 112
    .line 113
    return-object p0

    .line 114
    :cond_6
    return-object v0
.end method

.method public static e(Ljava/math/BigDecimal;)B
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, -0x64

    .line 10
    .line 11
    if-lt v0, v1, :cond_1

    .line 12
    .line 13
    const/16 v1, 0x64

    .line 14
    .line 15
    if-gt v0, v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0

    .line 22
    :cond_1
    invoke-virtual {p0}, Ljava/math/BigDecimal;->byteValueExact()B

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0
.end method

.method public static e0(Ljava/lang/reflect/Method;)[[Ljava/lang/annotation/Annotation;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Lcom/alibaba/fastjson/a;->getMixInAnnotations(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    instance-of v2, v1, Ljava/lang/Class;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    check-cast v1, Ljava/lang/Class;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v1, v3

    .line 22
    :goto_0
    if-eqz v1, :cond_3

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    :goto_1
    if-eqz v1, :cond_1

    .line 33
    .line 34
    const-class v4, Ljava/lang/Object;

    .line 35
    .line 36
    if-eq v1, v4, :cond_1

    .line 37
    .line 38
    :try_start_0
    invoke-virtual {v1, v2, p0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 39
    .line 40
    .line 41
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_2

    .line 43
    :catch_0
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    :goto_2
    if-nez v3, :cond_2

    .line 49
    .line 50
    return-object v0

    .line 51
    :cond_2
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    if-eqz p0, :cond_3

    .line 56
    .line 57
    return-object p0

    .line 58
    :cond_3
    return-object v0
.end method

.method public static f(Ljava/lang/Object;Ljava/lang/Class;La5/h;)Ljava/lang/Object;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez p0, :cond_7

    .line 4
    .line 5
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 6
    .line 7
    if-ne p1, p0, :cond_0

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 15
    .line 16
    if-ne p1, p0, :cond_1

    .line 17
    .line 18
    const-wide/16 p0, 0x0

    .line 19
    .line 20
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_1
    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 26
    .line 27
    if-ne p1, p0, :cond_2

    .line 28
    .line 29
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :cond_2
    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 35
    .line 36
    if-ne p1, p0, :cond_3

    .line 37
    .line 38
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :cond_3
    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 44
    .line 45
    if-ne p1, p0, :cond_4

    .line 46
    .line 47
    const/4 p0, 0x0

    .line 48
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :cond_4
    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 54
    .line 55
    if-ne p1, p0, :cond_5

    .line 56
    .line 57
    const-wide/16 p0, 0x0

    .line 58
    .line 59
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0

    .line 64
    :cond_5
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 65
    .line 66
    if-ne p1, p0, :cond_6

    .line 67
    .line 68
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 69
    .line 70
    return-object p0

    .line 71
    :cond_6
    return-object v0

    .line 72
    :cond_7
    if-eqz p1, :cond_2f

    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    if-ne p1, v2, :cond_8

    .line 79
    .line 80
    return-object p0

    .line 81
    :cond_8
    instance-of v2, p0, Ljava/util/Map;

    .line 82
    .line 83
    if-eqz v2, :cond_b

    .line 84
    .line 85
    const-class v0, Ljava/util/Map;

    .line 86
    .line 87
    if-ne p1, v0, :cond_9

    .line 88
    .line 89
    return-object p0

    .line 90
    :cond_9
    move-object v0, p0

    .line 91
    check-cast v0, Ljava/util/Map;

    .line 92
    .line 93
    const-class v1, Ljava/lang/Object;

    .line 94
    .line 95
    if-ne p1, v1, :cond_a

    .line 96
    .line 97
    sget-object v1, Lcom/alibaba/fastjson/a;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    .line 98
    .line 99
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-nez v1, :cond_a

    .line 104
    .line 105
    return-object p0

    .line 106
    :cond_a
    invoke-static {v0, p1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->v(Ljava/util/Map;Ljava/lang/Class;La5/h;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    return-object p0

    .line 111
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    if-eqz v2, :cond_e

    .line 116
    .line 117
    instance-of v2, p0, Ljava/util/Collection;

    .line 118
    .line 119
    if-eqz v2, :cond_d

    .line 120
    .line 121
    check-cast p0, Ljava/util/Collection;

    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    if-eqz v2, :cond_c

    .line 144
    .line 145
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    invoke-static {v2, v3, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->f(Ljava/lang/Object;Ljava/lang/Class;La5/h;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    add-int/lit8 v1, v1, 0x1

    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_c
    return-object v0

    .line 164
    :cond_d
    const-class v1, [B

    .line 165
    .line 166
    if-ne p1, v1, :cond_e

    .line 167
    .line 168
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->m(Ljava/lang/Object;)[B

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    return-object p0

    .line 173
    :cond_e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    if-eqz v1, :cond_f

    .line 182
    .line 183
    return-object p0

    .line 184
    :cond_f
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 185
    .line 186
    if-eq p1, v1, :cond_2e

    .line 187
    .line 188
    const-class v1, Ljava/lang/Boolean;

    .line 189
    .line 190
    if-ne p1, v1, :cond_10

    .line 191
    .line 192
    goto/16 :goto_a

    .line 193
    .line 194
    :cond_10
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 195
    .line 196
    if-eq p1, v1, :cond_2d

    .line 197
    .line 198
    const-class v1, Ljava/lang/Byte;

    .line 199
    .line 200
    if-ne p1, v1, :cond_11

    .line 201
    .line 202
    goto/16 :goto_9

    .line 203
    .line 204
    :cond_11
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 205
    .line 206
    if-eq p1, v1, :cond_2c

    .line 207
    .line 208
    const-class v1, Ljava/lang/Character;

    .line 209
    .line 210
    if-ne p1, v1, :cond_12

    .line 211
    .line 212
    goto/16 :goto_8

    .line 213
    .line 214
    :cond_12
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 215
    .line 216
    if-eq p1, v1, :cond_2b

    .line 217
    .line 218
    const-class v1, Ljava/lang/Short;

    .line 219
    .line 220
    if-ne p1, v1, :cond_13

    .line 221
    .line 222
    goto/16 :goto_7

    .line 223
    .line 224
    :cond_13
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 225
    .line 226
    if-eq p1, v1, :cond_2a

    .line 227
    .line 228
    const-class v1, Ljava/lang/Integer;

    .line 229
    .line 230
    if-ne p1, v1, :cond_14

    .line 231
    .line 232
    goto/16 :goto_6

    .line 233
    .line 234
    :cond_14
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 235
    .line 236
    if-eq p1, v1, :cond_29

    .line 237
    .line 238
    const-class v1, Ljava/lang/Long;

    .line 239
    .line 240
    if-ne p1, v1, :cond_15

    .line 241
    .line 242
    goto/16 :goto_5

    .line 243
    .line 244
    :cond_15
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 245
    .line 246
    if-eq p1, v1, :cond_28

    .line 247
    .line 248
    const-class v1, Ljava/lang/Float;

    .line 249
    .line 250
    if-ne p1, v1, :cond_16

    .line 251
    .line 252
    goto/16 :goto_4

    .line 253
    .line 254
    :cond_16
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 255
    .line 256
    if-eq p1, v1, :cond_27

    .line 257
    .line 258
    const-class v1, Ljava/lang/Double;

    .line 259
    .line 260
    if-ne p1, v1, :cond_17

    .line 261
    .line 262
    goto/16 :goto_3

    .line 263
    .line 264
    :cond_17
    const-class v1, Ljava/lang/String;

    .line 265
    .line 266
    if-ne p1, v1, :cond_18

    .line 267
    .line 268
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->A(Ljava/lang/Object;)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object p0

    .line 272
    return-object p0

    .line 273
    :cond_18
    const-class v1, Ljava/math/BigDecimal;

    .line 274
    .line 275
    if-ne p1, v1, :cond_19

    .line 276
    .line 277
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->i(Ljava/lang/Object;)Ljava/math/BigDecimal;

    .line 278
    .line 279
    .line 280
    move-result-object p0

    .line 281
    return-object p0

    .line 282
    :cond_19
    const-class v1, Ljava/math/BigInteger;

    .line 283
    .line 284
    if-ne p1, v1, :cond_1a

    .line 285
    .line 286
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->j(Ljava/lang/Object;)Ljava/math/BigInteger;

    .line 287
    .line 288
    .line 289
    move-result-object p0

    .line 290
    return-object p0

    .line 291
    :cond_1a
    const-class v1, Ljava/util/Date;

    .line 292
    .line 293
    if-ne p1, v1, :cond_1b

    .line 294
    .line 295
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->o(Ljava/lang/Object;)Ljava/util/Date;

    .line 296
    .line 297
    .line 298
    move-result-object p0

    .line 299
    return-object p0

    .line 300
    :cond_1b
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->S:Lcom/alibaba/fastjson/util/c;

    .line 301
    .line 302
    invoke-static {v1, p0, p1}, Lcom/alibaba/fastjson/util/i;->a(Lcom/alibaba/fastjson/util/c;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    if-eqz v1, :cond_1c

    .line 307
    .line 308
    return-object v1

    .line 309
    :cond_1c
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    .line 310
    .line 311
    .line 312
    move-result v1

    .line 313
    if-eqz v1, :cond_1d

    .line 314
    .line 315
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->r(Ljava/lang/Object;Ljava/lang/Class;La5/h;)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object p0

    .line 319
    return-object p0

    .line 320
    :cond_1d
    const-class v1, Ljava/util/Calendar;

    .line 321
    .line 322
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 323
    .line 324
    .line 325
    move-result v2

    .line 326
    const-string v3, "can not cast to : "

    .line 327
    .line 328
    if-eqz v2, :cond_1f

    .line 329
    .line 330
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->o(Ljava/lang/Object;)Ljava/util/Date;

    .line 331
    .line 332
    .line 333
    move-result-object p0

    .line 334
    if-ne p1, v1, :cond_1e

    .line 335
    .line 336
    sget-object p1, Lcom/alibaba/fastjson/a;->defaultTimeZone:Ljava/util/TimeZone;

    .line 337
    .line 338
    sget-object p2, Lcom/alibaba/fastjson/a;->defaultLocale:Ljava/util/Locale;

    .line 339
    .line 340
    invoke-static {p1, p2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    .line 341
    .line 342
    .line 343
    move-result-object p1

    .line 344
    goto :goto_1

    .line 345
    :cond_1e
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object p2

    .line 349
    check-cast p2, Ljava/util/Calendar;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    .line 351
    move-object p1, p2

    .line 352
    :goto_1
    invoke-virtual {p1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 353
    .line 354
    .line 355
    return-object p1

    .line 356
    :catch_0
    move-exception p0

    .line 357
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    .line 358
    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    .line 360
    .line 361
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object p1

    .line 371
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object p1

    .line 378
    invoke-direct {p2, p1, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 379
    .line 380
    .line 381
    throw p2

    .line 382
    :cond_1f
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    const-string v2, "javax.xml.datatype.XMLGregorianCalendar"

    .line 387
    .line 388
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    move-result v2

    .line 392
    if-eqz v2, :cond_20

    .line 393
    .line 394
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->o(Ljava/lang/Object;)Ljava/util/Date;

    .line 395
    .line 396
    .line 397
    move-result-object p0

    .line 398
    sget-object p1, Lcom/alibaba/fastjson/a;->defaultTimeZone:Ljava/util/TimeZone;

    .line 399
    .line 400
    sget-object p2, Lcom/alibaba/fastjson/a;->defaultLocale:Ljava/util/Locale;

    .line 401
    .line 402
    invoke-static {p1, p2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    .line 403
    .line 404
    .line 405
    move-result-object p1

    .line 406
    invoke-virtual {p1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 407
    .line 408
    .line 409
    sget-object p0, Lc5/v;->b:Lc5/v;

    .line 410
    .line 411
    invoke-virtual {p0, p1}, Lc5/v;->f(Ljava/util/Calendar;)Ljavax/xml/datatype/XMLGregorianCalendar;

    .line 412
    .line 413
    .line 414
    move-result-object p0

    .line 415
    return-object p0

    .line 416
    :cond_20
    instance-of v2, p0, Ljava/lang/String;

    .line 417
    .line 418
    if-eqz v2, :cond_25

    .line 419
    .line 420
    move-object v2, p0

    .line 421
    check-cast v2, Ljava/lang/String;

    .line 422
    .line 423
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 424
    .line 425
    .line 426
    move-result v4

    .line 427
    if-eqz v4, :cond_24

    .line 428
    .line 429
    const-string v4, "null"

    .line 430
    .line 431
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 432
    .line 433
    .line 434
    move-result v4

    .line 435
    if-nez v4, :cond_24

    .line 436
    .line 437
    const-string v4, "NULL"

    .line 438
    .line 439
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 440
    .line 441
    .line 442
    move-result v4

    .line 443
    if-eqz v4, :cond_21

    .line 444
    .line 445
    goto :goto_2

    .line 446
    :cond_21
    const-class v0, Ljava/util/Currency;

    .line 447
    .line 448
    if-ne p1, v0, :cond_22

    .line 449
    .line 450
    invoke-static {v2}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    .line 451
    .line 452
    .line 453
    move-result-object p0

    .line 454
    return-object p0

    .line 455
    :cond_22
    const-class v0, Ljava/util/Locale;

    .line 456
    .line 457
    if-ne p1, v0, :cond_23

    .line 458
    .line 459
    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->O0(Ljava/lang/String;)Ljava/util/Locale;

    .line 460
    .line 461
    .line 462
    move-result-object p0

    .line 463
    return-object p0

    .line 464
    :cond_23
    const-string v0, "java.time."

    .line 465
    .line 466
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 467
    .line 468
    .line 469
    move-result v0

    .line 470
    if-eqz v0, :cond_25

    .line 471
    .line 472
    invoke-static {v2}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object p0

    .line 476
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object p0

    .line 480
    return-object p0

    .line 481
    :cond_24
    :goto_2
    return-object v0

    .line 482
    :cond_25
    invoke-virtual {p2, p1}, La5/h;->m(Ljava/lang/reflect/Type;)Lb5/b2;

    .line 483
    .line 484
    .line 485
    move-result-object p2

    .line 486
    if-eqz p2, :cond_26

    .line 487
    .line 488
    invoke-static {p0}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object p0

    .line 492
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    move-result-object p0

    .line 496
    return-object p0

    .line 497
    :cond_26
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    .line 498
    .line 499
    new-instance p2, Ljava/lang/StringBuilder;

    .line 500
    .line 501
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 502
    .line 503
    .line 504
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object p1

    .line 511
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object p1

    .line 518
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    throw p0

    .line 522
    :cond_27
    :goto_3
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->q(Ljava/lang/Object;)Ljava/lang/Double;

    .line 523
    .line 524
    .line 525
    move-result-object p0

    .line 526
    return-object p0

    .line 527
    :cond_28
    :goto_4
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->s(Ljava/lang/Object;)Ljava/lang/Float;

    .line 528
    .line 529
    .line 530
    move-result-object p0

    .line 531
    return-object p0

    .line 532
    :cond_29
    :goto_5
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->w(Ljava/lang/Object;)Ljava/lang/Long;

    .line 533
    .line 534
    .line 535
    move-result-object p0

    .line 536
    return-object p0

    .line 537
    :cond_2a
    :goto_6
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->t(Ljava/lang/Object;)Ljava/lang/Integer;

    .line 538
    .line 539
    .line 540
    move-result-object p0

    .line 541
    return-object p0

    .line 542
    :cond_2b
    :goto_7
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->x(Ljava/lang/Object;)Ljava/lang/Short;

    .line 543
    .line 544
    .line 545
    move-result-object p0

    .line 546
    return-object p0

    .line 547
    :cond_2c
    :goto_8
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->n(Ljava/lang/Object;)Ljava/lang/Character;

    .line 548
    .line 549
    .line 550
    move-result-object p0

    .line 551
    return-object p0

    .line 552
    :cond_2d
    :goto_9
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->l(Ljava/lang/Object;)Ljava/lang/Byte;

    .line 553
    .line 554
    .line 555
    move-result-object p0

    .line 556
    return-object p0

    .line 557
    :cond_2e
    :goto_a
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->k(Ljava/lang/Object;)Ljava/lang/Boolean;

    .line 558
    .line 559
    .line 560
    move-result-object p0

    .line 561
    return-object p0

    .line 562
    :cond_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 563
    .line 564
    const-string p1, "clazz is null"

    .line 565
    .line 566
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 567
    .line 568
    .line 569
    throw p0
.end method

.method public static f0(Ljava/lang/Class;)I
    .locals 1

    .line 1
    const-class v0, Lz4/d;

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->N(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lz4/d;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    :cond_0
    invoke-interface {p0}, Lz4/d;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public static g(Ljava/lang/Object;Ljava/lang/reflect/ParameterizedType;La5/h;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/alibaba/fastjson/JSONObject;

    .line 6
    .line 7
    const-class v2, Ljava/util/ArrayList;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const-class v4, Ljava/util/List;

    .line 11
    .line 12
    if-eq v0, v4, :cond_0

    .line 13
    .line 14
    if-ne v0, v2, :cond_4

    .line 15
    .line 16
    :cond_0
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    aget-object v5, v5, v3

    .line 21
    .line 22
    instance-of v6, p0, Ljava/util/List;

    .line 23
    .line 24
    if-eqz v6, :cond_4

    .line 25
    .line 26
    check-cast p0, Ljava/util/List;

    .line 27
    .line 28
    new-instance p1, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 35
    .line 36
    .line 37
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    instance-of v2, v5, Ljava/lang/Class;

    .line 52
    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    if-ne v2, v1, :cond_1

    .line 62
    .line 63
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 64
    .line 65
    move-object v2, v5

    .line 66
    check-cast v2, Ljava/lang/Class;

    .line 67
    .line 68
    invoke-virtual {v0, v2, p2, v3}, Lcom/alibaba/fastjson/JSONObject;->toJavaObject(Ljava/lang/Class;La5/h;I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    goto :goto_1

    .line 73
    :cond_1
    move-object v2, v5

    .line 74
    check-cast v2, Ljava/lang/Class;

    .line 75
    .line 76
    invoke-static {v0, v2, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->f(Ljava/lang/Object;Ljava/lang/Class;La5/h;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    goto :goto_1

    .line 81
    :cond_2
    invoke-static {v0, v5, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->h(Ljava/lang/Object;Ljava/lang/reflect/Type;La5/h;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    :goto_1
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    return-object p1

    .line 90
    :cond_4
    const-class v5, Ljava/util/TreeSet;

    .line 91
    .line 92
    const-class v6, Ljava/util/HashSet;

    .line 93
    .line 94
    const-class v7, Ljava/util/Set;

    .line 95
    .line 96
    if-eq v0, v7, :cond_5

    .line 97
    .line 98
    if-eq v0, v6, :cond_5

    .line 99
    .line 100
    if-eq v0, v5, :cond_5

    .line 101
    .line 102
    const-class v8, Ljava/util/Collection;

    .line 103
    .line 104
    if-eq v0, v8, :cond_5

    .line 105
    .line 106
    if-eq v0, v4, :cond_5

    .line 107
    .line 108
    if-ne v0, v2, :cond_c

    .line 109
    .line 110
    :cond_5
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    aget-object v2, v2, v3

    .line 115
    .line 116
    instance-of v4, p0, Ljava/lang/Iterable;

    .line 117
    .line 118
    if-eqz v4, :cond_c

    .line 119
    .line 120
    if-eq v0, v7, :cond_8

    .line 121
    .line 122
    if-ne v0, v6, :cond_6

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_6
    if-ne v0, v5, :cond_7

    .line 126
    .line 127
    new-instance p1, Ljava/util/TreeSet;

    .line 128
    .line 129
    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    .line 130
    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_7
    new-instance p1, Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_8
    :goto_2
    new-instance p1, Ljava/util/HashSet;

    .line 140
    .line 141
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 142
    .line 143
    .line 144
    :goto_3
    check-cast p0, Ljava/lang/Iterable;

    .line 145
    .line 146
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-eqz v0, :cond_b

    .line 155
    .line 156
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    instance-of v4, v2, Ljava/lang/Class;

    .line 161
    .line 162
    if-eqz v4, :cond_a

    .line 163
    .line 164
    if-eqz v0, :cond_9

    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    if-ne v4, v1, :cond_9

    .line 171
    .line 172
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 173
    .line 174
    move-object v4, v2

    .line 175
    check-cast v4, Ljava/lang/Class;

    .line 176
    .line 177
    invoke-virtual {v0, v4, p2, v3}, Lcom/alibaba/fastjson/JSONObject;->toJavaObject(Ljava/lang/Class;La5/h;I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    goto :goto_5

    .line 182
    :cond_9
    move-object v4, v2

    .line 183
    check-cast v4, Ljava/lang/Class;

    .line 184
    .line 185
    invoke-static {v0, v4, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->f(Ljava/lang/Object;Ljava/lang/Class;La5/h;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    goto :goto_5

    .line 190
    :cond_a
    invoke-static {v0, v2, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->h(Ljava/lang/Object;Ljava/lang/reflect/Type;La5/h;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    :goto_5
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_b
    return-object p1

    .line 199
    :cond_c
    const-class v1, Ljava/util/Map;

    .line 200
    .line 201
    const/4 v2, 0x1

    .line 202
    if-eq v0, v1, :cond_d

    .line 203
    .line 204
    const-class v1, Ljava/util/HashMap;

    .line 205
    .line 206
    if-ne v0, v1, :cond_f

    .line 207
    .line 208
    :cond_d
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    aget-object v1, v1, v3

    .line 213
    .line 214
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 215
    .line 216
    .line 217
    move-result-object v4

    .line 218
    aget-object v4, v4, v2

    .line 219
    .line 220
    instance-of v5, p0, Ljava/util/Map;

    .line 221
    .line 222
    if-eqz v5, :cond_f

    .line 223
    .line 224
    new-instance p1, Ljava/util/HashMap;

    .line 225
    .line 226
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 227
    .line 228
    .line 229
    check-cast p0, Ljava/util/Map;

    .line 230
    .line 231
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 232
    .line 233
    .line 234
    move-result-object p0

    .line 235
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    if-eqz v0, :cond_e

    .line 244
    .line 245
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    check-cast v0, Ljava/util/Map$Entry;

    .line 250
    .line 251
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    invoke-static {v2, v1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->h(Ljava/lang/Object;Ljava/lang/reflect/Type;La5/h;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-static {v0, v4, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->h(Ljava/lang/Object;Ljava/lang/reflect/Type;La5/h;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    goto :goto_6

    .line 271
    :cond_e
    return-object p1

    .line 272
    :cond_f
    instance-of v1, p0, Ljava/lang/String;

    .line 273
    .line 274
    const/4 v4, 0x0

    .line 275
    if-eqz v1, :cond_10

    .line 276
    .line 277
    move-object v1, p0

    .line 278
    check-cast v1, Ljava/lang/String;

    .line 279
    .line 280
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 281
    .line 282
    .line 283
    move-result v1

    .line 284
    if-nez v1, :cond_10

    .line 285
    .line 286
    return-object v4

    .line 287
    :cond_10
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    array-length v5, v1

    .line 292
    if-ne v5, v2, :cond_11

    .line 293
    .line 294
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 295
    .line 296
    .line 297
    move-result-object v5

    .line 298
    aget-object v3, v5, v3

    .line 299
    .line 300
    instance-of v3, v3, Ljava/lang/reflect/WildcardType;

    .line 301
    .line 302
    if-eqz v3, :cond_11

    .line 303
    .line 304
    invoke-static {p0, v0, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->h(Ljava/lang/Object;Ljava/lang/reflect/Type;La5/h;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object p0

    .line 308
    return-object p0

    .line 309
    :cond_11
    const-class v3, Ljava/util/Map$Entry;

    .line 310
    .line 311
    if-ne v0, v3, :cond_13

    .line 312
    .line 313
    instance-of v3, p0, Ljava/util/Map;

    .line 314
    .line 315
    if-eqz v3, :cond_13

    .line 316
    .line 317
    move-object v3, p0

    .line 318
    check-cast v3, Ljava/util/Map;

    .line 319
    .line 320
    invoke-interface {v3}, Ljava/util/Map;->size()I

    .line 321
    .line 322
    .line 323
    move-result v5

    .line 324
    if-ne v5, v2, :cond_13

    .line 325
    .line 326
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 327
    .line 328
    .line 329
    move-result-object p0

    .line 330
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 331
    .line 332
    .line 333
    move-result-object p0

    .line 334
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object p0

    .line 338
    check-cast p0, Ljava/util/Map$Entry;

    .line 339
    .line 340
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object p1

    .line 344
    array-length v0, v1

    .line 345
    const/4 v3, 0x2

    .line 346
    if-ne v0, v3, :cond_12

    .line 347
    .line 348
    instance-of v0, p1, Ljava/util/Map;

    .line 349
    .line 350
    if-eqz v0, :cond_12

    .line 351
    .line 352
    aget-object v0, v1, v2

    .line 353
    .line 354
    invoke-static {p1, v0, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->h(Ljava/lang/Object;Ljava/lang/reflect/Type;La5/h;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object p1

    .line 358
    invoke-interface {p0, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    :cond_12
    return-object p0

    .line 362
    :cond_13
    instance-of v1, v0, Ljava/lang/Class;

    .line 363
    .line 364
    if-eqz v1, :cond_15

    .line 365
    .line 366
    if-nez p2, :cond_14

    .line 367
    .line 368
    sget-object p2, La5/h;->z:La5/h;

    .line 369
    .line 370
    :cond_14
    invoke-virtual {p2, v0}, La5/h;->p(Ljava/lang/reflect/Type;)Lb5/b2;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    if-eqz v0, :cond_15

    .line 375
    .line 376
    invoke-static {p0}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object p0

    .line 380
    new-instance v1, La5/a;

    .line 381
    .line 382
    invoke-direct {v1, p0, p2}, La5/a;-><init>(Ljava/lang/String;La5/h;)V

    .line 383
    .line 384
    .line 385
    invoke-interface {v0, v1, p1, v4}, Lb5/b2;->d(La5/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object p0

    .line 389
    return-object p0

    .line 390
    :cond_15
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    .line 391
    .line 392
    new-instance p2, Ljava/lang/StringBuilder;

    .line 393
    .line 394
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 395
    .line 396
    .line 397
    const-string v0, "can not cast to : "

    .line 398
    .line 399
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object p1

    .line 409
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    throw p0
.end method

.method private static g0(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    move-object p2, p1

    .line 22
    :cond_0
    return-object p2
.end method

.method public static h(Ljava/lang/Object;Ljava/lang/reflect/Type;La5/h;)Ljava/lang/Object;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    instance-of v1, p1, Ljava/lang/Class;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    check-cast p1, Ljava/lang/Class;

    .line 10
    .line 11
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->f(Ljava/lang/Object;Ljava/lang/Class;La5/h;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_1
    instance-of v1, p1, Ljava/lang/reflect/ParameterizedType;

    .line 17
    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 21
    .line 22
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->g(Ljava/lang/Object;Ljava/lang/reflect/ParameterizedType;La5/h;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_2
    instance-of p2, p0, Ljava/lang/String;

    .line 28
    .line 29
    if-eqz p2, :cond_4

    .line 30
    .line 31
    move-object p2, p0

    .line 32
    check-cast p2, Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_3

    .line 39
    .line 40
    const-string v1, "null"

    .line 41
    .line 42
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_3

    .line 47
    .line 48
    const-string v1, "NULL"

    .line 49
    .line 50
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    if-eqz p2, :cond_4

    .line 55
    .line 56
    :cond_3
    return-object v0

    .line 57
    :cond_4
    instance-of p2, p1, Ljava/lang/reflect/TypeVariable;

    .line 58
    .line 59
    if-eqz p2, :cond_5

    .line 60
    .line 61
    return-object p0

    .line 62
    :cond_5
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    .line 63
    .line 64
    new-instance p2, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v0, "can not cast to : "

    .line 70
    .line 71
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p0
.end method

.method public static h0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x4

    .line 19
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method public static i(Ljava/lang/Object;)Ljava/math/BigDecimal;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    instance-of v1, p0, Ljava/lang/Float;

    .line 6
    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    move-object v1, p0

    .line 10
    check-cast v1, Ljava/lang/Float;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_7

    .line 31
    .line 32
    :cond_1
    return-object v0

    .line 33
    :cond_2
    instance-of v1, p0, Ljava/lang/Double;

    .line 34
    .line 35
    if-eqz v1, :cond_4

    .line 36
    .line 37
    move-object v1, p0

    .line 38
    check-cast v1, Ljava/lang/Double;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 41
    .line 42
    .line 43
    move-result-wide v2

    .line 44
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_3

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 51
    .line 52
    .line 53
    move-result-wide v1

    .line 54
    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_7

    .line 59
    .line 60
    :cond_3
    return-object v0

    .line 61
    :cond_4
    instance-of v1, p0, Ljava/math/BigDecimal;

    .line 62
    .line 63
    if-eqz v1, :cond_5

    .line 64
    .line 65
    check-cast p0, Ljava/math/BigDecimal;

    .line 66
    .line 67
    return-object p0

    .line 68
    :cond_5
    instance-of v1, p0, Ljava/math/BigInteger;

    .line 69
    .line 70
    if-eqz v1, :cond_6

    .line 71
    .line 72
    new-instance v0, Ljava/math/BigDecimal;

    .line 73
    .line 74
    check-cast p0, Ljava/math/BigInteger;

    .line 75
    .line 76
    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    .line 77
    .line 78
    .line 79
    return-object v0

    .line 80
    :cond_6
    instance-of v1, p0, Ljava/util/Map;

    .line 81
    .line 82
    if-eqz v1, :cond_7

    .line 83
    .line 84
    move-object v1, p0

    .line 85
    check-cast v1, Ljava/util/Map;

    .line 86
    .line 87
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-nez v1, :cond_7

    .line 92
    .line 93
    return-object v0

    .line 94
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_a

    .line 103
    .line 104
    const-string v1, "null"

    .line 105
    .line 106
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-eqz v1, :cond_8

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    const v1, 0xffff

    .line 118
    .line 119
    .line 120
    if-gt v0, v1, :cond_9

    .line 121
    .line 122
    new-instance v0, Ljava/math/BigDecimal;

    .line 123
    .line 124
    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    return-object v0

    .line 128
    :cond_9
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    .line 129
    .line 130
    const-string v0, "decimal overflow"

    .line 131
    .line 132
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw p0

    .line 136
    :cond_a
    :goto_0
    return-object v0
.end method

.method public static i0(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 3

    .line 1
    instance-of v0, p0, Ljava/lang/Class;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Ljava/lang/Class;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 13
    .line 14
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->i0(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    .line 24
    .line 25
    const-string v1, "TODO"

    .line 26
    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .line 30
    .line 31
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    array-length v0, p0

    .line 36
    const/4 v2, 0x1

    .line 37
    if-ne v0, v2, :cond_2

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    aget-object p0, p0, v0

    .line 41
    .line 42
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->i0(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :cond_2
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    .line 48
    .line 49
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p0

    .line 53
    :cond_3
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    .line 54
    .line 55
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0
.end method

.method public static j(Ljava/lang/Object;)Ljava/math/BigInteger;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    instance-of v1, p0, Ljava/lang/Float;

    .line 6
    .line 7
    if-eqz v1, :cond_3

    .line 8
    .line 9
    check-cast p0, Ljava/lang/Float;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Float;->longValue()J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_2
    :goto_0
    return-object v0

    .line 42
    :cond_3
    instance-of v1, p0, Ljava/lang/Double;

    .line 43
    .line 44
    if-eqz v1, :cond_6

    .line 45
    .line 46
    check-cast p0, Ljava/lang/Double;

    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 49
    .line 50
    .line 51
    move-result-wide v1

    .line 52
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_5

    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 59
    .line 60
    .line 61
    move-result-wide v1

    .line 62
    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_4

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Double;->longValue()J

    .line 70
    .line 71
    .line 72
    move-result-wide v0

    .line 73
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0

    .line 78
    :cond_5
    :goto_1
    return-object v0

    .line 79
    :cond_6
    instance-of v1, p0, Ljava/math/BigInteger;

    .line 80
    .line 81
    if-eqz v1, :cond_7

    .line 82
    .line 83
    check-cast p0, Ljava/math/BigInteger;

    .line 84
    .line 85
    return-object p0

    .line 86
    :cond_7
    instance-of v1, p0, Ljava/math/BigDecimal;

    .line 87
    .line 88
    if-eqz v1, :cond_8

    .line 89
    .line 90
    move-object v1, p0

    .line 91
    check-cast v1, Ljava/math/BigDecimal;

    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/math/BigDecimal;->scale()I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    const/16 v3, -0x3e8

    .line 98
    .line 99
    if-le v2, v3, :cond_8

    .line 100
    .line 101
    const/16 v3, 0x3e8

    .line 102
    .line 103
    if-ge v2, v3, :cond_8

    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    return-object p0

    .line 110
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-eqz v1, :cond_b

    .line 119
    .line 120
    const-string v1, "null"

    .line 121
    .line 122
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eqz v1, :cond_9

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    const v1, 0xffff

    .line 134
    .line 135
    .line 136
    if-gt v0, v1, :cond_a

    .line 137
    .line 138
    new-instance v0, Ljava/math/BigInteger;

    .line 139
    .line 140
    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    return-object v0

    .line 144
    :cond_a
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    .line 145
    .line 146
    const-string v0, "decimal overflow"

    .line 147
    .line 148
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw p0

    .line 152
    :cond_b
    :goto_2
    return-object v0
.end method

.method public static j0(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lz4/b;
    .locals 14

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const-class v2, Lz4/b;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    if-lez v1, :cond_6

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    array-length v4, v0

    .line 16
    move v5, v3

    .line 17
    :goto_0
    if-ge v5, v4, :cond_6

    .line 18
    .line 19
    aget-object v6, v0, v5

    .line 20
    .line 21
    invoke-virtual {v6}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    array-length v7, v6

    .line 26
    move v8, v3

    .line 27
    :goto_1
    if-ge v8, v7, :cond_5

    .line 28
    .line 29
    aget-object v9, v6, v8

    .line 30
    .line 31
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object v10

    .line 35
    array-length v11, v10

    .line 36
    array-length v12, v1

    .line 37
    if-eq v11, v12, :cond_0

    .line 38
    .line 39
    goto :goto_3

    .line 40
    :cond_0
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v11

    .line 44
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v12

    .line 48
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v11

    .line 52
    if-nez v11, :cond_1

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_1
    move v11, v3

    .line 56
    :goto_2
    array-length v12, v1

    .line 57
    if-ge v11, v12, :cond_3

    .line 58
    .line 59
    aget-object v12, v10, v11

    .line 60
    .line 61
    aget-object v13, v1, v11

    .line 62
    .line 63
    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v12

    .line 67
    if-nez v12, :cond_2

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_2
    add-int/lit8 v11, v11, 0x1

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_3
    invoke-static {v9, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->P(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    check-cast v9, Lz4/b;

    .line 78
    .line 79
    if-eqz v9, :cond_4

    .line 80
    .line 81
    return-object v9

    .line 82
    :cond_4
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    const/4 v0, 0x0

    .line 93
    if-nez p0, :cond_7

    .line 94
    .line 95
    return-object v0

    .line 96
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_d

    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    array-length v4, p0

    .line 115
    move v5, v3

    .line 116
    :goto_4
    if-ge v5, v4, :cond_d

    .line 117
    .line 118
    aget-object v6, p0, v5

    .line 119
    .line 120
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    array-length v8, v7

    .line 125
    array-length v9, v1

    .line 126
    if-eq v8, v9, :cond_8

    .line 127
    .line 128
    goto :goto_6

    .line 129
    :cond_8
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v9

    .line 137
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v8

    .line 141
    if-nez v8, :cond_9

    .line 142
    .line 143
    goto :goto_6

    .line 144
    :cond_9
    move v8, v3

    .line 145
    :goto_5
    array-length v9, v1

    .line 146
    if-ge v8, v9, :cond_b

    .line 147
    .line 148
    aget-object v9, v7, v8

    .line 149
    .line 150
    aget-object v10, v1, v8

    .line 151
    .line 152
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v9

    .line 156
    if-nez v9, :cond_a

    .line 157
    .line 158
    goto :goto_6

    .line 159
    :cond_a
    add-int/lit8 v8, v8, 0x1

    .line 160
    .line 161
    goto :goto_5

    .line 162
    :cond_b
    invoke-static {v6, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->P(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    check-cast v6, Lz4/b;

    .line 167
    .line 168
    if-eqz v6, :cond_c

    .line 169
    .line 170
    return-object v6

    .line 171
    :cond_c
    :goto_6
    add-int/lit8 v5, v5, 0x1

    .line 172
    .line 173
    goto :goto_4

    .line 174
    :cond_d
    return-object v0
.end method

.method public static k(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    instance-of v1, p0, Ljava/lang/Boolean;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    check-cast p0, Ljava/lang/Boolean;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_1
    instance-of v1, p0, Ljava/math/BigDecimal;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x1

    .line 16
    if-eqz v1, :cond_3

    .line 17
    .line 18
    check-cast p0, Ljava/math/BigDecimal;

    .line 19
    .line 20
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->l0(Ljava/math/BigDecimal;)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-ne p0, v3, :cond_2

    .line 25
    .line 26
    move v2, v3

    .line 27
    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :cond_3
    instance-of v1, p0, Ljava/lang/Number;

    .line 33
    .line 34
    if-eqz v1, :cond_5

    .line 35
    .line 36
    check-cast p0, Ljava/lang/Number;

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-ne p0, v3, :cond_4

    .line 43
    .line 44
    move v2, v3

    .line 45
    :cond_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :cond_5
    instance-of v1, p0, Ljava/lang/String;

    .line 51
    .line 52
    if-eqz v1, :cond_f

    .line 53
    .line 54
    move-object v1, p0

    .line 55
    check-cast v1, Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_e

    .line 62
    .line 63
    const-string v2, "null"

    .line 64
    .line 65
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-nez v2, :cond_e

    .line 70
    .line 71
    const-string v2, "NULL"

    .line 72
    .line 73
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_6

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_6
    const-string v0, "true"

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_d

    .line 87
    .line 88
    const-string v0, "1"

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_7

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_7
    const-string v0, "false"

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-nez v0, :cond_c

    .line 104
    .line 105
    const-string v0, "0"

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_8

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_8
    const-string v0, "Y"

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-nez v0, :cond_b

    .line 121
    .line 122
    const-string v0, "T"

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_9

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_9
    const-string v0, "F"

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-nez v0, :cond_a

    .line 138
    .line 139
    const-string v0, "N"

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-eqz v0, :cond_f

    .line 146
    .line 147
    :cond_a
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 148
    .line 149
    return-object p0

    .line 150
    :cond_b
    :goto_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 151
    .line 152
    return-object p0

    .line 153
    :cond_c
    :goto_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 154
    .line 155
    return-object p0

    .line 156
    :cond_d
    :goto_2
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 157
    .line 158
    return-object p0

    .line 159
    :cond_e
    :goto_3
    return-object v0

    .line 160
    :cond_f
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 161
    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    const-string v2, "can not cast to boolean, value : "

    .line 168
    .line 169
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw v0
.end method

.method private static k0(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .line 6
    .line 7
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    array-length v0, p0

    .line 12
    if-lez v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    aget-object p0, p0, v0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-class p0, Ljava/lang/Object;

    .line 19
    .line 20
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static l(Ljava/lang/Object;)Ljava/lang/Byte;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    instance-of v1, p0, Ljava/math/BigDecimal;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    check-cast p0, Ljava/math/BigDecimal;

    .line 10
    .line 11
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->e(Ljava/math/BigDecimal;)B

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_1
    instance-of v1, p0, Ljava/lang/Number;

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    check-cast p0, Ljava/lang/Number;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :cond_2
    instance-of v1, p0, Ljava/lang/String;

    .line 36
    .line 37
    if-eqz v1, :cond_5

    .line 38
    .line 39
    check-cast p0, Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_4

    .line 46
    .line 47
    const-string v1, "null"

    .line 48
    .line 49
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_4

    .line 54
    .line 55
    const-string v1, "NULL"

    .line 56
    .line 57
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0

    .line 73
    :cond_4
    :goto_0
    return-object v0

    .line 74
    :cond_5
    instance-of v0, p0, Ljava/lang/Boolean;

    .line 75
    .line 76
    if-eqz v0, :cond_6

    .line 77
    .line 78
    check-cast p0, Ljava/lang/Boolean;

    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    return-object p0

    .line 89
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 90
    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v2, "can not cast to byte, value : "

    .line 97
    .line 98
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw v0
.end method

.method public static l0(Ljava/math/BigDecimal;)I
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, -0x64

    .line 10
    .line 11
    if-lt v0, v1, :cond_1

    .line 12
    .line 13
    const/16 v1, 0x64

    .line 14
    .line 15
    if-gt v0, v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0

    .line 22
    :cond_1
    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValueExact()I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0
.end method

.method public static m(Ljava/lang/Object;)[B
    .locals 3

    .line 1
    instance-of v0, p0, [B

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, [B

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    check-cast p0, Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {p0}, Lcom/alibaba/fastjson/util/f;->c(Ljava/lang/String;)[B

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v2, "can not cast to byte[], value : "

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v0
.end method

.method public static m0(Ljava/lang/reflect/Method;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->o:Ljava/lang/Class;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->p:Z

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    :try_start_0
    const-string v1, "javax.persistence.ManyToMany"

    .line 15
    .line 16
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    sput-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->o:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->p:Z

    .line 24
    .line 25
    :cond_1
    :goto_0
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->o:Ljava/lang/Class;

    .line 26
    .line 27
    if-eqz v1, :cond_3

    .line 28
    .line 29
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->m:Ljava/lang/Class;

    .line 30
    .line 31
    invoke-virtual {p0, v1}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->o:Ljava/lang/Class;

    .line 38
    .line 39
    invoke-virtual {p0, v1}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_3

    .line 44
    .line 45
    :cond_2
    move v0, v2

    .line 46
    :cond_3
    return v0
.end method

.method public static n(Ljava/lang/Object;)Ljava/lang/Character;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    instance-of v1, p0, Ljava/lang/Character;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    check-cast p0, Ljava/lang/Character;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    .line 13
    .line 14
    const-string v2, "can not cast to char, value : "

    .line 15
    .line 16
    if-eqz v1, :cond_4

    .line 17
    .line 18
    move-object v1, p0

    .line 19
    check-cast v1, Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-nez v3, :cond_2

    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/4 v3, 0x1

    .line 33
    if-ne v0, v3, :cond_3

    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 46
    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v0

    .line 66
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 67
    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw v0
.end method

.method public static n0(Ljava/lang/reflect/Method;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->m:Ljava/lang/Class;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->n:Z

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    :try_start_0
    const-string v1, "javax.persistence.OneToMany"

    .line 15
    .line 16
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    sput-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->m:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->n:Z

    .line 24
    .line 25
    :cond_1
    :goto_0
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->m:Ljava/lang/Class;

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_2

    .line 34
    .line 35
    move v0, v2

    .line 36
    :cond_2
    return v0
.end method

.method public static o(Ljava/lang/Object;)Ljava/util/Date;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->p(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/Date;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static o0(Ljava/lang/Class;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->O:Lcom/alibaba/fastjson/util/e;

    .line 2
    .line 3
    invoke-static {v0, p0}, Lcom/alibaba/fastjson/util/i;->b(Lcom/alibaba/fastjson/util/e;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Boolean;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    return p0
.end method

.method public static p(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/Date;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    instance-of v1, p0, Ljava/util/Date;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    check-cast p0, Ljava/util/Date;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_1
    instance-of v1, p0, Ljava/util/Calendar;

    .line 13
    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    check-cast p0, Ljava/util/Calendar;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_2
    instance-of v1, p0, Ljava/math/BigDecimal;

    .line 24
    .line 25
    if-eqz v1, :cond_3

    .line 26
    .line 27
    check-cast p0, Ljava/math/BigDecimal;

    .line 28
    .line 29
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->E0(Ljava/math/BigDecimal;)J

    .line 30
    .line 31
    .line 32
    move-result-wide p0

    .line 33
    new-instance v0, Ljava/util/Date;

    .line 34
    .line 35
    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 36
    .line 37
    .line 38
    return-object v0

    .line 39
    :cond_3
    instance-of v1, p0, Ljava/lang/Number;

    .line 40
    .line 41
    if-eqz v1, :cond_5

    .line 42
    .line 43
    check-cast p0, Ljava/lang/Number;

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    const-string p0, "unixtime"

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-eqz p0, :cond_4

    .line 56
    .line 57
    const-wide/16 p0, 0x3e8

    .line 58
    .line 59
    mul-long/2addr v0, p0

    .line 60
    :cond_4
    new-instance p0, Ljava/util/Date;

    .line 61
    .line 62
    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 63
    .line 64
    .line 65
    return-object p0

    .line 66
    :cond_5
    instance-of v1, p0, Ljava/lang/String;

    .line 67
    .line 68
    const-string v2, "can not cast to Date, value : "

    .line 69
    .line 70
    const-wide/16 v3, -0x1

    .line 71
    .line 72
    if-eqz v1, :cond_12

    .line 73
    .line 74
    move-object v1, p0

    .line 75
    check-cast v1, Ljava/lang/String;

    .line 76
    .line 77
    new-instance v5, La5/e;

    .line 78
    .line 79
    invoke-direct {v5, v1}, La5/e;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const/4 v6, 0x0

    .line 83
    :try_start_0
    invoke-virtual {v5, v6}, La5/e;->x1(Z)Z

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    if-eqz v6, :cond_6

    .line 88
    .line 89
    invoke-virtual {v5}, La5/c;->J0()Ljava/util/Calendar;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 94
    .line 95
    .line 96
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    invoke-virtual {v5}, La5/c;->close()V

    .line 98
    .line 99
    .line 100
    return-object p0

    .line 101
    :catchall_0
    move-exception p0

    .line 102
    goto/16 :goto_3

    .line 103
    .line 104
    :cond_6
    invoke-virtual {v5}, La5/c;->close()V

    .line 105
    .line 106
    .line 107
    const-string v5, "/Date("

    .line 108
    .line 109
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-eqz v5, :cond_7

    .line 114
    .line 115
    const-string v5, ")/"

    .line 116
    .line 117
    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    if-eqz v5, :cond_7

    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    add-int/lit8 v5, v5, -0x2

    .line 128
    .line 129
    const/4 v6, 0x6

    .line 130
    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    :cond_7
    const/16 v5, 0x2d

    .line 135
    .line 136
    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    if-gtz v5, :cond_a

    .line 141
    .line 142
    const/16 v5, 0x2b

    .line 143
    .line 144
    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    if-gtz v5, :cond_a

    .line 149
    .line 150
    if-eqz p1, :cond_8

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    if-nez p1, :cond_9

    .line 158
    .line 159
    return-object v0

    .line 160
    :cond_9
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 161
    .line 162
    .line 163
    move-result-wide v5

    .line 164
    goto/16 :goto_4

    .line 165
    .line 166
    :cond_a
    :goto_0
    if-nez p1, :cond_11

    .line 167
    .line 168
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 169
    .line 170
    .line 171
    move-result p0

    .line 172
    sget-object p1, Lcom/alibaba/fastjson/a;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    .line 173
    .line 174
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    if-eq p0, p1, :cond_10

    .line 179
    .line 180
    const/16 p1, 0x16

    .line 181
    .line 182
    if-ne p0, p1, :cond_b

    .line 183
    .line 184
    sget-object p1, Lcom/alibaba/fastjson/a;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    .line 185
    .line 186
    const-string v0, "yyyyMMddHHmmssSSSZ"

    .line 187
    .line 188
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    if-eqz p1, :cond_b

    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_b
    const/16 p1, 0xa

    .line 196
    .line 197
    if-ne p0, p1, :cond_c

    .line 198
    .line 199
    const-string p1, "yyyy-MM-dd"

    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_c
    const/16 p1, 0x13

    .line 203
    .line 204
    if-ne p0, p1, :cond_d

    .line 205
    .line 206
    const-string p1, "yyyy-MM-dd HH:mm:ss"

    .line 207
    .line 208
    goto :goto_2

    .line 209
    :cond_d
    const/16 v0, 0x1d

    .line 210
    .line 211
    if-ne p0, v0, :cond_e

    .line 212
    .line 213
    const/16 v0, 0x1a

    .line 214
    .line 215
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    const/16 v3, 0x3a

    .line 220
    .line 221
    if-ne v0, v3, :cond_e

    .line 222
    .line 223
    const/16 v0, 0x1c

    .line 224
    .line 225
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    const/16 v3, 0x30

    .line 230
    .line 231
    if-ne v0, v3, :cond_e

    .line 232
    .line 233
    const-string p1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSXXX"

    .line 234
    .line 235
    goto :goto_2

    .line 236
    :cond_e
    const/16 v0, 0x17

    .line 237
    .line 238
    if-ne p0, v0, :cond_f

    .line 239
    .line 240
    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    .line 241
    .line 242
    .line 243
    move-result p0

    .line 244
    const/16 p1, 0x2c

    .line 245
    .line 246
    if-ne p0, p1, :cond_f

    .line 247
    .line 248
    const-string p1, "yyyy-MM-dd HH:mm:ss,SSS"

    .line 249
    .line 250
    goto :goto_2

    .line 251
    :cond_f
    const-string p1, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 252
    .line 253
    goto :goto_2

    .line 254
    :cond_10
    :goto_1
    sget-object p1, Lcom/alibaba/fastjson/a;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    .line 255
    .line 256
    :cond_11
    :goto_2
    new-instance p0, Ljava/text/SimpleDateFormat;

    .line 257
    .line 258
    sget-object v0, Lcom/alibaba/fastjson/a;->defaultLocale:Ljava/util/Locale;

    .line 259
    .line 260
    invoke-direct {p0, p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 261
    .line 262
    .line 263
    sget-object p1, Lcom/alibaba/fastjson/a;->defaultTimeZone:Ljava/util/TimeZone;

    .line 264
    .line 265
    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 266
    .line 267
    .line 268
    :try_start_1
    invoke-virtual {p0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 269
    .line 270
    .line 271
    move-result-object p0
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    .line 272
    return-object p0

    .line 273
    :catch_0
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    .line 274
    .line 275
    new-instance p1, Ljava/lang/StringBuilder;

    .line 276
    .line 277
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    throw p0

    .line 294
    :goto_3
    invoke-virtual {v5}, La5/c;->close()V

    .line 295
    .line 296
    .line 297
    throw p0

    .line 298
    :cond_12
    move-wide v5, v3

    .line 299
    :goto_4
    cmp-long p1, v5, v3

    .line 300
    .line 301
    if-nez p1, :cond_17

    .line 302
    .line 303
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    const-string v3, "oracle.sql.TIMESTAMP"

    .line 312
    .line 313
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result v1

    .line 317
    const-string v3, "toJdbc"

    .line 318
    .line 319
    const/4 v4, 0x1

    .line 320
    if-eqz v1, :cond_14

    .line 321
    .line 322
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->f:Ljava/lang/reflect/Method;

    .line 323
    .line 324
    if-nez v1, :cond_13

    .line 325
    .line 326
    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->e:Z

    .line 327
    .line 328
    if-nez v1, :cond_13

    .line 329
    .line 330
    :try_start_2
    invoke-virtual {p1, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 331
    .line 332
    .line 333
    move-result-object p1

    .line 334
    sput-object p1, Lcom/alibaba/fastjson/util/TypeUtils;->f:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 335
    .line 336
    :catch_1
    sput-boolean v4, Lcom/alibaba/fastjson/util/TypeUtils;->e:Z

    .line 337
    .line 338
    goto :goto_5

    .line 339
    :catchall_1
    move-exception p0

    .line 340
    sput-boolean v4, Lcom/alibaba/fastjson/util/TypeUtils;->e:Z

    .line 341
    .line 342
    throw p0

    .line 343
    :cond_13
    :goto_5
    :try_start_3
    sget-object p1, Lcom/alibaba/fastjson/util/TypeUtils;->f:Ljava/lang/reflect/Method;

    .line 344
    .line 345
    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 349
    check-cast p0, Ljava/util/Date;

    .line 350
    .line 351
    return-object p0

    .line 352
    :catch_2
    move-exception p0

    .line 353
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 354
    .line 355
    const-string v0, "can not cast oracle.sql.TIMESTAMP to Date"

    .line 356
    .line 357
    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 358
    .line 359
    .line 360
    throw p1

    .line 361
    :cond_14
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    const-string v5, "oracle.sql.DATE"

    .line 366
    .line 367
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    move-result v1

    .line 371
    if-eqz v1, :cond_16

    .line 372
    .line 373
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->h:Ljava/lang/reflect/Method;

    .line 374
    .line 375
    if-nez v1, :cond_15

    .line 376
    .line 377
    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->g:Z

    .line 378
    .line 379
    if-nez v1, :cond_15

    .line 380
    .line 381
    :try_start_4
    invoke-virtual {p1, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 382
    .line 383
    .line 384
    move-result-object p1

    .line 385
    sput-object p1, Lcom/alibaba/fastjson/util/TypeUtils;->h:Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 386
    .line 387
    :catch_3
    sput-boolean v4, Lcom/alibaba/fastjson/util/TypeUtils;->g:Z

    .line 388
    .line 389
    goto :goto_6

    .line 390
    :catchall_2
    move-exception p0

    .line 391
    sput-boolean v4, Lcom/alibaba/fastjson/util/TypeUtils;->g:Z

    .line 392
    .line 393
    throw p0

    .line 394
    :cond_15
    :goto_6
    :try_start_5
    sget-object p1, Lcom/alibaba/fastjson/util/TypeUtils;->h:Ljava/lang/reflect/Method;

    .line 395
    .line 396
    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 400
    check-cast p0, Ljava/util/Date;

    .line 401
    .line 402
    return-object p0

    .line 403
    :catch_4
    move-exception p0

    .line 404
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 405
    .line 406
    const-string v0, "can not cast oracle.sql.DATE to Date"

    .line 407
    .line 408
    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 409
    .line 410
    .line 411
    throw p1

    .line 412
    :cond_16
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 413
    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    .line 415
    .line 416
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object p0

    .line 429
    invoke-direct {p1, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    throw p1

    .line 433
    :cond_17
    new-instance p0, Ljava/util/Date;

    .line 434
    .line 435
    invoke-direct {p0, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 436
    .line 437
    .line 438
    return-object p0
.end method

.method public static p0(Ljava/lang/reflect/Type;)Z
    .locals 3

    .line 1
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    instance-of v0, p0, Ljava/lang/Class;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    check-cast p0, Ljava/lang/Class;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-class v0, Ljava/lang/Object;

    .line 19
    .line 20
    if-eq p0, v0, :cond_1

    .line 21
    .line 22
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->p0(Ljava/lang/reflect/Type;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move v1, v2

    .line 30
    :goto_0
    return v1

    .line 31
    :cond_2
    return v2
.end method

.method public static q(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    instance-of v1, p0, Ljava/lang/Number;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    check-cast p0, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    .line 21
    .line 22
    if-eqz v1, :cond_5

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_4

    .line 33
    .line 34
    const-string v1, "null"

    .line 35
    .line 36
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_4

    .line 41
    .line 42
    const-string v1, "NULL"

    .line 43
    .line 44
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/16 v0, 0x2c

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    const/4 v1, -0x1

    .line 58
    if-eq v0, v1, :cond_3

    .line 59
    .line 60
    const-string v0, ","

    .line 61
    .line 62
    const-string v1, ""

    .line 63
    .line 64
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    :cond_3
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 69
    .line 70
    .line 71
    move-result-wide v0

    .line 72
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0

    .line 77
    :cond_4
    :goto_0
    return-object v0

    .line 78
    :cond_5
    instance-of v0, p0, Ljava/lang/Boolean;

    .line 79
    .line 80
    if-eqz v0, :cond_7

    .line 81
    .line 82
    check-cast p0, Ljava/lang/Boolean;

    .line 83
    .line 84
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    if-eqz p0, :cond_6

    .line 89
    .line 90
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_6
    const-wide/16 v0, 0x0

    .line 94
    .line 95
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    return-object p0

    .line 100
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 101
    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string v2, "can not cast to double, value : "

    .line 108
    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw v0
.end method

.method public static q0(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return v1

    .line 6
    :cond_0
    sget-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->q:Ljava/lang/reflect/Method;

    .line 7
    .line 8
    if-nez v2, :cond_1

    .line 9
    .line 10
    sget-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->r:Z

    .line 11
    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    :try_start_0
    const-string v2, "org.hibernate.Hibernate"

    .line 15
    .line 16
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const-string v3, "isInitialized"

    .line 21
    .line 22
    new-array v4, v0, [Ljava/lang/Class;

    .line 23
    .line 24
    const-class v5, Ljava/lang/Object;

    .line 25
    .line 26
    aput-object v5, v4, v1

    .line 27
    .line 28
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    sput-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->q:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->r:Z

    .line 36
    .line 37
    :cond_1
    :goto_0
    sget-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->q:Ljava/lang/reflect/Method;

    .line 38
    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    :try_start_1
    new-array v3, v0, [Ljava/lang/Object;

    .line 42
    .line 43
    aput-object p0, v3, v1

    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    check-cast p0, Ljava/lang/Boolean;

    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 53
    .line 54
    .line 55
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 56
    return p0

    .line 57
    :catchall_1
    :cond_2
    return v0
.end method

.method public static r(Ljava/lang/Object;Ljava/lang/Class;La5/h;)Ljava/lang/Object;
    .locals 3

    .line 1
    const-string v0, "can not cast to : "

    .line 2
    .line 3
    :try_start_0
    instance-of v1, p0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_3

    .line 6
    .line 7
    check-cast p0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0

    .line 17
    :cond_0
    if-nez p2, :cond_1

    .line 18
    .line 19
    invoke-static {}, La5/h;->t()La5/h;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    invoke-virtual {p2, p1}, La5/h;->p(Ljava/lang/reflect/Type;)Lb5/b2;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    instance-of v1, p2, Lb5/h;

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    check-cast p2, Lb5/h;

    .line 35
    .line 36
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->J(Ljava/lang/String;)J

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    invoke-virtual {p2, v1, v2}, Lb5/h;->a(J)Ljava/lang/Enum;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :cond_2
    invoke-static {p1, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :cond_3
    instance-of p2, p0, Ljava/math/BigDecimal;

    .line 51
    .line 52
    if-eqz p2, :cond_4

    .line 53
    .line 54
    move-object p2, p0

    .line 55
    check-cast p2, Ljava/math/BigDecimal;

    .line 56
    .line 57
    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->l0(Ljava/math/BigDecimal;)I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    array-length v2, v1

    .line 66
    if-ge p2, v2, :cond_4

    .line 67
    .line 68
    aget-object p0, v1, p2

    .line 69
    .line 70
    return-object p0

    .line 71
    :cond_4
    instance-of p2, p0, Ljava/lang/Number;

    .line 72
    .line 73
    if-eqz p2, :cond_5

    .line 74
    .line 75
    check-cast p0, Ljava/lang/Number;

    .line 76
    .line 77
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    array-length v1, p2

    .line 86
    if-ge p0, v1, :cond_5

    .line 87
    .line 88
    aget-object p0, p2, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    return-object p0

    .line 91
    :cond_5
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    .line 92
    .line 93
    new-instance p2, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p0

    .line 116
    :goto_1
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    .line 117
    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-direct {p2, p1, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    .line 139
    .line 140
    throw p2
.end method

.method private static r0(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 6

    .line 1
    const-class v0, Lz4/d;

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->N(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lz4/d;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_4

    .line 11
    .line 12
    invoke-interface {v0}, Lz4/d;->includes()[Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    array-length v3, v2

    .line 17
    const/4 v4, 0x1

    .line 18
    if-lez v3, :cond_2

    .line 19
    .line 20
    array-length p0, v2

    .line 21
    move v0, v1

    .line 22
    :goto_0
    if-ge v0, p0, :cond_1

    .line 23
    .line 24
    aget-object v3, v2, v0

    .line 25
    .line 26
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    return v1

    .line 33
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return v4

    .line 37
    :cond_2
    invoke-interface {v0}, Lz4/d;->ignores()[Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    array-length v2, v0

    .line 42
    move v3, v1

    .line 43
    :goto_1
    if-ge v3, v2, :cond_4

    .line 44
    .line 45
    aget-object v5, v0, v3

    .line 46
    .line 47
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_3

    .line 52
    .line 53
    return v4

    .line 54
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-class v2, Ljava/lang/Object;

    .line 62
    .line 63
    if-eq v0, v2, :cond_5

    .line 64
    .line 65
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_5

    .line 70
    .line 71
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/util/TypeUtils;->r0(Ljava/lang/Class;Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    return p0

    .line 80
    :cond_5
    return v1
.end method

.method public static s(Ljava/lang/Object;)Ljava/lang/Float;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    instance-of v1, p0, Ljava/lang/Number;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    check-cast p0, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    .line 21
    .line 22
    if-eqz v1, :cond_5

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_4

    .line 33
    .line 34
    const-string v1, "null"

    .line 35
    .line 36
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_4

    .line 41
    .line 42
    const-string v1, "NULL"

    .line 43
    .line 44
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/16 v0, 0x2c

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    const/4 v1, -0x1

    .line 58
    if-eq v0, v1, :cond_3

    .line 59
    .line 60
    const-string v0, ","

    .line 61
    .line 62
    const-string v1, ""

    .line 63
    .line 64
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    :cond_3
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0

    .line 77
    :cond_4
    :goto_0
    return-object v0

    .line 78
    :cond_5
    instance-of v0, p0, Ljava/lang/Boolean;

    .line 79
    .line 80
    if-eqz v0, :cond_7

    .line 81
    .line 82
    check-cast p0, Ljava/lang/Boolean;

    .line 83
    .line 84
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    if-eqz p0, :cond_6

    .line 89
    .line 90
    const/high16 p0, 0x3f800000    # 1.0f

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_6
    const/4 p0, 0x0

    .line 94
    :goto_1
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    return-object p0

    .line 99
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 100
    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    const-string v2, "can not cast to float, value : "

    .line 107
    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw v0
.end method

.method public static s0(Ljava/lang/reflect/Method;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->F:Ljava/lang/Class;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->G:Z

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    :try_start_0
    const-string v1, "com.fasterxml.jackson.annotation.JsonCreator"

    .line 15
    .line 16
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    sput-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->F:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->G:Z

    .line 24
    .line 25
    :cond_1
    :goto_0
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->F:Ljava/lang/Class;

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_2

    .line 34
    .line 35
    move v0, v2

    .line 36
    :cond_2
    return v0
.end method

.method public static t(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    instance-of v1, p0, Ljava/lang/Integer;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    check-cast p0, Ljava/lang/Integer;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_1
    instance-of v1, p0, Ljava/math/BigDecimal;

    .line 13
    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    check-cast p0, Ljava/math/BigDecimal;

    .line 17
    .line 18
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->l0(Ljava/math/BigDecimal;)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_2
    instance-of v1, p0, Ljava/lang/Number;

    .line 28
    .line 29
    if-eqz v1, :cond_3

    .line 30
    .line 31
    check-cast p0, Ljava/lang/Number;

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    :cond_3
    instance-of v1, p0, Ljava/lang/String;

    .line 43
    .line 44
    if-eqz v1, :cond_8

    .line 45
    .line 46
    check-cast p0, Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_7

    .line 53
    .line 54
    const-string v1, "null"

    .line 55
    .line 56
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-nez v1, :cond_7

    .line 61
    .line 62
    const-string v1, "NULL"

    .line 63
    .line 64
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_4

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_4
    const/16 v0, 0x2c

    .line 72
    .line 73
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    const/4 v1, -0x1

    .line 78
    const-string v2, ""

    .line 79
    .line 80
    if-eq v0, v1, :cond_5

    .line 81
    .line 82
    const-string v0, ","

    .line 83
    .line 84
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    :cond_5
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->a:Ljava/util/regex/Pattern;

    .line 89
    .line 90
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-eqz v1, :cond_6

    .line 99
    .line 100
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    :cond_6
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    return-object p0

    .line 113
    :cond_7
    :goto_0
    return-object v0

    .line 114
    :cond_8
    instance-of v0, p0, Ljava/lang/Boolean;

    .line 115
    .line 116
    if-eqz v0, :cond_9

    .line 117
    .line 118
    check-cast p0, Ljava/lang/Boolean;

    .line 119
    .line 120
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 121
    .line 122
    .line 123
    move-result p0

    .line 124
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    return-object p0

    .line 129
    :cond_9
    instance-of v0, p0, Ljava/util/Map;

    .line 130
    .line 131
    if-eqz v0, :cond_a

    .line 132
    .line 133
    move-object v0, p0

    .line 134
    check-cast v0, Ljava/util/Map;

    .line 135
    .line 136
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    const/4 v2, 0x2

    .line 141
    if-ne v1, v2, :cond_a

    .line 142
    .line 143
    const-string v1, "andIncrement"

    .line 144
    .line 145
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-eqz v1, :cond_a

    .line 150
    .line 151
    const-string v1, "andDecrement"

    .line 152
    .line 153
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    if-eqz v1, :cond_a

    .line 158
    .line 159
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->t(Ljava/lang/Object;)Ljava/lang/Integer;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    return-object p0

    .line 179
    :cond_a
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 180
    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .line 185
    .line 186
    const-string v2, "can not cast to int, value : "

    .line 187
    .line 188
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    throw v0
.end method

.method public static t0(Ljava/lang/Class;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->s:Ljava/lang/Class;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->t:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    :try_start_0
    const-class v0, Lkotlin/Metadata;

    .line 11
    .line 12
    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->s:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->t:Z

    .line 16
    .line 17
    :cond_0
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->s:Ljava/lang/Class;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->s:Ljava/lang/Class;

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/4 v1, 0x0

    .line 31
    :goto_1
    return v1
.end method

.method public static u(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, La5/h;->t()La5/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->f(Ljava/lang/Object;Ljava/lang/Class;La5/h;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private static u0(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 6

    .line 1
    const-string v0, "isEmpty"

    .line 2
    .line 3
    const-string v1, "getEndInclusive"

    .line 4
    .line 5
    sget-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->A:Ljava/util/Map;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    sget-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->B:Z

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    const-class v4, Lkotlin/ranges/CharRange;

    .line 20
    .line 21
    sget-object v5, Lkotlin/ranges/CharRange;->e:Lkotlin/ranges/CharRange$Companion;

    .line 22
    .line 23
    filled-new-array {v1, v0}, [Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    const-class v4, Lkotlin/ranges/IntRange;

    .line 31
    .line 32
    sget-object v5, Lkotlin/ranges/IntRange;->e:Lkotlin/ranges/IntRange$Companion;

    .line 33
    .line 34
    filled-new-array {v1, v0}, [Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    const-class v4, Lkotlin/ranges/LongRange;

    .line 42
    .line 43
    sget-object v5, Lkotlin/ranges/LongRange;->e:Lkotlin/ranges/LongRange$Companion;

    .line 44
    .line 45
    filled-new-array {v1, v0}, [Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    const-string v4, "kotlin.ranges.b"

    .line 53
    .line 54
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    filled-new-array {v1, v0}, [Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    const-string v4, "kotlin.ranges.a"

    .line 66
    .line 67
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    filled-new-array {v1, v0}, [Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    sput-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->A:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catchall_0
    sput-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->B:Z

    .line 82
    .line 83
    :cond_0
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->A:Ljava/util/Map;

    .line 84
    .line 85
    const/4 v1, 0x0

    .line 86
    if-nez v0, :cond_1

    .line 87
    .line 88
    return v1

    .line 89
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->A:Ljava/util/Map;

    .line 90
    .line 91
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    check-cast p0, [Ljava/lang/String;

    .line 96
    .line 97
    if-eqz p0, :cond_2

    .line 98
    .line 99
    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    if-ltz p0, :cond_2

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_2
    move v3, v1

    .line 107
    :goto_1
    return v3
.end method

.method public static v(Ljava/util/Map;Ljava/lang/Class;La5/h;)Ljava/lang/Object;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-class v1, Ljava/lang/StackTraceElement;

    .line 3
    .line 4
    if-ne p1, v1, :cond_2

    .line 5
    .line 6
    const-string p1, "className"

    .line 7
    .line 8
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Ljava/lang/String;

    .line 13
    .line 14
    const-string p2, "methodName"

    .line 15
    .line 16
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    check-cast p2, Ljava/lang/String;

    .line 21
    .line 22
    const-string v1, "fileName"

    .line 23
    .line 24
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/String;

    .line 29
    .line 30
    const-string v2, "lineNumber"

    .line 31
    .line 32
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Ljava/lang/Number;

    .line 37
    .line 38
    if-nez p0, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    instance-of v0, p0, Ljava/math/BigDecimal;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    check-cast p0, Ljava/math/BigDecimal;

    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValueExact()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p0

    .line 53
    goto/16 :goto_2

    .line 54
    .line 55
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    :goto_0
    new-instance p0, Ljava/lang/StackTraceElement;

    .line 60
    .line 61
    invoke-direct {p0, p1, p2, v1, v0}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    return-object p0

    .line 65
    :cond_2
    sget-object v1, Lcom/alibaba/fastjson/a;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    .line 66
    .line 67
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    instance-of v2, v1, Ljava/lang/String;

    .line 72
    .line 73
    const/4 v3, 0x0

    .line 74
    if-eqz v2, :cond_5

    .line 75
    .line 76
    check-cast v1, Ljava/lang/String;

    .line 77
    .line 78
    if-nez p2, :cond_3

    .line 79
    .line 80
    sget-object p2, La5/h;->z:La5/h;

    .line 81
    .line 82
    :cond_3
    invoke-virtual {p2, v1, v3}, La5/h;->i(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    if-eqz v2, :cond_4

    .line 87
    .line 88
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-nez v1, :cond_5

    .line 93
    .line 94
    invoke-static {p0, v2, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->v(Ljava/util/Map;Ljava/lang/Class;La5/h;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    return-object p0

    .line 99
    :cond_4
    new-instance p0, Ljava/lang/ClassNotFoundException;

    .line 100
    .line 101
    new-instance p1, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string p2, " not found"

    .line 110
    .line 111
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-direct {p0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw p0

    .line 122
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eqz v1, :cond_9

    .line 127
    .line 128
    instance-of v1, p0, Lcom/alibaba/fastjson/JSONObject;

    .line 129
    .line 130
    if-eqz v1, :cond_6

    .line 131
    .line 132
    check-cast p0, Lcom/alibaba/fastjson/JSONObject;

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_6
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    .line 136
    .line 137
    invoke-direct {v1, p0}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    .line 138
    .line 139
    .line 140
    move-object p0, v1

    .line 141
    :goto_1
    if-nez p2, :cond_7

    .line 142
    .line 143
    invoke-static {}, La5/h;->t()La5/h;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    :cond_7
    invoke-virtual {p2, p1}, La5/h;->m(Ljava/lang/reflect/Type;)Lb5/b2;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    if-eqz p2, :cond_8

    .line 152
    .line 153
    invoke-static {p0}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    return-object p0

    .line 162
    :cond_8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    invoke-virtual {p2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    const/4 v1, 0x1

    .line 171
    new-array v1, v1, [Ljava/lang/Class;

    .line 172
    .line 173
    aput-object p1, v1, v0

    .line 174
    .line 175
    invoke-static {p2, v1, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    return-object p0

    .line 180
    :cond_9
    const-class v0, Ljava/util/Locale;

    .line 181
    .line 182
    if-ne p1, v0, :cond_b

    .line 183
    .line 184
    const-string v0, "language"

    .line 185
    .line 186
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    const-string v1, "country"

    .line 191
    .line 192
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    instance-of v2, v0, Ljava/lang/String;

    .line 197
    .line 198
    if-eqz v2, :cond_b

    .line 199
    .line 200
    check-cast v0, Ljava/lang/String;

    .line 201
    .line 202
    instance-of v2, v1, Ljava/lang/String;

    .line 203
    .line 204
    if-eqz v2, :cond_a

    .line 205
    .line 206
    check-cast v1, Ljava/lang/String;

    .line 207
    .line 208
    new-instance p0, Ljava/util/Locale;

    .line 209
    .line 210
    invoke-direct {p0, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    return-object p0

    .line 214
    :cond_a
    if-nez v1, :cond_b

    .line 215
    .line 216
    new-instance p0, Ljava/util/Locale;

    .line 217
    .line 218
    invoke-direct {p0, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    return-object p0

    .line 222
    :cond_b
    const-class v0, Ljava/lang/String;

    .line 223
    .line 224
    if-ne p1, v0, :cond_c

    .line 225
    .line 226
    instance-of v0, p0, Lcom/alibaba/fastjson/JSONObject;

    .line 227
    .line 228
    if-eqz v0, :cond_c

    .line 229
    .line 230
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    return-object p0

    .line 235
    :cond_c
    const-class v0, Lcom/alibaba/fastjson/a;

    .line 236
    .line 237
    if-ne p1, v0, :cond_d

    .line 238
    .line 239
    instance-of v0, p0, Lcom/alibaba/fastjson/JSONObject;

    .line 240
    .line 241
    if-eqz v0, :cond_d

    .line 242
    .line 243
    return-object p0

    .line 244
    :cond_d
    const-class v0, Ljava/util/LinkedHashMap;

    .line 245
    .line 246
    if-ne p1, v0, :cond_e

    .line 247
    .line 248
    instance-of v0, p0, Lcom/alibaba/fastjson/JSONObject;

    .line 249
    .line 250
    if-eqz v0, :cond_e

    .line 251
    .line 252
    move-object v0, p0

    .line 253
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 254
    .line 255
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->getInnerMap()Ljava/util/Map;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    instance-of v1, v0, Ljava/util/LinkedHashMap;

    .line 260
    .line 261
    if-eqz v1, :cond_e

    .line 262
    .line 263
    return-object v0

    .line 264
    :cond_e
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    if-eqz v0, :cond_f

    .line 269
    .line 270
    return-object p0

    .line 271
    :cond_f
    const-class v0, Lcom/alibaba/fastjson/JSONObject;

    .line 272
    .line 273
    if-ne p1, v0, :cond_10

    .line 274
    .line 275
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    .line 276
    .line 277
    invoke-direct {p1, p0}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    .line 278
    .line 279
    .line 280
    return-object p1

    .line 281
    :cond_10
    if-nez p2, :cond_11

    .line 282
    .line 283
    invoke-static {}, La5/h;->t()La5/h;

    .line 284
    .line 285
    .line 286
    move-result-object p2

    .line 287
    :cond_11
    invoke-virtual {p2, p1}, La5/h;->p(Ljava/lang/reflect/Type;)Lb5/b2;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    instance-of v1, v0, Lb5/o;

    .line 292
    .line 293
    if-eqz v1, :cond_12

    .line 294
    .line 295
    move-object v3, v0

    .line 296
    check-cast v3, Lb5/o;

    .line 297
    .line 298
    :cond_12
    if-eqz v3, :cond_13

    .line 299
    .line 300
    invoke-virtual {v3, p0, p2}, Lb5/o;->f(Ljava/util/Map;La5/h;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object p0

    .line 304
    return-object p0

    .line 305
    :cond_13
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    .line 306
    .line 307
    new-instance p2, Ljava/lang/StringBuilder;

    .line 308
    .line 309
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    .line 311
    .line 312
    const-string v0, "can not get javaBeanDeserializer. "

    .line 313
    .line 314
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object p1

    .line 328
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :goto_2
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 333
    .line 334
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object p2

    .line 338
    invoke-direct {p1, p2, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 339
    .line 340
    .line 341
    throw p1
.end method

.method public static v0(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v1, v2, :cond_4

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/16 v3, 0x2b

    .line 14
    .line 15
    if-eq v2, v3, :cond_2

    .line 16
    .line 17
    const/16 v3, 0x2d

    .line 18
    .line 19
    if-ne v2, v3, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    const/16 v3, 0x30

    .line 23
    .line 24
    if-lt v2, v3, :cond_1

    .line 25
    .line 26
    const/16 v3, 0x39

    .line 27
    .line 28
    if-le v2, v3, :cond_3

    .line 29
    .line 30
    :cond_1
    return v0

    .line 31
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 32
    .line 33
    return v0

    .line 34
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_4
    const/4 p0, 0x1

    .line 38
    return p0
.end method

.method public static w(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    instance-of v1, p0, Ljava/math/BigDecimal;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    check-cast p0, Ljava/math/BigDecimal;

    .line 10
    .line 11
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->E0(Ljava/math/BigDecimal;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_1
    instance-of v1, p0, Ljava/lang/Number;

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    check-cast p0, Ljava/lang/Number;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :cond_2
    instance-of v1, p0, Ljava/lang/String;

    .line 36
    .line 37
    if-eqz v1, :cond_7

    .line 38
    .line 39
    move-object v1, p0

    .line 40
    check-cast v1, Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_6

    .line 47
    .line 48
    const-string v2, "null"

    .line 49
    .line 50
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-nez v2, :cond_6

    .line 55
    .line 56
    const-string v2, "NULL"

    .line 57
    .line 58
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_3

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    const/16 v2, 0x2c

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    const/4 v3, -0x1

    .line 72
    if-eq v2, v3, :cond_4

    .line 73
    .line 74
    const-string v2, ","

    .line 75
    .line 76
    const-string v3, ""

    .line 77
    .line 78
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    :cond_4
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 83
    .line 84
    .line 85
    move-result-wide v2

    .line 86
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 87
    .line 88
    .line 89
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    return-object p0

    .line 91
    :catch_0
    new-instance v2, La5/e;

    .line 92
    .line 93
    invoke-direct {v2, v1}, La5/e;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const/4 v1, 0x0

    .line 97
    invoke-virtual {v2, v1}, La5/e;->x1(Z)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_5

    .line 102
    .line 103
    invoke-virtual {v2}, La5/c;->J0()Ljava/util/Calendar;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    :cond_5
    invoke-virtual {v2}, La5/c;->close()V

    .line 108
    .line 109
    .line 110
    if-eqz v0, :cond_7

    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 113
    .line 114
    .line 115
    move-result-wide v0

    .line 116
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    return-object p0

    .line 121
    :cond_6
    :goto_0
    return-object v0

    .line 122
    :cond_7
    instance-of v0, p0, Ljava/util/Map;

    .line 123
    .line 124
    if-eqz v0, :cond_8

    .line 125
    .line 126
    move-object v0, p0

    .line 127
    check-cast v0, Ljava/util/Map;

    .line 128
    .line 129
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    const/4 v2, 0x2

    .line 134
    if-ne v1, v2, :cond_8

    .line 135
    .line 136
    const-string v1, "andIncrement"

    .line 137
    .line 138
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-eqz v1, :cond_8

    .line 143
    .line 144
    const-string v1, "andDecrement"

    .line 145
    .line 146
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-eqz v1, :cond_8

    .line 151
    .line 152
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->w(Ljava/lang/Object;)Ljava/lang/Long;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    return-object p0

    .line 172
    :cond_8
    instance-of v0, p0, Ljava/lang/Boolean;

    .line 173
    .line 174
    if-eqz v0, :cond_a

    .line 175
    .line 176
    check-cast p0, Ljava/lang/Boolean;

    .line 177
    .line 178
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 179
    .line 180
    .line 181
    move-result p0

    .line 182
    if-eqz p0, :cond_9

    .line 183
    .line 184
    const-wide/16 v0, 0x1

    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_9
    const-wide/16 v0, 0x0

    .line 188
    .line 189
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    return-object p0

    .line 194
    :cond_a
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 195
    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .line 200
    .line 201
    const-string v2, "can not cast to long, value : "

    .line 202
    .line 203
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    throw v0
.end method

.method public static w0(Ljava/lang/Class;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->D:Ljava/lang/Class;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->E:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    const-string v0, "java.nio.file.Path"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->D:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    const/4 v0, 0x1

    .line 19
    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->E:Z

    .line 20
    .line 21
    :cond_0
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->D:Ljava/lang/Class;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0

    .line 30
    :cond_1
    const/4 p0, 0x0

    .line 31
    return p0
.end method

.method public static x(Ljava/lang/Object;)Ljava/lang/Short;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    instance-of v1, p0, Ljava/math/BigDecimal;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    check-cast p0, Ljava/math/BigDecimal;

    .line 10
    .line 11
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->N0(Ljava/math/BigDecimal;)S

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_1
    instance-of v1, p0, Ljava/lang/Number;

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    check-cast p0, Ljava/lang/Number;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :cond_2
    instance-of v1, p0, Ljava/lang/String;

    .line 36
    .line 37
    if-eqz v1, :cond_5

    .line 38
    .line 39
    check-cast p0, Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_4

    .line 46
    .line 47
    const-string v1, "null"

    .line 48
    .line 49
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_4

    .line 54
    .line 55
    const-string v1, "NULL"

    .line 56
    .line 57
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0

    .line 73
    :cond_4
    :goto_0
    return-object v0

    .line 74
    :cond_5
    instance-of v0, p0, Ljava/lang/Boolean;

    .line 75
    .line 76
    if-eqz v0, :cond_6

    .line 77
    .line 78
    check-cast p0, Ljava/lang/Boolean;

    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    return-object p0

    .line 89
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 90
    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v2, "can not cast to short, value : "

    .line 97
    .line 98
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw v0
.end method

.method public static x0(Ljava/lang/Class;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    array-length v0, p0

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    if-ge v2, v0, :cond_1

    .line 9
    .line 10
    aget-object v3, p0, v2

    .line 11
    .line 12
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    sget-object v4, Lcom/alibaba/fastjson/util/TypeUtils;->V:Ljava/util/Set;

    .line 17
    .line 18
    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    const/4 p0, 0x1

    .line 25
    return p0

    .line 26
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return v1
.end method

.method public static y(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->P:Lcom/alibaba/fastjson/util/e;

    .line 2
    .line 3
    invoke-static {v0, p0}, Lcom/alibaba/fastjson/util/i;->b(Lcom/alibaba/fastjson/util/e;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static y0(Ljava/lang/reflect/Method;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->k:Z

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    :try_start_0
    const-string v1, "java.beans.Transient"

    .line 11
    .line 12
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sput-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->l:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    :catch_0
    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->k:Z

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->k:Z

    .line 23
    .line 24
    throw p0

    .line 25
    :cond_1
    :goto_0
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->l:Ljava/lang/Class;

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    invoke-static {p0, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->P(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    if-eqz p0, :cond_2

    .line 34
    .line 35
    move v0, v2

    .line 36
    :cond_2
    return v0
.end method

.method public static z(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->Q:Lcom/alibaba/fastjson/util/e;

    .line 2
    .line 3
    invoke-static {v0, p0}, Lcom/alibaba/fastjson/util/i;->b(Lcom/alibaba/fastjson/util/e;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static z0(Ljava/lang/Class;)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->I:Ljava/lang/Class;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->J:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    :try_start_0
    const-string v0, "javax.xml.bind.annotation.XmlAccessorType"

    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->I:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->J:Z

    .line 20
    .line 21
    :cond_0
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->I:Ljava/lang/Class;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    return v2

    .line 27
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->I:Ljava/lang/Class;

    .line 28
    .line 29
    invoke-static {p0, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->N(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    if-nez p0, :cond_2

    .line 34
    .line 35
    return v2

    .line 36
    :cond_2
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->K:Ljava/lang/reflect/Method;

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    if-nez v0, :cond_3

    .line 40
    .line 41
    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->J:Z

    .line 42
    .line 43
    if-nez v0, :cond_3

    .line 44
    .line 45
    :try_start_1
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->I:Ljava/lang/Class;

    .line 46
    .line 47
    const-string v4, "value"

    .line 48
    .line 49
    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->K:Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :catchall_1
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->J:Z

    .line 57
    .line 58
    :cond_3
    :goto_1
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->K:Ljava/lang/reflect/Method;

    .line 59
    .line 60
    if-nez v0, :cond_4

    .line 61
    .line 62
    return v2

    .line 63
    :cond_4
    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->J:Z

    .line 64
    .line 65
    if-nez v0, :cond_5

    .line 66
    .line 67
    :try_start_2
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->K:Ljava/lang/reflect/Method;

    .line 68
    .line 69
    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 73
    goto :goto_2

    .line 74
    :catchall_2
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->J:Z

    .line 75
    .line 76
    :cond_5
    move-object p0, v3

    .line 77
    :goto_2
    if-nez p0, :cond_6

    .line 78
    .line 79
    return v2

    .line 80
    :cond_6
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->H:Ljava/lang/Class;

    .line 81
    .line 82
    if-nez v0, :cond_7

    .line 83
    .line 84
    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->J:Z

    .line 85
    .line 86
    if-nez v0, :cond_7

    .line 87
    .line 88
    :try_start_3
    const-string v0, "javax.xml.bind.annotation.XmlAccessType"

    .line 89
    .line 90
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->H:Ljava/lang/Class;

    .line 95
    .line 96
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->H:Ljava/lang/Class;

    .line 97
    .line 98
    const-string v4, "FIELD"

    .line 99
    .line 100
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->L:Ljava/lang/reflect/Field;

    .line 105
    .line 106
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->L:Ljava/lang/reflect/Field;

    .line 107
    .line 108
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->M:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :catchall_3
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->J:Z

    .line 116
    .line 117
    :cond_7
    :goto_3
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->M:Ljava/lang/Object;

    .line 118
    .line 119
    if-ne p0, v0, :cond_8

    .line 120
    .line 121
    goto :goto_4

    .line 122
    :cond_8
    move v1, v2

    .line 123
    :goto_4
    return v1
.end method
