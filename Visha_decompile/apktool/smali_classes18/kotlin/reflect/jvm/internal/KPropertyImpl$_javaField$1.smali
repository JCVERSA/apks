.class final Lkotlin/reflect/jvm/internal/KPropertyImpl$_javaField$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/KPropertyImpl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Lti8;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lc74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001\"\u0006\u0008\u0000\u0010\u0002 \u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Ljava/lang/reflect/Field;",
        "V",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lkotlin/reflect/jvm/internal/KPropertyImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/KPropertyImpl;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/KPropertyImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/KPropertyImpl;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl$_javaField$1;->this$0:Lkotlin/reflect/jvm/internal/KPropertyImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$_javaField$1;->invoke()Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/lang/reflect/Field;
    .locals 10

    .line 2
    sget-object v0, Lkotlin/reflect/jvm/internal/f;->a:Lkotlin/reflect/jvm/internal/f;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl$_javaField$1;->this$0:Lkotlin/reflect/jvm/internal/KPropertyImpl;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->G()Lti8;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/f;->f(Lti8;)Lkotlin/reflect/jvm/internal/c;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/c$c;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 4
    check-cast v0, Lkotlin/reflect/jvm/internal/c$c;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/c$c;->b()Lti8;

    move-result-object v1

    .line 5
    sget-object v3, Lod5;->a:Lod5;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/c$c;->e()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    move-result-object v4

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/c$c;->d()Lcy6;

    move-result-object v5

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/c$c;->g()Lxcb;

    move-result-object v6

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lod5;->d(Lod5;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lcy6;Lxcb;ZILjava/lang/Object;)Lid5$a;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl$_javaField$1;->this$0:Lkotlin/reflect/jvm/internal/KPropertyImpl;

    .line 6
    invoke-static {v1}, Ld92;->e(Lti8;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 7
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/c$c;->e()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    move-result-object v0

    invoke-static {v0}, Lod5;->f(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {v1}, Lknb;->b()Lxt1;

    move-result-object v0

    .line 9
    instance-of v1, v0, Lqw0;

    if-eqz v1, :cond_1

    check-cast v0, Lqw0;

    invoke-static {v0}, Lclb;->p(Lqw0;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->y()Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    move-result-object p0

    invoke-interface {p0}, Lkw0;->d()Ljava/lang/Class;

    move-result-object p0

    goto :goto_1

    .line 11
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->y()Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    move-result-object p0

    invoke-interface {p0}, Lkw0;->d()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_6

    .line 12
    :try_start_0
    invoke-virtual {v3}, Lid5$a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 13
    :cond_3
    instance-of p0, v0, Lkotlin/reflect/jvm/internal/c$a;

    if-eqz p0, :cond_4

    check-cast v0, Lkotlin/reflect/jvm/internal/c$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/c$a;->b()Ljava/lang/reflect/Field;

    move-result-object v2

    goto :goto_2

    .line 14
    :cond_4
    instance-of p0, v0, Lkotlin/reflect/jvm/internal/c$b;

    if-eqz p0, :cond_5

    goto :goto_2

    .line 15
    :cond_5
    instance-of p0, v0, Lkotlin/reflect/jvm/internal/c$d;

    if-eqz p0, :cond_7

    :catch_0
    :cond_6
    :goto_2
    return-object v2

    :cond_7
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
