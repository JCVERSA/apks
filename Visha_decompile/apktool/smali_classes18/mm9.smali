.class public Lmm9;
.super Lz22;
.source "SourceFile"


# static fields
.field public static final k0:Lmm9;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmm9;

    invoke-direct {v0}, Lmm9;-><init>()V

    sput-object v0, Lmm9;->k0:Lmm9;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lz22;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Ljava/lang/Object;)Lzfa;
    .locals 2

    new-instance p0, Lfreemarker/template/TemplateModelException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "SimpleObjectWrapper deliberately won\'t wrap this type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(Ljava/lang/Object;)Lofa;
    .locals 0

    new-instance p0, Lfreemarker/template/TemplateModelException;

    const-string p1, "SimpleObjectWrapper deliberately doesn\'t allow ?api."

    invoke-direct {p0, p1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
