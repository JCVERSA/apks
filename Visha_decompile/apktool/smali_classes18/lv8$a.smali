.class public abstract Llv8$a;
.super Llv8$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llv8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final c:Ljava/util/List;


# instance fields
.field public final b:Lfreemarker/core/Configurable;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v5, "object_wrapper"

    const-string v6, "template_exception_handler"

    const-string v0, "arithmetic_engine"

    const-string v1, "boolean_format"

    const-string v2, "classic_compatible"

    const-string v3, "locale"

    const-string v4, "number_format"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Llv8$a;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/Configurable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Llv8$d;-><init>(Lkv8;)V

    iput-object p1, p0, Llv8$a;->b:Lfreemarker/core/Configurable;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lzfa;
    .locals 0

    iget-object p0, p0, Llv8$a;->b:Lfreemarker/core/Configurable;

    invoke-virtual {p0, p1}, Lfreemarker/core/Configurable;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lfreemarker/template/SimpleScalar;

    invoke-direct {p1, p0}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    move-object p0, p1

    :goto_0
    return-object p0
.end method
