.class public Lfreemarker/core/y;
.super Lfreemarker/core/l;
.source "SourceFile"


# static fields
.field public static final l:Lfreemarker/template/SimpleScalar;

.field public static final m:Lfreemarker/template/SimpleScalar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfreemarker/template/SimpleScalar;

    const-string v1, "Odd"

    invoke-direct {v0, v1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    sput-object v0, Lfreemarker/core/y;->l:Lfreemarker/template/SimpleScalar;

    new-instance v0, Lfreemarker/template/SimpleScalar;

    const-string v1, "Even"

    invoke-direct {v0, v1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    sput-object v0, Lfreemarker/core/y;->m:Lfreemarker/template/SimpleScalar;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lfreemarker/core/l;-><init>()V

    return-void
.end method


# virtual methods
.method public i0(Lfreemarker/core/z0$a;Lfreemarker/core/Environment;)Lzfa;
    .locals 0

    invoke-virtual {p1}, Lfreemarker/core/z0$a;->f()I

    move-result p0

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    sget-object p0, Lfreemarker/core/y;->l:Lfreemarker/template/SimpleScalar;

    goto :goto_0

    :cond_0
    sget-object p0, Lfreemarker/core/y;->m:Lfreemarker/template/SimpleScalar;

    :goto_0
    return-object p0
.end method
